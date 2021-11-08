-- функция триггер
DROP FUNCTION IF EXISTS serie_trigger_before() CASCADE;
CREATE OR REPLACE FUNCTION serie_trigger_before() RETURNS trigger AS
$$
DECLARE
        r record;
	brandTitle TEXT;

       searchTxtVar TEXT := '';
BEGIN

        -- заполняем ref поля
		select title into brandTitle from brand where id = new.brand_id;
        
        -- заполняем options.title
        NEW.options = coalesce(OLD.options, '{}'::jsonb) || NEW.options || jsonb_build_object('title', jsonb_build_object('title', new.title, 'brand_title', brandTitle));
        -- заполняем search_text
        
        NEW.search_text = concat(new.title, ' ', brandTitle, ' ', searchTxtVar);

        


    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

