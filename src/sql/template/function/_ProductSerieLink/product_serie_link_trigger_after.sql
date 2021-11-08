-- функция триггер
DROP FUNCTION IF EXISTS product_serie_link_trigger_after() CASCADE;
CREATE OR REPLACE FUNCTION product_serie_link_trigger_after() RETURNS trigger AS
$$
DECLARE
        r record;
        jsonbEl      jsonb;
BEGIN
        

        

        

    RETURN NEW;
END;

$$ LANGUAGE plpgsql;

