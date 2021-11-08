-- создание brand

DROP FUNCTION IF EXISTS brand_update(params JSONB);
CREATE OR REPLACE FUNCTION brand_update(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    brandRow     brand%ROWTYPE;
    checkMsg    TEXT;
    result      JSONB;
    updateValue TEXT;
    queryStr    TEXT;
    
BEGIN

    
    -- проверика наличия id
    checkMsg = check_required_params(params, ARRAY ['id']);
    IF checkMsg IS NOT NULL
    THEN
        RETURN checkMsg;
    END IF;
	

    
    
    
    
    
    

    if (params ->> 'id')::int = -1 then
        -- проверика наличия обязательных параметров
        checkMsg = check_required_params(params, ARRAY ['title']);
        IF checkMsg IS NOT NULL
        THEN
            RETURN checkMsg;
        END IF;
        

        EXECUTE ('INSERT INTO brand (title, slug, published, description, old_id, options) VALUES ($1, $2, $3, $4, $5, $6)  RETURNING *;')
		INTO brandRow
		USING
			(params ->> 'title')::text,
			(params ->> 'slug')::text,
			coalesce((params ->> 'published')::bool, false)::bool,
			(params ->> 'description')::text,
			(params ->> 'old_id')::text,
			coalesce(params -> 'options', '{}')::jsonb;

        

    else
        updateValue = '' || update_str_from_json(params, ARRAY [
			['title', 'title', 'text'],
			['slug', 'slug', 'text'],
			['published', 'published', 'bool'],
			['description', 'description', 'text'],
			['old_id', 'old_id', 'text'],
            ['options', 'options', 'jsonb'],
            ['deleted', 'deleted', 'bool']
            ]);

        queryStr = concat('UPDATE brand SET ', updateValue, ' WHERE id=', params ->> 'id', ' RETURNING *;');

        EXECUTE (queryStr)
            INTO brandRow;

        -- случай когда записи с таким id не найдено
        IF row_to_json(brandRow) ->> 'id' ISNULL
        THEN
            RETURN json_build_object('ok', FALSE, 'message', 'wrong id');
        END IF;

    end if;

    

    RETURN brand_get_by_id(jsonb_build_object('id', brandRow.id));

END

$function$;