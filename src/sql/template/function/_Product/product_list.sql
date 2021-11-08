-- получение списка product
-- параметры:
-- deleted         type: bool - удаленные / существующие. Дефолт: false
-- order_by        type: string - поле для сортировки и направление сортировки. Например, orderBy: "id desc"
-- page            type: int - номер страницы. Дефолт: 1
-- per_page        type: int - количество записей на странице. Дефолт: 1000
-- search_text     type: string - текстовый поиск

DROP FUNCTION IF EXISTS product_list(params JSONB);
CREATE OR REPLACE FUNCTION product_list(params JSONB)
    RETURNS JSON
    LANGUAGE plpgsql
AS
$function$

DECLARE
    result       JSON;
    condQueryStr TEXT;
    whereStr     TEXT;
    checkMsg     TEXT;
BEGIN

    checkMsg = check_required_params(params, ARRAY ['user_id']);
    IF checkMsg IS NOT NULL
    THEN
        RETURN checkMsg;
    END IF;

    

    -- сборка условия WHERE (where_str_build - функция из папки base)
    whereStr = where_str_build(params, 'doc', ARRAY [
        ['ilike', 'search_text', 'search_text'],
		['text', 'currency', 'doc.currency'],
		['notQuoted', 'product_type_id', 'doc.product_type_id'],
		['notQuoted', 'price_group_id', 'doc.price_group_id'],
		['notQuoted', 'discount_group_id', 'doc.discount_group_id'],
		['notQuoted', 'color_id', 'doc.color_id']
    ]);

    

    -- финальная сборка строки с условиями выборки (build_query_part_for_list - функция из папки base)
    condQueryStr = '' || whereStr || build_query_part_for_list(params);

    EXECUTE ('
	with t1 as (select * from product as doc ' || condQueryStr || ')
 	select array_to_json(array_agg(t1.*)) from t1') into result;

    RETURN json_build_object('ok', TRUE, 'result', coalesce(result, '[]'));

END
$function$;




