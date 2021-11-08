-- создание product_serie_link

DROP FUNCTION IF EXISTS product_serie_link_update(params JSONB);
CREATE OR REPLACE FUNCTION product_serie_link_update(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    product_serie_linkRow     product_serie_link%ROWTYPE;
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
        

        EXECUTE ('INSERT INTO product_serie_link (product_id, serie_id, options) VALUES ($1, $2, $3)  ON CONFLICT (product_id, serie_id) DO UPDATE SET options=$3, deleted=false RETURNING *;')
		INTO product_serie_linkRow
		USING
			(params ->> 'product_id')::int,
			(params ->> 'serie_id')::int,
			coalesce(params -> 'options', '{}')::jsonb;

        

    else
        updateValue = '' || update_str_from_json(params, ARRAY [
			['product_id', 'product_id', 'number'],
			['serie_id', 'serie_id', 'number'],
            ['options', 'options', 'jsonb'],
            ['deleted', 'deleted', 'bool']
            ]);

        queryStr = concat('UPDATE product_serie_link SET ', updateValue, ' WHERE id=', params ->> 'id', ' RETURNING *;');

        EXECUTE (queryStr)
            INTO product_serie_linkRow;

        -- случай когда записи с таким id не найдено
        IF row_to_json(product_serie_linkRow) ->> 'id' ISNULL
        THEN
            RETURN json_build_object('ok', FALSE, 'message', 'wrong id');
        END IF;

    end if;

    

    RETURN product_serie_link_get_by_id(jsonb_build_object('id', product_serie_linkRow.id));

END

$function$;