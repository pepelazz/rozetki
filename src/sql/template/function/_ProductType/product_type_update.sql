-- создание product type

DROP FUNCTION IF EXISTS product_type_update(params JSONB);
CREATE OR REPLACE FUNCTION product_type_update(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    product_typeRow     product_type%ROWTYPE;
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
        

        EXECUTE ('INSERT INTO product_type (title, slug, old_id, options) VALUES ($1, $2, $3, $4)  RETURNING *;')
		INTO product_typeRow
		USING
			(params ->> 'title')::text,
			(params ->> 'slug')::text,
			(params ->> 'old_id')::text,
			coalesce(params -> 'options', '{}')::jsonb;

        

    else
        updateValue = '' || update_str_from_json(params, ARRAY [
			['title', 'title', 'text'],
			['slug', 'slug', 'text'],
			['old_id', 'old_id', 'text'],
            ['options', 'options', 'jsonb'],
            ['deleted', 'deleted', 'bool']
            ]);

        queryStr = concat('UPDATE product_type SET ', updateValue, ' WHERE id=', params ->> 'id', ' RETURNING *;');

        EXECUTE (queryStr)
            INTO product_typeRow;

        -- случай когда записи с таким id не найдено
        IF row_to_json(product_typeRow) ->> 'id' ISNULL
        THEN
            RETURN json_build_object('ok', FALSE, 'message', 'wrong id');
        END IF;

    end if;

    

    RETURN product_type_get_by_id(jsonb_build_object('id', product_typeRow.id));

END

$function$;