-- функция триггер
DROP FUNCTION IF EXISTS customer_trigger_before() CASCADE;
CREATE OR REPLACE FUNCTION customer_trigger_before() RETURNS trigger AS
$$
DECLARE
        r record;
	brandTitle TEXT;

       searchTxtVar TEXT := '';
BEGIN

        -- заполняем ref поля
		select title into brandTitle from brand where id = new.brand_id;
        
        NEW.phone = phone_change_8_to_7(NEW.phone);
        -- заполняем options.title
        NEW.options = coalesce(OLD.options, '{}'::jsonb) || NEW.options || jsonb_build_object('title', jsonb_build_object('title', new.title, 'phone', new.phone, 'brand_title', brandTitle));
        -- заполняем search_text
        
        NEW.search_text = concat(new.title, ' ', new.phone, ' ', brandTitle, ' ', searchTxtVar);

        


    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

