-- функция триггер
DROP FUNCTION IF EXISTS product_trigger_before() CASCADE;
CREATE OR REPLACE FUNCTION product_trigger_before() RETURNS trigger AS
$$
DECLARE
        r record;
	productTypeTitle TEXT;
	priceGroupTitle TEXT;
	discountGroupTitle TEXT;
	colorTitle TEXT;

       searchTxtVar TEXT := '';
BEGIN

        -- заполняем ref поля
		select title into productTypeTitle from product_type where id = new.product_type_id;
		select title into priceGroupTitle from price_group where id = new.price_group_id;
		select title into discountGroupTitle from discount_group where id = new.discount_group_id;
		select title into colorTitle from color where id = new.color_id;
        
        -- заполняем options.title
        NEW.options = coalesce(OLD.options, '{}'::jsonb) || NEW.options || jsonb_build_object('title', jsonb_build_object('title', new.title, 'currency', new.currency, 'product_type_title', productTypeTitle, 'price_group_title', priceGroupTitle, 'discount_group_title', discountGroupTitle, 'color_title', colorTitle));
        -- заполняем search_text
        
        NEW.search_text = concat(new.title, ' ', new.currency, ' ', productTypeTitle, ' ', priceGroupTitle, ' ', discountGroupTitle, ' ', colorTitle, ' ', searchTxtVar);

        


    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

