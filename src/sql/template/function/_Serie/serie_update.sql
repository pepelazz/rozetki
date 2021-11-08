-- создание serie

DROP FUNCTION IF EXISTS serie_update(params JSONB);
CREATE OR REPLACE FUNCTION serie_update(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    serieRow     serie%ROWTYPE;
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
        

        EXECUTE ('INSERT INTO serie (title, brand_id, slug, published, description, old_id, options) VALUES ($1, $2, $3, $4, $5, $6, $7)  RETURNING *;')
		INTO serieRow
		USING
			(params ->> 'title')::text,
			(params ->> 'brand_id')::int,
			(params ->> 'slug')::text,
			coalesce((params ->> 'published')::bool, false)::bool,
			(params ->> 'description')::text,
			(params ->> 'old_id')::text,
			coalesce(params -> 'options', '{}')::jsonb;

        

    else
        updateValue = '' || update_str_from_json(params, ARRAY [
			['title', 'title', 'text'],
			['brand_id', 'brand_id', 'number'],
			['slug', 'slug', 'text'],
			['published', 'published', 'bool'],
			['description', 'description', 'text'],
			['old_id', 'old_id', 'text'],
            ['options', 'options', 'jsonb'],
            ['deleted', 'deleted', 'bool']
            ]);

        queryStr = concat('UPDATE serie SET ', updateValue, ' WHERE id=', params ->> 'id', ' RETURNING *;');

        EXECUTE (queryStr)
            INTO serieRow;

        -- случай когда записи с таким id не найдено
        IF row_to_json(serieRow) ->> 'id' ISNULL
        THEN
            RETURN json_build_object('ok', FALSE, 'message', 'wrong id');
        END IF;

    end if;

    

    RETURN serie_get_by_id(jsonb_build_object('id', serieRow.id));

END

$function$;