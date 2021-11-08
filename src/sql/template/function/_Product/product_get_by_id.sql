-- поиск product по id
-- параметры:
-- id       type: int

DROP FUNCTION IF EXISTS product_get_by_id(params JSONB);
CREATE OR REPLACE FUNCTION product_get_by_id(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    productRow         product%Rowtype;
    checkMsg               TEXT;
    result                 jsonb;
    discountValue double precision;
BEGIN

    -- проверика наличия id
    checkMsg = check_required_params_with_func_name('product_get_by_id', params, ARRAY ['id']);
    IF checkMsg IS NOT NULL
    THEN
        RETURN checkMsg;
    END IF;

    with t1 as (select * from product where id = (params ->> 'id')::int),
         t2 as (select t1.*, c.title as product_type_title from t1 left join product_type c on c.id = t1.product_type_id),
         t3 as (select t2.*, c.title as price_group_title from t2 left join price_group c on c.id = t2.price_group_id),
         t4 as (select t3.*, c.title as discount_group_title from t3 left join discount_group c on c.id = t3.discount_group_id),
         t5 as (select t4.*, c.title as color_title from t4 left join color c on c.id = t4.color_id)
    select row_to_json(t5.*)::jsonb into result from t5;

    -- случай когда записи с таким id не найдено
    IF result ->> 'id' ISNULL
    THEN
        RETURN json_build_object('ok', FALSE, 'message', 'not found');
    END IF;

    select value into discountValue from discount_group where id = (select discount_group_id from product where id=(params->>'id')::int);

    RETURN json_build_object('ok', TRUE, 'result', result || jsonb_build_object('discount_value', discountValue));

END

$function$;