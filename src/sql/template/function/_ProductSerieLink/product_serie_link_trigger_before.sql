-- функция триггер
DROP FUNCTION IF EXISTS product_serie_link_trigger_before() CASCADE;
CREATE OR REPLACE FUNCTION product_serie_link_trigger_before() RETURNS trigger AS
$$
DECLARE
        r record;
	productTitle TEXT;
	serieTitle TEXT;

       searchTxtVar TEXT := '';
BEGIN

        -- заполняем ref поля
		select title into productTitle from product where id = new.product_id;
		select title into serieTitle from serie where id = new.serie_id;
        
        -- заполняем options.title
        NEW.options = coalesce(OLD.options, '{}'::jsonb) || NEW.options || jsonb_build_object('title', jsonb_build_object('product_title', productTitle, 'serie_title', serieTitle));
        -- заполняем search_text
        
        NEW.search_text = concat(productTitle, ' ', serieTitle, ' ', searchTxtVar);

        


    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

