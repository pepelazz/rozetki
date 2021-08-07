-- функция обновления рабочих полей (created_at, updated_at)

CREATE OR REPLACE FUNCTION builtin_fld_update() RETURNS trigger AS
$$
DECLARE
    clientTitle    text;
    consigneeTitle text;
BEGIN

    IF (TG_OP = 'INSERT') THEN

        NEW.created_at := now() at time zone 'Asia/Novosibirsk';
        NEW.updated_at := now() at time zone 'Asia/Novosibirsk';

    ELSIF (TG_OP = 'UPDATE') THEN

        NEW.updated_at := now() at time zone 'Asia/Novosibirsk';

    END IF;

    RETURN NEW;
END;

$$ LANGUAGE plpgsql;
