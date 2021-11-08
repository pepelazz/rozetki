-- функция триггер
DROP FUNCTION IF EXISTS brand_trigger_before() CASCADE;
CREATE OR REPLACE FUNCTION brand_trigger_before() RETURNS trigger AS
$$
DECLARE
        r record;

       searchTxtVar TEXT := '';
BEGIN

        
        
        -- заполняем options.title
        NEW.options = coalesce(OLD.options, '{}'::jsonb) || NEW.options || jsonb_build_object('title', jsonb_build_object('title', new.title));
        -- заполняем search_text
        
        NEW.search_text = concat(new.title, ' ', searchTxtVar);

        


    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

