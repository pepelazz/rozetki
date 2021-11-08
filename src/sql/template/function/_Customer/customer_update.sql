-- создание покупатель

DROP FUNCTION IF EXISTS customer_update(params JSONB);
CREATE OR REPLACE FUNCTION customer_update(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    customerRow     customer%ROWTYPE;
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
        checkMsg = check_required_params(params, ARRAY ['title', 'phone']);
        IF checkMsg IS NOT NULL
        THEN
            RETURN checkMsg;
        END IF;
        

        EXECUTE ('INSERT INTO customer (title, phone, email, password, brand_id, options) VALUES ($1, $2, $3, $4, $5, $6)  RETURNING *;')
		INTO customerRow
		USING
			(params ->> 'title')::text,
			(params ->> 'phone')::text,
			(params ->> 'email')::text,
			(params ->> 'password')::text,
			(params ->> 'brand_id')::int,
			coalesce(params -> 'options', '{}')::jsonb;

        

    else
        updateValue = '' || update_str_from_json(params, ARRAY [
			['title', 'title', 'text'],
			['phone', 'phone', 'text'],
			['email', 'email', 'text'],
			['password', 'password', 'text'],
			['brand_id', 'brand_id', 'number'],
            ['options', 'options', 'jsonb'],
            ['deleted', 'deleted', 'bool']
            ]);

        queryStr = concat('UPDATE customer SET ', updateValue, ' WHERE id=', params ->> 'id', ' RETURNING *;');

        EXECUTE (queryStr)
            INTO customerRow;

        -- случай когда записи с таким id не найдено
        IF row_to_json(customerRow) ->> 'id' ISNULL
        THEN
            RETURN json_build_object('ok', FALSE, 'message', 'wrong id');
        END IF;

    end if;

    

    RETURN customer_get_by_id(jsonb_build_object('id', customerRow.id));

END

$function$;