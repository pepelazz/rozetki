DO $$DECLARE r record;
             dataList jsonb;
             contIdArr int[] := '{}';
             i jsonb;
BEGIN

    dataList = '[
      {
        "id": "FJUmqWNBue86927Uy_AUE",
        "rev": 0,
        "options": {"label": "Simon 82", "oldId": 3, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.575989",
        "modified": "2021-08-30 07:38:24.575989",
        "deleted": false
      },
      {
        "id": "hlyBScocTo-Q_KlFDQzk0",
        "rev": 0,
        "options": {"label": "Ledmonster", "oldId": 5, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.581138",
        "modified": "2021-08-30 07:38:24.581138",
        "deleted": false
      },
      {
        "id": "wrUHAufanHk25RBSjwBdi",
        "rev": 0,
        "options": {"label": "EBERLE", "oldId": 27, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.588021",
        "modified": "2021-08-30 07:38:24.588021",
        "deleted": false
      },
      {
        "id": "pSw1IlaAZH6d5atdWfSlR",
        "rev": 0,
        "options": {"label": "Legrand Valena", "oldId": 7, "factor": 0.74, "expired": null},
        "created": "2021-08-30 07:38:24.593355",
        "modified": "2021-08-30 07:38:24.593355",
        "deleted": false
      },
      {
        "id": "9PjRcM2iX6bLRszn0wjMx",
        "rev": 0,
        "options": {"label": "ABB", "oldId": 21, "factor": 0.7, "expired": null},
        "created": "2021-08-30 07:38:24.598703",
        "modified": "2021-08-30 07:38:24.598703",
        "deleted": false
      },
      {
        "id": "o3wDdV4uNZr2JoQFDL0ki",
        "rev": 0,
        "options": {"label": "Legrand Etika", "oldId": 18, "factor": 0.7, "expired": null},
        "created": "2021-08-30 07:38:24.605526",
        "modified": "2021-08-30 07:38:24.605526",
        "deleted": false
      },
      {
        "id": "voXULVNGgloayqk9SLWb1",
        "rev": 0,
        "options": {"label": "Donel", "oldId": 31, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.611287",
        "modified": "2021-08-30 07:38:24.611287",
        "deleted": false
      },
      {
        "id": "ZGs5VqhzoALPKpX89reg_",
        "rev": 0,
        "options": {"label": "Steinel", "oldId": 24, "factor": 95, "expired": null},
        "created": "2021-08-30 07:38:24.616498",
        "modified": "2021-08-30 07:38:24.616498",
        "deleted": false
      },
      {
        "id": "rxm3SBgP0_ehErlnZ4HZI",
        "rev": 0,
        "options": {"label": "ABB SKY", "oldId": 29, "factor": 0.65, "expired": null},
        "created": "2021-08-30 07:38:24.622410",
        "modified": "2021-08-30 07:38:24.622410",
        "deleted": false
      },
      {
        "id": "Dm2w9AsyggHf00xanp5W4",
        "rev": 0,
        "options": {"label": "Fontini механизмы", "oldId": 35, "factor": 0.7, "expired": null},
        "created": "2021-08-30 07:38:24.628953",
        "modified": "2021-08-30 07:38:24.628953",
        "deleted": false
      },
      {
        "id": "j5D1wAStxSnsrZ2nfLuwF",
        "rev": 0,
        "options": {"label": "Fontini рамки", "oldId": 34, "factor": 0.67, "expired": null},
        "created": "2021-08-30 07:38:24.633625",
        "modified": "2021-08-30 07:38:24.633625",
        "deleted": false
      },
      {
        "id": "o943jmZCXs2ap6b6Ty337",
        "rev": 0,
        "options": {"label": "ABB SKY MON", "oldId": 30, "factor": 0.65, "expired": null},
        "created": "2021-08-30 07:38:24.638915",
        "modified": "2021-08-30 07:38:24.638915",
        "deleted": false
      },
      {
        "id": "sCM41zEDPprDNQYtas4GB",
        "rev": 0,
        "options": {"label": "Fontini", "oldId": 32, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.643697",
        "modified": "2021-08-30 07:38:24.643697",
        "deleted": false
      },
      {
        "id": "h5WLE4BJ9gUXFT9Pl0Tkx",
        "rev": 0,
        "options": {"label": "Siemens", "oldId": 11, "factor": 0.75, "expired": null},
        "created": "2021-08-30 07:38:24.648599",
        "modified": "2021-08-30 07:38:24.648599",
        "deleted": false
      },
      {
        "id": "VYZPwxuAVU9DIBamuFAqY",
        "rev": 0,
        "options": {"label": "Jung 1912", "oldId": 33, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.654668",
        "modified": "2021-08-30 07:38:24.654668",
        "deleted": false
      },
      {
        "id": "KN4R5b-uwrcZdx-sXzM55",
        "rev": 0,
        "options": {"label": "Gira", "oldId": 8, "factor": 0.6, "expired": null},
        "created": "2021-08-30 07:38:24.659412",
        "modified": "2021-08-30 07:38:24.659412",
        "deleted": false
      },
      {
        "id": "Zn3VFtpLiDD_aRnfba8wV",
        "rev": 0,
        "options": {"label": "Fede", "oldId": 23, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.664643",
        "modified": "2021-08-30 07:38:24.664643",
        "deleted": false
      },
      {
        "id": "UKNjLPrqVEueCJmRFidPP",
        "rev": 0,
        "options": {"label": "Jung", "oldId": 1, "factor": 0.75, "expired": null},
        "created": "2021-08-30 07:38:24.669054",
        "modified": "2021-08-30 07:38:24.669054",
        "deleted": false
      },
      {
        "id": "oWIPjy7unf-ULcZMVb6Hr",
        "rev": 0,
        "options": {"label": "Berker", "oldId": 10, "factor": 0.8, "expired": null},
        "created": "2021-08-30 07:38:24.673925",
        "modified": "2021-08-30 07:38:24.673925",
        "deleted": false
      },
      {
        "id": "TZ906q0UH-f0LadJ3-vmy",
        "rev": 0,
        "options": {"label": "Bticino", "oldId": 22, "factor": 0.95, "expired": null},
        "created": "2021-08-30 07:38:24.678813",
        "modified": "2021-08-30 07:38:24.678813",
        "deleted": false
      },
      {
        "id": "qBiTYM_ildmuWVdlZL37V",
        "rev": 0,
        "options": {"label": "Gewiss", "oldId": 17, "factor": 0.85, "expired": null},
        "created": "2021-08-30 07:38:24.713272",
        "modified": "2021-08-30 07:38:24.713272",
        "deleted": false
      },
      {
        "id": "Idy5hyS4RwaLVNmvsDuvZ",
        "rev": 0,
        "options": {"label": "Legrand Селиане рамки", "oldId": 37, "factor": 0.6, "expired": null},
        "created": "2021-08-30 07:38:24.787822",
        "modified": "2021-08-30 07:38:24.787822",
        "deleted": false
      },
      {
        "id": "QBcl4fQhMZnEB5kUAdaC5",
        "rev": 0,
        "options": {"label": "Gira RUB", "oldId": 2, "factor": 0.7, "expired": null},
        "created": "2021-08-30 07:38:24.924961",
        "modified": "2021-08-30 07:38:24.924961",
        "deleted": false
      },
      {
        "id": "ljDcugipfoJ9AtIDGeeEO",
        "rev": 0,
        "options": {"label": "Legrand Лайф и Алюр рамки", "oldId": 38, "factor": 0.65, "expired": null},
        "created": "2021-08-30 07:38:24.929876",
        "modified": "2021-08-30 07:38:24.929876",
        "deleted": false
      },
      {
        "id": "mS9oVhSFpH0S6SBZ4CR2g",
        "rev": 0,
        "options": {"label": "Legrand", "oldId": 6, "factor": 0.7, "expired": null},
        "created": "2021-08-30 07:38:24.934309",
        "modified": "2021-08-30 07:38:24.934309",
        "deleted": false
      },
      {
        "id": "i-elq4_jNzUb_g0s4Gf0f",
        "rev": 0,
        "options": {"label": "JUNG RUB 1", "oldId": 9, "factor": 0.75, "expired": null},
        "created": "2021-08-30 07:38:24.939628",
        "modified": "2021-08-30 07:38:24.939628",
        "deleted": false
      },
      {
        "id": "xx-ugfTa4IywGQWYiCUe-",
        "rev": 0,
        "options": {"label": "Fontini розетки", "oldId": 36, "factor": 0.7, "expired": null},
        "created": "2021-08-30 07:38:24.945673",
        "modified": "2021-08-30 07:38:24.945673",
        "deleted": false
      },
      {
        "id": "pARxn2wAs7LCRlaFbXDJm",
        "rev": 0,
        "options": {"label": "JUNG ECO", "oldId": 14, "factor": 0.75, "expired": null},
        "created": "2021-08-30 07:38:24.950843",
        "modified": "2021-08-30 07:38:24.950843",
        "deleted": false
      },
      {
        "id": "_S8jWsCilYOVK-gkKbyQD",
        "rev": 0,
        "options": {"label": "Zamel", "oldId": 28, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.955564",
        "modified": "2021-08-30 07:38:24.955564",
        "deleted": false
      },
      {
        "id": "AAy9D7skMD3wphKEq1jIP",
        "rev": 0,
        "options": {"label": "Schneider", "oldId": 15, "factor": 0.68, "expired": null},
        "created": "2021-08-30 07:38:24.960783",
        "modified": "2021-08-30 07:38:24.960783",
        "deleted": false
      },
      {
        "id": "8ubjk7hKQgg1fsWoEvR_M",
        "rev": 0,
        "options": {"label": "Merten", "oldId": 4, "factor": 0.68, "expired": null},
        "created": "2021-08-30 07:38:24.966475",
        "modified": "2021-08-30 07:38:24.966475",
        "deleted": false
      },
      {
        "id": "OJiEZMtgPHjKs7oUZFT2l",
        "rev": 0,
        "options": {"label": "Schneider Atlasdesign", "oldId": 19, "factor": 1, "expired": null},
        "created": "2021-08-30 07:38:24.972109",
        "modified": "2021-08-30 07:38:24.972109",
        "deleted": false
      },
      {
        "id": "BQ5qByOeN-Z8Wj2PQJ6-K",
        "rev": 0,
        "options": {"label": "Legrand LIFE-ALLURE", "oldId": 20, "factor": 0.73, "expired": null},
        "created": "2021-08-30 07:38:24.978017",
        "modified": "2021-08-30 07:38:24.978017",
        "deleted": false
      }
    ]'::jsonb;

    FOR i IN SELECT * FROM jsonb_array_elements(dataList)
        LOOP
            INSERT INTO price_group (title, factor, old_id, options) values
                (i->'options'->>'label', (i->'options'->>'factor')::double precision, i->>'id', '{}'::jsonb) on conflict (title) do nothing;

        END LOOP;
END $$;