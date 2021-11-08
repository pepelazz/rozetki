DO $$DECLARE r record;
             dataList jsonb;
             i jsonb;
BEGIN

    dataList = '[
      {
        "id": "mUiyEyapw0wl31_W-jiGo",
        "rev": 0,
        "options": {"slug": "test", "label": "тест", "oldId": 37, "images": [], "params": [{"doc": "D9UHhVFjVxacyQ004PMu9"}], "description": ""},
        "created": "2021-08-30 07:38:25.226204",
        "modified": "2021-08-30 07:38:25.226204",
        "deleted": false
      },
      {
        "id": "8t9XaGyz_rQTHU0nefAqD",
        "rev": 0,
        "options": {"slug": "radio", "label": "Радио", "oldId": 13, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "tqEg_cgThuBWSKXsFyFII"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}], "description": ""},
        "created": "2021-08-30 07:38:25.235486",
        "modified": "2021-08-30 07:38:25.235486",
        "deleted": false
      },
      {
        "id": "Fgf9F0dYYwMVaIdrIn5Ua",
        "rev": 0,
        "options": {"slug": "mehanizmy-rozetok-i-vyklyuchateley", "label": "Механизмы розеток и выключателей", "oldId": 3, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.259667",
        "modified": "2021-08-30 07:38:25.259667",
        "deleted": false
      },
      {
        "id": "LV6mqBoH9j3NmlqGiD9sN",
        "rev": 0,
        "options": {"slug": "nakladki-dlya-rozetok-i-mehanizmov", "label": "Накладки для розеток и механизмов", "oldId": 5, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.265380",
        "modified": "2021-08-30 07:38:25.265380",
        "deleted": false
      },
      {
        "id": "CNnamNT4gLe44nnmz5s1W",
        "rev": 0,
        "options": {"slug": "klavishi-dlya-vyklyuchateley", "label": "Клавиши для выключателей", "oldId": 8, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.270653",
        "modified": "2021-08-30 07:38:25.270653",
        "deleted": false
      },
      {
        "id": "8Kek2zrhutTo_BnEbI1wr",
        "rev": 0,
        "options": {"slug": "lampy-podsvetki", "label": "Лампы подсветки", "oldId": 28, "images": [], "params": [{"doc": "39D23AI1YsJnWbTi835K5"}], "description": ""},
        "created": "2021-08-30 07:38:25.275333",
        "modified": "2021-08-30 07:38:25.275333",
        "deleted": false
      },
      {
        "id": "sUrtqAceDaa5TTLO_oIic",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya", "label": "Датчики движения", "oldId": 12, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "pFI5LfGgHVNOvOs9SpTC7"}, {"doc": "tqEg_cgThuBWSKXsFyFII"}, {"doc": "bTSiSZf-KbWdF9PjtOoKU"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "dhD9D2E9ND12577AYedg4"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "9oRXXBLrp4Z60Fwn_elf7"}], "description": ""},
        "created": "2021-08-30 07:38:25.282486",
        "modified": "2021-08-30 07:38:25.282486",
        "deleted": false
      },
      {
        "id": "7z7Sh1BL8niIs3--n9dTx",
        "rev": 0,
        "options": {"slug": "upravlenie-zhalyuzi", "label": "Управление жалюзи", "oldId": 18, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.316760",
        "modified": "2021-08-30 07:38:25.316760",
        "deleted": false
      },
      {
        "id": "ZOU4ivdEeO96O3gSGQkg3",
        "rev": 0,
        "options": {"slug": "vyvod-kabelya", "label": "Вывод кабеля", "oldId": 19, "images": [], "params": [{"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "mbRa_gvkRPfVtLyFW6lVY"}, {"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}], "description": ""},
        "created": "2021-08-30 07:38:25.323107",
        "modified": "2021-08-30 07:38:25.323107",
        "deleted": false
      },
      {
        "id": "Z4d-kMiQ5KLKvq5MyId5O",
        "rev": 0,
        "options": {"slug": "rozetki-tv", "label": "Розетки TV", "oldId": 15, "images": [], "params": [{"doc": "mbRa_gvkRPfVtLyFW6lVY"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}], "description": ""},
        "created": "2021-08-30 07:38:25.343227",
        "modified": "2021-08-30 07:38:25.343227",
        "deleted": false
      },
      {
        "id": "YFihB215B-uTAwnr1Q_-x",
        "rev": 0,
        "options": {"slug": "zaglushki", "label": "Заглушки", "oldId": 20, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}], "description": ""},
        "created": "2021-08-30 07:38:25.362112",
        "modified": "2021-08-30 07:38:25.362112",
        "deleted": false
      },
      {
        "id": "ZijFEq3L80zYoJ5HeXrQB",
        "rev": 0,
        "options": {"slug": "rozetki-usb", "label": "Розетки USB", "oldId": 23, "images": [], "params": [{"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "_OoMVT0ag5RzRqYMAnB-x"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "Q03hdVjtO7YHwpmOKCldw"}, {"doc": "mbRa_gvkRPfVtLyFW6lVY"}], "description": ""},
        "created": "2021-08-30 07:38:25.382306",
        "modified": "2021-08-30 07:38:25.382306",
        "deleted": false
      },
      {
        "id": "R-lDZqguvkxMAwTxLNV6d",
        "rev": 0,
        "options": {"slug": "termoregulyatory-dlya-teplogo-pola", "label": "Терморегуляторы для теплого пола", "oldId": 6, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.406994",
        "modified": "2021-08-30 07:38:25.406994",
        "deleted": false
      },
      {
        "id": "dh6kBtHoiwV87_-7mqFjN",
        "rev": 0,
        "options": {"slug": "razemy-informacionnye", "label": "Разъемы информационные", "oldId": 24, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.414853",
        "modified": "2021-08-30 07:38:25.414853",
        "deleted": false
      },
      {
        "id": "U7xNoM32vnwJwM3Kxq4Xz",
        "rev": 0,
        "options": {"slug": "supporty", "label": "Суппорты", "oldId": 22, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.420241",
        "modified": "2021-08-30 07:38:25.420241",
        "deleted": false
      },
      {
        "id": "8yKqgl4m628gNNPfUSZ9M",
        "rev": 0,
        "options": {"slug": "knopki", "label": "Кнопки", "oldId": 25, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "wWp7R2gaOqM21Xl9th4JP"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}], "description": ""},
        "created": "2021-08-30 07:38:25.425772",
        "modified": "2021-08-30 07:38:25.425772",
        "deleted": false
      },
      {
        "id": "ztVYHVqHRGALKxPME9hIE",
        "rev": 0,
        "options": {"slug": "korobki-nakladnogo-montazha", "label": "Коробки накладного монтажа", "oldId": 21, "images": [], "params": [{"doc": "OKjt43TlIhPFVK4IYEmll"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}], "description": ""},
        "created": "2021-08-30 07:38:25.452814",
        "modified": "2021-08-30 07:38:25.452814",
        "deleted": false
      },
      {
        "id": "Qi3M6w0zH-zECkrZkKa1L",
        "rev": 0,
        "options": {"slug": "dimmery", "label": "Диммеры", "oldId": 4, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "SpyB34dGl8p06eEfV9vtE"}, {"doc": "wWp7R2gaOqM21Xl9th4JP"}], "description": ""},
        "created": "2021-08-30 07:38:25.480645",
        "modified": "2021-08-30 07:38:25.480645",
        "deleted": false
      },
      {
        "id": "1MrXPOCvdAafBDfhf9nNh",
        "rev": 0,
        "options": {"slug": "vyklyuchateli", "label": "Выключатели", "oldId": 1, "images": [], "params": [{"doc": "PZye4y8SyQq2YYt8J9Q1l"}, {"doc": "LecCOq3IToo6XekIyG6Vt"}, {"doc": "PJkBBSGNd8SZHh2dN6vRi"}, {"doc": "yyQTzowaqGZWM1V98QMx-"}, {"doc": "gtWnDD74k9PG5_AZ86UY0"}, {"doc": "FhtWWpV6r2inuLFfEHqa0"}, {"doc": "6d2MoGH75QEc90csSY0Im"}, {"doc": "7jZU-bqKawNUlw6KqfbuN"}, {"doc": "HhqHpCowdTD6Ht3rSnId6"}, {"doc": "WZugWX9yUHuOvICZRu_2O"}, {"doc": "6lIyYkpTyC5GKCIPRjClU"}], "description": ""},
        "created": "2021-08-30 07:38:25.509140",
        "modified": "2021-08-30 07:38:25.509140",
        "deleted": false
      },
      {
        "id": "oGnvu64diXkvsnv5taE93",
        "rev": 0,
        "options": {"slug": "vyklyuchateli-povorotnye-odinarnye", "label": "Выключатели поворотные одинарные", "oldId": 38, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.548752",
        "modified": "2021-08-30 07:38:25.548752",
        "deleted": false
      },
      {
        "id": "Qe_KLIgsEPsMLXnwzNi7A",
        "rev": 0,
        "options": {"slug": "rozetki", "label": "Розетки", "oldId": 7, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "pFI5LfGgHVNOvOs9SpTC7"}, {"doc": "tqEg_cgThuBWSKXsFyFII"}, {"doc": "F-NFZi4QJATY1kx0XlucM"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "dhD9D2E9ND12577AYedg4"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "3_qUOA8mpTWDsyxjF9C6w"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}], "description": ""},
        "created": "2021-08-30 07:38:25.555762",
        "modified": "2021-08-30 07:38:25.555762",
        "deleted": false
      },
      {
        "id": "3gsjIvFWf1xsfNgibr9rm",
        "rev": 0,
        "options": {"slug": "ramki", "label": "Рамки", "oldId": 10, "images": [], "params": [{"doc": "5AFVo9oOsgos7rs_UMHis"}, {"doc": "OKjt43TlIhPFVK4IYEmll"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "dbzqEVdY3kW0tRKLDi_f-"}, {"doc": "dhD9D2E9ND12577AYedg4"}, {"doc": "Q4Hm_t67TIpMMgGbdoOuC"}, {"doc": "niPVbiOm1OuB70ALTfDAV"}], "description": ""},
        "created": "2021-08-30 07:38:25.613607",
        "modified": "2021-08-30 07:38:25.613607",
        "deleted": false
      },
      {
        "id": "wiO5TdNw706v1u2UTwZsd",
        "rev": 0,
        "options": {"slug": "hdmi-rozetki", "label": "HDMI-Розетки", "oldId": 14, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "mbRa_gvkRPfVtLyFW6lVY"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}], "description": ""},
        "created": "2021-08-30 07:38:25.642522",
        "modified": "2021-08-30 07:38:25.642522",
        "deleted": false
      },
      {
        "id": "utIJXHXV5CQ_D_N01GsRW",
        "rev": 0,
        "options": {"slug": "rozetki-telefkompyuternye", "label": "Розетки телеф/компьютерные", "oldId": 16, "images": [], "params": [{"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "Q03hdVjtO7YHwpmOKCldw"}, {"doc": "ynWEBwOymNVSNA5lZUpzU"}, {"doc": "6D3xO6S1EVQg9qzZd_GRo"}], "description": ""},
        "created": "2021-08-30 07:38:25.693589",
        "modified": "2021-08-30 07:38:25.693589",
        "deleted": false
      },
      {
        "id": "_fMPwq9YR8sZasYXjFQ_k",
        "rev": 0,
        "options": {"slug": "vyklyuchateli-tumblernye-odinarnye", "label": "Выключатели тумблерные одинарные", "oldId": 40, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.724807",
        "modified": "2021-08-30 07:38:25.724807",
        "deleted": false
      },
      {
        "id": "pxHxx6JLq5pgjsA60Gg8n",
        "rev": 0,
        "options": {"slug": "vyklyuchateli-tumblernye-dvoynye", "label": "Выключатели тумблерные двойные", "oldId": 41, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.730076",
        "modified": "2021-08-30 07:38:25.730076",
        "deleted": false
      },
      {
        "id": "5oqxjvXuDnHS-n4UZWkau",
        "rev": 0,
        "options": {"slug": "upravlenie-zhalyuzi-povorotnye", "label": "Управление жалюзи поворотные", "oldId": 42, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.738273",
        "modified": "2021-08-30 07:38:25.738273",
        "deleted": false
      },
      {
        "id": "mBkvACFBdmeWm-BjpbzdG",
        "rev": 0,
        "options": {"slug": "upravlenie-zhalyuzi-tumblernye", "label": "Управление жалюзи тумблерные", "oldId": 43, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.745134",
        "modified": "2021-08-30 07:38:25.745134",
        "deleted": false
      },
      {
        "id": "XdekPZIU-OYLyJebDDg8g",
        "rev": 0,
        "options": {"slug": "vyklyuchateli-knopochnye", "label": "Выключатели кнопочные", "oldId": 44, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.750704",
        "modified": "2021-08-30 07:38:25.750704",
        "deleted": false
      },
      {
        "id": "M9IpigQkSiw-6MNG7Xz9k",
        "rev": 0,
        "options": {"slug": "potenciometry-", "label": "Потенциометры ", "oldId": 45, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.756702",
        "modified": "2021-08-30 07:38:25.756702",
        "deleted": false
      },
      {
        "id": "npGSIH1JN76wvKD9y4ab4",
        "rev": 0,
        "options": {"slug": "ruchka-povorotnaya", "label": "Ручка поворотная", "oldId": 46, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.763001",
        "modified": "2021-08-30 07:38:25.763001",
        "deleted": false
      },
      {
        "id": "5z-ZShdX3qvtJrZdyh4EN",
        "rev": 0,
        "options": {"slug": "vyklyuchateli-povorotnye-dvoynye", "label": "Выключатели поворотные двойные", "oldId": 39, "images": [], "params": [], "description": ""},
        "created": "2021-08-30 07:38:25.662279",
        "modified": "2021-08-30 07:38:25.662279",
        "deleted": false
      },
      {
        "id": "wUKCrinNJWWn34nFELjcz",
        "rev": 0,
        "options": {"slug": "akusticheskie-rozetki", "label": "Акустические розетки", "oldId": 17, "images": [], "params": [{"doc": "_ZfQMrIGASJEDa_0_T9hy"}, {"doc": "2jAeFoCPg4KeQpTwy2peZ"}, {"doc": "elWGB8BMeKGg96O6BIzv0"}, {"doc": "XJZp77a4YTiPpqfMnV0A5"}, {"doc": "-_I0_jDXU3y892ICFDt8o"}, {"doc": "Q03hdVjtO7YHwpmOKCldw"}], "description": ""},
        "created": "2021-08-30 07:38:25.670044",
        "modified": "2021-08-30 07:38:25.670044",
        "deleted": false
      }
    ]'::jsonb;

    FOR i IN SELECT * FROM jsonb_array_elements(dataList)
        LOOP
            INSERT INTO product_type (title, slug, old_id, options) values
                (i->'options'->>'label', i->'options'->>'slug', i->>'id', '{}'::jsonb) on conflict (title) do nothing;

        END LOOP;
END $$;