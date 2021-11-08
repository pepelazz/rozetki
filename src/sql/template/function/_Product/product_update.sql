-- создание product

DROP FUNCTION IF EXISTS product_update(params JSONB);
CREATE OR REPLACE FUNCTION product_update(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    productRow     product%ROWTYPE;
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
        

        EXECUTE ('INSERT INTO product (title, slug, description, images, vendor_code, published, is_wholesale, is_complex, price, currency, product_type_id, price_group_id, discount_group_id, color_id, old_id, options) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16)  RETURNING *;')
		INTO productRow
		USING
			(params ->> 'title')::text,
			(params ->> 'slug')::text,
			(params ->> 'description')::text,
			(params -> 'images')::jsonb,
			(params ->> 'vendor_code')::text,
			coalesce((params ->> 'published')::bool, false)::bool,
			coalesce((params ->> 'is_wholesale')::bool, false)::bool,
			coalesce((params ->> 'is_complex')::bool, false)::bool,
			(params ->> 'price')::double precision,
			coalesce((params ->> 'currency')::text, 'rub')::text,
			(params ->> 'product_type_id')::int,
			(params ->> 'price_group_id')::int,
			(params ->> 'discount_group_id')::int,
			(params ->> 'color_id')::int,
			(params ->> 'old_id')::text,
			coalesce(params -> 'options', '{}')::jsonb;

        

    else
        updateValue = '' || update_str_from_json(params, ARRAY [
			['title', 'title', 'text'],
			['slug', 'slug', 'text'],
			['description', 'description', 'text'],
			['images', 'images', 'jsonb'],
			['vendor_code', 'vendor_code', 'text'],
			['published', 'published', 'bool'],
			['is_wholesale', 'is_wholesale', 'bool'],
			['is_complex', 'is_complex', 'bool'],
			['price', 'price', 'number'],
			['currency', 'currency', 'text'],
			['product_type_id', 'product_type_id', 'number'],
			['price_group_id', 'price_group_id', 'number'],
			['discount_group_id', 'discount_group_id', 'number'],
			['color_id', 'color_id', 'number'],
			['old_id', 'old_id', 'text'],
            ['options', 'options', 'jsonb'],
            ['deleted', 'deleted', 'bool']
            ]);

        queryStr = concat('UPDATE product SET ', updateValue, ' WHERE id=', params ->> 'id', ' RETURNING *;');

        EXECUTE (queryStr)
            INTO productRow;

        -- случай когда записи с таким id не найдено
        IF row_to_json(productRow) ->> 'id' ISNULL
        THEN
            RETURN json_build_object('ok', FALSE, 'message', 'wrong id');
        END IF;

    end if;

    

    RETURN product_get_by_id(jsonb_build_object('id', productRow.id));

END

$function$;