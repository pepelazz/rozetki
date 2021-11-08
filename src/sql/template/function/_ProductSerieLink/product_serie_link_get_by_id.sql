-- поиск product_serie_link по id
-- параметры:
-- id       type: int

DROP FUNCTION IF EXISTS product_serie_link_get_by_id(params JSONB);
CREATE OR REPLACE FUNCTION product_serie_link_get_by_id(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    product_serie_linkRow         product_serie_link%Rowtype;
    checkMsg               TEXT;
    result                 jsonb;
BEGIN

    -- проверика наличия id
    checkMsg = check_required_params_with_func_name('product_serie_link_get_by_id', params, ARRAY ['id']);
    IF checkMsg IS NOT NULL
    THEN
        RETURN checkMsg;
    END IF;

    with t1 as (select * from product_serie_link where id = (params ->> 'id')::int),
		t2 as (select t1.*, c.title as product_title from t1 left join product c on c.id = t1.product_id),
		t3 as (select t2.*, c.title as serie_title from t2 left join serie c on c.id = t2.serie_id)
 	select row_to_json(t3.*)::jsonb into result from t3;

    -- случай когда записи с таким id не найдено
    IF result ->> 'id' ISNULL
    THEN
        RETURN json_build_object('ok', FALSE, 'message', 'not found');
    END IF;

    RETURN json_build_object('ok', TRUE, 'result', result);

END

$function$;