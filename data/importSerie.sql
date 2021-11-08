DO $$DECLARE r record;
             dataList jsonb;
             brandId int;
             opt jsonb;
             i jsonb;
BEGIN

    dataList = '[
      {
        "id": "hU8xdT5e2dE5s8ssNbd9Z",
        "rev": 0,
        "options": {"slug": "ramki-fede", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "рамки Fede", "oldId": 61, "images": [], "published": false, "description": "Эксклюзивно разработанные рамки Fede Barcelona изготовлены из настоящей латуни - это отличная находка для стильного неповторимого интерьера.Рамки Fede Barcelona для розеток и выключателей Fede выпускаются в популярных стильных цветах -белый декапо, матовый никель, блестящее золото и платина.\nУ нас в интернет-магазине Вы можете купить рамки Fede Barcelona или заказать рамки Fede Barcelona к розеткам и выключателям  Fede по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:14.643156",
        "modified": "2021-08-30 07:38:14.643156",
        "deleted": false
      },
      {
        "id": "1IcEtOJOIvBIaX-FkP6GC",
        "rev": 0,
        "options": {"slug": "shchitki-hager-golf", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Щитки Hager Golf", "oldId": 728, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.665765",
        "modified": "2021-08-30 07:38:14.665765",
        "deleted": false
      },
      {
        "id": "5J5HBWLQRK1b48XmOX9AQ",
        "rev": 0,
        "options": {"slug": "merten-d-life-bazalt-kamen", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE базальт, камень", "oldId": 746, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.685149",
        "modified": "2021-08-30 07:38:14.685149",
        "deleted": false
      },
      {
        "id": "bksini9hFUq3XE-TviRYe",
        "rev": 0,
        "options": {"slug": "ledmonster-kub-in-b-frame", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster KUB IN B FRAME", "oldId": 588, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.708242",
        "modified": "2021-08-30 07:38:14.708242",
        "deleted": false
      },
      {
        "id": "Ll-Z7gcfIqFO2A0qBw37n",
        "rev": 0,
        "options": {"slug": "gira-system-55-antracit", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA System 55 антрацит", "oldId": 95, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.726712",
        "modified": "2021-08-30 07:38:14.726712",
        "deleted": false
      },
      {
        "id": "PBIF1JBPgU0SY4JJxfZxy",
        "rev": 0,
        "options": {"slug": "podvesnye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Подвесные светильники Horoz Electric", "oldId": 433, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.742372",
        "modified": "2021-08-30 07:38:14.742372",
        "deleted": false
      },
      {
        "id": "-lTCeo5CaiZHtX04YDL1Y",
        "rev": 0,
        "options": {"slug": "malye-shchitki-naruzhnoy-ustanovki-volta-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Малые щитки наружной установки Volta Hager", "oldId": 447, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.756521",
        "modified": "2021-08-30 07:38:14.756521",
        "deleted": false
      },
      {
        "id": "UyefbxByPejOgaNDikWER",
        "rev": 0,
        "options": {"slug": "abb-dynasty-antichnaya-latun", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty античная латунь", "oldId": 508, "images": [], "published": false, "description": "У нас в интернет-магазине VipRozetki.ru Вы можете купить розетки,клавиши и накладки ABB Dynasty античная латунь ,заказать розетки ABB Dynasty античная латунь от компании ABB по отличной цене и с доставкой по Москве .\n", "productTypes": []},
        "created": "2021-08-30 07:38:14.773255",
        "modified": "2021-08-30 07:38:14.773255",
        "deleted": false
      },
      {
        "id": "k0llxF9gSG0da3GEoQ1pu",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-antichnaya-latunbelaya-rospis", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки античная латунь,белая роспись", "oldId": 512, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.787471",
        "modified": "2021-08-30 07:38:14.787471",
        "deleted": false
      },
      {
        "id": "tgB2EkFPLhUFLt4A2O7Ae",
        "rev": 0,
        "options": {"slug": "merten-d-life-shampan-metall", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE шампань металл", "oldId": 742, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.806515",
        "modified": "2021-08-30 07:38:14.806515",
        "deleted": false
      },
      {
        "id": "k4PSBHoOGESAN25-YcLuv",
        "rev": 0,
        "options": {"slug": "jung-a-500-mokko", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 мокко", "oldId": 4, "images": [], "published": false, "description": "&nbsp;Рамки, выключатели, розетки, заглушки и накладки&nbsp;JUNG A 500 необычного цвета мокко внесут особый шарм в интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:14.820795",
        "modified": "2021-08-30 07:38:14.820795",
        "deleted": false
      },
      {
        "id": "11_qe6Uxj6meLwGEzL_qN",
        "rev": 0,
        "options": {"slug": "uzo-4-polyusnye-hager-a-tip", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "УЗО 4 полюсные Hager A-тип", "oldId": 716, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.837924",
        "modified": "2021-08-30 07:38:14.837924",
        "deleted": false
      },
      {
        "id": "CSzP795Ycfj4iPClUPRgL",
        "rev": 0,
        "options": {"slug": "aksessuary-bachmann", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Аксессуары Bachmann", "oldId": 272, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.857450",
        "modified": "2021-08-30 07:38:14.857450",
        "deleted": false
      },
      {
        "id": "qfMYyxkAW3AmBwEDmadas",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-mehanizmy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea life механизмы", "oldId": 123, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.872480",
        "modified": "2021-08-30 07:38:14.872480",
        "deleted": false
      },
      {
        "id": "ndHnyQELCKBArmk71O8O1",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-hrom", "brand": null, "label": "Рамки Lux International хром", "oldId": 627, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.889243",
        "modified": "2021-08-30 07:38:14.889243",
        "deleted": false
      },
      {
        "id": "yGaXRJZsrMujKRKyJ-op5",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-rustico-cobrizo", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede RUSTICO COBRIZO", "oldId": 210, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.898128",
        "modified": "2021-08-30 07:38:14.898128",
        "deleted": false
      },
      {
        "id": "NnqfMdLSdX_cOSkooRWmI",
        "rev": 0,
        "options": {"slug": "ustroystvo-zashchitnogo-otklyucheniya-hager-ac-tip", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Устройство защитного отключения Hager AC-тип", "oldId": 711, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.920277",
        "modified": "2021-08-30 07:38:14.920277",
        "deleted": false
      },
      {
        "id": "tS9WWXDw1SscU4lxvEbIr",
        "rev": 0,
        "options": {"slug": "uzo-2-polyusnye-hager-a-tip", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "УЗО 2 полюсные Hager A-тип", "oldId": 715, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.940235",
        "modified": "2021-08-30 07:38:14.940235",
        "deleted": false
      },
      {
        "id": "cmBoou3Xf3OJIam6hDmHO",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-dimmiruemye-qf", "brand": "aaB-UsNNQKo48BOAKsTD7", "label": "Светодиодные светильники диммируемые Q&F", "oldId": 469, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить светодиодные светильники диммируемые Q&F или заказать светодиодные светильники Q&F с возможностью регулировки диммером для дома и дачи ,встраиваемые светильники по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.398410",
        "modified": "2021-08-30 07:38:15.398410",
        "deleted": false
      },
      {
        "id": "EGMKgpYy7j0_AuFzgiQSN",
        "rev": 0,
        "options": {"slug": "ledmonster-olive", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster OLIVE", "oldId": 575, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.413167",
        "modified": "2021-08-30 07:38:15.413167",
        "deleted": false
      },
      {
        "id": "WJJNseIF9mHdnZi1Jk5Kr",
        "rev": 0,
        "options": {"slug": "obogrev-truboprovoda-i-trub-ebeco", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Oбогрев трубопровода и труб Ebeco", "oldId": 267, "images": [], "published": false, "description": "Электрические кабельные системы&nbsp;&nbsp;Ebeco применяюстя для обогрева труб в частных домах для предотвращениях замерзания трубопроводов, канализаций, систем водоснабжения. Необходимости в установке терморегулятора нет: кабель &nbsp;&nbsp;Ebeco&nbsp;реагирует на температуру окружающей среды и в соответствии с ней больше или меньше нагревается.&nbsp;\nВ нашем интернет-магазине Вы можете приобрести кабель Ebeco для обогрева труб и трубопроводов&nbsp;на выгодных условиях.&nbsp;\nhttp://ihe.ru/ufiles/s1.jpg\" style=\"height:250px; width:250px\" />http://www.ebeco.ru/img/db/1453.jpg\" style=\"height:250px; width:250px\" />http://www.300watt.ru/images/product_images/popup_images/35_0.jpg\" style=\"height:250px; width:300px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:14.956949",
        "modified": "2021-08-30 07:38:14.956949",
        "deleted": false
      },
      {
        "id": "lu3b1pn_rPsKEVJHNx-sg",
        "rev": 0,
        "options": {"slug": "berker-mehanizmy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker механизмы", "oldId": 44, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.978286",
        "modified": "2021-08-30 07:38:14.978286",
        "deleted": false
      },
      {
        "id": "XRXIH1T7M5MCRZEO2_36y",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-new-rozetki-i-vyklyuchateli-bezhevyy", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA NEW розетки и выключатели бежевый", "oldId": 759, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:14.994541",
        "modified": "2021-08-30 07:38:14.994541",
        "deleted": false
      },
      {
        "id": "PiZRz9rBPpKro9X5lL5Lt",
        "rev": 0,
        "options": {"slug": "delta-natur-klen-krasnyy", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Delta Natur клен красный", "oldId": 59, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки серии Siemens DELTA natur&nbsp;выполненные в цвете&nbsp;\"клен красный\"&nbsp;будут служить Вам долгие годы и радовать прекрасным исполнением.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.015912",
        "modified": "2021-08-30 07:38:15.015912",
        "deleted": false
      },
      {
        "id": "f0Wz76AV5NF1WGBXg7In3",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-steklo-akvamarin", "brand": null, "label": "Рамки Lux International стекло аквамарин", "oldId": 620, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.034461",
        "modified": "2021-08-30 07:38:15.034461",
        "deleted": false
      },
      {
        "id": "n3RfpPka-LarqtCvZ3RCF",
        "rev": 0,
        "options": {"slug": "merten-d-life-antracit", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE антрацит", "oldId": 737, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.044859",
        "modified": "2021-08-30 07:38:15.044859",
        "deleted": false
      },
      {
        "id": "LIyhj9Ja9-iao3wt8sBs4",
        "rev": 0,
        "options": {"slug": "merten-m-plan-antracit", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten M-plan антрацит", "oldId": 165, "images": [], "published": false, "description": "Серия Merten M-PLAN цвета\"антрацит\". Изделия Merten M-PLAN&nbsp;антрацитового цвета идеально подойдут для стильных и лаконичных интерьеров.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.060137",
        "modified": "2021-08-30 07:38:15.060137",
        "deleted": false
      },
      {
        "id": "7iOnGayAMjK6bFovMkNP6",
        "rev": 0,
        "options": {"slug": "ledmonster-eva-s", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster  EVA S", "oldId": 559, "images": [], "published": false, "description": "Светодиодный светильник LedMonster  EVA S - уникальный по своим возможностям и техническим характеристикам встраиваемый светильник в квадратном исполнении. В комплекте сменные накладки белого или черного цвета. А так же 2 рефлектора, благодаря которым можно выбирать угол свечения 23 или 50 градусов. Направление свечения так же легко регулируется благодаря подвижной части светильника. Обладает цветопередачей 90+ Ra и комплектуется диммируемым драйвером тока HEP.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.073458",
        "modified": "2021-08-30 07:38:15.073458",
        "deleted": false
      },
      {
        "id": "Ul2HGT6p4bGXENcBiPbh4",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-chernyy-tehnopolimer", "brand": null, "label": "Рамки Lux International черный технополимер", "oldId": 656, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.087926",
        "modified": "2021-08-30 07:38:15.087926",
        "deleted": false
      },
      {
        "id": "pQwECvK711CRgqEUskF-c",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-45ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 4,5kA, C характеристики", "oldId": 436, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.097987",
        "modified": "2021-08-30 07:38:15.097987",
        "deleted": false
      },
      {
        "id": "Gm0gEgPWZnBKjdACPP5mD",
        "rev": 0,
        "options": {"slug": "merten-antik-zoloto", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Antik золото", "oldId": 154, "images": [], "published": false, "description": "Серия Merten Antik&nbsp;цвета \"золото\" внесут изысканные детали в Ваш шикарный интерьер.\n&nbsp;В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить рамки Merten Antik золотого цвета с доставкой и по выгодной цене.\n\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.112747",
        "modified": "2021-08-30 07:38:15.112747",
        "deleted": false
      },
      {
        "id": "RTFF2mpVUfsUmDxrVQssp",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-md-w", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX MD-W", "oldId": 688, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.128563",
        "modified": "2021-08-30 07:38:15.128563",
        "deleted": false
      },
      {
        "id": "yKyfr5MIkuTN2QYoLOQr8",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-flat", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX FLAT", "oldId": 695, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.143752",
        "modified": "2021-08-30 07:38:15.143752",
        "deleted": false
      },
      {
        "id": "bdnv50-rnLOqbvNHdMzxr",
        "rev": 0,
        "options": {"slug": "slabotochnye-shchity-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Слаботочные щиты Hager", "oldId": 710, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.158265",
        "modified": "2021-08-30 07:38:15.158265",
        "deleted": false
      },
      {
        "id": "SWgD5AVq8Onw6uwYTnL4o",
        "rev": 0,
        "options": {"slug": "jung-ls-990-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 алюминий", "oldId": 137, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 цвета \"алюминий\" гармонично впишутся в любой интерьер и долго будут радовать своей функциональностью.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.186384",
        "modified": "2021-08-30 07:38:15.186384",
        "deleted": false
      },
      {
        "id": "qYK097eqfmlU624DyDlmk",
        "rev": 0,
        "options": {"slug": "svetodiodnye-ofisnye-paneli-donolux", "brand": "jzCAXiDuy_5y0LuvZK7hF", "label": "Светодиодные офисные панели Donolux", "oldId": 323, "images": [], "published": false, "description": "Светодиодные офисные панели Donolux применяются в общественных учреждениях - школах, больницах, отелях, офисах. Они отличаются высокой светоотдачей и эффективным потреблением энергии. Использование светодиодных офисных панелей Donolux помогает сохранять бюджет за счет экономии на потреблении электроэнергии.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает выгодные условия на покупку светодиодных офисных панелей Donolux - экономичную цену и доставку.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.196854",
        "modified": "2021-08-30 07:38:15.196854",
        "deleted": false
      },
      {
        "id": "NVRigIJ6pxshmTslNUvY5",
        "rev": 0,
        "options": {"slug": "merten-m-plan-bezhevyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten М-plan бежевый", "oldId": 168, "images": [], "published": false, "description": "Серия Merten M-PLAN цвета \"бежевый\". Изделия Merten M-PLAN нейтрального бежевого цвета дополнят облик любого интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.210024",
        "modified": "2021-08-30 07:38:15.210024",
        "deleted": false
      },
      {
        "id": "kHX839Bx-kvfcLEKRxqhO",
        "rev": 0,
        "options": {"slug": "ramki-one-international-antracit", "brand": null, "label": "Рамки One International антрацит", "oldId": 615, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.232656",
        "modified": "2021-08-30 07:38:15.232656",
        "deleted": false
      },
      {
        "id": "4epJOu7h95fgGzc7rt3jC",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnye-maty-devi-dsvf", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Теплые полы нагревательные маты Devi DSVF", "oldId": 342, "images": [], "published": false, "description": "Теплые полы Devi DSVF представляют собой нагревательный мат из сверхтонкого одножильного кабеля диаметром 2,5мм.&nbsp;Теплые полы нагревательные маты Devi DSVF подойдут для установки с лююбым типом полов в любых помещениях.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить теплые полы &nbsp;Devi DSVF&nbsp;по выгодной цене и заказать доставку.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.240123",
        "modified": "2021-08-30 07:38:15.240123",
        "deleted": false
      },
      {
        "id": "rN0wf8Ov80q24vGw6oE9W",
        "rev": 0,
        "options": {"slug": "kontaktory-i-rele-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Контакторы и реле Hager", "oldId": 731, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.252666",
        "modified": "2021-08-30 07:38:15.252666",
        "deleted": false
      },
      {
        "id": "_0IFXhIOa7XhCXC1lr_90",
        "rev": 0,
        "options": {"slug": "bticino-axolute-antracit", "brand": "G9QW9gXfruqcKx3ecg9jn", "label": "Bticino Axolute антрацит", "oldId": 47, "images": [], "published": false, "description": "У нас в интернет-магазине Вы можете купить розетки и выключатели Bticino Axolute  антрацит или заказать розетки и выключатели Bticino Axolute  антрацит для всех видов рамок Bticino Axolute по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.263497",
        "modified": "2021-08-30 07:38:15.263497",
        "deleted": false
      },
      {
        "id": "0qOqQf0G4Ckp2fR8HtiF2",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-polirovannaya-latunbelaya-rospis", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки полированная латунь,белая роспись", "oldId": 516, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.274962",
        "modified": "2021-08-30 07:38:15.274962",
        "deleted": false
      },
      {
        "id": "Gzqa_-NxeiavRGp35dTfb",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-antichnaya-latunchyornoe-steklo", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки античная латунь,чёрное стекло", "oldId": 513, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.289189",
        "modified": "2021-08-30 07:38:15.289189",
        "deleted": false
      },
      {
        "id": "pQHgYYEQh9RKY9aVqyCf_",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-steklo-ohra", "brand": null, "label": "Рамки Lux International стекло охра", "oldId": 622, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.299143",
        "modified": "2021-08-30 07:38:15.299143",
        "deleted": false
      },
      {
        "id": "AMjEEGsV30ZtfwM0HMi1T",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-chereshnya", "brand": null, "label": "Рамки Lux International черешня", "oldId": 624, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.306546",
        "modified": "2021-08-30 07:38:15.306546",
        "deleted": false
      },
      {
        "id": "V3Y1ItAw923SorkXyhfQG",
        "rev": 0,
        "options": {"slug": "ramki-one-international-kremovyy", "brand": null, "label": "Рамки One International кремовый", "oldId": 612, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.313657",
        "modified": "2021-08-30 07:38:15.313657",
        "deleted": false
      },
      {
        "id": "z5AsUaZVyF7gWtYhFLcCr",
        "rev": 0,
        "options": {"slug": "ramki-one-international-slonovaya-kost", "brand": null, "label": "Рамки One International слоновая кость", "oldId": 613, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.320798",
        "modified": "2021-08-30 07:38:15.320798",
        "deleted": false
      },
      {
        "id": "Ia7GtjPvA43-qiYzhs5Ag",
        "rev": 0,
        "options": {"slug": "difavtomaty-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Дифавтоматы Hager", "oldId": 441, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.332553",
        "modified": "2021-08-30 07:38:15.332553",
        "deleted": false
      },
      {
        "id": "OIy-EjsT6DelWEgohyusC",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-standart", "brand": null, "label": "Светодиодная лента STANDART", "oldId": 414, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.342953",
        "modified": "2021-08-30 07:38:15.342953",
        "deleted": false
      },
      {
        "id": "A4gZio1bwDtLqwm6F36XS",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-standart-24-volt", "brand": null, "label": "Светодиодная лента герметичная STANDART 24 вольт", "oldId": 418, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.349814",
        "modified": "2021-08-30 07:38:15.349814",
        "deleted": false
      },
      {
        "id": "RazUHIXwk2V1UvSx6ZvVd",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-svecheobraznye-e27", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss свечеобразные E27", "oldId": 494, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.358030",
        "modified": "2021-08-30 07:38:15.358030",
        "deleted": false
      },
      {
        "id": "dS4VVSxGnuGF4YUCftXSO",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-standart-12-volt", "brand": null, "label": "Светодиодная лента STANDART 12 вольт", "oldId": 415, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.371685",
        "modified": "2021-08-30 07:38:15.371685",
        "deleted": false
      },
      {
        "id": "q3P-H2RiZWtfzPy0E4t3g",
        "rev": 0,
        "options": {"slug": "berker-r1-ramki", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.1 рамки", "oldId": 461, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.382705",
        "modified": "2021-08-30 07:38:15.382705",
        "deleted": false
      },
      {
        "id": "blK-b-YSIz6bW9rr5eDOG",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-lux", "brand": null, "label": "Светодиодная лента LUX", "oldId": 408, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.425791",
        "modified": "2021-08-30 07:38:15.425791",
        "deleted": false
      },
      {
        "id": "LX75FXrUo1YmBfZ2LuIIQ",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-metall", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede металл", "oldId": 201, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.435504",
        "modified": "2021-08-30 07:38:15.435504",
        "deleted": false
      },
      {
        "id": "7DjO31hcDVvlrstcfix2X",
        "rev": 0,
        "options": {"slug": "ramki-one-international-morskoy-siniy", "brand": null, "label": "Рамки One International морской синий", "oldId": 616, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.447269",
        "modified": "2021-08-30 07:38:15.447269",
        "deleted": false
      },
      {
        "id": "4TlYtA-OLByQf1mPaYtYB",
        "rev": 0,
        "options": {"slug": "rele-zamel-exta-i-moduli", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Реле Zamel Exta и модули", "oldId": 545, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.456100",
        "modified": "2021-08-30 07:38:15.456100",
        "deleted": false
      },
      {
        "id": "4ymN9bLv_rJz9dbuickOy",
        "rev": 0,
        "options": {"slug": "jung-as-500", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG AS 500", "oldId": 34, "images": [], "published": false, "description": "Розетки и выключатели Jung AS 500 так и притягивают взгляд. Изящные формы розеток и выключателей Jung AS 500 будут не только стильным, но и очень полезным приобретением. Рамки и клавиши Jung AS 500 выпускаются в белом цвете и цвете слоновой кости в одном стиле. Отличительная черта изделий Jung AS 500 - универсальность в применении и приятные внешние характеристики.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.477534",
        "modified": "2021-08-30 07:38:15.477534",
        "deleted": false
      },
      {
        "id": "zgf8HnmjLwQpHLSjNkZZT",
        "rev": 0,
        "options": {"slug": "legrand-valena-belyy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Valena белый", "oldId": 129, "images": [], "published": false, "description": "Серия Legrand Valena белого цвета - это классика, которая удачно впишется в интерьер дома или офиса.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.496210",
        "modified": "2021-08-30 07:38:15.496210",
        "deleted": false
      },
      {
        "id": "HAnPoBchL3JKFu3yVNAAN",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-kremovyy", "brand": null, "label": "Рамки Geo International кремовый", "oldId": 646, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.512997",
        "modified": "2021-08-30 07:38:15.512997",
        "deleted": false
      },
      {
        "id": "plo1PmbS7yzydfVW3Z15w",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-antracit", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi антрацит", "oldId": 780, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.524489",
        "modified": "2021-08-30 07:38:15.524489",
        "deleted": false
      },
      {
        "id": "bMrLDznhRNnhcc5-LY5uF",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi алюминий", "oldId": 781, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.544165",
        "modified": "2021-08-30 07:38:15.544165",
        "deleted": false
      },
      {
        "id": "X87CezL3D-32kPcTNaS42",
        "rev": 0,
        "options": {"slug": "taymery-zamel-exta", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Таймеры Zamel Exta", "oldId": 547, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.560050",
        "modified": "2021-08-30 07:38:15.560050",
        "deleted": false
      },
      {
        "id": "Kqd7qqt2LrhUOU6TuddXF",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-antracit", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки антрацит", "oldId": 510, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.580147",
        "modified": "2021-08-30 07:38:15.580147",
        "deleted": false
      },
      {
        "id": "mp3eEZyi_EHo2Qd74OgbX",
        "rev": 0,
        "options": {"slug": "impulsnye-istochniki-pitaniya", "brand": null, "label": "Импульсные источники питания", "oldId": 419, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.592466",
        "modified": "2021-08-30 07:38:15.592466",
        "deleted": false
      },
      {
        "id": "k7q2poEcAs1jc-HbJTw1f",
        "rev": 0,
        "options": {"slug": "bticino-axolute-alyuminiy", "brand": "G9QW9gXfruqcKx3ecg9jn", "label": "Bticino Axolute алюминий", "oldId": 46, "images": [], "published": false, "description": "У нас в интернет-магазине Вы можете купить розетки и выключатели Bticino Axolute алюминий или заказать розетки и выключатели Bticino Axolute алюминий для всех видов рамок Bticino Axolute  по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.605556",
        "modified": "2021-08-30 07:38:15.605556",
        "deleted": false
      },
      {
        "id": "anwzqFoHF4oHCu0DCo7fN",
        "rev": 0,
        "options": {"slug": "fontini-venezia-ramki", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia рамки", "oldId": 79, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать с доставкой ретро-рамки Fontini Venezia &nbsp;по привлекательной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.621268",
        "modified": "2021-08-30 07:38:15.621268",
        "deleted": false
      },
      {
        "id": "i3JNldOiGMTDpDdovKMQY",
        "rev": 0,
        "options": {"slug": "abb-zenit-belyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Zenit белый", "oldId": 25, "images": [], "published": false, "description": "Серия АББ Zenit&nbsp;классического цвета \"белый\" внесет свежесть в Ваш интерьер.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.641943",
        "modified": "2021-08-30 07:38:15.641943",
        "deleted": false
      },
      {
        "id": "iJ4RfBWzfYZkCbCg8i6vI",
        "rev": 0,
        "options": {"slug": "merten-d-life-belyy-lotos", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE белый лотос", "oldId": 736, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.655109",
        "modified": "2021-08-30 07:38:15.655109",
        "deleted": false
      },
      {
        "id": "BPjTFfBm4nkL30QzhFrRb",
        "rev": 0,
        "options": {"slug": "jung-ls-990", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990", "oldId": 102, "images": [], "published": false, "description": "Розетки и выключатели Jung LS 990 - это элегантные выключатели и розетки, изготовленные из практичных материалов. Кроме того, изделия компании Jung могут иметь покрытие из золота и других благородных металлов. Классический дизайн Jung LS 990 позволяет розеткам и выключателям гармонично смотреться в любом интерьере. Серия представлена в большом и разнообразном количестве цветов - Jung LS 990 белый, Jung LS 990 слоновая кость, хром, антрацит, латунь, черный и светло-серый. Особенно стильно смотрятся розетки и выключатели JUNG LS 990 натуральный алюминий и JUNG LS 990 благородная сталь.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.668727",
        "modified": "2021-08-30 07:38:15.668727",
        "deleted": false
      },
      {
        "id": "H96AYseKwHpYputJ5EWDL",
        "rev": 0,
        "options": {"slug": "simon-82-klavishi-i-nakladki", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 клавиши и накладки", "oldId": 592, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.684115",
        "modified": "2021-08-30 07:38:15.684115",
        "deleted": false
      },
      {
        "id": "05adoIChkCrms_7d6BCOx",
        "rev": 0,
        "options": {"slug": "rasprodazha", "brand": "6URe3F5wxePfLvhP63JVS", "label": "Распродажа", "oldId": 662, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.698502",
        "modified": "2021-08-30 07:38:15.698502",
        "deleted": false
      },
      {
        "id": "uRILnJxTrDnJ4CDuYxebG",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-simon-connect-dlya-falsh-polov-s-glubinoy-90-120-mm", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Лючки напольные Simon Connect для фальш-полов с глубиной 90-120 мм", "oldId": 300, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.717279",
        "modified": "2021-08-30 07:38:15.717279",
        "deleted": false
      },
      {
        "id": "2LU4i0igZqGrrO8blzNac",
        "rev": 0,
        "options": {"slug": "siemens-delta-line-bezhevyy", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Line бежевый", "oldId": 192, "images": [], "published": false, "description": "Розетки,выключатели, рамки и накладки серии Siemens DELTA line&nbsp;цвета&nbsp;\"бежевый\". Изделия Siemens DELTA line \"бежевый\"&nbsp; идеально подойдут для классического интерьера и добавят уюта.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.732962",
        "modified": "2021-08-30 07:38:15.732962",
        "deleted": false
      },
      {
        "id": "IYdOB1Gl3SxcEFA65KBX7",
        "rev": 0,
        "options": {"slug": "zamel-exta-free-radiopriemniki", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Zamel Exta Free радиоприемники", "oldId": 539, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.753711",
        "modified": "2021-08-30 07:38:15.753711",
        "deleted": false
      },
      {
        "id": "zCLutSw5RT8N98cUs2eWx",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-esylux-flat", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики присутствия ESYLUX FLAT", "oldId": 694, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.776247",
        "modified": "2021-08-30 07:38:15.776247",
        "deleted": false
      },
      {
        "id": "uRDh81cZUGcktXAaNgyQq",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-elite-12-volt", "brand": null, "label": "Светодиодная лента ELITE 12 вольт", "oldId": 407, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.793191",
        "modified": "2021-08-30 07:38:15.793191",
        "deleted": false
      },
      {
        "id": "IRE6fNULmOU-CxABeWEnP",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-lux-24-volt", "brand": null, "label": "Светодиодная лента LUX 24 вольт", "oldId": 412, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.805411",
        "modified": "2021-08-30 07:38:15.805411",
        "deleted": false
      },
      {
        "id": "2-s6IvGv9tt86nVegVvUr",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-elite-12-volt", "brand": null, "label": "Светодиодная лента герметичная ELITE 12 вольт", "oldId": 404, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.813937",
        "modified": "2021-08-30 07:38:15.813937",
        "deleted": false
      },
      {
        "id": "Pw0FpPp6PMoLvb-qcdo0t",
        "rev": 0,
        "options": {"slug": "simon-82-ramki-original", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 рамки Original", "oldId": 593, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.823971",
        "modified": "2021-08-30 07:38:15.823971",
        "deleted": false
      },
      {
        "id": "L8RYYz8tXGKxDocV39vE7",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-compact-mini", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX Compact mini", "oldId": 682, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.848891",
        "modified": "2021-08-30 07:38:15.848891",
        "deleted": false
      },
      {
        "id": "MX-HtJmJ_nB3mQJ3b76P-",
        "rev": 0,
        "options": {"slug": "bra-fabbian", "brand": "K0FfZN2GksbvTzJElwgRj", "label": "Бра Fabbian", "oldId": 274, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить итальянские хрустальные бра Fabbian по отличной цене и с гарантией .\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.867451",
        "modified": "2021-08-30 07:38:15.867451",
        "deleted": false
      },
      {
        "id": "HpCnSgFIntwrSyk1iwBBS",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-belyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi белый", "oldId": 778, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.887629",
        "modified": "2021-08-30 07:38:15.887629",
        "deleted": false
      },
      {
        "id": "pd2vW8jtEU40sqS7k_vX3",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-slonovaya-kost", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi слоновая кость", "oldId": 779, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.901426",
        "modified": "2021-08-30 07:38:15.901426",
        "deleted": false
      },
      {
        "id": "zUIMzXQKgRndvDzFSReyk",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-deco", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi Deco", "oldId": 775, "images": [{"alt": "JUNG ECO PROFI DECO- серия розеток и выключателей широкого спектра применения. Приятный сдержанный дизайн этой серии позволяет использовать продукцию как для офисных, так и для жилых помещений. Изящные рамки ECO PROFI DECO изготовлены из высококачественного термопласта, и даже после долгой и активной эксплуатации изделия не испачкаются и не поцарапаются. Цвета рамок универсальны, покупатель может выбрать рамки в белом цвете, в цветах антрацит, слоновая кость, алюминий.", "path": "uploads/series/77/775/1556370724937.jpg"}, {"alt": "JUNG ECO PROFI DECO- серия розеток и выключателей широкого спектра применения. Приятный сдержанный дизайн этой серии позволяет использовать продукцию как для офисных, так и для жилых помещений. Изящные рамки ECO PROFI DECO изготовлены из высококачественного термопласта, и даже после долгой и активной эксплуатации изделия не испачкаются и не поцарапаются. Цвета рамок универсальны, покупатель может выбрать рамки в белом цвете, в цветах антрацит, слоновая кость, алюминий.", "path": "uploads/series/77/775/1556370733520.jpg"}, {"alt": "JUNG ECO PROFI DECO- серия розеток и выключателей широкого спектра применения. Приятный сдержанный дизайн этой серии позволяет использовать продукцию как для офисных, так и для жилых помещений. Изящные рамки ECO PROFI DECO изготовлены из высококачественного термопласта, и даже после долгой и активной эксплуатации изделия не испачкаются и не поцарапаются. Цвета рамок универсальны, покупатель может выбрать рамки в белом цвете, в цветах антрацит, слоновая кость, алюминий.", "path": "uploads/series/77/775/1556370745638.png"}], "published": true, "description": "JUNG ECO PROFI DECO- серия розеток и выключателей широкого спектра применения. Приятный сдержанный дизайн этой серии позволяет использовать продукцию как для офисных, так и для жилых помещений. Изящные рамки ECO PROFI DECO изготовлены из высококачественного термопласта, и даже после долгой и активной эксплуатации изделия не испачкаются и не поцарапаются. Цвета рамок универсальны, покупатель может выбрать рамки в белом цвете, в цветах антрацит, слоновая кость, алюминий.", "productTypes": []},
        "created": "2021-08-30 07:38:15.914360",
        "modified": "2021-08-30 07:38:15.914360",
        "deleted": false
      },
      {
        "id": "ZeDlWVNtPWX4CIwGZeoba",
        "rev": 0,
        "options": {"slug": "abb-dynasty-belaya", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty белая", "oldId": 507, "images": [], "published": false, "description": "У нас в интернет-магазине VipRozetki.ru Вы можете купить розетки,клавиши и накладки ABB Dynasty белая ,заказать розетки ABB Dynasty белая от компании ABB по отличной цене и с доставкой по Москве .\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.927884",
        "modified": "2021-08-30 07:38:15.927884",
        "deleted": false
      },
      {
        "id": "jxMLJzmYZmWrcWdtWEeqa",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-elite-24-volt", "brand": null, "label": "Светодиодная лента герметичная ELITE 24 вольт", "oldId": 405, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.939934",
        "modified": "2021-08-30 07:38:15.939934",
        "deleted": false
      },
      {
        "id": "HFSzEzOVRd6X08vcMNjWd",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-2-polyusnye-45ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 2 полюсные 4,5kA, C характеристики", "oldId": 438, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.947815",
        "modified": "2021-08-30 07:38:15.947815",
        "deleted": false
      },
      {
        "id": "jsn3gGKN3yWFhWxdv_Rnp",
        "rev": 0,
        "options": {"slug": "abb-zenit-shampan", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Zenit шампань", "oldId": 26, "images": [], "published": false, "description": "Розетки и выключатели серии &nbsp;ABB Zenit оригинального цвета шампань придадут Вашему интерьеру особый лоск.\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете приобрести эти и другие изделия&nbsp;ABB по привлекательной цене с доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.957438",
        "modified": "2021-08-30 07:38:15.957438",
        "deleted": false
      },
      {
        "id": "PfRtKJoAxKCkBqUaMJ7eY",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-kislotnaya", "brand": null, "label": "Рамки Lux International кислотная", "oldId": 628, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.967478",
        "modified": "2021-08-30 07:38:15.967478",
        "deleted": false
      },
      {
        "id": "PFc7v0B-8K3jxnXx4Vggu",
        "rev": 0,
        "options": {"slug": "uzo-2-polyusnye-hager-as-tip", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "УЗО 2 полюсные Hager AС-тип", "oldId": 443, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:15.977049",
        "modified": "2021-08-30 07:38:15.977049",
        "deleted": false
      },
      {
        "id": "lbIMnlSHa8rYXG5RF_WwX",
        "rev": 0,
        "options": {"slug": "berker", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker", "oldId": 37, "images": [], "published": false, "description": "Компания Berker выпускает розетки Berker и выключатели Berker, известные во всем мире благодаря своей надежности, функциональности, притягательному дизайну и безупречному качеству.\nВ нашем интернет-магазине Вы можете купить розетки и выключатели самых популярных серий компании Berker. У нас выгодные условия покупки выключателей и розеток Berker, в частности низкие цены на розетки и выключатели Berker.\nОсобой популярностью на мировом рынке пользуются серии розеток и выключателей Berker Arsys, Berker K.1 и Berker K.5, Berker K.1 и Berker K.5.\nСерия Berker Arsys отличается своей изысканностью и элегантностью. Изделия, выполненные из нержавеющей стали, не оставят равнодушным ни одного пользователя, которому важны не только функциональность и надежность, но и дорогой внешний вид продукции. Цвет Berker Arsys:Berker полярная белизна, Berker белый, Berker коричневый. Материал Berker Arsus:Berker металл под золото, Berker металл под светлую бронзу, Berker нержавеющая сталь.\nСерии Berker B.1, Berker B.3 и Berker B.7 обращают на себя внимание благодаря выигрышному сочетанию цвета и формы.\nBerker K.1 и Berker K.5 придадут вашему интерьеру стиль, а многообразие цветовых решений позволит найти вариант, который нужен именно Вам. Цвета поверхности Berker K.1 полярная белизна, Berker алюминий, Berker антрацит. Материал Berker K.5 - нержавеющая сталь.\nРозетки Berker и выключатели Berker серии S.1 впишутся в классический интерьер, так как выпускаются в строгих белых и бежевых цветовых решениях. Цвета поверхности Berker S.1 - полярная белизна(матовая и глянцевая поверхность), Berker белый глянцевый.\n", "productTypes": []},
        "created": "2021-08-30 07:38:15.989891",
        "modified": "2021-08-30 07:38:15.989891",
        "deleted": false
      },
      {
        "id": "l8je2-jdSGnebLvCF7FD_",
        "rev": 0,
        "options": {"slug": "uzo-4-polyusnye-hager-as-tip", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "УЗО 4 полюсные Hager AС-тип", "oldId": 444, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.003254",
        "modified": "2021-08-30 07:38:16.003254",
        "deleted": false
      },
      {
        "id": "BeV8gOip9K18WY5gKu3Zd",
        "rev": 0,
        "options": {"slug": "shchitki-naruzhnoy-ustanovki-hager-golf", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Щитки наружной установки Hager Golf", "oldId": 727, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.016242",
        "modified": "2021-08-30 07:38:16.016242",
        "deleted": false
      },
      {
        "id": "EJd-ctNKFEDS_MAI8kp5i",
        "rev": 0,
        "options": {"slug": "malye-shchitki-volta-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Малые щитки Volta Hager", "oldId": 446, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.035541",
        "modified": "2021-08-30 07:38:16.035541",
        "deleted": false
      },
      {
        "id": "rfOjppSj2fu6jtmdDR_Cx",
        "rev": 0,
        "options": {"slug": "merten-artec-stal", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Artec сталь", "oldId": 161, "images": [], "published": false, "description": "Серия Merten Artec стального цвета. Изделия серии&nbsp;&nbsp;Merten Artec&nbsp;стального цвета отлично впишутся в современный стильный интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.051552",
        "modified": "2021-08-30 07:38:16.051552",
        "deleted": false
      },
      {
        "id": "yYQHcrmDmiBsep9dv3R_Y",
        "rev": 0,
        "options": {"slug": "abb-impuls-belyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls белый", "oldId": 17, "images": [], "published": false, "description": "Серия ABB Impuls классического&nbsp;белого цвета органично впишется в любой интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.062847",
        "modified": "2021-08-30 07:38:16.062847",
        "deleted": false
      },
      {
        "id": "h__nirxZbUWoM2laQ8OZu",
        "rev": 0,
        "options": {"slug": "fontini-garby-colonial-ramki", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Garby Colonial рамки", "oldId": 74, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать с доставкой ретро-рамки Fontini Garby Colonial по выгодной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.083603",
        "modified": "2021-08-30 07:38:16.083603",
        "deleted": false
      },
      {
        "id": "88tqU32o8jVUJhbwRkBLU",
        "rev": 0,
        "options": {"slug": "hite-pro-radioperedatchiki-i-pulty", "brand": "t3Lqq5TMf7JpQDsxlkU_D", "label": "HiTE PRO радиопередатчики и пульты", "oldId": 703, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.096199",
        "modified": "2021-08-30 07:38:16.096199",
        "deleted": false
      },
      {
        "id": "1ACUii-kTr8Ewb3MvcW70",
        "rev": 0,
        "options": {"slug": "jung-ls-plus", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS Plus", "oldId": 103, "images": [], "published": false, "description": "Рамки Jung LS Plus - это привлекательные рамки особого класса. Выпускаются рамки Jung LS Plus в изысканной цветовой гамме - матовых, черных, белых цветах, цветах \"алюминий\", \"блестящий хром\" и \"благородная сталь\". Строгий дизайн и элегантность рамок Jung LS Plus внесет в Ваш интерьер изюминку и стиль.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.113423",
        "modified": "2021-08-30 07:38:16.113423",
        "deleted": false
      },
      {
        "id": "I5OaP37qA5v39GuXP2ib8",
        "rev": 0,
        "options": {"slug": "sadovo-parkovye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Садово-парковые светильники Horoz Electric", "oldId": 432, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.124011",
        "modified": "2021-08-30 07:38:16.124011",
        "deleted": false
      },
      {
        "id": "x9v57hELglCYHRjV4Xoam",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-mehanizmy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi механизмы", "oldId": 777, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.148113",
        "modified": "2021-08-30 07:38:16.148113",
        "deleted": false
      },
      {
        "id": "_KGnrlhgzh3WVASIJxWLg",
        "rev": 0,
        "options": {"slug": "k5-stal", "brand": null, "label": "K.5 сталь", "oldId": 110, "images": [], "published": false, "description": "Розетки, клавиши и накладки Berker K.5&nbsp;стального цвета непрменно станут украшением Вашего стильного интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.172251",
        "modified": "2021-08-30 07:38:16.172251",
        "deleted": false
      },
      {
        "id": "FBW44ZKyObR6zAOrY_SU9",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-ramki-dopolnitelnye", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea life рамки дополнительные", "oldId": 125, "images": [], "published": false, "description": "Серия Legrand Galea Life включает в себя дополнительные рамки, которые не только позволяют расширить дизайнерские возможности, но также весьма практичны в использовании.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.185432",
        "modified": "2021-08-30 07:38:16.185432",
        "deleted": false
      },
      {
        "id": "mROyGZqY7A1uF8_UAjpJa",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-oro-rojo-zoloto", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede ORO ROJO (золото)", "oldId": 208, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.213196",
        "modified": "2021-08-30 07:38:16.213196",
        "deleted": false
      },
      {
        "id": "CkrgWB5VaTKBM4qJL7o6Y",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-titan", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea life титан", "oldId": 127, "images": [], "published": false, "description": "Серия Legrand Galea Life&nbsp;цвета \"титан\" удачно завершит интерьер с мужской доминантой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.230179",
        "modified": "2021-08-30 07:38:16.230179",
        "deleted": false
      },
      {
        "id": "pWzTwSWTuSb3jiXzPkRQx",
        "rev": 0,
        "options": {"slug": "gewiss-rozetki-i-vyklyuchateli-titan", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "Gewiss розетки и выключатели титан", "oldId": 605, "images": [], "published": false, "description": "Розетки и выключатели Gewiss известны во всем мире благодаря своей надежности и приятному дизайну. Большим спросом пользуются изделия в цвете \"титан\", которые подойдут как для жилых помещений, так и для ресторанов, баров, магазинов и шоу-румов.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.250319",
        "modified": "2021-08-30 07:38:16.250319",
        "deleted": false
      },
      {
        "id": "LbqB01GcEY8bhiYXEAXth",
        "rev": 0,
        "options": {"slug": "legrand-celiane", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane", "oldId": 112, "images": [], "published": false, "description": "Серия Legrand Celiane отличается своей эстетикой и функциональностью, а так же разнообразием цветовых решений. Основные цвета розеток,выключателей и накладок Legrand Celiane - титан ,графит,белый и бежевый.\nВы можете купить у нас магазине розетки и выключатели Legrand Сeliane по хорошей цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.261451",
        "modified": "2021-08-30 07:38:16.261451",
        "deleted": false
      },
      {
        "id": "comIBeNRSuTEpdUzZVPtD",
        "rev": 0,
        "options": {"slug": "berker-arsys-bronza", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Arsys бронза", "oldId": 31, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker Arsys&nbsp;бронзового цвета подчеркнут оригинальный дизайн интерьера и Ваш уникальный вкус.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.283351",
        "modified": "2021-08-30 07:38:16.283351",
        "deleted": false
      },
      {
        "id": "8lsAjd8aI6bTAEOwx-UJ-",
        "rev": 0,
        "options": {"slug": "gira-f-100-belyy", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA F 100 белый", "oldId": 91, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.296412",
        "modified": "2021-08-30 07:38:16.296412",
        "deleted": false
      },
      {
        "id": "l-7MjvsZkZTeoFwMw-JvH",
        "rev": 0,
        "options": {"slug": "berker-r1", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.1", "oldId": 794, "images": [{"alt": "BERKER R.1 выделяется среди всех изделий компании своей необычной сглаженной формой углов - округлая форма рамок BERKER R.1 придаёт полётность и легкость конструкции изделий. Приятные ненавязчивые оттенки алюминий, белое стекло, глянцевый белый и чёрный успешно впишутся в современный минималистичный интерьер. Выключатели и розетки серии R.1 представляют собой слияние безупречного дизайна и самых передовых технологий.", "path": "uploads/series/79/794/1556365021229.jpg"}, {"alt": "BERKER R.1 выделяется среди всех изделий компании своей необычной сглаженной формой углов - округлая форма рамок BERKER R.1 придаёт полётность и легкость конструкции изделий. Приятные ненавязчивые оттенки алюминий, белое стекло, глянцевый белый и чёрный успешно впишутся в современный минималистичный интерьер. Выключатели и розетки серии R.1 представляют собой слияние безупречного дизайна и самых передовых технологий.", "path": "uploads/series/79/794/1556365602019.jpg"}], "published": true, "description": "BERKER R.1 выделяется среди всех изделий компании своей необычной сглаженной формой углов - округлая форма рамок BERKER R.1 придаёт полётность и легкость конструкции изделий. Приятные ненавязчивые оттенки алюминий, белое стекло, глянцевый белый и чёрный успешно впишутся в современный минималистичный интерьер. Выключатели и розетки серии R.1 представляют собой слияние безупречного дизайна и самых передовых технологий.", "productTypes": []},
        "created": "2021-08-30 07:38:16.313121",
        "modified": "2021-08-30 07:38:16.313121",
        "deleted": false
      },
      {
        "id": "2zlNVoY5ODORZswLSPGW7",
        "rev": 0,
        "options": {"slug": "berker-b7", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker B.7", "oldId": 40, "images": [], "published": false, "description": "Изделия серии B.7 обращают на себя внимание благодаря выигрышному сочетанию цвета и формы. Рамки B.7 - отличная находка для любого интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.327542",
        "modified": "2021-08-30 07:38:16.327542",
        "deleted": false
      },
      {
        "id": "s51WRzUwQRSrVYL_aJQ3R",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-new", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA NEW", "oldId": 747, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.348494",
        "modified": "2021-08-30 07:38:16.348494",
        "deleted": false
      },
      {
        "id": "gHbk9TzPi99z9athWnRBL",
        "rev": 0,
        "options": {"slug": "schneider-electric-uni", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Uni", "oldId": 749, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.360237",
        "modified": "2021-08-30 07:38:16.360237",
        "deleted": false
      },
      {
        "id": "Mov8LK1oaFJ-vtqyHCf-Z",
        "rev": 0,
        "options": {"slug": "gira-e3", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA E3", "oldId": 669, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.379191",
        "modified": "2021-08-30 07:38:16.379191",
        "deleted": false
      },
      {
        "id": "ec2mIdMnx6eiwXb48kRFz",
        "rev": 0,
        "options": {"slug": "svetilniki-gauss-metal", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светильники Gauss Metal", "oldId": 526, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.390781",
        "modified": "2021-08-30 07:38:16.390781",
        "deleted": false
      },
      {
        "id": "9xLMiqMwF_d7YqwY1o12D",
        "rev": 0,
        "options": {"slug": "shkolnye-zvonki-zamel", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Школьные звонки Zamel", "oldId": 675, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.412144",
        "modified": "2021-08-30 07:38:16.412144",
        "deleted": false
      },
      {
        "id": "-81C4jC9pSPGk7PVUfkHw",
        "rev": 0,
        "options": {"slug": "radioupravlenie-zamel-exta-free", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Радиоуправление Zamel Exta Free", "oldId": 536, "images": [], "published": false, "description": "Продукция Zamel Exta Free включает все что связано с  беспроводной системой управления электрическими устройствами. Zamel Exta Free - это взаимодействующие между собой приборы передатчики,приемники,контроллеры и т.д. работающие на радиочастоте 868 МГц .\nВ нашем интернет магазине Вы можете купить Zamel Exta Free по отличной цене с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.424896",
        "modified": "2021-08-30 07:38:16.424896",
        "deleted": false
      },
      {
        "id": "XQESfcVQK2FHaQj7EiNaJ",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-1-polyusnye-6ka-b-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 1 полюсные 6kA, B характеристики", "oldId": 723, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.438992",
        "modified": "2021-08-30 07:38:16.438992",
        "deleted": false
      },
      {
        "id": "5Q5IiYfOdT89A2yfsZo0E",
        "rev": 0,
        "options": {"slug": "abb-mehanizmy-obshchie", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB механизмы общие", "oldId": 27, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.454513",
        "modified": "2021-08-30 07:38:16.454513",
        "deleted": false
      },
      {
        "id": "ty0ivPwbQxay3_CjphRb4",
        "rev": 0,
        "options": {"slug": "siemens-delta-natur", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Natur", "oldId": 53, "images": [], "published": false, "description": "Серия Siemens DELTA natur - это розетки и выключатели с клавишами и накладками, изготовленными из натурального дерева. Цвета Siemens DELTA natur - бук, вишня, клен, красный клен, светлый дуб, темный дуб - приятны для глаза. Siemens DELTA natur внесет в интерьер природный шарм и утонченность.\nSiemens DELTA natur. Заодно с природой. Каждая деталь имеет значение.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.468466",
        "modified": "2021-08-30 07:38:16.468466",
        "deleted": false
      },
      {
        "id": "NnF4OMEipjSJg9FF2pX4F",
        "rev": 0,
        "options": {"slug": "delta-natur-buk", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Delta Natur бук", "oldId": 54, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки серии Siemens DELTA natur, выполненные в цветовом решении \"бук\"-&nbsp;стильные детали Вашего уютного дома.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.488151",
        "modified": "2021-08-30 07:38:16.488151",
        "deleted": false
      },
      {
        "id": "GIHSt8hCCTX4pTGiOCpPH",
        "rev": 0,
        "options": {"slug": "nagrevatelnyy-kabel-dlya-teplogo-pola-deviflex-dtie", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Нагревательный кабель для теплого пола Deviflex DTIE", "oldId": 307, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать с доставкой нагревательный кабель для теплого пола Deviflex DTIE по выгодной &nbsp;цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.501848",
        "modified": "2021-08-30 07:38:16.501848",
        "deleted": false
      },
      {
        "id": "5mEoXh9Qw578FGo4N_9HU",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Светодиодные лампы Horoz Electric", "oldId": 429, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.513461",
        "modified": "2021-08-30 07:38:16.513461",
        "deleted": false
      },
      {
        "id": "WW3G9JHWTlTBiyWRW15CK",
        "rev": 0,
        "options": {"slug": "fontini-venezia-rozetki-i-vyklyuchateli", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia розетки и выключатели", "oldId": 80, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить с доставкой фарфоровые ретро-розетки,выключатели и переключатели Fontini Venezia &nbsp;по выгодной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.525670",
        "modified": "2021-08-30 07:38:16.525670",
        "deleted": false
      },
      {
        "id": "3YiqbwjSZ1IpIS_HKp1Nc",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-pesok", "brand": null, "label": "Рамки Lux International песок", "oldId": 636, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.538889",
        "modified": "2021-08-30 07:38:16.538889",
        "deleted": false
      },
      {
        "id": "L3Sgllt7ryrxJO1zCnt5B",
        "rev": 0,
        "options": {"slug": "legrand-celiane-belyy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane белый", "oldId": 114, "images": [], "published": false, "description": "Серия Legrand Celiane&nbsp;белого цвета впишется в любой интьерьер и добавит ему свежести.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.548171",
        "modified": "2021-08-30 07:38:16.548171",
        "deleted": false
      },
      {
        "id": "6Nsnxvt2K_5-pJx_FyMuT",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-sharoobraznye-e27", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss шарообразные E27", "oldId": 499, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.563734",
        "modified": "2021-08-30 07:38:16.563734",
        "deleted": false
      },
      {
        "id": "Ane3EohjtrxtOut_7DJ1s",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-molochnyy-belyy", "brand": null, "label": "Рамки Geo International молочный-белый", "oldId": 645, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.588492",
        "modified": "2021-08-30 07:38:16.588492",
        "deleted": false
      },
      {
        "id": "yq465GNnOUsRk5TcbSuCy",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-rubinovyy", "brand": null, "label": "Рамки Geo International рубиновый", "oldId": 651, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.596121",
        "modified": "2021-08-30 07:38:16.596121",
        "deleted": false
      },
      {
        "id": "Y1IfdaLxMG1oE1wlG5KFZ",
        "rev": 0,
        "options": {"slug": "simon-82-ramki-select", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 рамки Select", "oldId": 594, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.605333",
        "modified": "2021-08-30 07:38:16.605333",
        "deleted": false
      },
      {
        "id": "uXVyMlr00G7bqblQe5RX6",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-molochno-belyy-monohromnyy", "brand": null, "label": "Рамки Lux International молочно-белый монохромный", "oldId": 640, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.621427",
        "modified": "2021-08-30 07:38:16.621427",
        "deleted": false
      },
      {
        "id": "7nqxDIqc1X3kPzESvCtpq",
        "rev": 0,
        "options": {"slug": "legrand-celiane-mehanizmy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane механизмы", "oldId": 115, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.631869",
        "modified": "2021-08-30 07:38:16.631869",
        "deleted": false
      },
      {
        "id": "WF-aMXYuF7co6uPTBchhq",
        "rev": 0,
        "options": {"slug": "svetilniki-pylevlagozashchishchennye-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Светильники пылевлагозащищенные Horoz Electric", "oldId": 431, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.646048",
        "modified": "2021-08-30 07:38:16.646048",
        "deleted": false
      },
      {
        "id": "cW2UvMuYmFzfqEXUAoNL7",
        "rev": 0,
        "options": {"slug": "gira-f-100-ramki-dopolnitelnye", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA F 100 рамки дополнительные", "oldId": 98, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.667458",
        "modified": "2021-08-30 07:38:16.667458",
        "deleted": false
      },
      {
        "id": "ldCPEuuXwLrXdZvCS7ahB",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-temnaya-bronza", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea life темная бронза", "oldId": 126, "images": [], "published": false, "description": "Серия Legrand Galea Life&nbsp;цвета \"темная бронза\" добавит стильные детали в современный интерьер.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.681316",
        "modified": "2021-08-30 07:38:16.681316",
        "deleted": false
      },
      {
        "id": "7wXbNxMvVhU35DVB89Okp",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-venge", "brand": null, "label": "Рамки Lux International венге", "oldId": 625, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.696977",
        "modified": "2021-08-30 07:38:16.696977",
        "deleted": false
      },
      {
        "id": "V1VIQHBWxEjm3kAFs4tOd",
        "rev": 0,
        "options": {"slug": "rele-vremeni-zamel-exta", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Реле времени Zamel Exta", "oldId": 546, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.706857",
        "modified": "2021-08-30 07:38:16.706857",
        "deleted": false
      },
      {
        "id": "3yYaldfLn8mjS-M5RIFjn",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-belyy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea Life белый", "oldId": 122, "images": [], "published": false, "description": "\nСерия Legrand Galea Life&nbsp;классического белого цвета подойдет к любому стилю интерьера Вашего дома.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.717648",
        "modified": "2021-08-30 07:38:16.717648",
        "deleted": false
      },
      {
        "id": "HLBS9UEzAR9aul3IKrZT-",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-sharoobraznye-e14", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss шарообразные E14", "oldId": 495, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.731006",
        "modified": "2021-08-30 07:38:16.731006",
        "deleted": false
      },
      {
        "id": "W5ndwHKM0ol7hTMAdVCw6",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-simon-connect-pod-zalivku-s-glubinoy-70-100-mm", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Лючки напольные Simon Connect под заливку с глубиной 70-100 мм", "oldId": 303, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.744330",
        "modified": "2021-08-30 07:38:16.744330",
        "deleted": false
      },
      {
        "id": "tO43hp-3bSdNbRiqqNHP2",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-modular-rozetki-i-vyklyuchateli", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA MODULAR розетки и выключатели", "oldId": 769, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.769999",
        "modified": "2021-08-30 07:38:16.769999",
        "deleted": false
      },
      {
        "id": "9qy1Qh8tnJieUvXnitGo9",
        "rev": 0,
        "options": {"slug": "berker-r1r3-rozetki-i-klavishi-chernye", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.1/R.3 розетки и клавиши черные", "oldId": 460, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.785163",
        "modified": "2021-08-30 07:38:16.785163",
        "deleted": false
      },
      {
        "id": "UjaOGv71BShGe8EprvRAa",
        "rev": 0,
        "options": {"slug": "merten-system-m", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten System M", "oldId": 163, "images": [], "published": false, "description": "Серия Merten System M - это неброский классический стиль розеток, выключателей и рамок. Розетки и выключатели серии Merten System M изготовляются из качественных современных материалов и отличаются простотой и ясностью форм. Merten System M выпускается в таких цветах, как алюминий,антрацит,белый и бежевый. Рамки Merten System M выпускаются в стекле:бриллиант, сапфир, махагон, изумруд, белое и черное,дерево венге,с различными комбинациями пластик с металлом или шпоном.\nУ нас Вы можете купить рамки,розетки и выключатели Merten System M по хорошей цене, с гарантией и доставкой,можете заказать Merten System M в нашем офисе  в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.797361",
        "modified": "2021-08-30 07:38:16.797361",
        "deleted": false
      },
      {
        "id": "q8WRJRDOfAAVYPyzNoBUf",
        "rev": 0,
        "options": {"slug": "rele-sumerechnye-zamel-exta", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Реле сумеречные Zamel Exta", "oldId": 548, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.813389",
        "modified": "2021-08-30 07:38:16.813389",
        "deleted": false
      },
      {
        "id": "ljqWyiK4HVRMGsxmSDNyZ",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-esylux-compact-mini", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики присутствия ESYLUX Compact mini", "oldId": 683, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.826020",
        "modified": "2021-08-30 07:38:16.826020",
        "deleted": false
      },
      {
        "id": "rdyssHlXErWS-rGvvJT8Z",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-patine-brillo", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede  PATINE  BRILLO", "oldId": 202, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.839360",
        "modified": "2021-08-30 07:38:16.839360",
        "deleted": false
      },
      {
        "id": "KdVsaaI_Uh4Hy8-T9GHJz",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-patine-mate", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede PATINE  MATE", "oldId": 209, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.850994",
        "modified": "2021-08-30 07:38:16.850994",
        "deleted": false
      },
      {
        "id": "b5RlRQCew7PSdXx5H6WCO",
        "rev": 0,
        "options": {"slug": "nastennye-svetodiodnye-svetilniki-ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Настенные светодиодные светильники LedMonster", "oldId": 572, "images": [], "published": false, "description": "Каталог Настенных светодиодных светильников LedMonster - серия отличается способом крепления и подводом питающего кабеля оптимизированным для плоских вертикальных поверхностей.&nbsp;LedMonster с креплением на стену. В нашем интернет магазине можно купить настенные светодиодные светильники LedMonster по отличной цене с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.863235",
        "modified": "2021-08-30 07:38:16.863235",
        "deleted": false
      },
      {
        "id": "uSa2yM7FofVyOENCvtYkB",
        "rev": 0,
        "options": {"slug": "svetilniki-gauss-aluminium", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светильники Gauss Aluminium", "oldId": 524, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.873418",
        "modified": "2021-08-30 07:38:16.873418",
        "deleted": false
      },
      {
        "id": "V2cDIhqtFIkfp2c0ZJpUU",
        "rev": 0,
        "options": {"slug": "svetilniki-gauss-tablet", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светильники Gauss Tablet", "oldId": 523, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.890704",
        "modified": "2021-08-30 07:38:16.890704",
        "deleted": false
      },
      {
        "id": "SwUIqt5Q6H1MsSYQG0WYZ",
        "rev": 0,
        "options": {"slug": "svetilniki-svetodiodnye-zamel-ledix-plastik", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Светильники светодиодные Zamel Ledix пластик", "oldId": 667, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.903732",
        "modified": "2021-08-30 07:38:16.903732",
        "deleted": false
      },
      {
        "id": "YBq0hUHNl5JMxBKBtRMLu",
        "rev": 0,
        "options": {"slug": "svetodiodnye-sovremennye-podvesnye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Светодиодные современные подвесные светильники Horoz Electric", "oldId": 425, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.915405",
        "modified": "2021-08-30 07:38:16.915405",
        "deleted": false
      },
      {
        "id": "0RMIUMcSt4OKXMzeTpGrd",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-gauss", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные светильники Gauss", "oldId": 520, "images": [], "published": false, "description": "Купить светодиодные светильники Gauss в нашем интернет магазине по отличной цене с доставкой по Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.932072",
        "modified": "2021-08-30 07:38:16.932072",
        "deleted": false
      },
      {
        "id": "BdBElUGdYSfV2YpH0eAw9",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-qf", "brand": "aaB-UsNNQKo48BOAKsTD7", "label": "Светодиодные светильники Q&F", "oldId": 468, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить светодиодные светильники Q&F или заказать светодиодные светильники Q&F для дома и дачи ,встраиваемые интерьерные и потолочные по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.943383",
        "modified": "2021-08-30 07:38:16.943383",
        "deleted": false
      },
      {
        "id": "xAAR534bmucyfhE7gUUXm",
        "rev": 0,
        "options": {"slug": "abb-dynasty-mehanizmy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty механизмы", "oldId": 509, "images": [], "published": false, "description": "У нас в интернет-магазине VipRozetki.ru Вы можете купить механизмы ABB Dynasty или заказать механизмы ABB Dynasty от компании ABB по отличной цене и с доставкой по Москве .\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.955208",
        "modified": "2021-08-30 07:38:16.955208",
        "deleted": false
      },
      {
        "id": "Kpwftop75w_tqN_SIbDvD",
        "rev": 0,
        "options": {"slug": "podvesy-fabbian", "brand": "K0FfZN2GksbvTzJElwgRj", "label": "Подвесы Fabbian", "oldId": 310, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить итальянские подвесные светильники &nbsp;Fabbian &nbsp;по отличной цене и с гарантией.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.966490",
        "modified": "2021-08-30 07:38:16.966490",
        "deleted": false
      },
      {
        "id": "Q505kJNzp0jfTBD4Fel_P",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-belyy-pod-kozhu", "brand": null, "label": "Рамки Lux International белый под кожу", "oldId": 631, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.977515",
        "modified": "2021-08-30 07:38:16.977515",
        "deleted": false
      },
      {
        "id": "Jw0RkkD0VbyW3qDqGTmnf",
        "rev": 0,
        "options": {"slug": "zamel-matec-termoregulyatory", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Zamel Matec терморегуляторы", "oldId": 535, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить Zamel Matec терморегуляторы,терморегуляторы для регулирования электрических теплых полов по отличной цене с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:16.984783",
        "modified": "2021-08-30 07:38:16.984783",
        "deleted": false
      },
      {
        "id": "SyblQWwA19jrSIkxxxfZB",
        "rev": 0,
        "options": {"slug": "simon-82-klavishi-i-nakladki-belyy", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 клавиши и накладки белый", "oldId": 596, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:16.995177",
        "modified": "2021-08-30 07:38:16.995177",
        "deleted": false
      },
      {
        "id": "ct0-Yt3OteAV4hUq74msx",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-dlya-zhkh-faldi", "brand": "0HdMLKAZs8Up8JPNyomtb", "label": "Светодиодные светильники для ЖКХ Faldi", "oldId": 582, "images": [], "published": false, "description": "Светодиодные светильники для ЖКХ Faldi Представлены полным каталогом на прямую от поставщика по отличной цене с доставкой в Москве и любую точку России. Области применения светодиодных светильников Faldi для ЖКХ это применение в сфере ЖКХ, освещение лестничных пролетов, освещение подъездов зданий и сооружений, освещение коридоров, технических помещений а также использование в качестве дежурного освещения.&nbsp;Faldi предлагает лучшее соотношение цена - качество для коммунальных хозяйств.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.007153",
        "modified": "2021-08-30 07:38:17.007153",
        "deleted": false
      },
      {
        "id": "UGbGKts08lYvLILPgvELT",
        "rev": 0,
        "options": {"slug": "berker-s1-belyy-glyanec", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker S.1 Белый глянец", "oldId": 174, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.020413",
        "modified": "2021-08-30 07:38:17.020413",
        "deleted": false
      },
      {
        "id": "8noficH4v2CYBjCw3vWJ4",
        "rev": 0,
        "options": {"slug": "fontini-1950", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini 1950", "oldId": 71, "images": [], "published": false, "description": "Серия розеток и выключателей Fontini 1950 - это настоящее произведение искусства от компании Fontini.  Серия выключателей и розеток FONTINI 1950 возвращает нас к эстетике и аутентичности начала прошлого века.\nВ этой серии Fontini 1950  из латуни,клиенту предоставляется возможность изготовить панели и отделки по индивидуальному заказу с использованием уникальных механизмов от Fontini.В этой серии Fontini 1950 розетки и выключатели Вы можете заказывать в цвете : Golden (золото),Antique Bronze (бронза),Satin Nickel-plated (хром),Anthracite (антрацит).Коллекция Fontini 1950 добавляет классический вид дизайну Вашего интерьера ,представляет собой строгий и аутентичный стиль.\nВ выключатели и розетки устанавливаются в вертикальном или горизонтальном положении, эти механизмы подходят для стандартных установочных коробках и могут быть адаптированы как для обычной проводки , так и для системы автоматизации «Умный дом».\nУ нас в интернет-магазине ВсеРозетки.ру Вы можете купить розетки и выключатели Fontini 1950 или заказать розетки и выключатели Fontini 1950 от компании Fontini  по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.033878",
        "modified": "2021-08-30 07:38:17.033878",
        "deleted": false
      },
      {
        "id": "_GZGD5UoUHSFlbiSNIaJy",
        "rev": 0,
        "options": {"slug": "jung-ls-990-stal", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 сталь", "oldId": 147, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 цвета \"сталь\" &nbsp;аккуратно завершат современный интерьер и будут долго радовать Вас высоким качеством и чистотой форм.&nbsp;\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.046889",
        "modified": "2021-08-30 07:38:17.046889",
        "deleted": false
      },
      {
        "id": "AO4WFVIpWwsZQ0KtZhPh-",
        "rev": 0,
        "options": {"slug": "kontaktory-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Контакторы Hager", "oldId": 733, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.057721",
        "modified": "2021-08-30 07:38:17.057721",
        "deleted": false
      },
      {
        "id": "hSVeIwAVq28gOgC0lH2rC",
        "rev": 0,
        "options": {"slug": "berker-r3-ramki", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.3 рамки", "oldId": 462, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.067911",
        "modified": "2021-08-30 07:38:17.067911",
        "deleted": false
      },
      {
        "id": "dQE3QD7WhE5bBmaNmgG35",
        "rev": 0,
        "options": {"slug": "fontini-garby", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Garby", "oldId": 72, "images": [{"alt": "У нас в интернет-магазине Вы можете купить ретро розетки и выключатели Fontini Garby или заказать фарфоровые выключатели и розетки Fontini Garby по отличной цене .\n", "path": "uploads/series/7/72/1607353865609.jpg"}, {"alt": "У нас в интернет-магазине Вы можете купить ретро розетки и выключатели Fontini Garby или заказать фарфоровые выключатели и розетки Fontini Garby по отличной цене .\n", "path": "uploads/series/7/72/1607353873993.jpg"}], "published": true, "description": "У нас в интернет-магазине Вы можете купить ретро розетки и выключатели Fontini Garby или заказать фарфоровые выключатели и розетки Fontini Garby по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.077877",
        "modified": "2021-08-30 07:38:17.077877",
        "deleted": false
      },
      {
        "id": "SN5YafWGqLwdFGYPcZMMS",
        "rev": 0,
        "options": {"slug": "berker-s1", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker S.1", "oldId": 43, "images": [], "published": false, "description": "Розетки и выключатели Berker серии S.1 впишутся в классический интерьер, так как выпускаются в строгих белых и бежевых цветовых решениях. Цвета поверхности розеток и выключателей Berker S.1 - полярная белизна(матовая и глянцевая поверхность), белый глянцевый.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.091692",
        "modified": "2021-08-30 07:38:17.091692",
        "deleted": false
      },
      {
        "id": "QTP82iQ9rR7NDbfvUQkb3",
        "rev": 0,
        "options": {"slug": "gira-system-55-belyy", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA System 55 белый", "oldId": 97, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.102065",
        "modified": "2021-08-30 07:38:17.102065",
        "deleted": false
      },
      {
        "id": "MJRuVqW_h4oPMf74wk3i8",
        "rev": 0,
        "options": {"slug": "schneider-unica-bezhevyy", "brand": null, "label": "Schneider Unica бежевый", "oldId": 178, "images": [], "published": false, "description": "Изделия серии Schneider Electric Unica&nbsp;бежевого цвета украсят интерьер в классическом стиле.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.343975",
        "modified": "2021-08-30 07:38:17.343975",
        "deleted": false
      },
      {
        "id": "qpycNvF6kwy_ATXG9MbSr",
        "rev": 0,
        "options": {"slug": "legrand-seliane-grafit", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Сeliane графит", "oldId": 131, "images": [], "published": false, "description": "Розетки и выключатели Legrand Сeliane цвета \"графит\"&nbsp;&nbsp;- это высокое качество необычного цвета.\nНаш магазин \"VIProzetki.ru\" предлагает купить или заказать&nbsp;розетки и выключатели Legrand Сeliane графит по отличной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.113694",
        "modified": "2021-08-30 07:38:17.113694",
        "deleted": false
      },
      {
        "id": "Jfe1nkEyXx5j1HQ12wxG8",
        "rev": 0,
        "options": {"slug": "merten-d-life-belyy-kristall-steklo", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE белый кристалл, стекло", "oldId": 744, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.126984",
        "modified": "2021-08-30 07:38:17.126984",
        "deleted": false
      },
      {
        "id": "N5Z7-DB046Au2Sf1psl_I",
        "rev": 0,
        "options": {"slug": "uzo-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "УЗО Hager", "oldId": 442, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.137276",
        "modified": "2021-08-30 07:38:17.137276",
        "deleted": false
      },
      {
        "id": "YuletCgA7PENP7aTYfp7y",
        "rev": 0,
        "options": {"slug": "gira-mehanizmy", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA механизмы", "oldId": 99, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.148131",
        "modified": "2021-08-30 07:38:17.148131",
        "deleted": false
      },
      {
        "id": "qF5PTMYzb-1A47NmTJy9E",
        "rev": 0,
        "options": {"slug": "merten-mehanizmy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten механизмы", "oldId": 169, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.160213",
        "modified": "2021-08-30 07:38:17.160213",
        "deleted": false
      },
      {
        "id": "LHId051VzOzloXKxYUBFU",
        "rev": 0,
        "options": {"slug": "abb-basic-55-mehanizmy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Basic 55 механизмы", "oldId": 9, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.171674",
        "modified": "2021-08-30 07:38:17.171674",
        "deleted": false
      },
      {
        "id": "b9hfuQpHQInsrCQXMy_4i",
        "rev": 0,
        "options": {"slug": "nastennye-svetilniki-esylux", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Настенные светильники ESYLUX", "oldId": 699, "images": [], "published": false, "description": "Настенные светильники ESYLUX - продажа в Москве, доставка в регионы. Лучшие цены - лучший выбор!\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.185002",
        "modified": "2021-08-30 07:38:17.185002",
        "deleted": false
      },
      {
        "id": "-mUu4HRWhWy5fkc8QoFB9",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-chernyy", "brand": null, "label": "Рамки Lux International черный", "oldId": 632, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.195684",
        "modified": "2021-08-30 07:38:17.195684",
        "deleted": false
      },
      {
        "id": "7Jml-Y5LTXLrJhN_KZV9B",
        "rev": 0,
        "options": {"slug": "berker-s1-alyuminiy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker S.1 Алюминий", "oldId": 170, "images": [], "published": false, "description": "Розетки и выключатели Berker серии S.1&nbsp;алюминиевого цвета подчеркнут стиль Вашего интерьера и порадуют долгим сроком службы.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.202817",
        "modified": "2021-08-30 07:38:17.202817",
        "deleted": false
      },
      {
        "id": "PbvBqIbfw6OrCCTUYh3xF",
        "rev": 0,
        "options": {"slug": "berker-s1-belyy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker S.1 Белый", "oldId": 173, "images": [], "published": false, "description": "Розетки и выключатели Berker серии S.1&nbsp;белого цвета внесут элегантность и свежесть в Ваш интерьер и порадуют своей долговечностью.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.215451",
        "modified": "2021-08-30 07:38:17.215451",
        "deleted": false
      },
      {
        "id": "yBm3avDX3wXVb2wAC8uf7",
        "rev": 0,
        "options": {"slug": "jung-ls-990-hrom", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 хром", "oldId": 148, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 \"хром\"&nbsp;идеально подойдут к современному дизайну интерьера хай-тек.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.230820",
        "modified": "2021-08-30 07:38:17.230820",
        "deleted": false
      },
      {
        "id": "GBF-N7mwtJr24m2Ck2GRe",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-legrand-metallicheskie-ip44", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Лючки напольные Legrand металлические IP44", "oldId": 301, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.242711",
        "modified": "2021-08-30 07:38:17.242711",
        "deleted": false
      },
      {
        "id": "yL4BJffDUYQL7Cg1LSU8n",
        "rev": 0,
        "options": {"slug": "berker-s1-antracit", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker S.1 Антрацит", "oldId": 171, "images": [], "published": false, "description": "Розетки и выключатели Berker серии S.1&nbsp;антрацитового цвета дополнят Ваш интерьер и порадуют своей функциональностью и долговечностью.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.255477",
        "modified": "2021-08-30 07:38:17.255477",
        "deleted": false
      },
      {
        "id": "Y3mhjMrY1uRrTMCKN3fpE",
        "rev": 0,
        "options": {"slug": "simon-82-klavishi-i-nakladki-alyuminiy", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 клавиши и накладки алюминий", "oldId": 598, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.266491",
        "modified": "2021-08-30 07:38:17.266491",
        "deleted": false
      },
      {
        "id": "xMBIt3KGJb-7m0qZNfXqN",
        "rev": 0,
        "options": {"slug": "hite-pro-radiopriemniki", "brand": "t3Lqq5TMf7JpQDsxlkU_D", "label": "HiTE PRO радиоприемники", "oldId": 702, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.277614",
        "modified": "2021-08-30 07:38:17.277614",
        "deleted": false
      },
      {
        "id": "1Sgs3tgeDVGAVhh1r9wtI",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-nickel-satinadonikel", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede NICKEL SATINADO(никель)", "oldId": 206, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.289257",
        "modified": "2021-08-30 07:38:17.289257",
        "deleted": false
      },
      {
        "id": "4IdFy-nOd1RStpHQInYWC",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-belyy", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede белый", "oldId": 213, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.302835",
        "modified": "2021-08-30 07:38:17.302835",
        "deleted": false
      },
      {
        "id": "LCf0iOJxZEG4jvrE4CKoY",
        "rev": 0,
        "options": {"slug": "gira-f-100-bezhevyy", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA F 100 бежевый", "oldId": 90, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.313953",
        "modified": "2021-08-30 07:38:17.313953",
        "deleted": false
      },
      {
        "id": "Yqr-LegCZTEk8WEG3Bu1C",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-standart-12-volt", "brand": null, "label": "Светодиодная лента герметичная STANDART 12 вольт", "oldId": 417, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.324169",
        "modified": "2021-08-30 07:38:17.324169",
        "deleted": false
      },
      {
        "id": "qOHoehE9QaEpf4SXowBhT",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-6ka-b-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 6kA, B характеристики", "oldId": 722, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.333401",
        "modified": "2021-08-30 07:38:17.333401",
        "deleted": false
      },
      {
        "id": "vZuplIjxygPKVjvguXB2k",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-plastik", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede пластик", "oldId": 211, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.859742",
        "modified": "2021-08-30 07:38:17.859742",
        "deleted": false
      },
      {
        "id": "az0raL65o0d25z8uCVx6-",
        "rev": 0,
        "options": {"slug": "svetodiodnye-ofisnye-svetilniki-foton", "brand": "UshRKtcJi_pETonlNwnPO", "label": "Светодиодные офисные светильники Foton", "oldId": 325, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить cветодиодные офисные светильники Foton &nbsp;для любого потолка и любого помещения по экономичной &nbsp;цене и с гарантией .\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.352402",
        "modified": "2021-08-30 07:38:17.352402",
        "deleted": false
      },
      {
        "id": "3XXAWk-WksmM3Eg1D1Ezd",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-modular-ramki", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA MODULAR рамки", "oldId": 768, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.364288",
        "modified": "2021-08-30 07:38:17.364288",
        "deleted": false
      },
      {
        "id": "CB3HjFRJu5LGDo05MYX49",
        "rev": 0,
        "options": {"slug": "berker-r1r3-rozetki-i-klavishi-belye", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.1/R.3 розетки и клавиши белые", "oldId": 459, "images": [], "published": false, "description": "Berker розетки и клавиши белого цвета полный каталог представленный производителем.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.375257",
        "modified": "2021-08-30 07:38:17.375257",
        "deleted": false
      },
      {
        "id": "F7IhLIEat79EpRgBxBnrm",
        "rev": 0,
        "options": {"slug": "merten-d-life-sahara", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE сахара", "oldId": 741, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.386071",
        "modified": "2021-08-30 07:38:17.386071",
        "deleted": false
      },
      {
        "id": "XAgnkw5FoM74xNnq5XDJ4",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-3-polyusnye-6ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 3 полюсные  6kA, C характеристики", "oldId": 720, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.396993",
        "modified": "2021-08-30 07:38:17.396993",
        "deleted": false
      },
      {
        "id": "stecvYpI8EaMbyU-6DoSK",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-lava", "brand": null, "label": "Рамки Lux International лава", "oldId": 641, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.409397",
        "modified": "2021-08-30 07:38:17.409397",
        "deleted": false
      },
      {
        "id": "6KV0B5g0sIWlu5N4Dv9lU",
        "rev": 0,
        "options": {"slug": "svetoregulyatory-zamel-exta", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Светорегуляторы Zamel Exta", "oldId": 543, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.417511",
        "modified": "2021-08-30 07:38:17.417511",
        "deleted": false
      },
      {
        "id": "gs8ssI6hrx2R3HUguu6Dq",
        "rev": 0,
        "options": {"slug": "jung-a-500-chernyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 черный", "oldId": 5, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;черного цвета добавят необычный акцент Вашему интерьеру.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.427503",
        "modified": "2021-08-30 07:38:17.427503",
        "deleted": false
      },
      {
        "id": "zm6plHK4q6_9HaPMIsy6L",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-antichnaya-latunchyornaya-rospis", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки античная латунь,чёрная роспись", "oldId": 514, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.439156",
        "modified": "2021-08-30 07:38:17.439156",
        "deleted": false
      },
      {
        "id": "pM57F1D5ncZfV78GuBNrL",
        "rev": 0,
        "options": {"slug": "abb-basic-belyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Basic Белый", "oldId": 12, "images": [], "published": false, "description": "Серия ABB Basic 55 классического&nbsp;белого цвета подойдет к любому интерьеру.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.451960",
        "modified": "2021-08-30 07:38:17.451960",
        "deleted": false
      },
      {
        "id": "2DAUjX1RtX4BmfsVxhlBq",
        "rev": 0,
        "options": {"slug": "ramki-one-international-rubinovyy", "brand": null, "label": "Рамки One International рубиновый", "oldId": 617, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.465329",
        "modified": "2021-08-30 07:38:17.465329",
        "deleted": false
      },
      {
        "id": "56ckmz9dxxL93mZBLgTTI",
        "rev": 0,
        "options": {"slug": "jung-ls-990-antracit", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 антрацит", "oldId": 138, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 цвета \"антрацит\" станут стильной деталью Вашего интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.474547",
        "modified": "2021-08-30 07:38:17.474547",
        "deleted": false
      },
      {
        "id": "HPlGZnbAG7w7ZH9J1ImWG",
        "rev": 0,
        "options": {"slug": "zamel-exta-free-radioperedatchiki", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Zamel Exta Free радиопередатчики", "oldId": 537, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.498494",
        "modified": "2021-08-30 07:38:17.498494",
        "deleted": false
      },
      {
        "id": "zXZ3lOOFRE58EoNXUNuKW",
        "rev": 0,
        "options": {"slug": "abb-basic-55-shampan", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Basic 55 шампань", "oldId": 10, "images": [], "published": false, "description": "Продукция ABB Basic&nbsp;цвета шампань - это&nbsp;&nbsp;рамки, выключатели, розетки, заглушки и накладки, которые внесут особое изящество в Ваш интерьер.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает Вам серию&nbsp;&nbsp;ABB Basic 55 по практичной цене с доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.515115",
        "modified": "2021-08-30 07:38:17.515115",
        "deleted": false
      },
      {
        "id": "5Jk3yyyoocVUycq8a8EcB",
        "rev": 0,
        "options": {"slug": "jung-a-500-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 алюминий", "oldId": 772, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;алюминиевого цвета обладают прекрасными техническими характеристиками и стильным лаконичным дизайном. Изделия серии подойдут для различных стилей и типов помещений.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.528591",
        "modified": "2021-08-30 07:38:17.528591",
        "deleted": false
      },
      {
        "id": "3nLEwN4_XA9oOQiyiMHII",
        "rev": 0,
        "options": {"slug": "jung-mehanizmy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG механизмы", "oldId": 105, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.540965",
        "modified": "2021-08-30 07:38:17.540965",
        "deleted": false
      },
      {
        "id": "rfYfxORuGiD7jK_FKBRq1",
        "rev": 0,
        "options": {"slug": "specialnye-termoregulyatory-frontier", "brand": "wYe0UEwTnEDz8TTm-8Hb7", "label": "Специальные терморегуляторы Frontier", "oldId": 337, "images": [], "published": false, "description": "Если Вы хотите купить или заказать&nbsp;специальные терморегуляторы Frontier для регулировки теплого пола и всех видов отопления, наш интернет-магазин \"VIProzetki.ru\" предлагает Вам лучшие цены на продукцию и услугу доставки.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.556973",
        "modified": "2021-08-30 07:38:17.556973",
        "deleted": false
      },
      {
        "id": "K9s5FN9OXD7RDLkX1E3VZ",
        "rev": 0,
        "options": {"slug": "merten-d-life-mokko-metall", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE мокко металл", "oldId": 738, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.880545",
        "modified": "2021-08-30 07:38:17.880545",
        "deleted": false
      },
      {
        "id": "z5nIeiwUpoinwiH6CdJV-",
        "rev": 0,
        "options": {"slug": "jung-as-500-bezhevyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG AS 500 бежевый", "oldId": 35, "images": [], "published": false, "description": "Розетки и выключатели Jung AS 500&nbsp;бежевого цвета не только удобны, но и весьма элегантны в своей простоте, благодаря чему впишутся в любой интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.568243",
        "modified": "2021-08-30 07:38:17.568243",
        "deleted": false
      },
      {
        "id": "FTijFtB-yQN0BgWnzJF5_",
        "rev": 0,
        "options": {"slug": "gewiss-rozetki-i-vyklyuchateli-slonovaya-kost", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "Gewiss розетки и выключатели слоновая кость", "oldId": 603, "images": [], "published": false, "description": "Итальянский производитель Gewiss радует покупателей цветовой гаммой своих изделий. Изысканный цвет слоновой кости приглянется любителям роскошных интерьеров в спальне и гостиной. Розетки и выключатели Gewiss в цвете \"слоновая кость\" станут украшением любого помещения.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.578917",
        "modified": "2021-08-30 07:38:17.578917",
        "deleted": false
      },
      {
        "id": "ERCCb-IC18OcQhEtoFBOh",
        "rev": 0,
        "options": {"slug": "fontini-garby-ramki", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Garby рамки", "oldId": 76, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать с доставкой ретро рамки Fontini Garby&nbsp;по выгодной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.589035",
        "modified": "2021-08-30 07:38:17.589035",
        "deleted": false
      },
      {
        "id": "qRDHB-cQ3AKG7D0u4InIa",
        "rev": 0,
        "options": {"slug": "otopitelnye-sistemy-zamel-matec", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Отопительные системы Zamel Matec", "oldId": 533, "images": [], "published": false, "description": "Отопительные системы Zamel Matec - это качественная европейская продукция ,отвечающая всем стандартам качества.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.600832",
        "modified": "2021-08-30 07:38:17.600832",
        "deleted": false
      },
      {
        "id": "yisK-Qf-or74KFp3lPNxn",
        "rev": 0,
        "options": {"slug": "gewiss-rozetki-i-vyklyuchateli-belyy", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "Gewiss розетки и выключатели белый", "oldId": 602, "images": [], "published": false, "description": "Предлагаем вниманию наших покупателей итальянские качественные розетки и выключатели Gewiss. Приятная белая расцветка порадует покупателей, любящих лаконичные и простые детали. Розетки и выключатели Gewiss в светлых тонах отлично подойдут для офисного интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.611684",
        "modified": "2021-08-30 07:38:17.611684",
        "deleted": false
      },
      {
        "id": "Yu2lyp-gKWg9rM9IjnY5D",
        "rev": 0,
        "options": {"slug": "abb-basic-chernyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Basic черный", "oldId": 13, "images": [], "published": false, "description": "Серия продукции ABB Basic&nbsp;стильного черного цвета представляет &nbsp;рамки, выключатели, розетки, заглушки и накладки, &nbsp;которые отлично впишутся в строгий деловой или хай-тек интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.622507",
        "modified": "2021-08-30 07:38:17.622507",
        "deleted": false
      },
      {
        "id": "AIp0mbz_zCJ2FIz5z_quz",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-steklo-prozrachnyy-led", "brand": null, "label": "Рамки Lux International стекло прозрачный лед", "oldId": 621, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.631750",
        "modified": "2021-08-30 07:38:17.631750",
        "deleted": false
      },
      {
        "id": "X-ORdA8MOEJ9lLlO6rj_h",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-polirovannaya-latunchyornaya-rospis", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки полированная латунь,чёрная роспись", "oldId": 518, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.639259",
        "modified": "2021-08-30 07:38:17.639259",
        "deleted": false
      },
      {
        "id": "Rmij-lH2Gk-V0IJ2VzRrt",
        "rev": 0,
        "options": {"slug": "jung-ls-990-seryy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 серый", "oldId": 146, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 цвета \"серый\" &nbsp;- это простое, но стильное и практичное решение для любого интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.649338",
        "modified": "2021-08-30 07:38:17.649338",
        "deleted": false
      },
      {
        "id": "5HD_Xr3_trI6a0XxxRciw",
        "rev": 0,
        "options": {"slug": "abb-impuls-shampan", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls шампань", "oldId": 21, "images": [], "published": false, "description": "Серия ABB Impuls цвета шампань отлично подойдет для роскошного&nbsp;интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.659420",
        "modified": "2021-08-30 07:38:17.659420",
        "deleted": false
      },
      {
        "id": "YWJX9eq2Axgzs4Dj75xiP",
        "rev": 0,
        "options": {"slug": "gira-system-55-bezhevyy", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA System 55 бежевый", "oldId": 96, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.669027",
        "modified": "2021-08-30 07:38:17.669027",
        "deleted": false
      },
      {
        "id": "S0TQmi4jZVeg_jzxyeWrZ",
        "rev": 0,
        "options": {"slug": "ledmonster-kub-in-w-frame", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster KUB IN W FRAME", "oldId": 587, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.680659",
        "modified": "2021-08-30 07:38:17.680659",
        "deleted": false
      },
      {
        "id": "PK7WiaaAfsT5-8tTchn4-",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки", "oldId": 504, "images": [], "published": false, "description": "http://light-lion.com/wp-content/uploads/2015/09/abb_dynasty_1.jpg\" style=\"height:668px; width:1200px\" />В нашем интернет магазине можно купить рамки ABB Dynasty слоновая кость и антрацит в пластике,рамки ABB Dynasty античная латунь и полированная латунь,с белым и черным стеклом,с росписью и без, по отличной цене с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.692926",
        "modified": "2021-08-30 07:38:17.692926",
        "deleted": false
      },
      {
        "id": "w3NZNV6Og9x8FBN5bO4RB",
        "rev": 0,
        "options": {"slug": "simon-82-mehanizmy", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 механизмы", "oldId": 591, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.703289",
        "modified": "2021-08-30 07:38:17.703289",
        "deleted": false
      },
      {
        "id": "yQ7o5ASu0TJ2qVUVeWo6q",
        "rev": 0,
        "options": {"slug": "simon", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon", "oldId": 268, "images": [], "published": false, "description": "Компания Simon была основана в 1916 году в Испании. На сегодняшний день&nbsp;&nbsp;Simon имеет 23 предприятия и представительства в 50 странах. Продукция фирмы&nbsp;Simon функциональна, выпускается в различных формах, материалах и имеет широкий ассортимент розеток и выключателей.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.869716",
        "modified": "2021-08-30 07:38:17.869716",
        "deleted": false
      },
      {
        "id": "TuSw8o2aFJ59E_Wt8iloI",
        "rev": 0,
        "options": {"slug": "jung", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung", "oldId": 100, "images": [], "published": false, "description": "Немецкая компания&nbsp;JUNG на протяжении почти сотни лет является одной из самых прогрессивных в области электроинсталяции. Продукция компании JUNG&nbsp;рамки,розетки и выключатели известна как невероятно качественная и стильная. Все изделия фирмы имеют сертификат&nbsp;ISO 9001.\nВы можете купить розетки и выключатели Jung в нашем интернет магазине, выбрать нужную серию розеток и выключателей Юнг приехав в наш магазин,можете заказать доставку розеток Jung в Москве или до транспортной компании.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.711928",
        "modified": "2021-08-30 07:38:17.711928",
        "deleted": false
      },
      {
        "id": "MePThN5SPyKFmsLOKgNCC",
        "rev": 0,
        "options": {"slug": "jung-a-500-belyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 белый", "oldId": 3, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;белого цвета - это классическое решение, которое прекрасно подойдет к любому интерьеру.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.721117",
        "modified": "2021-08-30 07:38:17.721117",
        "deleted": false
      },
      {
        "id": "yaE11CMjRyScfpUFANvQx",
        "rev": 0,
        "options": {"slug": "legrand-valena-slonovaya-kost", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Valena слоновая кость", "oldId": 130, "images": [], "published": false, "description": "Серия Legrand Valena цвета слоновая кость добавит модный штрих в стильный интерьер.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.731652",
        "modified": "2021-08-30 07:38:17.731652",
        "deleted": false
      },
      {
        "id": "fhbOKNUebVEFX6OX4-Pi3",
        "rev": 0,
        "options": {"slug": "jung-a-500-shampan", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 шампань", "oldId": 6, "images": [], "published": false, "description": "Рамки, выключатели, розетки, заглушки и накладки JUNG A 500 цвета шампань добавят изюминку любому интерьеру.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.742800",
        "modified": "2021-08-30 07:38:17.742800",
        "deleted": false
      },
      {
        "id": "E3XCiqyICyx5JdadlnzDV",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-klen", "brand": null, "label": "Рамки Lux International клен", "oldId": 623, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.751151",
        "modified": "2021-08-30 07:38:17.751151",
        "deleted": false
      },
      {
        "id": "OiNdFGZMFRbfC1XpFHOjm",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-antracit", "brand": null, "label": "Рамки Lux International антрацит", "oldId": 638, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.758515",
        "modified": "2021-08-30 07:38:17.758515",
        "deleted": false
      },
      {
        "id": "a8wbEFNe_Meitrdf-bA3z",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-chernyy", "brand": null, "label": "Рамки Geo International черный", "oldId": 648, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.764990",
        "modified": "2021-08-30 07:38:17.764990",
        "deleted": false
      },
      {
        "id": "lBHKTVGCHNsM4qgJfYgFM",
        "rev": 0,
        "options": {"slug": "merten-d-life-chernyy-oniks-steklo", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE черный оникс, стекло", "oldId": 745, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.772539",
        "modified": "2021-08-30 07:38:17.772539",
        "deleted": false
      },
      {
        "id": "hfV5zD6RH_hz5yw3Rf0kh",
        "rev": 0,
        "options": {"slug": "siemens-delta-line-belyy", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Line белый", "oldId": 193, "images": [], "published": false, "description": "Розетки,выключатели, рамки и накладки серии Siemens DELTA line&nbsp;цвета&nbsp;\"белый\". Изделия Siemens DELTA line&nbsp;классического белого цвета добавят свежести и элегантности в Ваш интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.785553",
        "modified": "2021-08-30 07:38:17.785553",
        "deleted": false
      },
      {
        "id": "ggiC8fLB5Zi6fXsEr_SGo",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-elite", "brand": null, "label": "Светодиодная лента ELITE", "oldId": 403, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.793940",
        "modified": "2021-08-30 07:38:17.793940",
        "deleted": false
      },
      {
        "id": "8QgLCO0IqyVzlmnQ7JifP",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-3-polyusnye-45ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 3 полюсные 4,5kA, C характеристики", "oldId": 439, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.801481",
        "modified": "2021-08-30 07:38:17.801481",
        "deleted": false
      },
      {
        "id": "tg2-qOR_muCox01d1Km0C",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-zerkalnye", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss зеркальные", "oldId": 491, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.811530",
        "modified": "2021-08-30 07:38:17.811530",
        "deleted": false
      },
      {
        "id": "UKsGEyM_JnBZR0KVzKel_",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-frontier", "brand": "wYe0UEwTnEDz8TTm-8Hb7", "label": "Датчики движения Frontier", "oldId": 280, "images": [], "published": false, "description": "Интернет-магазин \"VIProzetki.ru\" предлагает выгодные цены и доставку при покупке или заказе&nbsp;датчиков движения Frontier.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.821282",
        "modified": "2021-08-30 07:38:17.821282",
        "deleted": false
      },
      {
        "id": "AIzZ4IcFn4n_T7-Chfa3F",
        "rev": 0,
        "options": {"slug": "svetodiodnye-ofisnye-svetilniki-dlya-armstrong-foton", "brand": "UshRKtcJi_pETonlNwnPO", "label": "Светодиодные офисные светильники для армстронг Foton", "oldId": 326, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить cветодиодные офисные светильники Foton для армстронг &nbsp;по отличной цене и с гарантией .\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.832169",
        "modified": "2021-08-30 07:38:17.832169",
        "deleted": false
      },
      {
        "id": "lTWC53sY63gLIR1qHQK74",
        "rev": 0,
        "options": {"slug": "germetichnye-v-plastikovom-korpuse", "brand": null, "label": "Герметичные в пластиковом корпусе", "oldId": 420, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.842622",
        "modified": "2021-08-30 07:38:17.842622",
        "deleted": false
      },
      {
        "id": "xqV2ND-P8CoK2WUuG915d",
        "rev": 0,
        "options": {"slug": "svetilniki-s-datchikom-dvizheniya-zamel", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Светильники с датчиком движения Zamel", "oldId": 318, "images": [], "published": false, "description": "Светильники Zamel с встроенным датчиком движения.\nСветильники устанавливаются в стандартный подрозетник и предназначены для бытовой электросети.\nНакладные модели не требуют подрозетника и крепятся винтами на поверхность согласно инструкции.\nВ нашем интернет-магазине &quot;VIProzetki.ru&quot; &nbsp;Вы можете купить светильники с датчиком движения Zamel по привлекательной цене с доставкой .\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.849690",
        "modified": "2021-08-30 07:38:17.849690",
        "deleted": false
      },
      {
        "id": "jtK8lCuINch8qxv3Qmo3h",
        "rev": 0,
        "options": {"slug": "merten-d-life-nikel-metall", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE никель металл", "oldId": 740, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.890544",
        "modified": "2021-08-30 07:38:17.890544",
        "deleted": false
      },
      {
        "id": "tiCuwmw_81Pp4CYwui8hC",
        "rev": 0,
        "options": {"slug": "merten-d-life-ramki-steklo-i-bazalt", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE рамки стекло и базальт", "oldId": 743, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.900977",
        "modified": "2021-08-30 07:38:17.900977",
        "deleted": false
      },
      {
        "id": "S-y8dTAW_pda0CgUl8s8X",
        "rev": 0,
        "options": {"slug": "germetichnye-v-plastikovom-korpuse-12v", "brand": null, "label": "Герметичные в пластиковом корпусе 12v", "oldId": 421, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.910642",
        "modified": "2021-08-30 07:38:17.910642",
        "deleted": false
      },
      {
        "id": "M-JEZRu9yfgs9WpHWkBPD",
        "rev": 0,
        "options": {"slug": "ledmonster-pyramid", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster PYRAMID", "oldId": 573, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.917765",
        "modified": "2021-08-30 07:38:17.917765",
        "deleted": false
      },
      {
        "id": "JdDCfITCWx9tnouqTQTdl",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-titanovyy", "brand": null, "label": "Рамки Lux International титановый", "oldId": 639, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.926492",
        "modified": "2021-08-30 07:38:17.926492",
        "deleted": false
      },
      {
        "id": "WiPRfJ0dx-sTXEv9-B43a",
        "rev": 0,
        "options": {"slug": "dopolnitelnye-moduli-bachmann", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Дополнительные модули Bachmann", "oldId": 292, "images": [], "published": false, "description": "http://bachmann.ru/netcat_files/multifile/2278/Module_slide1.jpg\" style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.934379",
        "modified": "2021-08-30 07:38:17.934379",
        "deleted": false
      },
      {
        "id": "kipOW2KdnniKheU_Ou_Zc",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-zoloto", "brand": null, "label": "Рамки Geo International золото", "oldId": 644, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.943772",
        "modified": "2021-08-30 07:38:17.943772",
        "deleted": false
      },
      {
        "id": "bZbksHRITelCHuQBggUwr",
        "rev": 0,
        "options": {"slug": "ramki-berker-q7", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Рамки Berker Q.7", "oldId": 661, "images": [], "published": false, "description": "Немецкая компания Berker постоянно радует своих почитателей новинкам в мире электрооборудования, поэтому появление премиальной линейки Berker Q.7 заставило говорить о ней всю Европу. Натуральные материалы и интересные расцветки рамок, а также непревзойденное немецкое качество заставили конкурентов задуматься, и не зря - продукция Berker Q.7 была высоко оценена как профессионалами, так и обычными пользователями.\nBerker предлагают несколько цветовых решений рамок Q.7, особой популярностью пользуются расцветки \"стекло\", \"бетон\", \"алюминий\" и \"сланец\". Вам остается только выбрать расцветку, максимально выигрышно смотрящуюся в вашем интерьере.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.951878",
        "modified": "2021-08-30 07:38:17.951878",
        "deleted": false
      },
      {
        "id": "PkANkR9Azb7rxc0EfJbuJ",
        "rev": 0,
        "options": {"slug": "professionalnye-sensornye-svetilniki-rs-pro-system-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Профессиональные сенсорные светильники RS PRO SYSTEM - Steinel", "oldId": 313, "images": [], "published": false, "description": "Наш интернет-магазин \"VIProzetki.ru\" предлагает к продаже профессиональные&nbsp;сенсорные светильники RS PRO SYSTEM Steinel.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.962193",
        "modified": "2021-08-30 07:38:17.962193",
        "deleted": false
      },
      {
        "id": "8ee8jqSuG4BgHqf08LZWr",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Светодиодные светильники Horoz Electric", "oldId": 426, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить светодиодные светильники&nbsp;Horoz Electric или заказать светодиодные светильники&nbsp;Horoz Electric для дома и дачи ,интерьерные и потолочные,встраиваемые и накладные по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:17.972837",
        "modified": "2021-08-30 07:38:17.972837",
        "deleted": false
      },
      {
        "id": "wr2zbQ7IYzyJrp2fhpho2",
        "rev": 0,
        "options": {"slug": "shchitki-skrytoy-ustanovki-hager-golf", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Щитки скрытой установки Hager Golf", "oldId": 729, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.984291",
        "modified": "2021-08-30 07:38:17.984291",
        "deleted": false
      },
      {
        "id": "iWpyFM_BW-HTCiSwFuN04",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-slonovaya-kost", "brand": null, "label": "Рамки Geo International слоновая кость", "oldId": 647, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:17.994808",
        "modified": "2021-08-30 07:38:17.994808",
        "deleted": false
      },
      {
        "id": "GSbPIW23fbBTt30mCUbBY",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-elite-24-volt", "brand": null, "label": "Светодиодная лента ELITE 24 вольт", "oldId": 406, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.002229",
        "modified": "2021-08-30 07:38:18.002229",
        "deleted": false
      },
      {
        "id": "1ik1-z_FBulyW2ygDACQZ",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-md", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX MD", "oldId": 681, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.010025",
        "modified": "2021-08-30 07:38:18.010025",
        "deleted": false
      },
      {
        "id": "cQ7Wr2fexdjfK-Dxxj9rJ",
        "rev": 0,
        "options": {"slug": "gira-f-100", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA F 100", "oldId": 89, "images": [], "published": false, "description": "Неброские, но неповторимые своей простотой и внешней легкостью изделия Gira F100 будут идеальной находкой даже для самых требовательных покупателей. Рамки, накладки и розетки Gira F100 внесут комфорт в Ваше жилище!\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.024248",
        "modified": "2021-08-30 07:38:18.024248",
        "deleted": false
      },
      {
        "id": "_R3gSqAIdVEmeeyNoeeqz",
        "rev": 0,
        "options": {"slug": "ledmonster-teny", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster TENY", "oldId": 589, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.040352",
        "modified": "2021-08-30 07:38:18.040352",
        "deleted": false
      },
      {
        "id": "p1Py9fLclYdviOlWlLhsN",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-4-polyusnye-6ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 4 полюсные  6kA, C характеристики", "oldId": 721, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.051634",
        "modified": "2021-08-30 07:38:18.051634",
        "deleted": false
      },
      {
        "id": "mjE1mMBZ6nEFLSKKxfYxT",
        "rev": 0,
        "options": {"slug": "ramki-one-international-molochno-belyy", "brand": null, "label": "Рамки One International молочно-белый", "oldId": 611, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.229835",
        "modified": "2021-08-30 07:38:18.229835",
        "deleted": false
      },
      {
        "id": "diN6pCwdawxtyhZpQgtHM",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-1-polyusnye-6ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 1 полюсные  6kA, C характеристики", "oldId": 718, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.062019",
        "modified": "2021-08-30 07:38:18.062019",
        "deleted": false
      },
      {
        "id": "BLd4K49AkzpcAaRFq2Y06",
        "rev": 0,
        "options": {"slug": "termoregulyatory-ebeco", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Терморегуляторы Ebeco", "oldId": 348, "images": [], "published": false, "description": "Терморегуляторы Ebeco выгодно отличаются высоким качеством, легкостью управления и стильным дизайном.&nbsp;\nВ нашем интернет магазине \"VIProzetki.ru\" Вы можете купить или заказать терморегуляторы Ebeco с доставкой по привлекательной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.076782",
        "modified": "2021-08-30 07:38:18.076782",
        "deleted": false
      },
      {
        "id": "LSs-iE_6K9HBBTInvAw10",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-rubinovyy", "brand": null, "label": "Рамки Lux International рубиновый", "oldId": 633, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.085731",
        "modified": "2021-08-30 07:38:18.085731",
        "deleted": false
      },
      {
        "id": "8ARw94f0xGFwu33_wX5EJ",
        "rev": 0,
        "options": {"slug": "malye-shchitki-skrytoy-ustanovki-volta-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Малые щитки скрытой установки Volta Hager", "oldId": 448, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.093493",
        "modified": "2021-08-30 07:38:18.093493",
        "deleted": false
      },
      {
        "id": "-78yL2y9gEoT5GEQG4YtJ",
        "rev": 0,
        "options": {"slug": "grebenchatye-shinki-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Гребенчатые шинки Hager", "oldId": 730, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.109229",
        "modified": "2021-08-30 07:38:18.109229",
        "deleted": false
      },
      {
        "id": "vOcyv9GiWz5Zxm6RRnDj8",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-sofitnye", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss софитные", "oldId": 492, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.119829",
        "modified": "2021-08-30 07:38:18.119829",
        "deleted": false
      },
      {
        "id": "vUdIcfXoeF7LBb4xu3pza",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-luna", "brand": null, "label": "Рамки Lux International луна", "oldId": 635, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.128522",
        "modified": "2021-08-30 07:38:18.128522",
        "deleted": false
      },
      {
        "id": "r6pe_hZ8VB6nMBsNe4wUk",
        "rev": 0,
        "options": {"slug": "svetilniki-vstraivaemye-fabbian", "brand": "K0FfZN2GksbvTzJElwgRj", "label": "Светильники встраиваемые Fabbian", "oldId": 314, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить итальянские встраиваемые светильники Fabbian &nbsp;по отличной цене и с гарантией.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.137529",
        "modified": "2021-08-30 07:38:18.137529",
        "deleted": false
      },
      {
        "id": "V4TzUMT7Nj2Qh5WWJBiBc",
        "rev": 0,
        "options": {"slug": "jung-ls-990-chernyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 черный", "oldId": 149, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 черного цвета добавят уникальности Вашему интерьеру и будут долго радовать своим качеством.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.147491",
        "modified": "2021-08-30 07:38:18.147491",
        "deleted": false
      },
      {
        "id": "KwKLyypn_QsjRLDM-3TKy",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-antracit", "brand": null, "label": "Рамки Geo International антрацит", "oldId": 649, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.156833",
        "modified": "2021-08-30 07:38:18.156833",
        "deleted": false
      },
      {
        "id": "wryG5LPCaoaO2Yty_uy3h",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-molochno-belyy", "brand": null, "label": "Рамки Lux International молочно-белый", "oldId": 637, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.164321",
        "modified": "2021-08-30 07:38:18.164321",
        "deleted": false
      },
      {
        "id": "5QeAUG7vEqDCrZl50NcnQ",
        "rev": 0,
        "options": {"slug": "hite-pro", "brand": "t3Lqq5TMf7JpQDsxlkU_D", "label": "HiTE PRO", "oldId": 701, "images": [], "published": false, "description": "Радиовыключатели - это беспроводные выключатели света, за которыми будущее: никаких заморочек с проводкой и отсутствие необходимости штробить стены. Если одного выключателя недостаточно, то всегда можно сообразить еще один, потратив всего пять минут. Выключатель не придется долго монтировать - его можно прикрепить на любую поверхность, не повреждая ее. Радиовыключатель&nbsp;HiTE PRO станет находкой для дачи, парковки, а также помещений, в которых могут возникнуть проблемы с дополнительной проводкой.\nКупить радиовыключатели&nbsp;HiTE PRO ,радиопередатчики и приемники&nbsp;HiTE PRO по отличной цене с доставкой в&nbsp;Москве, области и всей России.&nbsp;\nhttps://www.hite-pro.ru/wp-content/uploads/shema-raboty-radiovyklyuchate... style=\"width: 1001px; height: 670px;\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.174433",
        "modified": "2021-08-30 07:38:18.174433",
        "deleted": false
      },
      {
        "id": "gCLtJvKHNKASNLDFVQ-qi",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-standart-24-volt", "brand": null, "label": "Светодиодная лента STANDART 24 вольт", "oldId": 416, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.184282",
        "modified": "2021-08-30 07:38:18.184282",
        "deleted": false
      },
      {
        "id": "5eYcfZMDEMCSKlZhUMS20",
        "rev": 0,
        "options": {"slug": "mehanizmy-fede", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Механизмы Fede", "oldId": 215, "images": [], "published": false, "description": "У нас в интернет-магазине Вы можете купить механизмы Fede или заказать механизмы Fede к розеткам и выключателям для всех серий Fede по отличной цене\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.192604",
        "modified": "2021-08-30 07:38:18.192604",
        "deleted": false
      },
      {
        "id": "VTbO4sWSl9_R0ZOGP8MJc",
        "rev": 0,
        "options": {"slug": "jung-ls-990-bezhevyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 бежевый", "oldId": 139, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 бежевого цвета невероятно универсальны и прекрасно вписываются в любой интерьер, станут его стильными деталями.\n\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.206741",
        "modified": "2021-08-30 07:38:18.206741",
        "deleted": false
      },
      {
        "id": "CtiLdYs-_e6r5_RgTS6pi",
        "rev": 0,
        "options": {"slug": "berker-b3", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker B.3", "oldId": 39, "images": [], "published": false, "description": "Изделия серии B.3 обращают на себя внимание благодаря выигрышному сочетанию цвета и формы. Рамки B.3 порадуют Вас и ваших близких.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.218915",
        "modified": "2021-08-30 07:38:18.218915",
        "deleted": false
      },
      {
        "id": "eseqSCNrTmy8SRka0zX_O",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-alyuminiy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea life алюминий", "oldId": 121, "images": [], "published": false, "description": "Серия Legrand Galea Life&nbsp;цвета \"алюминий\" удачно впишется в современный стиль Вашего дома.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.241663",
        "modified": "2021-08-30 07:38:18.241663",
        "deleted": false
      },
      {
        "id": "Z2l55UgVRlz-2pGFl--jT",
        "rev": 0,
        "options": {"slug": "jung-sl-500-belyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG SL 500 белый", "oldId": 196, "images": [], "published": false, "description": "Серия Jung SL 500&nbsp;белого цвета - это классика и элегантность.&nbsp;&nbsp;Рамки Jung SL 500&nbsp; белого цвета освежат и украсят домашний или офисный интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.252703",
        "modified": "2021-08-30 07:38:18.252703",
        "deleted": false
      },
      {
        "id": "a4CZFSJYi7WJdBMyeK1XR",
        "rev": 0,
        "options": {"slug": "berker-s1-bezhevyy-glyanec", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker S.1 Бежевый глянец", "oldId": 172, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.264426",
        "modified": "2021-08-30 07:38:18.264426",
        "deleted": false
      },
      {
        "id": "NnbE7FOZ1ZvdoBn5yH7ao",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-trekovye-arlight", "brand": "Ybvi0_GSytKJ3K3A8Cxzs", "label": "Светодиодные светильники трековые Arlight", "oldId": 466, "images": [], "published": false, "description": "Трековые светодиодные светильники  ArlightВ - Лучшая цена в Москве! В нашем интернет-магазине VipRozetki.ru Вы можете купить светодиодные светильники на шинопровод или заказать с доставкой светодиодные светильники и прожекторы трековые Arlight на выгодных условиях.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.277123",
        "modified": "2021-08-30 07:38:18.277123",
        "deleted": false
      },
      {
        "id": "zDiLh8CDJZJXBAFY8Dj_H",
        "rev": 0,
        "options": {"slug": "svetodiodnye-sadovye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Светодиодные садовые светильники Horoz Electric", "oldId": 430, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.287771",
        "modified": "2021-08-30 07:38:18.287771",
        "deleted": false
      },
      {
        "id": "1AH1Z2BIrDUW9AUKpPaLk",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-zoloto", "brand": null, "label": "Рамки Lux International золото", "oldId": 630, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.299306",
        "modified": "2021-08-30 07:38:18.299306",
        "deleted": false
      },
      {
        "id": "axMYRKfdQApnQ9Zn2BAjD",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-new-rozetki-i-vyklyuchateli-alyuminiy", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA NEW розетки и выключатели алюминий", "oldId": 760, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.308469",
        "modified": "2021-08-30 07:38:18.308469",
        "deleted": false
      },
      {
        "id": "MZeYfO9237anqhNyaUl-e",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-gx53", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss GX53", "oldId": 498, "images": [], "published": false, "description": "Светодиодные лампы Gauss GX53&nbsp;эти лампы имеют плоский дизайн то есть уменьшенные габариты по высоте что позволяет их использовать в потолочных и мебельных конструкциях с малой глубиной установки. Такие лампы в светильниках позволяют проектировать потолки с максимальной высотой. Также серия характеризуется пониженным тепловыделением.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.324566",
        "modified": "2021-08-30 07:38:18.324566",
        "deleted": false
      },
      {
        "id": "kzEtNWTHE9kF0SCXyV1ds",
        "rev": 0,
        "options": {"slug": "ustroystvo-zashchitnogo-otklyucheniya-hager-a-tip", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Устройство защитного отключения Hager A-тип", "oldId": 712, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.337711",
        "modified": "2021-08-30 07:38:18.337711",
        "deleted": false
      },
      {
        "id": "20nzs0g9Qb6yZMcSt5ipK",
        "rev": 0,
        "options": {"slug": "schneider-unica-grafit", "brand": null, "label": "Schneider Unica графит", "oldId": 180, "images": [], "published": false, "description": "Серия Schneider Electric Unica&nbsp;графитового цвета. Изделия Schneider Electric Unica&nbsp; - это стильные и функциональные детали Вашего дома.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.348606",
        "modified": "2021-08-30 07:38:18.348606",
        "deleted": false
      },
      {
        "id": "gYGMd97SCNthCNjFiF5u1",
        "rev": 0,
        "options": {"slug": "jung-a-500-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 алюминий", "oldId": 773, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;алюминиевого цвета обладают прекрасными техническими характеристиками и стильным лаконичным дизайном. Изделия серии подойдут для различных стилей и типов помещений.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.356870",
        "modified": "2021-08-30 07:38:18.356870",
        "deleted": false
      },
      {
        "id": "p0ziHyMq0Oh669-ohoF7K",
        "rev": 0,
        "options": {"slug": "anam-legrand", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Anam Legrand", "oldId": 705, "images": [], "published": false, "description": "Купить продукцию Anam Legrand  по отличной цене с доставкой в Москве, области и всей России.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.367703",
        "modified": "2021-08-30 07:38:18.367703",
        "deleted": false
      },
      {
        "id": "cNyVSK-yijpQgKBJFcgt0",
        "rev": 0,
        "options": {"slug": "promyshlennye-svetodiodnye-svetilniki-faldi", "brand": "0HdMLKAZs8Up8JPNyomtb", "label": "Промышленные светодиодные светильники Faldi", "oldId": 581, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить промышленные светодиодные светильники Faldi по отличной цене с доставкой и не только в Москве.\nОбласти применения промышленных светодиодных светильников Faldi освещение производственных помещений, освещение складских помещений, освещение торговых площадей, освещение выставочных комплексов, освещение крытых гаражных комплексов.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.379578",
        "modified": "2021-08-30 07:38:18.379578",
        "deleted": false
      },
      {
        "id": "H57-SQ8erHVyuhbkUjWct",
        "rev": 0,
        "options": {"slug": "merten-artec-bezhevyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Artec бежевый", "oldId": 159, "images": [], "published": false, "description": "Изделия Merten Artec&nbsp;бежевого цвета - завершающая деталь для изысканного интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.512439",
        "modified": "2021-08-30 07:38:18.512439",
        "deleted": false
      },
      {
        "id": "gT_8IFrp-2T0Z8QEHUGL4",
        "rev": 0,
        "options": {"slug": "mehanizmy-obshchie-abb-zenit", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "Механизмы общие ABB Zenit", "oldId": 709, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.523266",
        "modified": "2021-08-30 07:38:18.523266",
        "deleted": false
      },
      {
        "id": "fjC2kSOQLn4hSq3XGhlWc",
        "rev": 0,
        "options": {"slug": "arlight", "brand": "Ybvi0_GSytKJ3K3A8Cxzs", "label": "Arlight", "oldId": 465, "images": [], "published": false, "description": "Arlight – известный бренд по производству светодиодного оборудования.  \nПродукция под брендом Arlight производится с 2005 года, и к настоящему моменту является одним из лидеров на рынке товаров светодиодного оборудования.\nПродукция Arlight - это фирма гарантирующая своим потребителям доступность, надежность и долговечность, обеспеченные высочайшим профессионализмом персонала, работающего над и вместе с брендом.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.393389",
        "modified": "2021-08-30 07:38:18.393389",
        "deleted": false
      },
      {
        "id": "isdHvG2L3uob9atp3ZHJ3",
        "rev": 0,
        "options": {"slug": "berker-k1-belyy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker K.1 белый", "oldId": 109, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker K.1&nbsp;белого цвета - это классика, которая будет долго Вам служить и радовать глаз.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.404661",
        "modified": "2021-08-30 07:38:18.404661",
        "deleted": false
      },
      {
        "id": "r6_NrFB0y3QVg22Ndsqsh",
        "rev": 0,
        "options": {"slug": "gira-system-55", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA SYSTEM 55", "oldId": 93, "images": [], "published": false, "description": "Накладки и центральные панели Gira System 55 предназначены для монтажа в рамках серий: GIRA Esprit, GIRA Event, GIRA E2 и GIRA Standard 55. Изделия System 55 изготавливаются из термопласта. Цвета System 55 - \"антрацит\", \"под алюминий\", белый матовый, белый глянцевый, кремовый глянцевый.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.415761",
        "modified": "2021-08-30 07:38:18.415761",
        "deleted": false
      },
      {
        "id": "ileRwg6AlpFDyhQuVBo34",
        "rev": 0,
        "options": {"slug": "abb-impuls-mehanizmy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls механизмы", "oldId": 18, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.426108",
        "modified": "2021-08-30 07:38:18.426108",
        "deleted": false
      },
      {
        "id": "tI5hQ8-5GLVhPRrxyPA0L",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-elementary", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss elementary", "oldId": 490, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.435540",
        "modified": "2021-08-30 07:38:18.435540",
        "deleted": false
      },
      {
        "id": "jHksAUASL_sSUZAZR0ar2",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-pix", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann PIX", "oldId": 708, "images": [], "published": false, "description": "http://bachmann.ru/netcat_files/multifile/2278/Bachmann_PIX_Office.jpg\" style=\"width: 710px; height: 330px;\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.445675",
        "modified": "2021-08-30 07:38:18.445675",
        "deleted": false
      },
      {
        "id": "NMhm231EvKHmssW0vS-NN",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-lux-12-volt", "brand": null, "label": "Светодиодная лента герметичная LUX 12 вольт", "oldId": 413, "images": [], "published": false, "description": "Герметичная Светодиодная лента LUX на 12 вольт в каталоге показаны модели которые имеют разную длину и цвет, выбирайте RGB модели если ван нужна регулировка цветности, приобретайте соответствующие блоки питания 12 вольт для светодиодных лент либо контроллеры с дистанционным управлением. Спрашивайте соответствие длины ЛЕД ленты и источника питания у консультанта либо по телефону.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.454599",
        "modified": "2021-08-30 07:38:18.454599",
        "deleted": false
      },
      {
        "id": "v9-JaKUeYsMPetbX07Qi1",
        "rev": 0,
        "options": {"slug": "teplye-poly-zamel-matec", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Теплые полы Zamel Matec", "oldId": 534, "images": [], "published": false, "description": "Теплые полы Zamel используются для напольного обогрева, устанавливается в тонкой стяжке для керамических и каменных полов.Нагревательный мат Zamel выполняет роль дополнительного или основного обогрева в квартирах, жилых домах, зданиях общественного пользования и промышленном строительстве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.462939",
        "modified": "2021-08-30 07:38:18.462939",
        "deleted": false
      },
      {
        "id": "2TPChDY1gZGTyxzGCdyzB",
        "rev": 0,
        "options": {"slug": "legrand-celiane-titan", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane титан", "oldId": 119, "images": [], "published": false, "description": "Серия Legrand Celiane&nbsp;титанового цвета позволит воплотить в жизнь самые смелые дизайнерские идеи в различных стилях.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.476065",
        "modified": "2021-08-30 07:38:18.476065",
        "deleted": false
      },
      {
        "id": "6uLjKLw38phuJS48lIoQ8",
        "rev": 0,
        "options": {"slug": "zamel-exta-free-komplekty-besprovodnogo-upravleniya", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Zamel Exta Free комплекты беспроводного управления", "oldId": 538, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.486073",
        "modified": "2021-08-30 07:38:18.486073",
        "deleted": false
      },
      {
        "id": "kdWRd7tXmSud--C43inLi",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy", "brand": null, "label": "Светодиодные лампы", "oldId": 322, "images": [], "published": false, "description": "Светодиодные лампы Виктел&nbsp;изготавливаются с использованием керамики, что продлевает их долговечность, способствует меньшему нагреванию. Лампы имеют рассеивающие линзы, которые дают мягкий свет. Встроенный в лампы драйвер качественно выполнен и служит надежно. Светодиодные лампы Виктел&nbsp;\nотвечают всем техническим требованиям по потребляемой мощности, освещенности, электромагнитной совместимости.&nbsp;\n\nНаш интернет-магазин \"VIProzetki.ru\" предлагает&nbsp;светодиодные лампы Виктел&nbsp;по практичной цене и дает гарантию.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.496671",
        "modified": "2021-08-30 07:38:18.496671",
        "deleted": false
      },
      {
        "id": "b15vUdYaSoY4Hup0zfpHp",
        "rev": 0,
        "options": {"slug": "abb-impuls-chernyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls черный", "oldId": 19, "images": [], "published": false, "description": "Серия ABB Impuls&nbsp;черного цвета будет прекрасно смотреться в строгом стильном интерьере.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.503705",
        "modified": "2021-08-30 07:38:18.503705",
        "deleted": false
      },
      {
        "id": "y4FzIpT9z2jsZ7VbbMndH",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-lux-12-volt", "brand": null, "label": "Светодиодная лента LUX 12 вольт", "oldId": 411, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.728015",
        "modified": "2021-08-30 07:38:18.728015",
        "deleted": false
      },
      {
        "id": "Q3pW56S23jf-ZmzycZiHl",
        "rev": 0,
        "options": {"slug": "berker-k1-alyuminiy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker K.1 алюминий", "oldId": 106, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker K.1&nbsp;цвета алюминий подчеркнет стиль Вашего интерьера, а выскогое качество будет радовать долгие годы.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.536127",
        "modified": "2021-08-30 07:38:18.536127",
        "deleted": false
      },
      {
        "id": "ACYXVNkM3bfTR1xXoUTFu",
        "rev": 0,
        "options": {"slug": "berker-k1-antracit", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker K.1 антрацит", "oldId": 107, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker K.1&nbsp;&nbsp;цвета антрацит подчеркнет индивидуальность Вашего интерьера и порадует долговечностью.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.546701",
        "modified": "2021-08-30 07:38:18.546701",
        "deleted": false
      },
      {
        "id": "B1_Qz2ifOGeESc7kjScG1",
        "rev": 0,
        "options": {"slug": "fede-soho", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "FEDE Soho", "oldId": 798, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.556322",
        "modified": "2021-08-30 07:38:18.556322",
        "deleted": false
      },
      {
        "id": "VgaVBzD_AWVm3_YjaqHHt",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-grafito", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede GRAFITO", "oldId": 205, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.568668",
        "modified": "2021-08-30 07:38:18.568668",
        "deleted": false
      },
      {
        "id": "fL918iZOH5Eca2UJk3d6V",
        "rev": 0,
        "options": {"slug": "ledmonster-leaf", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster LEAF", "oldId": 574, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.579061",
        "modified": "2021-08-30 07:38:18.579061",
        "deleted": false
      },
      {
        "id": "g7b-J7SFNmA-AR9osEfyp",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-titanovyy", "brand": null, "label": "Рамки Geo International титановый", "oldId": 652, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.587881",
        "modified": "2021-08-30 07:38:18.587881",
        "deleted": false
      },
      {
        "id": "KtgdWzS5INAU5DGx8Gako",
        "rev": 0,
        "options": {"slug": "ramki-one-international-zoloto", "brand": null, "label": "Рамки One International золото", "oldId": 610, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.597888",
        "modified": "2021-08-30 07:38:18.597888",
        "deleted": false
      },
      {
        "id": "2gSc_AThPSn1fBMGTxs5e",
        "rev": 0,
        "options": {"slug": "germetichnye-v-plastikovom-korpuse-24v", "brand": null, "label": "Герметичные в пластиковом корпусе 24v", "oldId": 422, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.604469",
        "modified": "2021-08-30 07:38:18.604469",
        "deleted": false
      },
      {
        "id": "McwIeoMF07_4ionBt7rFG",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-3-polyusnye-6ka-b-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 3 полюсные 6kA, B характеристики", "oldId": 725, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.611997",
        "modified": "2021-08-30 07:38:18.611997",
        "deleted": false
      },
      {
        "id": "F0VokxzrneqDJzZvmPFn9",
        "rev": 0,
        "options": {"slug": "simon-82-klavishi-i-nakladki-slonovaya-kost", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 клавиши и накладки слоновая кость", "oldId": 597, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.626694",
        "modified": "2021-08-30 07:38:18.626694",
        "deleted": false
      },
      {
        "id": "QSjENrazbzxHS3AFzDpWY",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-kapsulnye", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss капсульные", "oldId": 497, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.638687",
        "modified": "2021-08-30 07:38:18.638687",
        "deleted": false
      },
      {
        "id": "wyinj56K-Bi5ZoHydC1l_",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-svecheobraznye-e14", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss свечеобразные E14", "oldId": 493, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.649762",
        "modified": "2021-08-30 07:38:18.649762",
        "deleted": false
      },
      {
        "id": "JhMhJecwcnl68F3GjyFj-",
        "rev": 0,
        "options": {"slug": "gira-system-55-alyuminiy", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA System 55 алюминий", "oldId": 94, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.663752",
        "modified": "2021-08-30 07:38:18.663752",
        "deleted": false
      },
      {
        "id": "JxIbDoWQgpvvHHfgSzp42",
        "rev": 0,
        "options": {"slug": "delta-natur-dub", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Delta Natur дуб", "oldId": 56, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки серии Siemens DELTA natur&nbsp;цвета&nbsp;\"дуб\" -&nbsp;добротные, надежные, стильные детали Вашего уютного дома.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.676695",
        "modified": "2021-08-30 07:38:18.676695",
        "deleted": false
      },
      {
        "id": "j_6qGywmfSUjFG5gQMF7W",
        "rev": 0,
        "options": {"slug": "llinas-ideal-nakladnye", "brand": "0O8VMRsNe_SAsvy3l8fuv", "label": "Llinas Ideal накладные", "oldId": 135, "images": [], "published": false, "description": "Ретро розетки и выключатели Llinas Ideal накладные или накладной монтаж - это возможность без проблем сделать проводку в деревянном доме в ретро стиле.Розетки и выключатели Llinas Ideal накладные или накладной монтаж смотрятся превосходно, ведь они соединены ретро проводом , который крепиться на фарфоровые изоляторы.Ретро провод Llinas (кабель) плетеный в шелковой изоляции коричневый и белый продается бухтами по 50 метров.\nУ нас в интернет-магазине Вы можете купить накладные ретро розетки и выключатели Llinas Ideal или заказать накладные фарфоровые выключатели и розетки Llinas Ideal по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.687487",
        "modified": "2021-08-30 07:38:18.687487",
        "deleted": false
      },
      {
        "id": "vY49D4zeHpTZrIYRkY-3v",
        "rev": 0,
        "options": {"slug": "berker-q3-belyy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.3 белый", "oldId": 660, "images": [], "published": false, "description": "Пожалуй, белый цвет самый популярный и универсальный из всех, поэтому Berker Q.3 в белой расцветке - это почти классика. Строгий внешний вид, тонкие линии и безупречный белый тон Berker Q.3 в цвете \"полярная белизна\" украсят интерьер ванной комнаты, кухни и спальни, а также офисное помещение. Мы доставим рамки и розетки Berker Q.3 по Москве и области быстрой курьерской доставкой, также у нас предусмотрена отправка для регионов.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.703332",
        "modified": "2021-08-30 07:38:18.703332",
        "deleted": false
      },
      {
        "id": "M2CAliv574T20-b_-bX2D",
        "rev": 0,
        "options": {"slug": "siemens-mehanizmy", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens механизмы", "oldId": 195, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.716811",
        "modified": "2021-08-30 07:38:18.716811",
        "deleted": false
      },
      {
        "id": "a4DXNb6CxEw3P0Tst2QR9",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnyy-kabel-ceilhit-psvd-18", "brand": "Tg3TwcRkvlK85ZBgGf7cE", "label": "Теплые полы нагревательный кабель Ceilhit PSVD-18", "oldId": 345, "images": [], "published": false, "description": "Установка&nbsp;теплого пола Ceilhit &nbsp;довольно проста - нагревательный кабель укладывается в бетонную стяжку при заливке пола. К проложенному кабелю подключается терморегулятор, необходимый для подключения кабеля к сети и выполнения регулировок.\n&nbsp;Нагревательный кабель Ceilhit PSVD-18 для теплого пола состоит из металлической оплетки, двужильного проводника, тефлоновой оболочки, теплоизоляционной оболочки и внешней термостойкой оболочки. Основное отличие от других теплых полов - это одна соединительная муфта и один соединительный кабель, что гарантирует качество и удобство монтажа. Поворотная муфта расположена на другом конце кабеля&nbsp;&nbsp;Ceilhit PSVD-18 и соединяет обе жилы проводника. Кабель&nbsp;Ceilhit PSVD-18 можно применять в помещениях с повышенной влажностью, так как заземление обеспечивается металлической оплеткой.&nbsp;\nДвужильный экранированный кабель Ceilhit PSVD-18 используется в системе теплого пола&nbsp;для обогрева жилых и нежилых помещений, в том числе с повышенной влажностью.&nbsp;\nhttp://www.ceilhit24.ru/design/ceilhit24/img/22PSVD.jpg\" style=\"height:320px; width:320px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.738588",
        "modified": "2021-08-30 07:38:18.738588",
        "deleted": false
      },
      {
        "id": "_q7IqHyiPlXhBEHiKO05e",
        "rev": 0,
        "options": {"slug": "abb-impuls-chernyy-barhat", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls черный бархат", "oldId": 20, "images": [], "published": false, "description": "Розетки и выключатели ABB Impuls черный бархат качественно и надежно выполнены и имеют оригинальный дизайн. Продукты серии&nbsp;ABB Impuls имеют специальное приятное на ощупь покрытие и отличаются необычным цветом.&nbsp;\nВ нашем магазине \"VIProzetki.ru\" Вы можете купить&nbsp;розетки и выключатели ABB Impuls по экономичной цене с доставкой. Также мы предоставляем гарантию.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.748627",
        "modified": "2021-08-30 07:38:18.748627",
        "deleted": false
      },
      {
        "id": "yX1q73UCYfLbm-xPnJ6Mw",
        "rev": 0,
        "options": {"slug": "gewiss-rozetki-i-vyklyuchateli-chernyy", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "Gewiss розетки и выключатели черный", "oldId": 604, "images": [], "published": false, "description": "Любителям необычных дизайнерских решений непременно понравятся розетки и выключатели Gewiss в черном цвете. Стильные и презентабельные черные выключатели и розетки станут изюминкой в интерьере, а также порадуют пользователя своей надежностью и долговечностью.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.771842",
        "modified": "2021-08-30 07:38:18.771842",
        "deleted": false
      },
      {
        "id": "YeYq4s-AfGN7jYKaV_BCh",
        "rev": 0,
        "options": {"slug": "svetilniki-zamel", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Светильники Zamel", "oldId": 541, "images": [], "published": false, "description": "У нас в интернет-магазине  Вы можете купить светильники  Zamel или заказать с доставкой светодиодные Led светильники Zamel Ledix по отличной цене с доставкой и не только в Москве. Светодиодные светильники питаются от стандартного напряжения 12 Вольт постоянного тока. Вы можете использовать любые блоки питания, а также группировать светильники к одному источнику. Zamel серии Ledix предоставляет собственные источники, применение которых гарантирует безотказную многолетнюю работу.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.780065",
        "modified": "2021-08-30 07:38:18.780065",
        "deleted": false
      },
      {
        "id": "WB0-Va1r3NWTRr5bokqOo",
        "rev": 0,
        "options": {"slug": "avariynye-svetodiodnye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Аварийные светодиодные светильники Horoz Electric", "oldId": 424, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить аварийные светильники&nbsp;Horoz Electric или заказать аварийные светодиодные светильники&nbsp;Horoz Electric для дома и дачи, офиса и любого помещения по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.788413",
        "modified": "2021-08-30 07:38:18.788413",
        "deleted": false
      },
      {
        "id": "No_34Xm79TzWaB40mi6Au",
        "rev": 0,
        "options": {"slug": "dekorativnye-potolochnye-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Декоративные потолочные светильники Horoz Electric", "oldId": 428, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить декоративные потолочные&nbsp;светильники&nbsp;Horoz Electric или заказать декоративные полочные светильники Horoz Electric для дома и дачи по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.799290",
        "modified": "2021-08-30 07:38:18.799290",
        "deleted": false
      },
      {
        "id": "c7Yv4OAMYdNDyXlbPO1Tp",
        "rev": 0,
        "options": {"slug": "ramki-one-international-titanovyy", "brand": null, "label": "Рамки One International титановый", "oldId": 618, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.807446",
        "modified": "2021-08-30 07:38:18.807446",
        "deleted": false
      },
      {
        "id": "FCC8Z3z3vK7CpwrlLSxZh",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-modular", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA MODULAR", "oldId": 766, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.816071",
        "modified": "2021-08-30 07:38:18.816071",
        "deleted": false
      },
      {
        "id": "LqFPzZZoSYcn5cMl9lz31",
        "rev": 0,
        "options": {"slug": "ramki-one-international-hrom", "brand": null, "label": "Рамки One International хром", "oldId": 609, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.825666",
        "modified": "2021-08-30 07:38:18.825666",
        "deleted": false
      },
      {
        "id": "9U8D1pd8Zb57FRX0EwtEB",
        "rev": 0,
        "options": {"slug": "nagrevatelnyy-kabel-dlya-teplogo-pola-deviflex-18t", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Нагревательный кабель для теплого пола Deviflex 18T", "oldId": 306, "images": [], "published": false, "description": "Наш интернет-магазин \"VIProzetki.ru\" предлагает купить&nbsp;нагревательный кабель для теплого пола Devi Deviflex с доставкой по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.833728",
        "modified": "2021-08-30 07:38:18.833728",
        "deleted": false
      },
      {
        "id": "jzWVwDbaR_Ffp0gpVztZb",
        "rev": 0,
        "options": {"slug": "ledmonster-angle", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster ANGLE", "oldId": 576, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.847985",
        "modified": "2021-08-30 07:38:18.847985",
        "deleted": false
      },
      {
        "id": "kStmfkese3kcO3BIWHRM5",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede", "oldId": 200, "images": [], "published": false, "description": "У нас в интернет-магазине Вы можете купить клавиши и накладки Fede или заказать клавиши и накладки Fede к розеткам и выключателям для всех серий Fede по отличной цене\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.992409",
        "modified": "2021-08-30 07:38:18.992409",
        "deleted": false
      },
      {
        "id": "-LcTcH5quHmufCPF8iqJB",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-dlya-uzkih-koridorov-skladov-vysokih-pomeshcheniy-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Датчики движения для узких коридоров, складов, высоких помещений Steinel", "oldId": 287, "images": [], "published": false, "description": "Датчики движения для узких коридоров, складов и высоких помещений фирмы Steinel&nbsp;- это продукция премиум класса, отличаются качеством,высокой чувствительностью, что позволяет им реагировать на малейшее движение.&nbsp;\nВ нашем интернет-магазине «VIProzetki.ru» вы можете заказать датчики движения для узких коридоров, складов и высоких помещений немецкой фирмы Steinel оптом или в розницу. Мы поможем Вам в выборе и покупке датчиков движения для узких коридоров, складов и высоких помещений немецкой фирмы Steinel для любых объектов.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.862374",
        "modified": "2021-08-30 07:38:18.862374",
        "deleted": false
      },
      {
        "id": "w_2SThdM1FQAbLndZKftz",
        "rev": 0,
        "options": {"slug": "merten-antik-korichnevyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Antik коричневый", "oldId": 486, "images": [], "published": false, "description": "В интернет-магазине \"VIProzetki.ru\" Вы можете купить  розетки и выключатели Merten Antik темно-коричневый по выгодной цене с доставкой,можете сделать заказ на Merten Antik коричневый в нашем офисе или павильоне в Москве..\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.878158",
        "modified": "2021-08-30 07:38:18.878158",
        "deleted": false
      },
      {
        "id": "X4MT22Z1ON82HZDXbNt1x",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-esylux-basic", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики присутствия ESYLUX Basic", "oldId": 690, "images": [], "published": false, "description": "Датчики присутствия ESYLUX Basic&nbsp;- серия датчиков предназначенная для небольших помещений отличаются простотой установки и подключения. Датчики имеют низкое энергопотребление и высокий коммутируемый ток, что избавляет от применения дополнительных реле. Все датчики предназначены для использования в бытовой электросети и имеют заводскую преднастройку.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.889733",
        "modified": "2021-08-30 07:38:18.889733",
        "deleted": false
      },
      {
        "id": "ofEFDH3zJLvBzJMegJWbh",
        "rev": 0,
        "options": {"slug": "jung-ls-990-belyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 белый", "oldId": 140, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990&nbsp;белого цвета &nbsp;- это классический выбор хорошего вкуса. &nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.905496",
        "modified": "2021-08-30 07:38:18.905496",
        "deleted": false
      },
      {
        "id": "sziMShHTwtVMWjI66yH6L",
        "rev": 0,
        "options": {"slug": "berker-arsys-zoloto", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Arsys золото", "oldId": 32, "images": [{"alt": "Розетки, выключатели, рамки и накладки Berker Arsys&nbsp;золотого цвета &nbsp;- это стильный штрих для роскошного интерьера.\n", "path": "uploads/series/3/32/1540665182522.jpg"}], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker Arsys&nbsp;золотого цвета &nbsp;- это стильный штрих для роскошного интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.916658",
        "modified": "2021-08-30 07:38:18.916658",
        "deleted": false
      },
      {
        "id": "ZOQkErfeTeC5YUgnDT8Fu",
        "rev": 0,
        "options": {"slug": "jung-sl-500-bronza", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG SL 500 бронза", "oldId": 197, "images": [], "published": false, "description": "Изделия Jung SL 500&nbsp; бронзового цвета элегантны и при этом оригинальны.&nbsp;Рамки Jung SL 500&nbsp;станут украшением любого интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.931388",
        "modified": "2021-08-30 07:38:18.931388",
        "deleted": false
      },
      {
        "id": "wAs5-KreHZFLVJFLmytYL",
        "rev": 0,
        "options": {"slug": "legrand-celiane-bezhevyy", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane бежевый", "oldId": 113, "images": [], "published": false, "description": "Серия Legrand Celiane бежевого цвета добавит стилю Вашего интерьера модную деталь.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.944410",
        "modified": "2021-08-30 07:38:18.944410",
        "deleted": false
      },
      {
        "id": "IiYnv_KGvJezT7-FwvvO6",
        "rev": 0,
        "options": {"slug": "svetodiodnye-ulichnye-arhitekturnye-svetilniki-faldi", "brand": "0HdMLKAZs8Up8JPNyomtb", "label": "Светодиодные уличные архитектурные светильники Faldi", "oldId": 583, "images": [], "published": false, "description": "В нашем магазине Вы можете купить уличные архитектурные светодиодные светильники для ЖКХ Faldi по отличной цене с доставкой и не только в Москве.\nОбласти применения уличных архитектурных светодиодных светильников Faldi это освещение улиц, дорог со средней и слабой интенсивностью движения; освещение территорий микрорайонов; освещение садово-парковых территорий; освещение придомовых территорий; освещение открытых и крытых гаражных комплексов и автостоянок; освещение промышленных объектов и прилегающих к ним территорий.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.954331",
        "modified": "2021-08-30 07:38:18.954331",
        "deleted": false
      },
      {
        "id": "nbpPk3uzUFHUD21YkgjRm",
        "rev": 0,
        "options": {"slug": "ledmonster-orbita-plus", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster ORBITA PLUS", "oldId": 557, "images": [], "published": false, "description": "Светодиодный светильник LedMonster ORBITA PLUS один из лучших осветительных приборов в своем классе. Благодаря возможности орбитального вращения и высокой цветопередаче 90+ Ra, позволяет экспериментировать с освещением, таким образом интерьер может легко меняться по вкусу и настроению. Имеет глубину встройки 60 мм. Возможна дополнительная опция диммирования с использованием драйвера тока HEP, в стандартной комплектации включает драйвер тока Mean Well.\n", "productTypes": []},
        "created": "2021-08-30 07:38:18.968374",
        "modified": "2021-08-30 07:38:18.968374",
        "deleted": false
      },
      {
        "id": "3fis1vJJ65iAOOW1VwTbL",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-esylux-standard", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики присутствия ESYLUX Standard", "oldId": 692, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:18.980243",
        "modified": "2021-08-30 07:38:18.980243",
        "deleted": false
      },
      {
        "id": "J2aLReFITc5OcePe0u0ey",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-antichnaya-latunbeloe-steklo", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки античная латунь,белое стекло", "oldId": 511, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.009873",
        "modified": "2021-08-30 07:38:19.009873",
        "deleted": false
      },
      {
        "id": "v_FcNJDx5ddK8Efdqy0E_",
        "rev": 0,
        "options": {"slug": "ledmonster-gira", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "LedMonster GIRA", "oldId": 558, "images": [], "published": false, "description": "Светодиодный светильник LedMonster GIRA один из лучших осветительных приборов в своем классе. Благодаря возможности орбитального вращения и высокой цветопередаче 90+ Ra, позволяет экспериментировать с освещением, таким образом интерьер может легко меняться по вкусу и настроению. Имеет глубину встройки 60 мм. Возможна дополнительная опция диммирования с использованием драйвера тока HEP, в стандартной комплектации включает драйвер тока Mean Well.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.021928",
        "modified": "2021-08-30 07:38:19.021928",
        "deleted": false
      },
      {
        "id": "-kbEcnJTRAQUrodKcDJZ4",
        "rev": 0,
        "options": {"slug": "ledmonster-tema", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster TEMA", "oldId": 563, "images": [], "published": false, "description": "Светодиодный светильник LedMonster TEMA - идеальный светильник для ценителей прямых линий и минимализма в дизайне интерьера. Направление свечения регулируется в двух направлениях. Имеет широкие функциональные возможности для применения в помещениях различной принадлежности, благодаря высоким техническим показателям и цветопередаче 90+ Ra. Возможна дополнительная опция диммирования с использованием драйвера тока HEP, в стандартной комплектации включает драйвер тока Mean Well.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.039046",
        "modified": "2021-08-30 07:38:19.039046",
        "deleted": false
      },
      {
        "id": "JdkgGGD9x6psZ1QNOxWw9",
        "rev": 0,
        "options": {"slug": "fede", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede", "oldId": 60, "images": [], "published": false, "description": "FEDE — производит розетки,выключатели и рамки класса люкс, компания Fede из Испании. В процессе производства все рамки тщательно шлифуются и в ручную полируются, после этого на них наносится разнообразное декоративное покрытие.\nПри изготовлении своих рамок FEDE использует специально разработанный сплав латуни.\nУ нас в интернет-магазине Вы можете купить  рамки,розетки и выключатели Fede или заказать рамки,розетки и выключатели Fede по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.053641",
        "modified": "2021-08-30 07:38:19.053641",
        "deleted": false
      },
      {
        "id": "wkP8Sy-gFl4xg8I47rKXV",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-jung", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Датчики движения JUNG", "oldId": 282, "images": [], "published": false, "description": "Датчики движения JUNG изготовлены по высоким немецким стандартам качества и отличаются особенной функциональностью и надежностью. Датчики классифицируются по способу крепления: потолочные, настенные и в подрозетник. По способу подключения: 2 - проводные 3 - проводные. Также датчики можно коммутировать для управления освещением в длинных коридорах и сложных помещениях, проконсультируйтесь у наших специалистов.\nВ нашем интернет-магазине &quot;VIProzetki.ru&quot; Вы можете купить датчики движения JUNG и датчики присутствия JUNG по разумной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.067514",
        "modified": "2021-08-30 07:38:19.067514",
        "deleted": false
      },
      {
        "id": "GayMy1ej6Y7st_GxYOcCn",
        "rev": 0,
        "options": {"slug": "llinas", "brand": "0O8VMRsNe_SAsvy3l8fuv", "label": "Llinas", "oldId": 134, "images": [], "published": false, "description": "Испанская компания Llinas специализируется на производстве розеток и вылючателей в ретро-стиле. Продукция &nbsp;Llinas&nbsp;предназначена для скрытого и открытого монтажа и выполнена из фарфора.&nbsp;Фарфоровые выключатели и розетки Llinas стильно смотрятся в любом доме и добавляют в интерьер шикарные ретро-детали. Розетки и выключатели&nbsp;Llinas имеют рамки из дерева цветов&nbsp;Forja,&nbsp;Habibat, City, а также из фарфора.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить&nbsp;ретро проводку серий&nbsp;Llinas Record и Llinas Ideal, розетки, фарфоровые выключатели и переключатели, телевизионные, телефонные и компьютерные розетки, распределительные коробки и светорегуляторы&nbsp;Llinas разных диаметров по замечательной цене и с доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.081121",
        "modified": "2021-08-30 07:38:19.081121",
        "deleted": false
      },
      {
        "id": "EaUlrKy7oZrKvU9F5MPhs",
        "rev": 0,
        "options": {"slug": "ledmonster-eva-r", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster EVA R", "oldId": 560, "images": [], "published": false, "description": "Светодиодный светильник LedMonster EVA R - уникальный по своим возможностям и техническим характеристикам встраиваемый светильник в круглом исполнении. В комплекте сменные накладки белого или черного цвета. А так же 2 рефлектора, благодаря которым можно выбирать угол свечения 23 или 50 градусов. Направление свечения так же легко регулируется благодаря подвижной части светильника. Обладает цветопередачей 90+ Ra и комплектуется диммируемым драйвером тока HEP.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.093911",
        "modified": "2021-08-30 07:38:19.093911",
        "deleted": false
      },
      {
        "id": "GleWJL4ppPpD2jf0edx3n",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager", "oldId": 435, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.365446",
        "modified": "2021-08-30 07:38:19.365446",
        "deleted": false
      },
      {
        "id": "EkyLj0kacpRezt9Zx82fW",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-legrand", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Лючки напольные  Legrand", "oldId": 295, "images": [], "published": false, "description": "Розетки в пол (напольные лючки)&nbsp;Legrand используются для установки в бетонные и фальш-полы.&nbsp;Лючки напольные имеют суппорты для розеток и разъемов&nbsp;программы Mosaic.&nbsp;&nbsp;Лючки Legrand не только удобны в использовании и&nbsp;просты в установке, но также прекрасно дополняют интерьер. &nbsp;В нашем интернет-магазине \"VIProzetki.ru\" вы можете купить &nbsp;розетки в пол&nbsp;Legrand по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.108705",
        "modified": "2021-08-30 07:38:19.108705",
        "deleted": false
      },
      {
        "id": "MgKyjQX6GLJafg9KrhmOq",
        "rev": 0,
        "options": {"slug": "jung-sl-500", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG SL-500", "oldId": 104, "images": [], "published": false, "description": "Изделия Jung SL 500 уникальны своими пластичными линиями и нестандартным сочетанием материалов - Jung SL 500 акрилового стекла, Jung SL 500 металла и Jung SL 500 пластмассы. Выключатели и розетки Jung SL 500 очень функциональны и привлекательно смотрятся в любом интерьере.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.119636",
        "modified": "2021-08-30 07:38:19.119636",
        "deleted": false
      },
      {
        "id": "Oi_QLTXmJsv0MmqtEVak3",
        "rev": 0,
        "options": {"slug": "ultrazvukovye-datchiki-prisutstviya-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Ультразвуковые датчики присутствия Steinel", "oldId": 483, "images": [], "published": false, "description": "Ультразвуковые датчики присутствия Steinel - это передовые технологии и доступные цены.Ультразвуковые датчики присутствия Steinel срабатывают незамедлительно на любое движение и держат объект постоянно под контролем даже не имея визуального контроля.\nКупить ультразвуковые датчики присутствия Steinel Вы можете в нашем интернет магазине по отличной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.135538",
        "modified": "2021-08-30 07:38:19.135538",
        "deleted": false
      },
      {
        "id": "Od3ZqWQUBkpDn8ouYjmrB",
        "rev": 0,
        "options": {"slug": "hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Hager", "oldId": 434, "images": [], "published": false, "description": "Продукция HAGER &nbsp;производится на современном заводе в г.Оберней во Франции. Это один из наиболее современных заводов в своей сфере, где отлажен современный контроль качества все производимой продукции\nВ нашем интернет магазине Вы можнте купить низковольтное оборудование Hager - автоматические выключатели,дифавтоматы, устройства защиты, контакторы, выключатели нагрузки,щитки,щиты, силовое и коммутационное оборудование или заказать с доставкой .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.147307",
        "modified": "2021-08-30 07:38:19.147307",
        "deleted": false
      },
      {
        "id": "xeefzPMixKJT1Mw6RMDSI",
        "rev": 0,
        "options": {"slug": "jung-a-500-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 алюминий", "oldId": 774, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;алюминиевого цвета обладают прекрасными техническими характеристиками и стильным лаконичным дизайном. Изделия серии подойдут для различных стилей и типов помещений.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.157856",
        "modified": "2021-08-30 07:38:19.157856",
        "deleted": false
      },
      {
        "id": "6baBeuvvjx3wB9QVoHCBA",
        "rev": 0,
        "options": {"slug": "siemens-delta-line-antracit", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Line антрацит", "oldId": 191, "images": [], "published": false, "description": "Розетки,выключатели, рамки и накладки серии Siemens DELTA line&nbsp;цвета&nbsp;\"антрацит\". Изделия Siemens DELTA line \"антрацит\"&nbsp;идеально дополнят смелый современный интерьер с мужской доминантой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.168901",
        "modified": "2021-08-30 07:38:19.168901",
        "deleted": false
      },
      {
        "id": "AmIn2y9Sf3xl6CJFBJdHB",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-chromo-brilohrom", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede CHROMO  BRILO(хром)", "oldId": 204, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.179976",
        "modified": "2021-08-30 07:38:19.179976",
        "deleted": false
      },
      {
        "id": "8xxRGon9bkLHDt2ViaXn7",
        "rev": 0,
        "options": {"slug": "ramki-dopolnitelnye", "brand": null, "label": "Рамки дополнительные", "oldId": 219, "images": [], "published": false, "description": "&nbsp;Дополнительные рамки ABB Impuls&nbsp;помогут воплотить в реальность самые смелые дизайнерские задумки.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.190367",
        "modified": "2021-08-30 07:38:19.190367",
        "deleted": false
      },
      {
        "id": "dxVHJzoCbTS4Celub-FBZ",
        "rev": 0,
        "options": {"slug": "merten-artec-alyuminiy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Artec алюминий", "oldId": 158, "images": [], "published": false, "description": "Серия Merten Artec цвета \"алюминий\". Изделия Merten Artec алюминиевого цвета будут гармонично смотреться в современном интерьере.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.201051",
        "modified": "2021-08-30 07:38:19.201051",
        "deleted": false
      },
      {
        "id": "pmNvF8oioagYKLLoJYK5u",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-2-polyusnye-6ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 2 полюсные  6kA, C характеристики", "oldId": 719, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.220821",
        "modified": "2021-08-30 07:38:19.220821",
        "deleted": false
      },
      {
        "id": "EoYR36zHnrgGk9QXP1v32",
        "rev": 0,
        "options": {"slug": "jung-ls-990-latun-classic", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 латунь Classic", "oldId": 144, "images": [], "published": false, "description": "Рамки, выключатели, розетки, заглушки и накладки JUNG LS 990 цвета \"латунь классик\" - это &nbsp;стильное завершение &nbsp;для интерьера в классическом стиле.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.232765",
        "modified": "2021-08-30 07:38:19.232765",
        "deleted": false
      },
      {
        "id": "SpUA4Yryq71ylr1-pRF1L",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-4-polyusnye-6ka-b-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 4 полюсные 6kA, B характеристики", "oldId": 726, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.520114",
        "modified": "2021-08-30 07:38:19.520114",
        "deleted": false
      },
      {
        "id": "Aj75kG58jdLAxXo7LTcKQ",
        "rev": 0,
        "options": {"slug": "fabbian", "brand": "K0FfZN2GksbvTzJElwgRj", "label": "Fabbian", "oldId": 262, "images": [], "published": false, "description": "Fabbian - это итальянская компания, основанная в 1961 году Франко Фаббианом. Сегодня&nbsp;Fabbian одна из известнейших в мире производителей эксклюзивных светильников из качественных материалов - хрусталя и металла. Светильники&nbsp;&nbsp;Fabbian отвечают самым современным модным тенденциям и самым высоким стандартам качества. Фабрика&nbsp;&nbsp;Fabbian тщательно проверяет и упаковывает каждое изделие, так как имеет специальный отдел.&nbsp;Все светильники Fabbian отличаются долговечностью и стильным дизайном, чтобы максимально &nbsp;долго радовать Вас.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить&nbsp;светильники Fabbian по выгодной цене с гарантией.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.243602",
        "modified": "2021-08-30 07:38:19.243602",
        "deleted": false
      },
      {
        "id": "k-SUXq1hyZbzc6RZ7Hgre",
        "rev": 0,
        "options": {"slug": "gewiss-komplektuyushchie", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "Gewiss комплектующие", "oldId": 654, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.255428",
        "modified": "2021-08-30 07:38:19.255428",
        "deleted": false
      },
      {
        "id": "BjT0WD81JYhOSjXUIPlZS",
        "rev": 0,
        "options": {"slug": "merten-antik-bezhevyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Antik бежевый", "oldId": 152, "images": [], "published": false, "description": "Серия Merten Antik цвета\"бежевый\" удачно завершит элегантный интерьер.\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить &nbsp;рамки к розеткам и выключателям Merten Antik с доставкой и по выгодной цене.\n\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.264927",
        "modified": "2021-08-30 07:38:19.264927",
        "deleted": false
      },
      {
        "id": "FJuOY09VfZluvoQ_fuBZC",
        "rev": 0,
        "options": {"slug": "merten-m-plan-alyuminiy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten M-plan алюминий", "oldId": 164, "images": [], "published": false, "description": "Серия Merten M-PLAN цвета \"алюминий\" отличается&nbsp;безупречным стилем и высоким качеством.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.274127",
        "modified": "2021-08-30 07:38:19.274127",
        "deleted": false
      },
      {
        "id": "4kBSNvpBeXPR82VG0UMbN",
        "rev": 0,
        "options": {"slug": "merten-m-plan-belyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten M-plan белый", "oldId": 166, "images": [], "published": false, "description": "Серия Merten M-PLAN цвета \"белый\"&nbsp;- это изысканные свежие детали Вашего интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.283422",
        "modified": "2021-08-30 07:38:19.283422",
        "deleted": false
      },
      {
        "id": "jcrTMm4PajaVHym8h0LVn",
        "rev": 0,
        "options": {"slug": "abb-zenit-cerebro", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Zenit cеребро", "oldId": 24, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.295110",
        "modified": "2021-08-30 07:38:19.295110",
        "deleted": false
      },
      {
        "id": "qlzRSuUY2epcPsb1xrq4Q",
        "rev": 0,
        "options": {"slug": "svetilniki-svetodiodnye", "brand": null, "label": "Светильники светодиодные", "oldId": 319, "images": [], "published": false, "description": "Светодиодные светильники Виктел&nbsp;применяются для внутреннего и внешнего освещения дома, в офисе, торговых центрах. Они экономичны в использовании и многфункциональны. Подходят для подвесных потолков.&nbsp;\nВ нашем \"VIProzetki.ru\" интернет-магазине Вы можете приобрести светодиодные светильники Виктел по практичной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.304638",
        "modified": "2021-08-30 07:38:19.304638",
        "deleted": false
      },
      {
        "id": "pT9346m-fEZbcNYTE_Fp-",
        "rev": 0,
        "options": {"slug": "galogennye-prozhektora-stenel-s-datchikami-dvizheniya-i-bez", "brand": null, "label": "Галогенные прожектора Stenel с датчиками движения и без", "oldId": 275, "images": [], "published": false, "description": "Светодиодные прожекторы с датчиками движения или без них фирмы Steinel известны своим отменным немецким качеством. Они пользуются большой популярностью, так как обладают длительным сроком службы и экономичны в использовании. Светодиодные прожекторы Steinel могут использоваться как для внутреннего освещения, так и для декоративного — в парках или магазинных витринах.\nВстроенный датчик в светодиодных прожекторах с датчиками движения Steinel автоматически контролирует освещение.\nВ нашем интернет-магазине «VIProzetki.ru» вы можете заказать светодиодные прожекторы с датчиками движения фирмы Steinel или же купить их в нашем офисе.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.314409",
        "modified": "2021-08-30 07:38:19.314409",
        "deleted": false
      },
      {
        "id": "8UoXIRgjiSG3uQYUk6JHz",
        "rev": 0,
        "options": {"slug": "abb-basic-bezhevyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Basic Бежевый", "oldId": 11, "images": [], "published": false, "description": "Серия ABB Basic 55&nbsp;нейтрального бежевого цвета отлично подойдет в интерьер в любом стиле. Вы можете приобрести изделия ABB Basic 55&nbsp;в нашем интернет-магазине \"VIProzetki.ru\".\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.322414",
        "modified": "2021-08-30 07:38:19.322414",
        "deleted": false
      },
      {
        "id": "cS2xOQmdT8bEPbhLMLziU",
        "rev": 0,
        "options": {"slug": "ledmonster-kub", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster KUB", "oldId": 565, "images": [], "published": false, "description": "LedMonster KUB - это классическая форма современного накладного светильника со сменными накладками для точного воссоздания дизайнерской идеи. Высокий коэффициент цветопередачи 90+ Ra, возможность диммирования придают дополнительные аргументы для его использования.\nВ 10 раз эффективней обычной лампы накаливания\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.334728",
        "modified": "2021-08-30 07:38:19.334728",
        "deleted": false
      },
      {
        "id": "KgAaF0mxjKxCWRIjH1kWz",
        "rev": 0,
        "options": {"slug": "merten-artec-belyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Artec белый", "oldId": 160, "images": [], "published": false, "description": "Изделия Merten Artec&nbsp;классического белого цвета добавят свежести и элегантности любому интерьеру.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.350237",
        "modified": "2021-08-30 07:38:19.350237",
        "deleted": false
      },
      {
        "id": "kmnTBSXuoXWqHAiVnkFBv",
        "rev": 0,
        "options": {"slug": "fontini-garby-rozetki-i-vyklyuchateli", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Garby розетки и выключатели", "oldId": 77, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить фарфоровые ретро-розетки, выключатели и переключатели для накладного монтажа Fontini Garby по разумной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.376679",
        "modified": "2021-08-30 07:38:19.376679",
        "deleted": false
      },
      {
        "id": "pIluLlVgSQy7iMD4Egq1N",
        "rev": 0,
        "options": {"slug": "ramki-dopolnitelnye-zenit", "brand": null, "label": "Рамки дополнительные Zenit", "oldId": 220, "images": [], "published": false, "description": "Рамки АВВ Zenit&nbsp;изготовлены с использованием натуральных материалов - камня (сланец), дерева (венге), &nbsp;а также стали и стекла.&nbsp;Рамки АВВ Zenit выглядят невероятно стильно и имеют большой спектр цветов: белое и черное стекло, кофейное и графитовое стекло, стекло жемчужное и шампань.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает купить широкий выбор дополнительных рамок&nbsp;&nbsp;АВВ Zenit по практичной цене с доставкой в Москве.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.386521",
        "modified": "2021-08-30 07:38:19.386521",
        "deleted": false
      },
      {
        "id": "FniSRJeZu-jhPuWT6TTBA",
        "rev": 0,
        "options": {"slug": "ledmonster-loft", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster LOFT", "oldId": 554, "images": [], "published": false, "description": "Светодиодный светильник LedMonster LOFT диммируется от любого диммера на 220 Вольт, благодаря использованию надежного драйвера тока HEP, поставляемого в комплекте. Это один из самых современных и уникальных по своим техническим параметрам светодиодный встраиваемый светильник. Краски в вашем интерьере будут натуральными благодаря высоким параметрам цветопередачи светодиода равным 90+ Ra. Максимум качественного света в компактном корпусе с глубиной встройки всего 50 мм, позволяют найти в нем идеальное решение для ваших задач по освещению.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.394062",
        "modified": "2021-08-30 07:38:19.394062",
        "deleted": false
      },
      {
        "id": "4RjzZcpLsBwV8Dlq0CbXt",
        "rev": 0,
        "options": {"slug": "zamel", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Zamel", "oldId": 271, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить продукцию польской компании Zamel, светодиодные светильники с датчиком движения или без, теплые полы электрические маты и терморегуляторы по отличной цене с доставкой в Москве и по России.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.404687",
        "modified": "2021-08-30 07:38:19.404687",
        "deleted": false
      },
      {
        "id": "XTChgCR9OcJ1Nh8YYXbzA",
        "rev": 0,
        "options": {"slug": "ledmonster-ekko-s", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster EKKO S", "oldId": 562, "images": [], "published": false, "description": "Светодиодный светильник LedMonster EKKO S светодиодный светильник в квадратном корпусе белого цвета. Отличается простотой дизайна и отменным качеством света, дает приятный теплый белый свет благодаря матовому рассеивателю и имеет угол рассеивания 90 градусов. Высокий уровень окраски и сборки позволяет использовать его в дизайне самого высокого уровня. Глубина встройки всего 45 мм, а цветопередача 90+ Ra.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.415682",
        "modified": "2021-08-30 07:38:19.415682",
        "deleted": false
      },
      {
        "id": "uMQgpfEkaHd0a37Sxj9tl",
        "rev": 0,
        "options": {"slug": "merten", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten", "oldId": 150, "images": [], "published": false, "description": "Немецкая компания Merten была основана в 1906 году в Гуммерсбахе и занималась призводством автомобильного оборудования и электротехнических изделий.&nbsp;Merten разработала безвинтовые выключатели,&nbsp;Instabus и радиосистему, сенсорное стекло. Компания Merten&nbsp;стала мировым лидером в производстве&nbsp;электрооборудования. На сегодняшний день фирма продолжает выпускать продукцию в соответствии и новейшими разработками и состоит в группе компаний&nbsp;Schneider Electric.&nbsp;\nВы можете купить розетки и выключатели,рамки Merten  в нашем интернет магазине, выбрать нужную серию розеток и выключателей Мертен приехав в наш магазин,можете заказать доставку розеток Merten в Москве или до транспортной компании.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.424661",
        "modified": "2021-08-30 07:38:19.424661",
        "deleted": false
      },
      {
        "id": "dXo8vZhug_sqcCdQM5UvB",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-abb", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "Датчики движения ABB", "oldId": 277, "images": [], "published": false, "description": "Датчики движения ABB отличаются особым качеством, функциональностью и стильным дизайном. Вы можете выбрать&nbsp;датчики движения и датчики присутствия ABB для наружной или внутренней скрытой установки.&nbsp;\n&nbsp;В нашем интернет-магазине \"VIProzetki.ru\" Вы можете заказать или купить датчики ABB превосходного качества по оптимальной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.437334",
        "modified": "2021-08-30 07:38:19.437334",
        "deleted": false
      },
      {
        "id": "y0ZfCGaRXG4wx_NJ0B4R-",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-blanco-decape", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede BLANCO DECAPE", "oldId": 203, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.531766",
        "modified": "2021-08-30 07:38:19.531766",
        "deleted": false
      },
      {
        "id": "nSukymJ1m3_nwO4CM__m8",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-new-rozetki-i-vyklyuchateli-belyy", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA NEW розетки и выключатели белый", "oldId": 758, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.543281",
        "modified": "2021-08-30 07:38:19.543281",
        "deleted": false
      },
      {
        "id": "tchEXYZzcm0Em9-7DGlZC",
        "rev": 0,
        "options": {"slug": "berker-q3-alyuminiy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.3 алюминий", "oldId": 658, "images": [], "published": false, "description": "Серебристые цвета пользуются сейчас особой популярностью, и в сфере дизайна помещений эта тенденция не стала исключением. Поэтому если Вы идете в ногу со временем, то советуем обратить внимание на стильные и изысканные изделия от Berker Q.3 в цвете алюминий. Накладки, рамки и клавиши Berker Q.3 отлично подойдут для офиса и жилых помещений. Розетки Berker Q.3 впишутся в интерьер салонов, шоурумов, ресторанов. Наш интернет-магазин работает с доставкой по Москве и области, а так же Вы можете заказать продукцию Berker в доставкой по России.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.447927",
        "modified": "2021-08-30 07:38:19.447927",
        "deleted": false
      },
      {
        "id": "o-TIscLeLxTCQVUiDbBC_",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-simon-connect", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Лючки напольные Simon Connect", "oldId": 297, "images": [], "published": false, "description": "Напольные лючки Simon Connect предназначены для внутренней прокладки точек подключения к информационным или силовым сетям в бетонных или фальшполах. Использование напольных лючков очень удобно и практично, они часто применяются в общественных учреждениях - кафе, спортплощадках, театрах и концертных залах.&nbsp;\nВ нашем интернет-магазине \"VIProzetki\" Вы можете купить или заказать напольные лючки Simon Connect по выгодной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.457518",
        "modified": "2021-08-30 07:38:19.457518",
        "deleted": false
      },
      {
        "id": "4F5JPo8BczCOV4w3MNrlZ",
        "rev": 0,
        "options": {"slug": "simon-82", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82", "oldId": 590, "images": [], "published": false, "description": "Когда есть из чего выбрать и с чем сравнить - это всегда хорошо; можно дать волю своей дизайнерской фантазии. Поэтому многообразие выбора серии Simon 82 не оставит равнодушным никого. Simon 82 включает в себя широкий ассортимент розеток, клавиш и рамок от монотонных цвета графита до веселых неоновых и в горошек. Все изделия серии Simon 82 выглядят утонченно и изысканно благодаря выступающей рамке. Производитель уверен, что детали, пусть даже самые незначительные, способны менять наше восприятие, и это правда - с выступающим основанием даже самые озорные неоновые рамки выглядят стильно и презентабельно.\nВы можете выбрать рамки и клавиши из пяти семейств - Detail класс, Detail металл, Detail цветной металлизированный, Detail натуральное дерево и Detail неон. Для строгих офисных интерьеров отлично подойдет Detail металл, для любителей роскошной изящности - Detail класс. Разнообразные вариации материалов и цветов создадут неповторимый дизайн помещения и расставят акценты в лаконичном и сдержанном интерьере.\nСерия розеток и выключателей Simon 82 это продукция премиум класса.Купить розетки и выключатели Simon 82 Вы можете в нашем интернет магазине с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.467655",
        "modified": "2021-08-30 07:38:19.467655",
        "deleted": false
      },
      {
        "id": "wTILv68QArcfFXI5nTK55",
        "rev": 0,
        "options": {"slug": "legrand-galea-life-perlamutr", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea life перламутр", "oldId": 124, "images": [], "published": false, "description": "\nРозетки и выключатели Legrand Galea Life перламутр(жемчуг) добавят лоска любому интерьеру. В нашем магазине \"VIProzetki.ru\" Вы можете приобрести розетки и выключатели Legrand Galea Life перламутрового цвета по приятной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.478908",
        "modified": "2021-08-30 07:38:19.478908",
        "deleted": false
      },
      {
        "id": "tcAMRsgRcQyJYYd0R862F",
        "rev": 0,
        "options": {"slug": "berker-r1r3", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.1/R.3", "oldId": 458, "images": [], "published": false, "description": "Компания Berker начала производство так называемые \"круглые\" серии розеток и выключателей R.1 и R.3. Известный дизайнер Вернер Айсслингер разработал модели, в которых круг выглядит совершенно по-другому - модно и стильно, круглые, мягкие клавиши находятся в оформлении рамок округлых или квадратных форм.\nBerker R.1 - это розетки и выключатели новой уникальной серия от Berker, в которой круглые клавиши и розетки  потрясающе смотрятся в округлой рамке. Это серия,  которая отлично впишется практически в любое помещение и подчеркнёт изящество домашнего или офисного дизайна. Серия выпускается в нескольких цветовых решениях: белый глянцевый пластик, чёрный глянцевый пластик, белое стекло и алюминий. Пластик, из которого изготавливаются Berker r1 розетки и выключатели качественный, имеет стойкость к всевозможным механическим повреждениям.\nBerker R.3 - это розетки и выключатели где сочетание круглой клавиши выключателя и розетки стильно смотрятся в  рамке прямоугольной   формы. Эта серия Berker R.3 с поверхностью из пластика чёрного и белого цвета, стекла и алюминия. Серия розеток и выключателей Berker R.3 стала популярной среди известных дизайнеров. Сейчас на стадии разработки находятся выключатели Berker r3, которые будут изготавливаться из шпона дерева, кориана и даже натурального меха! Стильные розетки и оригинальные выключатели из серии Berker R.3 изготавливается из трёх материалов: стекло, пластик, алюминий, в белом и чёрном цвете.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.488549",
        "modified": "2021-08-30 07:38:19.488549",
        "deleted": false
      },
      {
        "id": "laNo-UG79meo8p9CKaq-O",
        "rev": 0,
        "options": {"slug": "nagrevatelnyy-kabel-dlya-teplogo-pola-deviflex-10t", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Нагревательный кабель для теплого пола Deviflex 10T", "oldId": 305, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать с доставкой нагревательный кабель для теплого пола Deviflex 10T &nbsp;по выгодной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.499717",
        "modified": "2021-08-30 07:38:19.499717",
        "deleted": false
      },
      {
        "id": "M2AZjsbIX9sqU-Jx2gKf_",
        "rev": 0,
        "options": {"slug": "ledmonster-loft-black", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster  LOFT BLACK", "oldId": 555, "images": [], "published": false, "description": "Светодиодный светильник LedMonster  LOFT BLACK диммируется от любого диммера на 220 Вольт, благодаря использованию надежного драйвера тока HEP, поставляемого в комплекте. Это один из самых современных и уникальных по своим техническим параметрам светодиодный встраиваемый светильник. Краски в вашем интерьере будут натуральными благодаря высоким параметрам цветопередачи светодиода равным 90+ Ra. Максимум качественного света в компактном корпусе с глубиной встройки всего 50 мм, позволяют найти в нем идеальное решение для ваших задач по освещению.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.509191",
        "modified": "2021-08-30 07:38:19.509191",
        "deleted": false
      },
      {
        "id": "E5zROah_zIkKeDZ-NmV7K",
        "rev": 0,
        "options": {"slug": "schneider-electric", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric", "oldId": 175, "images": [], "published": false, "description": "Французская компания Schneider Electric специализируется на машиностроении, производстве продуктов в области электроэнергии и разработке комплексных решений в этой сфере для промышленности, строительства жилого и общественного, а также для центров обработки данных.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.554213",
        "modified": "2021-08-30 07:38:19.554213",
        "deleted": false
      },
      {
        "id": "_xGHU6BgmKFcIIA7fFLHy",
        "rev": 0,
        "options": {"slug": "dekorativnye-vstavki", "brand": null, "label": "Декоративные вставки", "oldId": 199, "images": [], "published": false, "description": "Декоративные вставки ABB Basic 55&nbsp;помогут без лишних хлопот &nbsp;внести разнообразие в любой интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.567307",
        "modified": "2021-08-30 07:38:19.567307",
        "deleted": false
      },
      {
        "id": "kkzGfE5VbcDWIPIjTAVEk",
        "rev": 0,
        "options": {"slug": "fontini-garby-colonial-rozetki-i-vyklyuchateli", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Garby Colonial розетки и выключатели", "oldId": 75, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить фарфоровые и ретро-розетки и выключатели &nbsp;Fontini Garby Colonial по практичной&nbsp;цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.576213",
        "modified": "2021-08-30 07:38:19.576213",
        "deleted": false
      },
      {
        "id": "qhOQYQb0FP-P_IuJXYu0F",
        "rev": 0,
        "options": {"slug": "elektroshchity-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Электрощиты Hager", "oldId": 445, "images": [], "published": false, "description": "Вы можете на нашем сайте купить щиты Hager по хорошей цене.&nbsp;Электрощиты Hager очень качественная продукция и электрики оценили их достоинства.Заказать с доставкой по Москве,Московской области и в регионы щит Hager.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.588237",
        "modified": "2021-08-30 07:38:19.588237",
        "deleted": false
      },
      {
        "id": "GJ_-Fadyl1GMDjGxOtN6C",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-polirovannaya-latunchyornoe-steklo", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки полированная латунь,чёрное стекло", "oldId": 517, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.600119",
        "modified": "2021-08-30 07:38:19.600119",
        "deleted": false
      },
      {
        "id": "Hbm1BDCA95XYXxVLFkmNI",
        "rev": 0,
        "options": {"slug": "siemens-delta-style", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Style", "oldId": 796, "images": [{"alt": "SIEMENS DELTA STYLE — это элегантные классические розетки и выключатели. Рамки DELTA STYLE выполнены в белом цвете и цвете «титановый металлик». Основной отличительной особенностью этой серии является большая клавиша и тонкая прямоугольная рамка. При изготовлении используется высококачественный ударостойкий пластик, защищающий изделия от царапин, пыли и отпечатков пальцев. Изысканные выключатели и розетки SIEMENS DELTA STYLE завершат лаконичный образ офиса, ванной комнаты или спальни.", "path": "uploads/series/79/796/1556615106309.jpg"}, {"alt": "SIEMENS DELTA STYLE — это элегантные классические розетки и выключатели. Рамки DELTA STYLE выполнены в белом цвете и цвете «титановый металлик». Основной отличительной особенностью этой серии является большая клавиша и тонкая прямоугольная рамка. При изготовлении используется высококачественный ударостойкий пластик, защищающий изделия от царапин, пыли и отпечатков пальцев. Изысканные выключатели и розетки SIEMENS DELTA STYLE завершат лаконичный образ офиса, ванной комнаты или спальни.", "path": "uploads/series/79/796/1556615259827.jpg"}], "published": true, "description": "SIEMENS DELTA STYLE — это элегантные классические розетки и выключатели. Рамки DELTA STYLE выполнены в белом цвете и цвете «титановый металлик». Основной отличительной особенностью этой серии является большая клавиша и тонкая прямоугольная рамка. При изготовлении используется высококачественный ударостойкий пластик, защищающий изделия от царапин, пыли и отпечатков пальцев. Изысканные выключатели и розетки SIEMENS DELTA STYLE завершат лаконичный образ офиса, ванной комнаты или спальни.", "productTypes": []},
        "created": "2021-08-30 07:38:19.609825",
        "modified": "2021-08-30 07:38:19.609825",
        "deleted": false
      },
      {
        "id": "QYy-xoGmQv6h6F1_bN6QE",
        "rev": 0,
        "options": {"slug": "berker-q3-antracit", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.3 антрацит", "oldId": 659, "images": [], "published": false, "description": "Компания Berker широко известна по всей Европе благодаря своей качественной продукции, а также разнообразию серий изделий. Линейка Berker Q.3 в лаконичных расцветках антрацит, алюминий и полярная белизна (белый) - не исключение. Четкие линии, минималистичный дизайн и отличное европейское качество Berker Q.3 не оставят равнодушными любителей строгих интерьеров. Отличным решением для строгого дизайна помещения в темных тонах станет линейка рамок, накладок, розеток и клавиш Berker Q.3 в цвете антрацит. Приятный бархатистый черный оттенок изделий Berker Q.3 антрацит станет находкой для офиса, кухни, гостиной, рабочего кабинета.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.620002",
        "modified": "2021-08-30 07:38:19.620002",
        "deleted": false
      },
      {
        "id": "91yOFMJ7iUM2mGJr7P45S",
        "rev": 0,
        "options": {"slug": "gira-event", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "Gira Event", "oldId": 87, "images": [], "published": false, "description": "Gira Event - это серия выключателей, выделяющаяся неповторимостью своих форм и огромным разнообразием цветов.\nРамки Gira Event выпускаются в матовых тонах зеленого, желтого, оранжевого, красного, темно-коричневого, янтарного, синего и белого цветов. Всего Gira Event насчитывает рамки 11 цветов. Для их изготовления используется также и непрозрачная пластмасса трех цветов: белый, «антрацит» и «алюминий». Центральные вставки Gira Event выпускаются трех цветов: белого, «антрацит» и «алюминий».\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.633738",
        "modified": "2021-08-30 07:38:19.633738",
        "deleted": false
      },
      {
        "id": "bhHMYT1Yt32GDq5Kqrl3R",
        "rev": 0,
        "options": {"slug": "merten-d-life-nerzhaveyushchaya-stal", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE нержавеющая сталь", "oldId": 739, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.643856",
        "modified": "2021-08-30 07:38:19.643856",
        "deleted": false
      },
      {
        "id": "8cL1WC8PqMPHPF0zS6tOZ",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-dlya-vnutrenney-ustanovki-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Датчики движения для внутренней установки - Steinel", "oldId": 286, "images": [], "published": false, "description": "Датчики движения для внутренней установки фирмы Steinel являются энергосберегательными. Таким образом, приобретая датчики движения Steinel, вы получаете возможность экономить расход электроэнергии и Ваших денежных средств.\nДатчики движения для внутренней установки можно встроить в стену или потолок, и свет автоматически выключится когда Вы войдете в помещение.\nВ нашем интернет-магазине «VIProsetki.ru» вы можете купить датчики движения для внутренней установки Steinel для обеспечения надежности и комфорта.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.752677",
        "modified": "2021-08-30 07:38:19.752677",
        "deleted": false
      },
      {
        "id": "HNYG0u2YTGKVNPjTE3r11",
        "rev": 0,
        "options": {"slug": "legrand", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand", "oldId": 111, "images": [], "published": false, "description": "На территории Советского Союза продукция Legrand впервые появилась в 1980 году, когда страна готовилась к проведению XXII летних Олимпийских игр.\nПродукция Legrand применяется и в жилых помещениях, и в зданиях административного сектора, и на промышленных объектах. Разрабатываются изделия на основе последних научных достижений и отвечает высоким стандартам европейского качества.\nВ Интернет-магазине ВсеРозетки.Ру выгодные условия покупки розеток и выключателей Legrand!У нас вы можете купить выключатели и розетки Legrand из любой приглянувшейся Вам серии! Если Вы хотите не выходя из дома купить розетки и выключатели Legrand по привлекательной цене, то наш интернет-магазин именно для Вас!\nОсобой популярностью на мировом рынке пользуются серии розеток и выключателей Legrand Valena, выключатели и розетки Legrand Galea Life, Legrand Celiane.\nУльтрамодные цветовые оттенки, разнообразие и законченность изделий серии Legrand Valena – это все, что нужно, чтобы придать выразительность интерьеру.Самые популярные цвета Legrand Valena белый и бежевый.\nРазнообразие цветов и материалов розеток и выключателей Legrand Galea Life дает простор творчеству и позволяет найти дизайн, отвечающий индивидуальному стилю клиента.Особо популярны Legrand Galea Life перламутр(жемчуг) и титан(шампань).\nCерия Legrand Celiane отличается своей эстетикой и функциональностью, а так же разнообразием цветовых решений.Основные цвета розеток,выключателей и накладок Legrand Ciliane титан,графит,белый и бежевый.Рамки Legrand Ciliane выпускают в цветовых решениях:классика,кожа и дерево,металл и металлик,стекло и фарфор.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.654264",
        "modified": "2021-08-30 07:38:19.654264",
        "deleted": false
      },
      {
        "id": "RP4A8uDAoz5Y7UtXH5FGE",
        "rev": 0,
        "options": {"slug": "ceilhit", "brand": "Tg3TwcRkvlK85ZBgGf7cE", "label": "Ceilhit", "oldId": 257, "images": [], "published": false, "description": "CEILHIT - это испанский концерн, специализирующийся на производстве кабельных нагревательных систем -&nbsp;нагревательных кабелей Ceilhit, электрических матов Ceilhit и другой продукции CEILHIT. Продукция компании CEILHIT&nbsp;была высоко оценена не только в Испании, но и по всему миру. Во всех странах распространения продукция CEILHIT&nbsp;прошла необходимую сертификацию. Качественные и долглвечные нагревательные маты, заменяемые датчики температуры надежные провода - делают продукцию &quot;Ceilhit&quot;&nbsp; востребованной на рынке климатических систем.\nНаш интернет-магазин предлагает купить продукцию&nbsp;CEILHIT&nbsp;на выгодных условиях.&nbsp;\nhttp://krym-komfort.alloy.ru/media/images/2012/12/11/big/f36bf292-257f-4... style=\"height:205px;width:280px;\" />http://remont-39.ru/ch_razdel_info/img/e168f4d9b6.jpg\" style=\"height:187px;width:280px;\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.668135",
        "modified": "2021-08-30 07:38:19.668135",
        "deleted": false
      },
      {
        "id": "_o58pSGa5K_5ViDY6Z0B6",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-slonovaya-kost", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки слоновая кость", "oldId": 505, "images": [], "published": false, "description": "Рамки для розеток и выключателей ABB Dynasty цвета слоновая кость&nbsp;в этом каталоге представлены рамки только цвета &quot;слоновая кость&quot; подходяший серии&nbsp;ABB Dynasty для выбора другого цвета воспользуйтесь меню с лева. для выбора других товаров перейдите на главную затем выберите тип товара.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.680910",
        "modified": "2021-08-30 07:38:19.680910",
        "deleted": false
      },
      {
        "id": "jkT3owv5OhUW3IHQSzJOv",
        "rev": 0,
        "options": {"slug": "bticino", "brand": "G9QW9gXfruqcKx3ecg9jn", "label": "Bticino", "oldId": 45, "images": [], "published": false, "description": "Bticino - это самая известная и надежная электротехническая марка Италии широко известная во всем мире.Розетки и выключатели  Bticino отлично зарекомендовали себя  более, чем в 60 странах мира. Продукция  Bticino - это отменное качество, надежность и итальянский дизайн.\nУ нас в интернет-магазине Вы можете купить рамки,розетки и выключатели Bticino или заказать рамки,розетки и выключатели Bticino по отличной цене с доставкой .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.691440",
        "modified": "2021-08-30 07:38:19.691440",
        "deleted": false
      },
      {
        "id": "beOUPVDMOFdV_CJgbvdqI",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-metallicheskie-simon-connect-ip66", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Лючки напольные металлические Simon Connect IP66", "oldId": 302, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.700780",
        "modified": "2021-08-30 07:38:19.700780",
        "deleted": false
      },
      {
        "id": "17de8wMD13fbmNG1v0Dip",
        "rev": 0,
        "options": {"slug": "merten-antik-belyy", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Antik белый", "oldId": 153, "images": [], "published": false, "description": "Серия Merten Antik&nbsp;цвета \"белый\" - это элегантная классика.&nbsp;\n&nbsp; Наш интернет-магазин \"VIProzetki.ru\" предлагает &nbsp;купить рамки к розеткам и выключателям Merten Antik на выгодных условиях - с доставкой и по хорошей цене.&nbsp;\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.710149",
        "modified": "2021-08-30 07:38:19.710149",
        "deleted": false
      },
      {
        "id": "rKiPZof1wR2ocqvXtlwPa",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-legrand-glubinoy-75-105mm", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Лючки напольные Legrand глубиной 75-105мм", "oldId": 299, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.719396",
        "modified": "2021-08-30 07:38:19.719396",
        "deleted": false
      },
      {
        "id": "lh3kWqliAg01O6mpcdfsV",
        "rev": 0,
        "options": {"slug": "jung-ls-990-zolotoe-pokrytie", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 золотое покрытие", "oldId": 141, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 с золотым покрытием подчеркнут Ваш высокий статус и безупречный вкус.&nbsp;\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.729070",
        "modified": "2021-08-30 07:38:19.729070",
        "deleted": false
      },
      {
        "id": "EOvS9CPuYHjsm2SeiUluS",
        "rev": 0,
        "options": {"slug": "abb-dynasty-antracit", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty антрацит", "oldId": 506, "images": [], "published": false, "description": "У нас в интернет-магазине VipRozetki.ru Вы можете купить розетки,клавиши и накладки ABB Dynasty антрацит ,заказать розетки ABB Dynasty антрацит от компании ABB по отличной цене и с доставкой по Москве .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.739750",
        "modified": "2021-08-30 07:38:19.739750",
        "deleted": false
      },
      {
        "id": "KnJjW6fYN2KyUm7H7tm6r",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-shlifovannaya-stal", "brand": null, "label": "Рамки Lux International шлифованная сталь", "oldId": 629, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.763979",
        "modified": "2021-08-30 07:38:19.763979",
        "deleted": false
      },
      {
        "id": "JU9NquNHqwsMAsva-vzjH",
        "rev": 0,
        "options": {"slug": "svetilniki-potolochnye-vstraivaemye-donolux", "brand": "jzCAXiDuy_5y0LuvZK7hF", "label": "Светильники потолочные встраиваемые Donolux", "oldId": 317, "images": [], "published": false, "description": "При изготовлении встраиваемыемых потолочных алюминиевых светильников Donolux&nbsp;используется технология литья из алюминиевого сплава. Они покрыты специальным антикоррозийным составом для продления срока &nbsp;их службы. К&nbsp;светильникам Donolux&nbsp;подходят галогенные и светодиодные лампы.\nКупить точечные алюминиевые светильники Donolux Вы можете в нашем интернет-магазине \"VIProzetki.ru\" по доступным ценам и с гарантией.\n\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.772294",
        "modified": "2021-08-30 07:38:19.772294",
        "deleted": false
      },
      {
        "id": "4Wx62j_YiMOaFHjQB7K96",
        "rev": 0,
        "options": {"slug": "modulnoe-oborudovanie-zamel-exta", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Модульное оборудование Zamel Exta", "oldId": 542, "images": [], "published": false, "description": "Zamel представляет совершенно новый подход к питанию и управлению оборудованием системы «умный дом» - группу энергосберегающих продуктов Exta. Используя модульные устройства автоматики Zamel Exta «Умный Дом», связанные единым способом управления, Вы можете контролировать освещение дома, избранные электрические приемники либо рольставни из одной точки. Применяя импульсные бистабильные реле, диммеры освещения или датчики движения, которые помогают с умом управлять освещением, Вы обеспечиваете комфорт, удобство и экономию электроэнергии. Оборудование Zamel Exta предназначено для защиты Вашего дома – просто используйте те устройства, которые позволят контролировать параметры электросети, уровень мощности в избранных цепях или предохранить ванну от потопа.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.782906",
        "modified": "2021-08-30 07:38:19.782906",
        "deleted": false
      },
      {
        "id": "-QcoqvvOnb3oQYyiKyBzM",
        "rev": 0,
        "options": {"slug": "svetodiodnye-prozhektory-gauss", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные прожекторы Gauss", "oldId": 521, "images": [], "published": false, "description": "Купить светодиодные прожекторы Gauss в нашем интернет магазине по отличной цене с доставкой в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.794192",
        "modified": "2021-08-30 07:38:19.794192",
        "deleted": false
      },
      {
        "id": "UBNy9sUK2xi0H3MtJJl2_",
        "rev": 0,
        "options": {"slug": "jung-ls-990-imitaciya-zolota", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 имитация золота", "oldId": 142, "images": [], "published": false, "description": "Розетки и выключатели JUNG LS 990 имитация золота&nbsp;добавят шика в интерьер при неизменно высоком качестве.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.805160",
        "modified": "2021-08-30 07:38:19.805160",
        "deleted": false
      },
      {
        "id": "lpD_c8sDygPAjv7fTIID4",
        "rev": 0,
        "options": {"slug": "ledmonster-ekko-r", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster  EKKO R", "oldId": 561, "images": [], "published": false, "description": "Светодиодный светильник LedMonster  EKKO R светодиодный светильник в круглом корпусе белого цвета. Отличается простотой дизайна и отменным качеством света, дает приятный теплый белый свет благодаря матовому рассеивателю и имеет угол рассеивания 90 градусов. Высокий уровень окраски и сборки позволяет использовать его в дизайне самого высокого уровня. В серии есть светильники на 6 и 9 Вт. Глубина встройки всего 45 мм и 58 мм соответственно, а цветопередача 90+ Ra. Светильник диммируется по умолчанию от стандартного регулятора яркости (TRIAC)\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.816466",
        "modified": "2021-08-30 07:38:19.816466",
        "deleted": false
      },
      {
        "id": "zyVyJKjTuj3e467UQnbcz",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnye-maty-devi-dtir-150", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Теплые полы нагревательные маты Devi DTIR-150", "oldId": 344, "images": [], "published": false, "description": "Теплые полы нагревательные маты Devi DTIR-150 представляют собой двужильный мат толщиной 4.5 мм. Теплые полы весьма легко установить былгодаря самоклеящейся сетке. Маты Devi DTIR-150&nbsp;отличаются высоким качеством и мощностью. Площадь выпускаемых матов&nbsp;от 0,5м2 до 12м2.\nНаш интернет-магазин \"VIProzetki.ru\" предлагает купить&nbsp;теплые полы нагревательные маты Devi DTIR-150 с доставкой и по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.827656",
        "modified": "2021-08-30 07:38:19.827656",
        "deleted": false
      },
      {
        "id": "REuIt2GAoCEQWM0U5SHaY",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-oro-brilo", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede ORO  BRILO", "oldId": 207, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.838294",
        "modified": "2021-08-30 07:38:19.838294",
        "deleted": false
      },
      {
        "id": "UR1p_s3bHyJN2D4OtwgF3",
        "rev": 0,
        "options": {"slug": "jung-a-500-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 алюминий", "oldId": 2, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;алюминиевого цвета обладают прекрасными техническими характеристиками и стильным лаконичным дизайном. Изделия серии подойдут для различных стилей и типов помещений.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.856184",
        "modified": "2021-08-30 07:38:19.856184",
        "deleted": false
      },
      {
        "id": "q5lQQ88tTDHLmxOaXpoy_",
        "rev": 0,
        "options": {"slug": "ramki-one-international-chernyy", "brand": null, "label": "Рамки One International черный", "oldId": 614, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.867731",
        "modified": "2021-08-30 07:38:19.867731",
        "deleted": false
      },
      {
        "id": "iKJ5QLzZJwkUl_P_wxj1-",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-6ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 6kA, C характеристики", "oldId": 717, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.879180",
        "modified": "2021-08-30 07:38:19.879180",
        "deleted": false
      },
      {
        "id": "L1JATQm7fjF71L5BRUCW9",
        "rev": 0,
        "options": {"slug": "jung-cd-500-platina", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG CD 500 платина", "oldId": 52, "images": [], "published": false, "description": "Розетки, выключатели, накладки, рамки и клавиши Jung CD 500&nbsp;с покрытием \"платина\"&nbsp;удовлетворят самый взыскательный вкус и украсят изысканный интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.890599",
        "modified": "2021-08-30 07:38:19.890599",
        "deleted": false
      },
      {
        "id": "BQ5SX_FVM-Ph_vOCAxHQx",
        "rev": 0,
        "options": {"slug": "svetilniki-svetodiodnye-podvesnye-foton", "brand": "UshRKtcJi_pETonlNwnPO", "label": "Светильники светодиодные подвесные Foton", "oldId": 321, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать светильники светодиодные подвесные Foton для освещения спортивных сооружений ,&nbsp;промышленных объектов, складов и т.д. на выгодных условиях: по экономичной цене, с доставкой и гарантией.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.900965",
        "modified": "2021-08-30 07:38:19.900965",
        "deleted": false
      },
      {
        "id": "fjRYmTPlpy8fJSGCKRQzn",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-donolux", "brand": "jzCAXiDuy_5y0LuvZK7hF", "label": "Светодиодные светильники Donolux", "oldId": 331, "images": [], "published": false, "description": "Светодиодные светильники Donolux&nbsp;используют для внутреннего и внешнего, основного и декоративного освещения. Светодиодные светильники Donolux&nbsp;можно установить дома, в офисе, в торговых точках, на складах. Подходят для подвесных потолков, балконов, фасадов; их можно встроить в стены или ступени.\n&nbsp;Их плюсами являются энергосберегательность, долговечность, высокая светоотдача, малое нагревание. &nbsp;&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает к продаже&nbsp;светодиодные светильники Donolux&nbsp;по оптимальной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.909917",
        "modified": "2021-08-30 07:38:19.909917",
        "deleted": false
      },
      {
        "id": "uOwYSx3POxZxHNzPumrsa",
        "rev": 0,
        "options": {"slug": "bachmann", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Bachmann", "oldId": 255, "images": [], "published": false, "description": "Немецкая компания BACHMANN специализируется на производстве розеток, электрических модулей и специальных разъемов премиум-класса. В концепцию компании BACHMANN&nbsp;входит внедрение инноваций в быт для повышения уровня комфорта.&nbsp;Продукция BACHMANN невероятно удобна в эксплуатации и надежна.&nbsp;Розетки BACHMANN выпускаются для накладного и встраиваемого монтажа - в столы, мебель, фальш-полы.&nbsp;Продукция BACHMANN подходит как для домашнего использования, так для установки в общественных учреждениях, офисах.&nbsp;\nНаиболее часто приобретаемыми сериями розеток BACHMANN&nbsp;являются&nbsp;Conference,Coni,Desk,&nbsp;Power Frame,&nbsp;Twist,Lift,Elevator.\nВ нашем интернет-магазине &quot;VIProzetki.ru&quot; Вы можете купить&nbsp;розетки и модули &nbsp;BACHMANN&nbsp;по выгодной цене.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Desk_2_slide1.jpg\" style=\"height:330px; width:710px\" />http://bachmann.ru/netcat_files/multifile/2278/Power_frame_slide1.jpg\" style=\"height:330px; width:710px\" />http://bachmann.ru/netcat_files/multifile/2278/Twist_slide1.jpg\" style=\"height:330px; width:710px\" />\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.919055",
        "modified": "2021-08-30 07:38:19.919055",
        "deleted": false
      },
      {
        "id": "7m3PmFrNaDqIZ6B8OFz4U",
        "rev": 0,
        "options": {"slug": "jung-sl-500-chernyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG SL 500 черный", "oldId": 198, "images": [], "published": false, "description": "Изделия Jung SL 500&nbsp; черного цвета отлично впишутся в стильный интерьер с мужской доминантой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.933036",
        "modified": "2021-08-30 07:38:19.933036",
        "deleted": false
      },
      {
        "id": "ybE-RVquXWY3GAwVx0I9t",
        "rev": 0,
        "options": {"slug": "delta-natur-vishnya", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Delta Natur вишня", "oldId": 55, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки серии Siemens DELTA natur цвета&nbsp;\"вишня\"&nbsp;шикарные функциональные детали Вашего интерьера.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.942820",
        "modified": "2021-08-30 07:38:19.942820",
        "deleted": false
      },
      {
        "id": "K95y0ZvGo5XA9b5B7bWt8",
        "rev": 0,
        "options": {"slug": "schneider-electric-odace-alyuminiy", "brand": null, "label": "Schneider-Electric Odace алюминий", "oldId": 185, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить розетки и выключатели Schneider-Electric Odace алюминиевого цвета по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.952095",
        "modified": "2021-08-30 07:38:19.952095",
        "deleted": false
      },
      {
        "id": "BAzzA8FhEP5Md-Udk1whg",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-hrom", "brand": null, "label": "Рамки Geo International хром", "oldId": 643, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.958671",
        "modified": "2021-08-30 07:38:19.958671",
        "deleted": false
      },
      {
        "id": "waIM2angHD_jN9UhuN6d1",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-zamena-lamp-nakalivaniya-cokol-e27e14", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss замена ламп накаливания цоколь E27/E14", "oldId": 500, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:19.965739",
        "modified": "2021-08-30 07:38:19.965739",
        "deleted": false
      },
      {
        "id": "lPoM3mlubqSJqWlXQrZUv",
        "rev": 0,
        "options": {"slug": "gauss", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Gauss", "oldId": 489, "images": [], "published": false, "description": "Gauss - это передовые технологии в производстве светодиодных ламп и светодиодных светильников.Большой ассортимент светодиодных ламп, различные виды светодиодных светильников Gauss позволят покупателю выбрать именно нужный продукт.\nВ нашем интернет-магазине Вы можете купить светодиодные лампы и светодиодные светильники Gauss или заказать светодиодные лампы и светильники Gauss от компании Gauss по отличной цене с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.975146",
        "modified": "2021-08-30 07:38:19.975146",
        "deleted": false
      },
      {
        "id": "Q2hIZStRlmlknwOmPxhqn",
        "rev": 0,
        "options": {"slug": "gewiss", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "Gewiss", "oldId": 601, "images": [], "published": false, "description": "&ldquo;Развитие как постоянная функция управления&rdquo; - вот принцип итальянской компании Gewiss, который она двигает в массы вот уже 40 лет, и похоже не собирается останавливаться на достигнутом. &quot;Инновации - это наше все!&quot; - заявляет производитель, покоривший пользователей всего мира. Вот уже 40 лет с помощью новейших технологий в мире освещения Gewiss двигает свою продукцию на рынки Китая, Чили, Румынии, России, Турции, и это далеко не весь список фанатов качественного и стильного оборудования Gewiss. Среди розеток и рамок Gewiss можно выбрать устройства, наиболее подходящие по стилю и функционалу именно для Вашего помещения. Любителям лаконичных интерьеров очень понравятся все четыре серии розеток и выключателей Gewiss - черные и белые оттенки будут хороши для офиса, выключатели цвета слоновой кости и титана прекрасно впишутся в спальню или гостиную комнату. Так же компания производит три ходовые серии рамок: GEWISS GEO INTERNATIONAL, GEWISS LUX INTERNATIONAL и GEWISS ONE INTERNATIONAL. Приятные оттенки и большой выбор сверх высококачественного оборудования непременно порадуют покупателей и оставят максимум положительных впечатлений при дальнейшей эксплуатации.\nВы можете в нашем интернет-магазине купить Gewiss по отличной цене с доставкой и не только в Москве.\nhttp://gewiss.am/templates/gewiss/images/test2.jpg\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.984779",
        "modified": "2021-08-30 07:38:19.984779",
        "deleted": false
      },
      {
        "id": "GujyVrFGlgk85LiLPFRV0",
        "rev": 0,
        "options": {"slug": "schneider-electric-odace-belyy", "brand": null, "label": "Schneider-Electric Odace белый", "oldId": 186, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить розетки и выключатели Schneider-Electric Odace белого цвета &nbsp;по выгодной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:19.996123",
        "modified": "2021-08-30 07:38:19.996123",
        "deleted": false
      },
      {
        "id": "-e56ZR6SEu2RVnlVuWdRC",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-bezhevyy", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede бежевый", "oldId": 212, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.003585",
        "modified": "2021-08-30 07:38:20.003585",
        "deleted": false
      },
      {
        "id": "-AhgS--PLEoa0cPzeho5N",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-1-polyusnye-45ka-c-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 1 полюсные 4,5kA, C характеристики", "oldId": 437, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.012316",
        "modified": "2021-08-30 07:38:20.012316",
        "deleted": false
      },
      {
        "id": "WjPOavCNrRf4LwTD7GXKi",
        "rev": 0,
        "options": {"slug": "abb-dynasty-ramki-polirovannaya-latunbeloe-steklo", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty рамки полированная латунь,белое стекло", "oldId": 515, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.020867",
        "modified": "2021-08-30 07:38:20.020867",
        "deleted": false
      },
      {
        "id": "Vv4L6V8cAfCzEx7-R_PaK",
        "rev": 0,
        "options": {"slug": "nakladnoy-alyuminievyy-profil-seriya-ns-ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Накладной алюминиевый профиль серия NS LedMonster", "oldId": 570, "images": [], "published": false, "description": "Накладной алюминиевый профиль серия NS LedMonster  применяется для создания линейного света, так же все модели накладного профиля могут быть подвесными, отлично подходит для применения в виде одиночного личнейного светильника или для создания световых линий в интерьере. Исходя из потребностей проекта комплектуется светодиодной лентой и источниками питания. Стоимость указана за одну линию профиля длиной 2.5 метра\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.029500",
        "modified": "2021-08-30 07:38:20.029500",
        "deleted": false
      },
      {
        "id": "JtzNZntWE4BIcYOxWOO1M",
        "rev": 0,
        "options": {"slug": "jung-ls-990-latun-antik", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 латунь AntiK", "oldId": 143, "images": [], "published": false, "description": "Рамки, выключатели, розетки, заглушки и накладки JUNG LS 990 цвета \"латунь антик\" подчеркнет необычный стиль Вашего дома.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.038430",
        "modified": "2021-08-30 07:38:20.038430",
        "deleted": false
      },
      {
        "id": "l1SKdrastU1K8HiWHo6pM",
        "rev": 0,
        "options": {"slug": "ledmonster-plate", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster PLATE", "oldId": 577, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.048631",
        "modified": "2021-08-30 07:38:20.048631",
        "deleted": false
      },
      {
        "id": "VhIXMoENVs01-8eHXWwe_",
        "rev": 0,
        "options": {"slug": "schneider-unica-belyy", "brand": null, "label": "Schneider Unica белый", "oldId": 179, "images": [], "published": false, "description": "Изделия серии Schneider Electric Unica&nbsp;классического белого цвета подойдут к любому интерьеру и порадуют своей функциональностью.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.056556",
        "modified": "2021-08-30 07:38:20.056556",
        "deleted": false
      },
      {
        "id": "_MQYMrCq_Hi59lQ-qk-ei",
        "rev": 0,
        "options": {"slug": "ledmonster-orbita", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster ORBITA", "oldId": 556, "images": [], "published": false, "description": "Светодиодный светильник LedMonster ORBITA это современный дизайн и высокий уровень качества света с цветопередачей 90+ Ra. Используется в широком спектре дизайнерских решений, в то же время весьма популярен исключительно в функциональных целях. Имеет глубину встройки 60 мм. Возможна дополнительная опция диммирования с использованием драйвера тока HEP, в стандартной комплектации включает драйвер тока Mean Well.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.063788",
        "modified": "2021-08-30 07:38:20.063788",
        "deleted": false
      },
      {
        "id": "IMaemCsbHH4NF1GQNszld",
        "rev": 0,
        "options": {"slug": "ledmonster-orbita-x", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster ORBITA X", "oldId": 566, "images": [], "published": false, "description": "LedMonster ORBITA X - это накладной светильник в цилиндрическом корпусе из алюминия. Одинаково хорошо подходит как для монтажа на потолке, так и для применения на стене. Имеет высокие характеристики такие как коэффициент цветопередачи 90+ Ra, так же по умолчанию включает диммируемый драйвер тока HEP.\nВ 10 раз эффективней обычной лампы накаливания\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.072514",
        "modified": "2021-08-30 07:38:20.072514",
        "deleted": false
      },
      {
        "id": "7WaqvX1mw4muI9eJpnG5W",
        "rev": 0,
        "options": {"slug": "qf", "brand": "aaB-UsNNQKo48BOAKsTD7", "label": "Q&F", "oldId": 467, "images": [], "published": false, "description": "Встраиваемые светодиодные светильники Q&F применяется для основного освещения помещений.В отличии от обычных люминесцентных светильников имеет ряд преимуществ - низкое энергопотребление,высокая светоотдача,чистый свет без мерцания,долгий срок службы,компактные размеры,стильный дизайн.Некоторые модели светодиодных светильников Q&F можно регулировать диммером(светорегулятором) и имеют сменный светодиодный блок (лампу светодиодную).\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.082182",
        "modified": "2021-08-30 07:38:20.082182",
        "deleted": false
      },
      {
        "id": "4-xBcb6OgcyIJkxU4Put7",
        "rev": 0,
        "options": {"slug": "schneider-electric-odace-ramki", "brand": null, "label": "Schneider-Electric Odace рамки", "oldId": 187, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать рамки Schneider-Electric Odace к розеткам и выключателям Schneider-Electric Odace по привлекательной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.091017",
        "modified": "2021-08-30 07:38:20.091017",
        "deleted": false
      },
      {
        "id": "xPS-CQvs897TmuL35b_Xa",
        "rev": 0,
        "options": {"slug": "schneider-unica-alyuminiy", "brand": null, "label": "Schneider Unica алюминий", "oldId": 177, "images": [], "published": false, "description": "Изделия серии Schneider Electric Unica&nbsp;алюминиевого цвета станут прекрасным дополнением Вашего интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.097160",
        "modified": "2021-08-30 07:38:20.097160",
        "deleted": false
      },
      {
        "id": "a6ZypSPNJgoKvkVKeQ-xl",
        "rev": 0,
        "options": {"slug": "steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Steinel", "oldId": 269, "images": [], "published": false, "description": "http://steinel-russia.ru/about/about.gif\" style=\"height:179px; width:260px\" />\nНемецкая фирма Steinel известна качеством своей продукции. Техника фирмы Steinel не только качественная, но и безопасная. Датчики движения, датчики присутствия, галогенные и светодиодные прожекторы с датчиками движения, светодиодные светильники с датчиками движения и другие изделия Steinel сделают Вашу жизнь максимально комфортной. Датчики движения Steinel обладают высокой функциональностью и экономичностью, при этом их цена весьма привлекательна для такого качества. Продукция, которую предлагает фирма Steinel, может использоваться не только дома или в офисе, но также и на даче, на улице, и в беседке. Датчики движения, датчики присутствия, уличные светильники с датчиками движения и прожекторы с датчиками движения Steinel выделяются особым спросом на мировом рынке. Сенсорные светильники Steinel отличаются высоким уровнем надежности и быстротой автоматического действия. Скрытые внутри светильника высокочастотные сенсоры (датчики объема) реагируют на малейшее изменение освещенности и движения. При покупке продукции Steinel вы получаете удобный в использовании продукт, который выведет Вашу жизнь на новый уровень комфорта. В нашем интернет-магазине \"VIProzetki.ru\" вы можете приобрести продукцию Steinel оптом или в розницу. При заказе мы предоставляем скидку в зависимости от его объема.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.104483",
        "modified": "2021-08-30 07:38:20.104483",
        "deleted": false
      },
      {
        "id": "W4OybmJGeLxfZv9TH5R86",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-hager", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Датчики движения Hager", "oldId": 440, "images": [], "published": false, "description": "Датчики движения Hager - эффективное управление освещением, максимальная экономия электроэнергии, удобная настройка и разумная цена делает сенсоры Hager привлекательными на рынке управления освещением. Удобная регулировка освещенности, чувствительности, гистерезиса исключают ненужные срабатывания. Накладной и монтаж в стандартный подрозетник подойдут к любому дизайну помещений.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.115214",
        "modified": "2021-08-30 07:38:20.115214",
        "deleted": false
      },
      {
        "id": "pK8vGlPQbjxkwNr5nSCj4",
        "rev": 0,
        "options": {"slug": "sumerechnye-vyklyuchateli-esylux-cds", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Сумеречные выключатели ESYLUX  CDS", "oldId": 698, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.126697",
        "modified": "2021-08-30 07:38:20.126697",
        "deleted": false
      },
      {
        "id": "7HD2dr34It22kNjy-ua9C",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-desk", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Desk", "oldId": 354, "images": [], "published": false, "description": "Электрические модули Bachmann Desk выпускаются для фиксированной и мобильной установки, их отличает гибкость подключения и использования, а также легкость изменения конфигурации. Питание подводится к стандартному разъему&nbsp;Wieland&nbsp;GST18, который при необходимости можно заменить, как и стандартные кабели.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Desk_1_slide2.jpg\" style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.140551",
        "modified": "2021-08-30 07:38:20.140551",
        "deleted": false
      },
      {
        "id": "pDsNhLbnSkwK5IDpEsNl3",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Датчики присутствия Steinel", "oldId": 290, "images": [], "published": false, "description": "Датчики присутствия Steinel изготовлены в соответствии со строгими немецкими стандартами качества. Датчики присутствия реагируют на излучаемое тепло(инфракрасные датчики),просто на любое движение(высокочастотные и ультразвуковые) — при нахождении в помещении человека свет будет включен без дополнительных действий,датчик будет срабатывать даже на небольшое движение.\nПриобретение датчиков присутствия Steinel поможет Вам эффективно использовать электроэнергию — свет будет включен только когда в этом есть необходимость; данные датчики сочетаются с энергосберегающими светодиодными лампами.\nВ нашем интернет-магазине «VIProzetki.ru» мы предлагаем к продаже датчики присутствия Steinel на выгодных условиях,можно купить любые датчики присутствия Steinel с доставкой и не только в Москве.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.149792",
        "modified": "2021-08-30 07:38:20.149792",
        "deleted": false
      },
      {
        "id": "qZ0aabXPAcPpafp65CDK-",
        "rev": 0,
        "options": {"slug": "ledmonster-kraft", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster KRAFT", "oldId": 585, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.159927",
        "modified": "2021-08-30 07:38:20.159927",
        "deleted": false
      },
      {
        "id": "JVsi99J4__qxiN8cBw-hX",
        "rev": 0,
        "options": {"slug": "vreznoy-alyuminievyy-profil-seriya-vs-ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Врезной алюминиевый профиль серия VS LedMonster", "oldId": 569, "images": [], "published": false, "description": "Врезной профиль применяется для создания линейного света, отлично подходит для применения в виде одиночного линейного светильника или для создания световых линий в интерьере. Исходя из потребностей проекта комплектуется светодиодной лентой и источниками питания. Стоимость указана за одну линию профиля длиной 2.5 метра\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.169523",
        "modified": "2021-08-30 07:38:20.169523",
        "deleted": false
      },
      {
        "id": "2Lkwr1gEaKZxRXnqr9LyF",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-basic", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX Basic", "oldId": 691, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.179139",
        "modified": "2021-08-30 07:38:20.179139",
        "deleted": false
      },
      {
        "id": "JS5swKH6NIyy7p5hM15KR",
        "rev": 0,
        "options": {"slug": "kontaktory-hager-besshumnye", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Контакторы Hager бесшумные", "oldId": 732, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.188250",
        "modified": "2021-08-30 07:38:20.188250",
        "deleted": false
      },
      {
        "id": "vhMAatKgp-QKsyR0yZqAk",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-lux-220-volt", "brand": null, "label": "Светодиодная лента герметичная LUX 220 вольт", "oldId": 410, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.196295",
        "modified": "2021-08-30 07:38:20.196295",
        "deleted": false
      },
      {
        "id": "1xOlxQw90adJLqK5XzeUh",
        "rev": 0,
        "options": {"slug": "schnaider-electric-unica-rozetki-i-vyklyuchateli", "brand": null, "label": "Schnaider Electric Unica розетки и выключатели", "oldId": 176, "images": [], "published": false, "description": "Серия Schneider Electric Unica&nbsp;- это недорогие розетки и выключатели, которые представлены в белом, бежевом, алюминиевом и графитом цветах.&nbsp;\nВ нашем интернет-магазин \"VIProzetki.ru\" Вы можете купить рамки,розетки и выключатели Schneider Electric Unica на выгодных условиях - по хорошей цене, с гарантией и доставкой,можете сделать заказ Schneider Electric Unica в нашем офисе или павильоне в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.202445",
        "modified": "2021-08-30 07:38:20.202445",
        "deleted": false
      },
      {
        "id": "tIlEayE9_Pbp1mPKQXR7Q",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-gira", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "Датчики движения GIRA", "oldId": 281, "images": [], "published": false, "description": "Датчики движения&nbsp;&nbsp;GIRA помогут создать в Вашем дома настоящий комфорт благодаря точному контролю за домом и вокруг него. Также использование датчиков движения помогает экономить электроэнергию.&nbsp;\n&nbsp;Лицевые панели датчиков движения серии System 55 подходят к рамкам GIRA для серий: Standard 55, E2, Event, Esprit.\nИзделия проедставлены в цветах чисто-белый (матовый), чисто-белый (глянцевый), кремовый глянцевый, алюминиевый, антрацит.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить&nbsp;датчики движения GIRA по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.209805",
        "modified": "2021-08-30 07:38:20.209805",
        "deleted": false
      },
      {
        "id": "hAZO9ImAMHFsv6AsBbjcs",
        "rev": 0,
        "options": {"slug": "uglovoy-alyuminievyy-profil-seriya-nugl-ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Угловой алюминиевый профиль серия NUGL LedMonster", "oldId": 571, "images": [], "published": false, "description": "Угловой алюминиевый профиль серия NUGL LedMonster  применяется для создания линейного света, отлично подходит для применения в виде одиночного линейного светильника или для создания световых линий в интерьере. Исходя из потребностей проекта комплектуется светодиодной лентой и источниками питания. Стоимость указана за одну линию профиля длиной 2.5 метра.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.220020",
        "modified": "2021-08-30 07:38:20.220020",
        "deleted": false
      },
      {
        "id": "DHwhhMcEMjsR-9hF24daa",
        "rev": 0,
        "options": {"slug": "legrand-valena-allure", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Valena Allure", "oldId": 790, "images": [{"alt": "LEGRAND VALENA ALLURE – это концепция округлых углов квадратных рамок. Розетки и выключатели этой серии можно смело использовать в интерьере в стилях минимализм и хай тэк, а широкая цветовая палитра поможет создать неповторимый образ помещения.", "path": "uploads/series/79/790/1556371355874.png"}, {"alt": "LEGRAND VALENA ALLURE – это концепция округлых углов квадратных рамок. Розетки и выключатели этой серии можно смело использовать в интерьере в стилях минимализм и хай тэк, а широкая цветовая палитра поможет создать неповторимый образ помещения.", "path": "uploads/series/79/790/1556371360786.png"}, {"alt": "LEGRAND VALENA ALLURE – это концепция округлых углов квадратных рамок. Розетки и выключатели этой серии можно смело использовать в интерьере в стилях минимализм и хай тэк, а широкая цветовая палитра поможет создать неповторимый образ помещения.", "path": "uploads/series/79/790/1556371365580.png"}, {"alt": "LEGRAND VALENA ALLURE – это концепция округлых углов квадратных рамок. Розетки и выключатели этой серии можно смело использовать в интерьере в стилях минимализм и хай тэк, а широкая цветовая палитра поможет создать неповторимый образ помещения.", "path": "uploads/series/79/790/1556371376420.png"}, {"alt": "LEGRAND VALENA ALLURE – это концепция округлых углов квадратных рамок. Розетки и выключатели этой серии можно смело использовать в интерьере в стилях минимализм и хай тэк, а широкая цветовая палитра поможет создать неповторимый образ помещения.", "path": "uploads/series/79/790/1556371383381.png"}], "published": true, "description": "LEGRAND VALENA ALLURE – это концепция округлых углов квадратных рамок. Розетки и выключатели этой серии можно смело использовать в интерьере в стилях минимализм и хай тэк, а широкая цветовая палитра поможет создать неповторимый образ помещения.", "productTypes": []},
        "created": "2021-08-30 07:38:20.230494",
        "modified": "2021-08-30 07:38:20.230494",
        "deleted": false
      },
      {
        "id": "b3qxUJhSgYXUBI9hs7LhQ",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX", "oldId": 684, "images": [], "published": false, "description": "Датчики движения ESYLUX представлены сериями Basic Compact express FLAT MD-W RC Standard MD Compact mini\nВ этом разделе вам представлены датчики движения ESYLUX серии MD и RC. Компактные и стильные датчики привлекают своим широким спектром моделей, которые представлены здесь. Вы можете приобрести у нас такие модели, как: MD 120, MD 180, MD 360/8, MD 200, MD360i/8, MD180i/16, MD-W200i, MD C-360i/6, MD 180i/R, MD-FLAT-E 360i, RC 130i, RC 230i. Каждая модель, указанная в нашем разделе представлена в трех базовых цветах: белый, черный, коричневый. Однако у нас есть, и модели из нержавеющей стали в цвете серебро. Датчики движения&nbsp; бренда ESYLUX имеют удобное размещение как встраиваемые потолочные, так и настенные. Здесь вы найдете тот датчик движения, который вам необходим. посмотрите и выберете из каталога производителя.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.241252",
        "modified": "2021-08-30 07:38:20.241252",
        "deleted": false
      },
      {
        "id": "W3Ar5OIyGXrhJXWyn9SXv",
        "rev": 0,
        "options": {"slug": "berker-q3q7", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.3,Q.7", "oldId": 657, "images": [], "published": false, "description": "Продукция компании Berker славится своей надежностью и качественностью, и изделия серий Q.3 и Q.7 - не исключение. Серии Q.3 и Q.7 от Berker отличаются безукоризненным дизайном, лаконичной формой, строгим силуэтом и высоким качеством материалов.\nРамки Berker Q.7 в стильных и строгих расцветках отлично впишутся в интерьер офиса или в интерьер в стиле минимализм. Лаконичные расцветки и приятные утонченные линии внесут изюминку в дизайн помещения.\nКлавиши и накладки Berker Q.3 в белом цвете, а так же в цветах алюминий и антрацит подойдут для любого дизайнерского решения и по Вашему желанию станут изящной деталью, притягивающей к себе взгляд, или же наоборот, полностью сольются с помещением и позволят сосредоточиться на других нюансах интерьера.\nМы работаем на доставку по всей России, так же у нас можно заказать и купить продукцию Berker Q.3,Q.7 с доставкой по Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.251413",
        "modified": "2021-08-30 07:38:20.251413",
        "deleted": false
      },
      {
        "id": "lVaLbO3yzdFqx49prdJis",
        "rev": 0,
        "options": {"slug": "nobile", "brand": "JSxFDGg7W3_Atxeprebmo", "label": "Nobile", "oldId": 266, "images": [], "published": false, "description": "Немецкая компания&nbsp;Nobile &nbsp;специализируется на производстве светотехнического и электротехнического оборудования.&nbsp;\nВ России марка хорошо известна как качественный производитель. Штампованные точечные светильники подходят для установки на любых потолках и считаются наиболее продаваемыми. На рынке представлены поворотные и неповоротные светильники Nobile&nbsp;различных цветов; Nobile&nbsp;-&nbsp;лучшие в своей нише и не имеют аналогов у других марок.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить качественные немецкие светильники Nobile&nbsp; по выгодной цене, с гарантией и доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.261607",
        "modified": "2021-08-30 07:38:20.261607",
        "deleted": false
      },
      {
        "id": "HSqfockIOnhu5YOHk3ubN",
        "rev": 0,
        "options": {"slug": "foton", "brand": "UshRKtcJi_pETonlNwnPO", "label": "Foton", "oldId": 263, "images": [], "published": false, "description": "FOTON LIGHTING Ltd. - светотехническая компания, главный офис которой расположен в Лондоне. Компания специализируется на внедрении в производство инноваций, создавая передовые светильники безупречного дизайна для самых требовательных заказчиков.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать продукцию FOTON&nbsp;с доставкой по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.271189",
        "modified": "2021-08-30 07:38:20.271189",
        "deleted": false
      },
      {
        "id": "1Awe8thF4YOfChKuIF7e_",
        "rev": 0,
        "options": {"slug": "svetodiodnaya-lenta-germetichnaya-lux-24-volt", "brand": null, "label": "Светодиодная лента герметичная LUX 24 вольт", "oldId": 409, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.280425",
        "modified": "2021-08-30 07:38:20.280425",
        "deleted": false
      },
      {
        "id": "d30Q5wTmCyvFA2xpLvDhr",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-rc", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX RC", "oldId": 689, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.287609",
        "modified": "2021-08-30 07:38:20.287609",
        "deleted": false
      },
      {
        "id": "A6yxZ3WeB29eS90rROoVa",
        "rev": 0,
        "options": {"slug": "svetilniki-dlya-pomeshcheniy-s-datchikom-dvizheniya-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Светильники для помещений с датчиком движения - Steinel", "oldId": 315, "images": [], "published": false, "description": "сhttp://www.retail-group.ru/data/produkte_gross.jpg\" style=\"height:200px; width:254px\" />http://diodus.ru/image/cache/data/products/_steinel/RS/RS_13_2-600x600.jpg\" style=\"height:180px; width:254px\" />\nПриобретение светильников с датчиком движения для помещений фирмы Steinel поможет Вам сэкономить средства на электроэнергии. Светильники с датчиком движения для помещений немецкой фирмы Steinel часто устанавливаются в нежилых помещениях, таких как лестничные клетки или коридоры,санузлы, кладовые.\nСветильники с датчиком движения Steinel,светодиодные светильники для помещений с датчиком движения Steinel&nbsp;и другие устройства фирмы Steinel вы можете приобрести в нашем интернет-магазине &laquo;VIProzetki.ru&raquo;, а наши сотрудники помогут вам в выборе продукции.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.298063",
        "modified": "2021-08-30 07:38:20.298063",
        "deleted": false
      },
      {
        "id": "yQXjSeSDhchs5vzm32_X0",
        "rev": 0,
        "options": {"slug": "jung-cd-500-bronza", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG CD 500 бронза", "oldId": 51, "images": [], "published": false, "description": "Розетки, выключатели, накладки, рамки и клавиши Jung CD 500 с покрытием \"бронза\" - это изысканная деталь Вашего интерьера. Розетки и выключатели Jung CD 500 станут завершающим штрихом шикарного дизайна.\n\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.308263",
        "modified": "2021-08-30 07:38:20.308263",
        "deleted": false
      },
      {
        "id": "LOpprE5qDmoDhJQO8V9JI",
        "rev": 0,
        "options": {"slug": "termoregulyatory-devi", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Терморегуляторы Devi", "oldId": 347, "images": [], "published": false, "description": "Терморегуляторы Devi для теплого пола - это необходимый элемент для контроля над температурой обогрева, без которого не будет работать ни одна обогревательная система &nbsp;Devi.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает купить терморегуляторы Devi для теплого пола&nbsp;с доставкой или офисе по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.477295",
        "modified": "2021-08-30 07:38:20.477295",
        "deleted": false
      },
      {
        "id": "wqwGqXi9ZhBUuQ2-VJTgh",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-coni", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Coni", "oldId": 353, "images": [], "published": false, "description": "Электрические модули Bachmann CONI позволяют быстро и удобно получить доступ к электрическим розеткам и разъемам проводов. Благодаря небольшой высоте модуля, он не выступает на внутренней поверхности столешницы, таким образом абсолютно не мешает движению. В закрытом положении модуль &nbsp;&nbsp;Bachmann CONI&nbsp;находится вровень со столешницей, а для доступа к разъема достаточно легкого нажатия. Модуль может быть подобран в соответствии с Вашими потребностями, &nbsp;а конфигурация может быть легко изменена в любое время. Модули &nbsp;Bachmann CONI&nbsp;имеют встроенные ворсяные щеточки, что помогает защитить провода от переламывания, и имеют различные варианты крышек для комбинирования с общим дизайном помещения.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Coni_slide2.jpg\" style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.321788",
        "modified": "2021-08-30 07:38:20.321788",
        "deleted": false
      },
      {
        "id": "BIuzUju4gshyc2T6HlXG0",
        "rev": 0,
        "options": {"slug": "siemens", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens", "oldId": 188, "images": [], "published": false, "description": "Siemens -&nbsp;всемирно известная компания по производству&nbsp;электротехники и электроники. Сотрудничать с Россией компания Siemens&nbsp;начала в 1851 году.&nbsp;\n\nНаш интернет-магазин \"VIProzetki.ru\" рад предложить Вам&nbsp;купить розетки и выключатели Siemens&nbsp;на выгодных условиях: Вы можете купить розетки и выключатели Siemens в нашем интернет магазине, выбрать нужную серию розеток и выключателей Сименс приехав в наш магазин,можете заказать доставку розеток в Москве или до транспортной компании. &nbsp;\n\nСегодня наибольшим спросом пользуются серии розеток и выключателей&nbsp;Siemens&nbsp;являются&nbsp;Siemens DELTA miro,&nbsp;Siemens DELTA nature&nbsp;и&nbsp;Siemens DELTA line. В этих сериях Вы сможете найти рамки не только из пластика, но и из металла, стекла и дерева. Цвета - титаново-белый, алюминиевый и черный металлики.&nbsp;\nСерия, полностью представленная в дереве, -&nbsp;Siemens DELTA nature.&nbsp;Здесь вы найдете&nbsp;Siemens DELTA nature вишня,&nbsp;Siemens DELTA nature крачный клен,&nbsp;Siemens DELTA nature бук,&nbsp;Siemens DELTA nature светлый дуб, Siemens DELTA nature темный дуб.\nSiemens DELTA line&nbsp;отличается невероятно стильным гармоничным дизайном в модных цветах титаново-белый, электробелый, алюминиевый и черный металлик. Среди всего разнообразия розеток, панелей, выключателей, рамок и клавиш фирмы Siemens&nbsp; Вы непременно найдете то, что подойдет к интерьеру Вашего дома или офиса.&nbsp;\nВся продукция выполнена исключительно из гипоаллергенных экологически чистых материалов.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.333593",
        "modified": "2021-08-30 07:38:20.333593",
        "deleted": false
      },
      {
        "id": "2nrkyULmkkQp-swS-zwH7",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-legrand-glubinoy-65mm", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Лючки напольные Legrand глубиной 65мм", "oldId": 298, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.344510",
        "modified": "2021-08-30 07:38:20.344510",
        "deleted": false
      },
      {
        "id": "wFtVg5VbEoYtg2moEGv3l",
        "rev": 0,
        "options": {"slug": "svetodiodnye-lampy-gauss-dimmiruemye", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светодиодные лампы Gauss диммируемые", "oldId": 496, "images": [], "published": false, "description": "Светодиодные лампы Gauss диммируемые - специальная серия, созданная для возможности регулировки светового потока бытовыми диммерами (светорегуляторами). Такие лампы могут использоваться совместно с другими типами и совместно управляться регулятором тока в одной цепи.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.353812",
        "modified": "2021-08-30 07:38:20.353812",
        "deleted": false
      },
      {
        "id": "sJbYepR-nod1M5F5p7_2i",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnyy-kabel-devi", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Теплые полы нагревательный кабель Devi", "oldId": 304, "images": [], "published": false, "description": "Теплые полы нагревательный кабель Devi подходят не только для установки в помещениях, но также ими можно обогревать трубопроводы и кровлю.&nbsp;\n&nbsp;Греющие кабели Deviflex имеют низкий уровень электромагнитного излучения и могут устанавливаться в спальнях и детских комнатах.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете заказать качественные теплые полы Devi&nbsp; по хорошей цене с доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.362764",
        "modified": "2021-08-30 07:38:20.362764",
        "deleted": false
      },
      {
        "id": "OfReufQbGh5TbMnQVWD44",
        "rev": 0,
        "options": {"slug": "lyuchki-napolnye-schneider-electric-optiline-45", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Лючки напольные Schneider Electric   OptiLine 45", "oldId": 296, "images": [], "published": false, "description": "Напольные лючки OptiLine 45 применяются для монтажа силовых, инфомационных и телевизионных розеток, при проведении сетей (информационных и силовых) в бетонных и фальш-полах.\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить&nbsp;напольные лючки OptiLine 45 Schneider Electric по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.371029",
        "modified": "2021-08-30 07:38:20.371029",
        "deleted": false
      },
      {
        "id": "1GbWTljBeU88zewmaK7vq",
        "rev": 0,
        "options": {"slug": "abb-impuls-bezhevyy", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls бежевый", "oldId": 16, "images": [], "published": false, "description": "Серия ABB Impuls нейтрального&nbsp;бежевого цвета отлично подойдет в классический интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.380607",
        "modified": "2021-08-30 07:38:20.380607",
        "deleted": false
      },
      {
        "id": "KC4Uv5ej2RW94OEnOtKx2",
        "rev": 0,
        "options": {"slug": "gewiss-one-international", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "GEWISS ONE INTERNATIONAL", "oldId": 608, "images": [{"alt": "GEWISS ONE INTERNATIONAL так и манит своими мягкими округлыми формами. Рамки от одного до четырёх постов выполнены в поэтичных цветах антрацит, молочно белый, морской синий, кремовый, слоновая кость. Почувствуй себя дизайнером и выбери оттенок на свой вкус. Рамки GEWISS ONE INTERNATIONAL выполнены из технополимеров без содержания галогенов, поэтому выбирая их, можно не опасаться за здоровье и безопасность близких.", "path": "uploads/series/60/608/1556613604840.jpg"}, {"alt": "GEWISS ONE INTERNATIONAL так и манит своими мягкими округлыми формами. Рамки от одного до четырёх постов выполнены в поэтичных цветах антрацит, молочно белый, морской синий, кремовый, слоновая кость. Почувствуй себя дизайнером и выбери оттенок на свой вкус. Рамки GEWISS ONE INTERNATIONAL выполнены из технополимеров без содержания галогенов, поэтому выбирая их, можно не опасаться за здоровье и безопасность близких.", "path": "uploads/series/60/608/1556613612442.jpg"}, {"alt": "GEWISS ONE INTERNATIONAL так и манит своими мягкими округлыми формами. Рамки от одного до четырёх постов выполнены в поэтичных цветах антрацит, молочно белый, морской синий, кремовый, слоновая кость. Почувствуй себя дизайнером и выбери оттенок на свой вкус. Рамки GEWISS ONE INTERNATIONAL выполнены из технополимеров без содержания галогенов, поэтому выбирая их, можно не опасаться за здоровье и безопасность близких.", "path": "uploads/series/60/608/1556613618806.jpg"}], "published": true, "description": "GEWISS ONE INTERNATIONAL так и манит своими мягкими округлыми формами. Рамки от одного до четырёх постов выполнены в поэтичных цветах антрацит, молочно белый, морской синий, кремовый, слоновая кость. Почувствуй себя дизайнером и выбери оттенок на свой вкус. Рамки GEWISS ONE INTERNATIONAL выполнены из технополимеров без содержания галогенов, поэтому выбирая их, можно не опасаться за здоровье и безопасность близких.", "productTypes": []},
        "created": "2021-08-30 07:38:20.390516",
        "modified": "2021-08-30 07:38:20.390516",
        "deleted": false
      },
      {
        "id": "yyxDZm0mVKsk9An1iO5Uv",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-power-frame", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Power Frame", "oldId": 357, "images": [], "published": false, "description": "Электрические модули Bachmann Power Frame позволяют выбрать уже готовую комплектацию или собрать свою.&nbsp;Компактный модуль Bachmann Power Frame усовершенствован до Bachmann Power Frame Cover, дополненный стильной алюминиевой крышкой, которая не только защищает разъемы от загрязнений, но также весьма органично вписывается в офисный стиль. Модули Bachmann Power Frame&nbsp;будут долго радовать Вас своей функциональностью и стильным дизайном.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Power_frame_slide1.jpg\" style=\"height:330px; width:710px\" />http://bachmann.ru/netcat_files/multifile/2278/Power_frame_cover_slide2.... style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.400996",
        "modified": "2021-08-30 07:38:20.400996",
        "deleted": false
      },
      {
        "id": "dkkWSXwCd-LpTZHY7GwBM",
        "rev": 0,
        "options": {"slug": "llinas-ideal-skrytyy-montazh", "brand": "0O8VMRsNe_SAsvy3l8fuv", "label": "Llinas Ideal скрытый монтаж", "oldId": 136, "images": [], "published": false, "description": "Ретро розетки и выключатели Llinas Ideal встраиваемые или встроенный монтаж - это идеальная возможность  сделать проводку в вашем доме в ретро стиле.Розетки и выключатели Llinas Ideal встраиваемые или встроенный(скрытый) монтаж  смотрятся превосходно ведь их корпуса делают из фарфора, а сам выключатель крепят к деревянной основе или крепят без нее. Ретро розетки и выключатели Llinas Ideal -это символ ушедшей эпохи, которая будет интересовать нас всегда .\nУ нас в интернет-магазине Вы можете купить встраиваемые  ретро розетки и выключатели Llinas Ideal или заказать  фарфоровые выключатели и розетки Llinas Ideal встроенный монтаж по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.411624",
        "modified": "2021-08-30 07:38:20.411624",
        "deleted": false
      },
      {
        "id": "e7jIEwpVFanqFYVmufPYR",
        "rev": 0,
        "options": {"slug": "klavishi-i-nakladki-fede-chernyy", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Клавиши и накладки Fede черный", "oldId": 214, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.422637",
        "modified": "2021-08-30 07:38:20.422637",
        "deleted": false
      },
      {
        "id": "J8nLPLTNIFnKNlB1G_vWS",
        "rev": 0,
        "options": {"slug": "siemens-delta-line-alyuminiy", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Line алюминий", "oldId": 190, "images": [], "published": false, "description": "Розетки,выключатели, рамки и накладки серии Siemens DELTA line&nbsp;цвета&nbsp;\"алюминий\"&nbsp;идеально впишутся в стильный смелый интерьер.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.432476",
        "modified": "2021-08-30 07:38:20.432476",
        "deleted": false
      },
      {
        "id": "omwS11qtB9lwrHYppR7Lr",
        "rev": 0,
        "options": {"slug": "delta-natur-klen", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Delta Natur клен", "oldId": 58, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки серии Siemens DELTA natur&nbsp;цвета&nbsp;\"клен\"&nbsp;напомнят о природе и будут радовать Вас своей долговечностью.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.440850",
        "modified": "2021-08-30 07:38:20.440850",
        "deleted": false
      },
      {
        "id": "0pymv1n0tqRtMTdZMhFYU",
        "rev": 0,
        "options": {"slug": "trekovye-led-svetilniki-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Трековые LED светильники Horoz Electric", "oldId": 427, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить трековые светодиодные светильники Horoz Electric или заказать с доставкой светодиодные трековые Led светильники и прожекторы Horoz Electric с креплением на шинопровод по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.449332",
        "modified": "2021-08-30 07:38:20.449332",
        "deleted": false
      },
      {
        "id": "64ccRqWV6o00pnFjzieCr",
        "rev": 0,
        "options": {"slug": "svetilniki-dlya-ulicy-s-datchikami-dvizheniya-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Светильники для улицы с датчиками движения - Steinel", "oldId": 316, "images": [], "published": false, "description": "http://www.smartron.ru/_mod_files/ce_images/steinel/dl750s_10.jpg\" style=\"height:250px; width:244px\" />http://www.licht220.ru/data/images/svetilniki-steinel-ulica.jpg\" style=\"height:250px; width:350px\" />http://www.svetodiodrus.ru/sites/default/files/styles/large/public/lamp/... style=\"height:250px; width:350px\" />\nИнтернет-магазин &laquo;VIProzetki.ru&raquo; предлагает к продаже продукцию немецкой фирмы Steinel &mdash; уличные светильники с датчиками движения. Данные изделия отвечают самым высоким стандартам качества, так что Вы можете быть уверены в приобретении надежного продукта.\nВ нашем магазине вы можете купить уличные светильники с датчиками движения фирмы Steinel, светильники под светодиодные лампы и лампы накаливания,светодиодные светильники с датчиком движения Steinel&nbsp;которые помогут Вам избавится от ненужных трат на электроэнергию и решить проблему уличного освещения дома или на даче с доставкой и не только в Москве.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.457539",
        "modified": "2021-08-30 07:38:20.457539",
        "deleted": false
      },
      {
        "id": "7lVIAv5jO3Jlwewvx1LUK",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnye-maty-ebeco", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Теплые полы нагревательные маты  Ebeco", "oldId": 339, "images": [], "published": false, "description": "Теплые полы нагревательные маты EBECO отличаются высоким качеством, надежностью и долговечностью.&nbsp;Система обогрева теплые полы нагревательные маты Ebeco применяется для установки в любыхпомещениях.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает купить нагревательные маты Ebeco по выгодной цене и с доставкой.&nbsp;\nhttp://ablamirat.ru/wp-content/gallery/teplyj-pol-svoimi-rukami/143-1.jpg\" style=\"height:344px; width:600px\" />\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.467327",
        "modified": "2021-08-30 07:38:20.467327",
        "deleted": false
      },
      {
        "id": "9CQtjwnZGvScwUWeyQdhl",
        "rev": 0,
        "options": {"slug": "ledmonster-box", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster BOX", "oldId": 567, "images": [], "published": false, "description": "LedMonster BOX - это накладной светильник с оригинальной внутренней частью корпуса, имеет комфортный рассеивающий свет благодаря матовому рассеивателю. При этом обладает высоким коэффициентом цветопередачи 90+ Ra, в комплекте установлен диммируемый драйвер HEP.\nВ 10 раз эффективней обычной лампы накаливания\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.486972",
        "modified": "2021-08-30 07:38:20.486972",
        "deleted": false
      },
      {
        "id": "9DDrTdUmRcIetBgnIc9jO",
        "rev": 0,
        "options": {"slug": "nakladnye-svetilniki-ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Накладные светильники LedMonster.", "oldId": 564, "images": [], "published": false, "description": "Накладные светодиодные светильники LedMonster - специальная серия отличающейся способом монтажа - на плоскую поверхность (в накладку) Такой способ крепления используется для дизайнерских решений и отличается простотой и свободным размещением не требующим закладных конструкций, отверстий большого диаметра. В эту серию&nbsp;светильников LedMonster входят настенные, потолочные и точечные источники света накладного монтажа.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.496813",
        "modified": "2021-08-30 07:38:20.496813",
        "deleted": false
      },
      {
        "id": "HC3WDZ1urDC9MQQL9eDkP",
        "rev": 0,
        "options": {"slug": "svetodiodnye-ofisnye-svetilniki-faldi", "brand": "0HdMLKAZs8Up8JPNyomtb", "label": "Светодиодные офисные светильники Faldi", "oldId": 580, "images": [], "published": false, "description": "Офисные светодиодные светильники Faldi по низкой цене самовывозом или доставкой. Современный дизайн и низкое энергопотребление вместе с ценой и надежностью не оставляют выбора, в&nbsp;нашем магазине Вы можете купить светодиодные офисные светильники Faldi по отличной цене с доставкой и не только в Москве. Область применения светодиодных офисных светильников Faldi это освещение торговых центров, освещение торговых залов и помещений магазинов, освещение офисных и административных центров, освещение конференц-залов. На все светильники распространяется гарантия предоставляемая производителем.\nhttp://faldi.ru.images.1c-bitrix-cdn.ru/upload/resize_cache/iblock/76c/8... style=\"height:350px; width:400px\" />http://faldi.ru.images.1c-bitrix-cdn.ru/upload/resize_cache/iblock/093/1... style=\"height:350px; width:400px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.507092",
        "modified": "2021-08-30 07:38:20.507092",
        "deleted": false
      },
      {
        "id": "Kcwxyd9ab-NMkb0MADK_t",
        "rev": 0,
        "options": {"slug": "programmiruemye-termoregulyatory-frontier", "brand": "wYe0UEwTnEDz8TTm-8Hb7", "label": "Программируемые терморегуляторы Frontier", "oldId": 311, "images": [], "published": false, "description": "Интернет-магазин \"VIProzetki.ru\" предлагает доставку и выгодные цены на&nbsp;программируемые терморегуляторы Frontier для регулировки теплого пола и всех видов отопления.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.516602",
        "modified": "2021-08-30 07:38:20.516602",
        "deleted": false
      },
      {
        "id": "U0CZm9peFQyn2mAZqIvI3",
        "rev": 0,
        "options": {"slug": "devi", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Devi", "oldId": 258, "images": [], "published": false, "description": "Датская компания DEVI производит электрические кабельные системы отопления, которые зарекомендовали себя с лучшей стороны. Электрические нагревательные маты Devi, нагревательные кабели Devi, терморегуляторы Devi,системы Devi против обледенения признаны качественным товаром, который прослужит долгие годы.&nbsp;\nВ нашем интернет-магазине &quot;VIprozetki.ru&quot; Вы можете купить продукцию DEVI&nbsp;по выгодной цене с доставкой.&nbsp;\nhttp://www.vlstroi.ru/userfiles/images/warm-floor-3.jpg\" style=\"height:320px; width:355px\" />http://image.etov.com.ua/storage/640x640/6/2/f/d/62fd02828231e571626751e... style=\"height:320px; width:256px\" />\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.525935",
        "modified": "2021-08-30 07:38:20.525935",
        "deleted": false
      },
      {
        "id": "zrGjORXsM1kY12ECsrA_O",
        "rev": 0,
        "options": {"slug": "abb-impuls-cerebro", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls cеребро", "oldId": 15, "images": [], "published": false, "description": "Серия ABB Impuls&nbsp;серебяного цвета добавит особый шик в оригинальный интерьер.\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.535304",
        "modified": "2021-08-30 07:38:20.535304",
        "deleted": false
      },
      {
        "id": "mjV-Pe4ZDyJUCnDl6AoHm",
        "rev": 0,
        "options": {"slug": "svetilniki-svetodiodnye-zamel-ledix", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Светильники светодиодные Zamel Ledix", "oldId": 320, "images": [], "published": false, "description": "&nbsp;\nСветодиодные светильники Zamel&nbsp;Ledix выпускаются в накладных и встраиваемых вариантах - светильники Zamel&nbsp;Ledix имеют направленный свет и предназначены для подсветки ступеней и коридоров, также возможно использовать эту серию для дизайнерских решений. Устанавливаются светильники в стандартный подрозетник, некоторые модели имеют накладной монтаж, уточняйте у менеджера. Серия ledix - светодиодная и имеет питание 12 вольт, некоторые светильники оснащены встроенным трансформатором и подключаются непосредственно к сети 220 вольт.&nbsp;Качественные и стильные светодиодные светильники Zamel ledix&nbsp; представлены&nbsp;в цветах золото, сталь,белые,черные,алюминий и графит. Каждый тип светильника имеет направленный световой поток и позволяет создавать особый интерьер. Рассеиватели выполненны из высококачественного акрилового стекла, надежно защищают прибор и имеют великолепный вид. В нашем интернет-магазине Вы можете купить продукцию компании Zamel&nbsp;по привлекательной цене с доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.544995",
        "modified": "2021-08-30 07:38:20.544995",
        "deleted": false
      },
      {
        "id": "-UznUyg8fKoQgw_VCnruB",
        "rev": 0,
        "options": {"slug": "merten-antik-latun", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Antik латунь", "oldId": 155, "images": [], "published": false, "description": "Серия Merten Antik&nbsp;цвета \"латунь\" невероятно функциональны и внешне привлекательны.\nЭту и другую продукцию серии Merten Antik&nbsp;Вы можете купить&nbsp;в нашем интернет-магазине \"VIProzetki.ru\" с доставкой и по отличной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.645957",
        "modified": "2021-08-30 07:38:20.645957",
        "deleted": false
      },
      {
        "id": "gl60_O3ZqpSg7hm5Kc3ee",
        "rev": 0,
        "options": {"slug": "donolux", "brand": "jzCAXiDuy_5y0LuvZK7hF", "label": "Donolux", "oldId": 259, "images": [], "published": false, "description": "Компания&nbsp;Donolux производит&nbsp;&nbsp;точечные светильники, люстры, светодиодные светильники.&nbsp;Светильники производятся из европейских деталей с использованием природных материалов, хрусталя Asffour,&nbsp; металлических корпусов. Дизайн светильников разрабатывался в Италии. Светильники компании&nbsp;Donolux имеют все необходимые для России сертификаты.&nbsp;\nВ нашем интернем-магазине \"VIProzetki.ru\" Вы можете купить светильники Donolux по оптимальной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.556326",
        "modified": "2021-08-30 07:38:20.556326",
        "deleted": false
      },
      {
        "id": "AlRaNtoN0sxNbcC6It7Bo",
        "rev": 0,
        "options": {"slug": "neprogrammiruemye-termoregulyatory-frontier", "brand": "wYe0UEwTnEDz8TTm-8Hb7", "label": "Непрограммируемые терморегуляторы Frontier", "oldId": 309, "images": [], "published": false, "description": "Наш интернет-магазин \"VIProzetki.ru\" предлагает купить&nbsp;непрограммируемые терморегуляторы Frontier для регулировки теплого пола и всех видов отопления по выгодной цене с доставкой или самомвывозом.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.565201",
        "modified": "2021-08-30 07:38:20.565201",
        "deleted": false
      },
      {
        "id": "gzhro5KJTw02n2R_dBA1X",
        "rev": 0,
        "options": {"slug": "horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Horoz Electric", "oldId": 423, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить светильники&nbsp;Horoz Electric или заказать светодиодные светильники&nbsp;Horoz Electric для дома и дачи, уличные и интерьерные,офисные и промышленные по отличной цене и с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.573913",
        "modified": "2021-08-30 07:38:20.573913",
        "deleted": false
      },
      {
        "id": "AUqhk1eGWQPF5MwnXCdc3",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-lift", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Lift", "oldId": 356, "images": [], "published": false, "description": "Выдвижной розеточный модуль BACHMANN Lift отличается высоким качеством и стильным дизайном. Встроенный в столешницу модуль практически сливается с поверхностью в закрытом состоянии, а для доступа к разъемам достаточного легкого нажатия. В модуль можно добавить различные разъемы в соответствии с Вашими потребностями. Для установки модуля необходимы отверстие диаметром 140мм и глубина 195мм. Модуль BACHMANN Lift &nbsp;долго будет радовать Вас своей функциональностью.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Lift_slide1.jpg\" style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.583731",
        "modified": "2021-08-30 07:38:20.583731",
        "deleted": false
      },
      {
        "id": "Ml0wiX-tLcEd3tsCQYpLO",
        "rev": 0,
        "options": {"slug": "berker-arsys-stal", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Arsys сталь", "oldId": 33, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker Arsys&nbsp;стального цвета завершат облик современного интерьера в стиле хай-тек.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.592997",
        "modified": "2021-08-30 07:38:20.592997",
        "deleted": false
      },
      {
        "id": "j0Js2duuSB3sOpLZTu_NM",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-new-rozetki-i-vyklyuchateli-antracit", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA NEW розетки и выключатели антрацит", "oldId": 761, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.603333",
        "modified": "2021-08-30 07:38:20.603333",
        "deleted": false
      },
      {
        "id": "7LoV2LyDA2yJKFbgHzH7a",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-schneider-electric", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Датчики движения Schneider Electric", "oldId": 285, "images": [], "published": false, "description": "Датчики движения Schneider Electric отличаются сочетанием высокого качества и доступной цены. &nbsp;Датчики движения Schneider Electric выпускаются для внутренней и внешней установки, накладные и встроенные.\nВы можете купить или заказать датчики движения Schneider Electric в нашем интернет-магазине \"VIProzetki.ru\" с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.614399",
        "modified": "2021-08-30 07:38:20.614399",
        "deleted": false
      },
      {
        "id": "OcOqcSZC36DSXEnorlQ5d",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnye-maty-devi-dtif", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Теплые полы нагревательные маты Devi DTIF", "oldId": 343, "images": [], "published": false, "description": "Теплые полы нагревательные маты Devi DTIF представляет собой сверхтонкий двужильный мат, изготовленый из кабеля с тефлоновой температурной изоляцией. Нагревательные маты Devi DTIF имеют толщину всего 3,5 мм, что позволяет установить их под любые напольные покрытия в любом помещении.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить теплые полы&nbsp;Devi DTIF&nbsp;по выгодной цене и заказать доставку.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.625397",
        "modified": "2021-08-30 07:38:20.625397",
        "deleted": false
      },
      {
        "id": "YTBuqr0bD9EobBAswDn-b",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnyy-kabel-ebeco", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Теплые полы нагревательный кабель Ebeco", "oldId": 346, "images": [], "published": false, "description": "Кабель EBECO двужильный экранированный СК мощность 18Ват на метр, тефлон.\nНаш интернет-магазин \"VIProzetki.ru\" предлагает купить нагревательный кабель Ebeco для электрического теплого пола&nbsp;на выгодных условиях с доставкой.&nbsp;\nhttp://ebeco-teplopol.ru/catalog/bild29cm.jpg\" style=\"height:259px; width:255px\" />http://ebeco-teplopol.ru/catalog/CK_50_forp.jpg\" style=\"height:259px; width:255px\" />http://www.ebeco-msk.ru/img/db/588.JPG\" style=\"height:114px; width:297px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.635576",
        "modified": "2021-08-30 07:38:20.635576",
        "deleted": false
      },
      {
        "id": "-rtQWYVSiHBJHNC6ee-uq",
        "rev": 0,
        "options": {"slug": "termoregulyatory-eberle", "brand": null, "label": "Терморегуляторы Eberle", "oldId": 349, "images": [], "published": false, "description": "Немецкая компания EBERLE &nbsp;входит в европейский концерн&nbsp;&nbsp;INVENSYS и занимается производством терморегуляторов, автоматики и арматуры.&nbsp;EBERLE стала общепризнанным мировым производителем благодаря качеству, точности и надежности своей продукции: климатической контрольной электроники.\nНаш интернет-магазин предлагает купить&nbsp;терморегуляторы EBERLE&nbsp;с доставкой по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.658737",
        "modified": "2021-08-30 07:38:20.658737",
        "deleted": false
      },
      {
        "id": "buhSDEZgF1dq_cAJxi3lo",
        "rev": 0,
        "options": {"slug": "ramki-geo-international-morskoy-siniy", "brand": null, "label": "Рамки Geo International морской синий", "oldId": 650, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.665451",
        "modified": "2021-08-30 07:38:20.665451",
        "deleted": false
      },
      {
        "id": "eghAL5r49vy_ltw5i1LVS",
        "rev": 0,
        "options": {"slug": "abb-zenit-antracit", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Zenit aнтрацит", "oldId": 23, "images": [], "published": false, "description": "Серия АББ Zenit&nbsp;цвета \"антрацит\" - это лаконичная и стильная деталь Вашего изысканного интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.672300",
        "modified": "2021-08-30 07:38:20.672300",
        "deleted": false
      },
      {
        "id": "d-4jonILX9y3dkGLHQ-eh",
        "rev": 0,
        "options": {"slug": "jung-as-500-belyy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG AS 500 белый", "oldId": 36, "images": [], "published": false, "description": "Розетки и выключатели Jung AS 500&nbsp;белого цвета - это классическое решение, которое украсит любой интерьер.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.681794",
        "modified": "2021-08-30 07:38:20.681794",
        "deleted": false
      },
      {
        "id": "J4BlvFCIehht2mTQydTWy",
        "rev": 0,
        "options": {"slug": "ledprom", "brand": "RXl5WWxQypW1edRZNlLNE", "label": "Ledprom", "oldId": 402, "images": [], "published": false, "description": "В нашем интернет магазине мы можем предложить Вам купить широкий спектр светодиодной ленты, нестандартных светильников и прожекторов, систем офисного, промышленного и уличного освещения.В нашем интернет магазине Вы можете купить светодиодную продукцию Ledprom - широкий ассортимент светодиодных светильников, лент, контроллеров, импульсных источников питания, светодиодных ламп и другую продукцию.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.692317",
        "modified": "2021-08-30 07:38:20.692317",
        "deleted": false
      },
      {
        "id": "4Vuz3LJGo7kaczBS9Io0V",
        "rev": 0,
        "options": {"slug": "prozhektory-esylux", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Прожекторы ESYLUX", "oldId": 697, "images": [], "published": false, "description": "Прожекторы ESYLUX - купить в интернет магазине с курьерской  доставкой или в розничном отделе в центре \"Экспострой\"\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.703609",
        "modified": "2021-08-30 07:38:20.703609",
        "deleted": false
      },
      {
        "id": "eVwx2IXMjiK4b-tMO2LzV",
        "rev": 0,
        "options": {"slug": "frontier", "brand": "wYe0UEwTnEDz8TTm-8Hb7", "label": "Frontier", "oldId": 264, "images": [], "published": false, "description": "Frontier&nbsp;является брендом тайваньской компании&nbsp;King I Electronics Co. Ltd., основанной в 1997 году. Компания King I electronics Co. Ltd. имеет европейский сертификат качества ISO 9001:2000.\nФирма производит терморегуляторы, цифровые таймеры и приборы для регулировки подачи электроэнергии. Со дня основания компания Frontier заслужила хорошую репутацию благодаря своим современным, надежным и внешне привлекательным продуктам: термостатам для Обогрева, Вентиляции и Кондиционирования воздуха (HVAC).\nКомпания имеет штат инженеров, отвечающих за внедрение новейших технологий в производство. Компания King I electronics Co. Ltd. имеет множество известных по всему миру брендов. С 2006 года продукция Frontier стала поставляться в Россию и успела завоевать доверие.\nНаш интернет-магазин «VIProzetki.ru» предлагает выгодные цены на покупку электроустановочного оборудования, датчиков движения,терморегуляторов для различных систем отопления, вентиляции и кондиционирования компании Frontier.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.713722",
        "modified": "2021-08-30 07:38:20.713722",
        "deleted": false
      },
      {
        "id": "Zctq_dfAL9fMbhCknscN_",
        "rev": 0,
        "options": {"slug": "berker-arsys-bezhevyy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Arsys бежевый", "oldId": 29, "images": [{"alt": "Розетки, выключатели, рамки и накладки Berker Arsys бежевого цвета идеально подойдут к спокойному стильному интерьеру.\n", "path": "uploads/series/2/29/1540665106120.jpg"}], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker Arsys бежевого цвета идеально подойдут к спокойному стильному интерьеру.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.722684",
        "modified": "2021-08-30 07:38:20.722684",
        "deleted": false
      },
      {
        "id": "SkvxPWag2SnRinXTyANKa",
        "rev": 0,
        "options": {"slug": "berker-arsys-belyy", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Arsys белый", "oldId": 30, "images": [{"alt": "Розетки, выключатели, рамки и накладки Berker Arsys классического белого цвета идеально подойдут к любому интерьеру.\n", "path": "uploads/series/3/30/1540665160478.jpg"}], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker Arsys классического белого цвета идеально подойдут к любому интерьеру.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.734198",
        "modified": "2021-08-30 07:38:20.734198",
        "deleted": false
      },
      {
        "id": "iX11FJVVrdSljZd7mmpMn",
        "rev": 0,
        "options": {"slug": "berker-arsys", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Arsys", "oldId": 28, "images": [{"alt": "Розетки, выключатели, рамки и накладки Berker Arsys отличаются своей изысканностью и элегантностью. Розетки, выключатели, рамки и накладки Berker Arsys, выполненные из нержавеющей стали, не оставят равнодушным ни одного пользователя, которому важны не только функциональность и надежность, но и дорогой внешний вид продукции. Цвета розеток и выключателей Berker Arsys:Berker полярная белизна, Berker белый, Berker коричневый. Материалы Berker Arsus:Berker металл под золото, Berker металл под светлую бронзу, Berker нержавеющая сталь.\n", "path": "uploads/series/2/28/1540665091551.jpg"}], "published": false, "description": "Розетки, выключатели, рамки и накладки Berker Arsys отличаются своей изысканностью и элегантностью. Розетки, выключатели, рамки и накладки Berker Arsys, выполненные из нержавеющей стали, не оставят равнодушным ни одного пользователя, которому важны не только функциональность и надежность, но и дорогой внешний вид продукции. Цвета розеток и выключателей Berker Arsys:Berker полярная белизна, Berker белый, Berker коричневый. Материалы Berker Arsus:Berker металл под золото, Berker металл под светлую бронзу, Berker нержавеющая сталь.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.744997",
        "modified": "2021-08-30 07:38:20.744997",
        "deleted": false
      },
      {
        "id": "HSBw51SWRFnQiwUZEr1Bw",
        "rev": 0,
        "options": {"slug": "fontini-venezia", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia", "oldId": 78, "images": [], "published": false, "description": "У нас в интернет-магазине Вы можете купить ретро розетки,рамки и выключатели Fontini Venezia или заказать фарфоровые рамки,выключатели и розетки Fontini Venezia по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.755309",
        "modified": "2021-08-30 07:38:20.755309",
        "deleted": false
      },
      {
        "id": "7qT72yCAURhRipfeNSIqA",
        "rev": 0,
        "options": {"slug": "berker-k1", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker K.1", "oldId": 41, "images": [{"alt": "BERKER K.1 - это концепция прямоугольных рамок с чёткими линиями, элегантность которых нельзя переоценить. Розетки и выключатели BERKER K.1 наиболее выгодно смотрятся в классических цветовых решениях - белый и антрацит. Изделия серии выполнены из высококачественного термопласта, а это значит, что долгие годы плодотворной работы не испортят их внешний вид.", "path": "uploads/series/4/41/1555784740889.jpg"}, {"alt": "BERKER K.1 - это концепция прямоугольных рамок с чёткими линиями, элегантность которых нельзя переоценить. Розетки и выключатели BERKER K.1 наиболее выгодно смотрятся в классических цветовых решениях - белый и антрацит. Изделия серии выполнены из высококачественного термопласта, а это значит, что долгие годы плодотворной работы не испортят их внешний вид.", "path": "uploads/series/4/41/1555784748630.jpg"}], "published": true, "description": "BERKER K.1 - это концепция прямоугольных рамок с чёткими линиями, элегантность которых нельзя переоценить. Розетки и выключатели BERKER K.1 наиболее выгодно смотрятся в классических цветовых решениях - белый и антрацит. Изделия серии выполнены из высококачественного термопласта, а это значит, что долгие годы плодотворной работы не испортят их внешний вид.", "productTypes": []},
        "created": "2021-08-30 07:38:20.766612",
        "modified": "2021-08-30 07:38:20.766612",
        "deleted": false
      },
      {
        "id": "Pv1xTrcZV7zpf-dM3kgr0",
        "rev": 0,
        "options": {"slug": "fontini-garby-colonial", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Garby Colonial", "oldId": 73, "images": [{"alt": "У нас в интернет-магазине Вы можете купить ретро розетки,рамки и выключатели Fontini Garby Colonial или заказать фарфоровые рамки,выключатели и розетки Fontini Garby Colonial по отличной цене .\n", "path": "uploads/series/7/73/1606121029238.jpg"}, {"alt": "У нас в интернет-магазине Вы можете купить ретро розетки,рамки и выключатели Fontini Garby Colonial или заказать фарфоровые рамки,выключатели и розетки Fontini Garby Colonial по отличной цене .\n", "path": "uploads/series/7/73/1606121039837.jpg"}, {"alt": "У нас в интернет-магазине Вы можете купить ретро розетки,рамки и выключатели Fontini Garby Colonial или заказать фарфоровые рамки,выключатели и розетки Fontini Garby Colonial по отличной цене .\n", "path": "uploads/series/7/73/1606121043622.jpg"}], "published": true, "description": "У нас в интернет-магазине Вы можете купить ретро розетки,рамки и выключатели Fontini Garby Colonial или заказать фарфоровые рамки,выключатели и розетки Fontini Garby Colonial по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.776539",
        "modified": "2021-08-30 07:38:20.776539",
        "deleted": false
      },
      {
        "id": "PmKGHzvU9-VWEcIELWo1h",
        "rev": 0,
        "options": {"slug": "legrand-celiane-steklo-i-farfor", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane стекло и фарфор", "oldId": 118, "images": [{"alt": "Серия LEGRAND CELIANE из натуральных материалов — стекла и фарфора — притягивает взгляд и восхищает. Прямоугольные рамки обрамляют круг, в центр которого помещена клавиша, выглядят изделия очень стильно и элегантно. Приятный дизайн и многообразие оттенков розеток и выключателей LEGRAND CELIANE украсят любой интерьер, а отличная качественная сборка позволит наслаждаться долгим сроком службы приобретенной продукции.\n", "path": "uploads/series/11/118/1556373850770.png"}, {"alt": "Серия LEGRAND CELIANE из натуральных материалов — стекла и фарфора — притягивает взгляд и восхищает. Прямоугольные рамки обрамляют круг, в центр которого помещена клавиша, выглядят изделия очень стильно и элегантно. Приятный дизайн и многообразие оттенков розеток и выключателей LEGRAND CELIANE украсят любой интерьер, а отличная качественная сборка позволит наслаждаться долгим сроком службы приобретенной продукции.\n", "path": "uploads/series/11/118/1556373865003.png"}, {"alt": "Серия LEGRAND CELIANE из натуральных материалов — стекла и фарфора — притягивает взгляд и восхищает. Прямоугольные рамки обрамляют круг, в центр которого помещена клавиша, выглядят изделия очень стильно и элегантно. Приятный дизайн и многообразие оттенков розеток и выключателей LEGRAND CELIANE украсят любой интерьер, а отличная качественная сборка позволит наслаждаться долгим сроком службы приобретенной продукции.\n", "path": "uploads/series/11/118/1556373870374.png"}, {"alt": "Серия LEGRAND CELIANE из натуральных материалов — стекла и фарфора — притягивает взгляд и восхищает. Прямоугольные рамки обрамляют круг, в центр которого помещена клавиша, выглядят изделия очень стильно и элегантно. Приятный дизайн и многообразие оттенков розеток и выключателей LEGRAND CELIANE украсят любой интерьер, а отличная качественная сборка позволит наслаждаться долгим сроком службы приобретенной продукции.\n", "path": "uploads/series/11/118/1556373874328.png"}, {"alt": "Серия LEGRAND CELIANE из натуральных материалов — стекла и фарфора — притягивает взгляд и восхищает. Прямоугольные рамки обрамляют круг, в центр которого помещена клавиша, выглядят изделия очень стильно и элегантно. Приятный дизайн и многообразие оттенков розеток и выключателей LEGRAND CELIANE украсят любой интерьер, а отличная качественная сборка позволит наслаждаться долгим сроком службы приобретенной продукции.\n", "path": "uploads/series/11/118/1556373879418.png"}], "published": true, "description": "Серия LEGRAND CELIANE из натуральных материалов — стекла и фарфора — притягивает взгляд и восхищает. Прямоугольные рамки обрамляют круг, в центр которого помещена клавиша, выглядят изделия очень стильно и элегантно. Приятный дизайн и многообразие оттенков розеток и выключателей LEGRAND CELIANE украсят любой интерьер, а отличная качественная сборка позволит наслаждаться долгим сроком службы приобретенной продукции.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.786133",
        "modified": "2021-08-30 07:38:20.786133",
        "deleted": false
      },
      {
        "id": "sGv8uutiiTxA-VuoeTL86",
        "rev": 0,
        "options": {"slug": "legrand-galea-life", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Galea Life", "oldId": 120, "images": [], "published": false, "description": "Серия Legrand Galea Life станет отличным приобретением для создания модного, яркого, ультрасовременного интерьера. Многочисленные цвета и материалы Legrand Galea Life дают огромный простор для деятельности - с розетками и выключателями Legrand Galea Life вы можете смело реализовать все свои желания и фантазии в своем интерьере.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.797796",
        "modified": "2021-08-30 07:38:20.797796",
        "deleted": false
      },
      {
        "id": "T8VdZYoo-1RFQat3qVpLE",
        "rev": 0,
        "options": {"slug": "siemens-delta-miro", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Miro", "oldId": 194, "images": [{"alt": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "path": "uploads/series/19/194/1556614267305.jpg"}, {"alt": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "path": "uploads/series/19/194/1556614273355.JPG"}, {"alt": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "path": "uploads/series/19/194/1556614282304.jpg"}, {"alt": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "path": "uploads/series/19/194/1556614290594.jpg"}, {"alt": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "path": "uploads/series/19/194/1556614299133.jpg"}, {"alt": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "path": "uploads/series/19/194/1556614321234.jpg"}], "published": true, "description": "Серия розеток и выключателей SIEMENS DELTA MIRO — это качественное функциональное оборудование по адекватной цене. Рамки DELTA MIRO изготавливаются из дерева, стекла и металла. Разнообразие цветов и материалов позволяет использовать продукцию этой серии в любом интерьере. Плоская поверхность рамок и четкие прямые линии делают SIEMENS DELTA MIRO находкой для дизайна помещений в классическом стиле или в стиле «минимализм».\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.806896",
        "modified": "2021-08-30 07:38:20.806896",
        "deleted": false
      },
      {
        "id": "3RyBSFeAzjfRuJzIBt3gv",
        "rev": 0,
        "options": {"slug": "fede-toscana-firenze", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede Toscana Firenze", "oldId": 69, "images": [{"alt": "FEDE TOSCANA FIRENZE - это роскошные розетки и рамки класса люкс. Премиальные изделия серии оснащены рамками с узорами под старину в цветах «блестящая патина», «блестящее золото», «блестящий хром» и «золото-патина». На выбор покупателю доступны клавиши в оттенках: бежевый, белый, белый декапо, матовая и светлая бронза, графит, красное и светлое золото, никель, чёрный, состаренная медь. У нас Вы можете выбрать и купить розетки и выключатели FEDE дистанционно, воспользовавшись конфигуратором, либо посетив наш шоурум и увидев все розетки и выключатели воочию. В нашем интернет-магазине Розетки Шоп вы можете купить&nbsp;рамки,розетки и выключатели Fede Toscana Firenze по выгодной цене.&nbsp;\n", "path": "uploads/series/6/69/1556383040504.png"}, {"alt": "FEDE TOSCANA FIRENZE - это роскошные розетки и рамки класса люкс. Премиальные изделия серии оснащены рамками с узорами под старину в цветах «блестящая патина», «блестящее золото», «блестящий хром» и «золото-патина». На выбор покупателю доступны клавиши в оттенках: бежевый, белый, белый декапо, матовая и светлая бронза, графит, красное и светлое золото, никель, чёрный, состаренная медь. У нас Вы можете выбрать и купить розетки и выключатели FEDE дистанционно, воспользовавшись конфигуратором, либо посетив наш шоурум и увидев все розетки и выключатели воочию. В нашем интернет-магазине Розетки Шоп вы можете купить&nbsp;рамки,розетки и выключатели Fede Toscana Firenze по выгодной цене.&nbsp;\n", "path": "uploads/series/6/69/1556383047145.png"}, {"alt": "FEDE TOSCANA FIRENZE - это роскошные розетки и рамки класса люкс. Премиальные изделия серии оснащены рамками с узорами под старину в цветах «блестящая патина», «блестящее золото», «блестящий хром» и «золото-патина». На выбор покупателю доступны клавиши в оттенках: бежевый, белый, белый декапо, матовая и светлая бронза, графит, красное и светлое золото, никель, чёрный, состаренная медь. У нас Вы можете выбрать и купить розетки и выключатели FEDE дистанционно, воспользовавшись конфигуратором, либо посетив наш шоурум и увидев все розетки и выключатели воочию. В нашем интернет-магазине Розетки Шоп вы можете купить&nbsp;рамки,розетки и выключатели Fede Toscana Firenze по выгодной цене.&nbsp;\n", "path": "uploads/series/6/69/1556383052840.png"}], "published": true, "description": "FEDE TOSCANA FIRENZE - это роскошные розетки и рамки класса люкс. Премиальные изделия серии оснащены рамками с узорами под старину в цветах «блестящая патина», «блестящее золото», «блестящий хром» и «золото-патина». На выбор покупателю доступны клавиши в оттенках: бежевый, белый, белый декапо, матовая и светлая бронза, графит, красное и светлое золото, никель, чёрный, состаренная медь. У нас Вы можете выбрать и купить розетки и выключатели FEDE дистанционно, воспользовавшись конфигуратором, либо посетив наш шоурум и увидев все розетки и выключатели воочию. В нашем интернет-магазине Розетки Шоп вы можете купить&nbsp;рамки,розетки и выключатели Fede Toscana Firenze по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.817725",
        "modified": "2021-08-30 07:38:20.817725",
        "deleted": false
      },
      {
        "id": "VvJdB6cOgi8XpNMlsQTel",
        "rev": 0,
        "options": {"slug": "gira-event-clear", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA Event Clear", "oldId": 88, "images": [{"alt": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "path": "uploads/series/8/88/1556785810435.png"}, {"alt": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "path": "uploads/series/8/88/1556785815193.png"}, {"alt": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "path": "uploads/series/8/88/1556785819867.png"}, {"alt": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "path": "uploads/series/8/88/1556785824812.png"}, {"alt": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "path": "uploads/series/8/88/1556785829735.png"}, {"alt": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "path": "uploads/series/8/88/1556785834240.png"}], "published": true, "description": "Выразительные яркие розетки и выключатели GIRA EVENT CLEAR пестрят многообразием цветов: песочный, фиолетовый, белый, черный, коричневый. Некоторые рамки EVENT CLEAR имеют цветное основание и прозрачный слой сверху, создающий визуальный объем изделия и сочные переливы. Вставки в цветах «антрацит», «алюминий», «белый глянец» и «белый матовый» создадут в разных комбинациях с рамками спокойную гармоничную композицию или смелый контрастный штрих — по Вашему желанию!\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.831396",
        "modified": "2021-08-30 07:38:20.831396",
        "deleted": false
      },
      {
        "id": "_yEzfq5PrOwZ5JzYtkWTB",
        "rev": 0,
        "options": {"slug": "merten-m-elegance", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten M-Elegance", "oldId": 167, "images": [{"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375062571.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375072932.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375078174.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375083630.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375089033.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375094421.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375099192.png"}, {"alt": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "path": "uploads/series/16/167/1556375103695.png"}], "published": true, "description": "Серия MERTEN M-ELEGANCE удивительно похожа на M-PLAN, но обладает большим разнообразием оттенков рамок. Продукция M-ELEGANCE изготавливается из высококачественных материалов: из металла, стекла и дерева, что позволяет заказчик выбрать вариант именно для своего помещения, учитывая все особенности дизайна. Металлические изделия представлены в цветах «титан», «платина», «серебро» и «хром». Розетки и выключатели MERTEN M-ELEGANCE будут выгодно смотреться в строгом классическом интерьере офиса.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.845669",
        "modified": "2021-08-30 07:38:20.845669",
        "deleted": false
      },
      {
        "id": "I_1l_ABbcBIl5TW9pJiel",
        "rev": 0,
        "options": {"slug": "legrand-seliane-metall-i-kamen", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Сeliane металл и камень", "oldId": 133, "images": [{"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374020169.png"}, {"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374097915.png"}, {"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374104952.png"}, {"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374111231.png"}, {"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374119176.png"}, {"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374128424.png"}, {"alt": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "path": "uploads/series/13/133/1556374137004.png"}], "published": true, "description": "LEGRAND CELIANE в исполнении из металла и камня — это шикарное дополнение к роскошному интерьеру. Премиальная серия с использованием натуральных материалов придется по вкусу любителям ярких шрихов в дизайне помещения. Розетки и выключатели LEGRAND CELINE в металле и камне выпускаются в цветах «техно», «черный никель», «ардезия», «фактурная сталь», «золото» - большой выбор для любой дизайнерской задумки!", "productTypes": []},
        "created": "2021-08-30 07:38:20.857648",
        "modified": "2021-08-30 07:38:20.857648",
        "deleted": false
      },
      {
        "id": "wEIAlezqS6lf1nAVoCrua",
        "rev": 0,
        "options": {"slug": "legrand-celiane-kozha-i-derevo", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane кожа и дерево", "oldId": 117, "images": [{"alt": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "path": "uploads/series/11/117/1556373733372.png"}, {"alt": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "path": "uploads/series/11/117/1556373740353.png"}, {"alt": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "path": "uploads/series/11/117/1556373747014.png"}, {"alt": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "path": "uploads/series/11/117/1556373753086.png"}, {"alt": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "path": "uploads/series/11/117/1556373766444.png"}, {"alt": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "path": "uploads/series/11/117/1556373773026.png"}], "published": true, "description": "Розетки и выключатели LEGRAND CELIANE с рамками из дерева и кожи достойны стать украшением рабочего кабинета в уютном загородном доме. Приятный дизайн и разнообразное количество оттенков помогут покупателю сделать правильный выбор, подчеркивающий богатство интерьера и заполняя его новыми красками и деталями. Натуральные материалы, из которых изготавливаются рамки, прошли проверку качества, соответствуют всем сертификатам и абсолютно безопасны для человека.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.867543",
        "modified": "2021-08-30 07:38:20.867543",
        "deleted": false
      },
      {
        "id": "PdwzVPYJKeV9rH4h9-SVy",
        "rev": 0,
        "options": {"slug": "legrand-celiane-klassika", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Celiane классика", "oldId": 116, "images": [{"alt": "LEGRAND CELIANE в классическом исполнении изготавливается из высококачественного ударопрочного пластика, которому не страшны и отпечатки, ни пыль, ни царапины. Многообразие оттенков рамок — оранжевый, бирюзовый, слоновая кость, белый, песочный, и другие - позволит использовать выключатели и розетки CELIANE в любом интерьере. Безупречный дизайн серии основан на контрасте форм — прямоугольника и круга, притягивая взгляды и украшая помещение.", "path": "uploads/series/11/116/1556373599597.png"}, {"alt": "LEGRAND CELIANE в классическом исполнении изготавливается из высококачественного ударопрочного пластика, которому не страшны и отпечатки, ни пыль, ни царапины. Многообразие оттенков рамок — оранжевый, бирюзовый, слоновая кость, белый, песочный, и другие - позволит использовать выключатели и розетки CELIANE в любом интерьере. Безупречный дизайн серии основан на контрасте форм — прямоугольника и круга, притягивая взгляды и украшая помещение.", "path": "uploads/series/11/116/1556373604557.png"}, {"alt": "LEGRAND CELIANE в классическом исполнении изготавливается из высококачественного ударопрочного пластика, которому не страшны и отпечатки, ни пыль, ни царапины. Многообразие оттенков рамок — оранжевый, бирюзовый, слоновая кость, белый, песочный, и другие - позволит использовать выключатели и розетки CELIANE в любом интерьере. Безупречный дизайн серии основан на контрасте форм — прямоугольника и круга, притягивая взгляды и украшая помещение.", "path": "uploads/series/11/116/1556373609770.png"}, {"alt": "LEGRAND CELIANE в классическом исполнении изготавливается из высококачественного ударопрочного пластика, которому не страшны и отпечатки, ни пыль, ни царапины. Многообразие оттенков рамок — оранжевый, бирюзовый, слоновая кость, белый, песочный, и другие - позволит использовать выключатели и розетки CELIANE в любом интерьере. Безупречный дизайн серии основан на контрасте форм — прямоугольника и круга, притягивая взгляды и украшая помещение.", "path": "uploads/series/11/116/1556373615679.png"}, {"alt": "LEGRAND CELIANE в классическом исполнении изготавливается из высококачественного ударопрочного пластика, которому не страшны и отпечатки, ни пыль, ни царапины. Многообразие оттенков рамок — оранжевый, бирюзовый, слоновая кость, белый, песочный, и другие - позволит использовать выключатели и розетки CELIANE в любом интерьере. Безупречный дизайн серии основан на контрасте форм — прямоугольника и круга, притягивая взгляды и украшая помещение.", "path": "uploads/series/11/116/1556373621218.png"}], "published": true, "description": "LEGRAND CELIANE в классическом исполнении изготавливается из высококачественного ударопрочного пластика, которому не страшны и отпечатки, ни пыль, ни царапины. Многообразие оттенков рамок — оранжевый, бирюзовый, слоновая кость, белый, песочный, и другие - позволит использовать выключатели и розетки CELIANE в любом интерьере. Безупречный дизайн серии основан на контрасте форм — прямоугольника и круга, притягивая взгляды и украшая помещение.", "productTypes": []},
        "created": "2021-08-30 07:38:20.881378",
        "modified": "2021-08-30 07:38:20.881378",
        "deleted": false
      },
      {
        "id": "YJAKYjIZ0wrbUZOD_pRdd",
        "rev": 0,
        "options": {"slug": "fontini-venezia-carre", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia Carre", "oldId": 823, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Carre.", "path": "uploads/series/82/823/1606123178954.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Carre.", "path": "uploads/series/82/823/1606123187341.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Carre.", "path": "uploads/series/82/823/1606123248320.png"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Carre.", "productTypes": []},
        "created": "2021-08-30 07:38:20.893272",
        "modified": "2021-08-30 07:38:20.893272",
        "deleted": false
      },
      {
        "id": "LEMnBuUKhfgH-qMXaFS6W",
        "rev": 0,
        "options": {"slug": "bticino-axolute-ramki-ellips", "brand": "G9QW9gXfruqcKx3ecg9jn", "label": "Bticino Axolute рамки эллипс", "oldId": 49, "images": [{"alt": "Рамки BTICINO Axolute в форме «эллипс» зададут игривое и легкое настроение в дизайне Вашего помещения. Яркие и сочные розетки и выключатели в великолепном исполнении итальянского производителя впишутся в современное жилище человека, ценящего комфорт, долговечность и надежность окружающих его вещей. Рамки цвета голубой и мятной карамели, ореха и клена от BTICINO — это непревзойденный стиль и уют Вашего дома.\n", "path": "uploads/series/4/49/1556610166410.png"}, {"alt": "Рамки BTICINO Axolute в форме «эллипс» зададут игривое и легкое настроение в дизайне Вашего помещения. Яркие и сочные розетки и выключатели в великолепном исполнении итальянского производителя впишутся в современное жилище человека, ценящего комфорт, долговечность и надежность окружающих его вещей. Рамки цвета голубой и мятной карамели, ореха и клена от BTICINO — это непревзойденный стиль и уют Вашего дома.\n", "path": "uploads/series/4/49/1556610174614.png"}, {"alt": "Рамки BTICINO Axolute в форме «эллипс» зададут игривое и легкое настроение в дизайне Вашего помещения. Яркие и сочные розетки и выключатели в великолепном исполнении итальянского производителя впишутся в современное жилище человека, ценящего комфорт, долговечность и надежность окружающих его вещей. Рамки цвета голубой и мятной карамели, ореха и клена от BTICINO — это непревзойденный стиль и уют Вашего дома.\n", "path": "uploads/series/4/49/1556610255783.jpg"}], "published": true, "description": "Рамки BTICINO Axolute в форме «эллипс» зададут игривое и легкое настроение в дизайне Вашего помещения. Яркие и сочные розетки и выключатели в великолепном исполнении итальянского производителя впишутся в современное жилище человека, ценящего комфорт, долговечность и надежность окружающих его вещей. Рамки цвета голубой и мятной карамели, ореха и клена от BTICINO — это непревзойденный стиль и уют Вашего дома.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.903419",
        "modified": "2021-08-30 07:38:20.903419",
        "deleted": false
      },
      {
        "id": "yZUfDDwxeQvfgB4yRDrqV",
        "rev": 0,
        "options": {"slug": "gira-standard-55", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA STANDARD 55", "oldId": 92, "images": [{"alt": "GIRA STANDARD 55 — это сама нежность. Розетки и выключатели STANDARD 55 выполнены в белом глянцевом, белом матовом и кремовом цветах. Лаконичный дизайн изделий подойдет для спальни, ванной комнаты, детской или гостиной. За внешней простотой продукции этой серии скрывается удивительная живучесть и прочность - у сколов и царапин нет шансов против стойкого термопласта рамок GIRA.\n", "path": "uploads/series/9/92/1556369223072.png"}, {"alt": "GIRA STANDARD 55 — это сама нежность. Розетки и выключатели STANDARD 55 выполнены в белом глянцевом, белом матовом и кремовом цветах. Лаконичный дизайн изделий подойдет для спальни, ванной комнаты, детской или гостиной. За внешней простотой продукции этой серии скрывается удивительная живучесть и прочность - у сколов и царапин нет шансов против стойкого термопласта рамок GIRA.\n", "path": "uploads/series/9/92/1556369230327.png"}], "published": true, "description": "GIRA STANDARD 55 — это сама нежность. Розетки и выключатели STANDARD 55 выполнены в белом глянцевом, белом матовом и кремовом цветах. Лаконичный дизайн изделий подойдет для спальни, ванной комнаты, детской или гостиной. За внешней простотой продукции этой серии скрывается удивительная живучесть и прочность - у сколов и царапин нет шансов против стойкого термопласта рамок GIRA.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.914425",
        "modified": "2021-08-30 07:38:20.914425",
        "deleted": false
      },
      {
        "id": "XVBttLYuUR_mcjbuR4gB6",
        "rev": 0,
        "options": {"slug": "merten-artec", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Artec", "oldId": 157, "images": [{"alt": "У нас Вы можете купить розетки и выключатели MERTEN ARTEС. Отличное сочетание цены и качества делают продукцию этой серии популярной и востребованной. Цвета рамок серии — белый, бежевый, алюминий и сталь. Разнообразие оттенков вкупе с запоминающимся дизайном внесут изюминку в интерьер и обогатят его. Розетки и выключатели MERTEN ARTEС изготовлены из высококачественного термопласта и нержавеющей стали, а значит, будут надежными слугами на благо Вашего комфорта долгие годы.", "path": "uploads/series/15/157/1556374481135.png"}, {"alt": "У нас Вы можете купить розетки и выключатели MERTEN ARTEС. Отличное сочетание цены и качества делают продукцию этой серии популярной и востребованной. Цвета рамок серии — белый, бежевый, алюминий и сталь. Разнообразие оттенков вкупе с запоминающимся дизайном внесут изюминку в интерьер и обогатят его. Розетки и выключатели MERTEN ARTEС изготовлены из высококачественного термопласта и нержавеющей стали, а значит, будут надежными слугами на благо Вашего комфорта долгие годы.", "path": "uploads/series/15/157/1556374485976.png"}, {"alt": "У нас Вы можете купить розетки и выключатели MERTEN ARTEС. Отличное сочетание цены и качества делают продукцию этой серии популярной и востребованной. Цвета рамок серии — белый, бежевый, алюминий и сталь. Разнообразие оттенков вкупе с запоминающимся дизайном внесут изюминку в интерьер и обогатят его. Розетки и выключатели MERTEN ARTEС изготовлены из высококачественного термопласта и нержавеющей стали, а значит, будут надежными слугами на благо Вашего комфорта долгие годы.", "path": "uploads/series/15/157/1556374491117.png"}, {"alt": "У нас Вы можете купить розетки и выключатели MERTEN ARTEС. Отличное сочетание цены и качества делают продукцию этой серии популярной и востребованной. Цвета рамок серии — белый, бежевый, алюминий и сталь. Разнообразие оттенков вкупе с запоминающимся дизайном внесут изюминку в интерьер и обогатят его. Розетки и выключатели MERTEN ARTEС изготовлены из высококачественного термопласта и нержавеющей стали, а значит, будут надежными слугами на благо Вашего комфорта долгие годы.", "path": "uploads/series/15/157/1556374497785.png"}], "published": true, "description": "У нас Вы можете купить розетки и выключатели MERTEN ARTEС. Отличное сочетание цены и качества делают продукцию этой серии популярной и востребованной. Цвета рамок серии — белый, бежевый, алюминий и сталь. Разнообразие оттенков вкупе с запоминающимся дизайном внесут изюминку в интерьер и обогатят его. Розетки и выключатели MERTEN ARTEС изготовлены из высококачественного термопласта и нержавеющей стали, а значит, будут надежными слугами на благо Вашего комфорта долгие годы.", "productTypes": []},
        "created": "2021-08-30 07:38:20.928266",
        "modified": "2021-08-30 07:38:20.928266",
        "deleted": false
      },
      {
        "id": "bc1KgTWLrMkyZ-dmvQq47",
        "rev": 0,
        "options": {"slug": "berker-q1", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.1", "oldId": 792, "images": [{"alt": "BERKER Q.1 - это непревзойденное слияние качества, цены и отличного внешнего вида. Неубиваемые материалы и лаконичный дизайн делают розетки и выключатели BERKER Q.1 желанным дополнением к строгому и стильному офисному интерьеру. Особенной популярностью у наших покупателей пользуются расцветки «антрацит» и «полярная белизна». Для Москвы у нас предусмотрена курьерская доставка, а также действует доставка рамок и выключателей по России.", "path": "uploads/series/79/792/1556366460119.jpg"}, {"alt": "BERKER Q.1 - это непревзойденное слияние качества, цены и отличного внешнего вида. Неубиваемые материалы и лаконичный дизайн делают розетки и выключатели BERKER Q.1 желанным дополнением к строгому и стильному офисному интерьеру. Особенной популярностью у наших покупателей пользуются расцветки «антрацит» и «полярная белизна». Для Москвы у нас предусмотрена курьерская доставка, а также действует доставка рамок и выключателей по России.", "path": "uploads/series/79/792/1556366595771.jpg"}], "published": true, "description": "BERKER Q.1 - это непревзойденное слияние качества, цены и отличного внешнего вида. Неубиваемые материалы и лаконичный дизайн делают розетки и выключатели BERKER Q.1 желанным дополнением к строгому и стильному офисному интерьеру. Особенной популярностью у наших покупателей пользуются расцветки «антрацит» и «полярная белизна». Для Москвы у нас предусмотрена курьерская доставка, а также действует доставка рамок и выключателей по России.", "productTypes": []},
        "created": "2021-08-30 07:38:20.939606",
        "modified": "2021-08-30 07:38:20.939606",
        "deleted": false
      },
      {
        "id": "S3GFuQp91jDJSh9TQ5XyK",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-top", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Unica top", "oldId": 183, "images": [{"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA TOP выглядят дорого и изысканно. Рамки серии UNICA TOP изготавливаются из дерева и металла и доступны покупателю в огромном количестве цветовых вариаций. От презентабельного внешнего вида розеток и выключателей не отстаёт и качество - оно, как всегда, на высоте. Отличный выбор для тех, кто ценит красоту и функционал.", "path": "uploads/series/18/183/1556377386242.png"}, {"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA TOP выглядят дорого и изысканно. Рамки серии UNICA TOP изготавливаются из дерева и металла и доступны покупателю в огромном количестве цветовых вариаций. От презентабельного внешнего вида розеток и выключателей не отстаёт и качество - оно, как всегда, на высоте. Отличный выбор для тех, кто ценит красоту и функционал.", "path": "uploads/series/18/183/1556377391432.png"}, {"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA TOP выглядят дорого и изысканно. Рамки серии UNICA TOP изготавливаются из дерева и металла и доступны покупателю в огромном количестве цветовых вариаций. От презентабельного внешнего вида розеток и выключателей не отстаёт и качество - оно, как всегда, на высоте. Отличный выбор для тех, кто ценит красоту и функционал.", "path": "uploads/series/18/183/1556377397392.png"}, {"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA TOP выглядят дорого и изысканно. Рамки серии UNICA TOP изготавливаются из дерева и металла и доступны покупателю в огромном количестве цветовых вариаций. От презентабельного внешнего вида розеток и выключателей не отстаёт и качество - оно, как всегда, на высоте. Отличный выбор для тех, кто ценит красоту и функционал.", "path": "uploads/series/18/183/1556377402910.png"}, {"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA TOP выглядят дорого и изысканно. Рамки серии UNICA TOP изготавливаются из дерева и металла и доступны покупателю в огромном количестве цветовых вариаций. От презентабельного внешнего вида розеток и выключателей не отстаёт и качество - оно, как всегда, на высоте. Отличный выбор для тех, кто ценит красоту и функционал.", "path": "uploads/series/18/183/1556377409788.png"}], "published": true, "description": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA TOP выглядят дорого и изысканно. Рамки серии UNICA TOP изготавливаются из дерева и металла и доступны покупателю в огромном количестве цветовых вариаций. От презентабельного внешнего вида розеток и выключателей не отстаёт и качество - оно, как всегда, на высоте. Отличный выбор для тех, кто ценит красоту и функционал.", "productTypes": []},
        "created": "2021-08-30 07:38:20.949601",
        "modified": "2021-08-30 07:38:20.949601",
        "deleted": false
      },
      {
        "id": "pnZ_dDMPGANUX68AqzR5f",
        "rev": 0,
        "options": {"slug": "gira-classix-bronza", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA ClassiX бронза", "oldId": 83, "images": [], "published": false, "description": "Розетки, накладки и клавиши серии GIRA ClassiX&nbsp;бронзового цвета покупатели оценят за внешнюю привлекательность и высокое качество.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.960280",
        "modified": "2021-08-30 07:38:20.960280",
        "deleted": false
      },
      {
        "id": "E2M0izcyhg3bvUpMTLRol",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-standard", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX Standard", "oldId": 693, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:20.970929",
        "modified": "2021-08-30 07:38:20.970929",
        "deleted": false
      },
      {
        "id": "cos0V5YDzrzLPhvyAOSKG",
        "rev": 0,
        "options": {"slug": "siemens-delta-line", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Siemens Delta Line", "oldId": 189, "images": [{"alt": "SIEMENS DELTA LINE — это совершенная конструкция, дорогой сдержанный дизайн, прямые линии с небольшой сглаженностью углов. Легко представить выключатели и розетки этой серии в гармонии с интерьером кухни или спальни. Нежные цвета рамок DELTA LINE – бежевый, антрацит, алюминий - в сочетании с клавишами создают легкую и воздушную композицию. Отличное качество пластика и устойчивость материала к воде, пыли и царапинам гарантируют долгую и продуктивную работу изделий.\n", "path": "uploads/series/18/189/1556613734457.jpg"}, {"alt": "SIEMENS DELTA LINE — это совершенная конструкция, дорогой сдержанный дизайн, прямые линии с небольшой сглаженностью углов. Легко представить выключатели и розетки этой серии в гармонии с интерьером кухни или спальни. Нежные цвета рамок DELTA LINE – бежевый, антрацит, алюминий - в сочетании с клавишами создают легкую и воздушную композицию. Отличное качество пластика и устойчивость материала к воде, пыли и царапинам гарантируют долгую и продуктивную работу изделий.\n", "path": "uploads/series/18/189/1556613742725.jpg"}, {"alt": "SIEMENS DELTA LINE — это совершенная конструкция, дорогой сдержанный дизайн, прямые линии с небольшой сглаженностью углов. Легко представить выключатели и розетки этой серии в гармонии с интерьером кухни или спальни. Нежные цвета рамок DELTA LINE – бежевый, антрацит, алюминий - в сочетании с клавишами создают легкую и воздушную композицию. Отличное качество пластика и устойчивость материала к воде, пыли и царапинам гарантируют долгую и продуктивную работу изделий.\n", "path": "uploads/series/18/189/1556614034738.jpg"}], "published": true, "description": "SIEMENS DELTA LINE — это совершенная конструкция, дорогой сдержанный дизайн, прямые линии с небольшой сглаженностью углов. Легко представить выключатели и розетки этой серии в гармонии с интерьером кухни или спальни. Нежные цвета рамок DELTA LINE – бежевый, антрацит, алюминий - в сочетании с клавишами создают легкую и воздушную композицию. Отличное качество пластика и устойчивость материала к воде, пыли и царапинам гарантируют долгую и продуктивную работу изделий.\n", "productTypes": []},
        "created": "2021-08-30 07:38:20.982706",
        "modified": "2021-08-30 07:38:20.982706",
        "deleted": false
      },
      {
        "id": "jqBOsY7-8vOwtM8U3aFcY",
        "rev": 0,
        "options": {"slug": "merten-m-plan", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten M-plan", "oldId": 788, "images": [{"alt": "Лаконичный дизайн без наворотов и отличное качество за разумные деньги — это секрет успеха серии MERTEN M-PLAN. Плоская прямая форма рамок выглядит просто и со вкусом, элегантно подчеркивая розетки и выключатели. Производитель предлагает рамки до пяти постов в цветах «беж», «белый», «антрацит» и «алюминий». Изделия MERTEN M-PLAN станут идеальным приобретением для любителей классического сдержанного стиля.", "path": "uploads/series/78/788/1556374902838.png"}, {"alt": "Лаконичный дизайн без наворотов и отличное качество за разумные деньги — это секрет успеха серии MERTEN M-PLAN. Плоская прямая форма рамок выглядит просто и со вкусом, элегантно подчеркивая розетки и выключатели. Производитель предлагает рамки до пяти постов в цветах «беж», «белый», «антрацит» и «алюминий». Изделия MERTEN M-PLAN станут идеальным приобретением для любителей классического сдержанного стиля.", "path": "uploads/series/78/788/1556374907691.png"}, {"alt": "Лаконичный дизайн без наворотов и отличное качество за разумные деньги — это секрет успеха серии MERTEN M-PLAN. Плоская прямая форма рамок выглядит просто и со вкусом, элегантно подчеркивая розетки и выключатели. Производитель предлагает рамки до пяти постов в цветах «беж», «белый», «антрацит» и «алюминий». Изделия MERTEN M-PLAN станут идеальным приобретением для любителей классического сдержанного стиля.", "path": "uploads/series/78/788/1556374912290.png"}, {"alt": "Лаконичный дизайн без наворотов и отличное качество за разумные деньги — это секрет успеха серии MERTEN M-PLAN. Плоская прямая форма рамок выглядит просто и со вкусом, элегантно подчеркивая розетки и выключатели. Производитель предлагает рамки до пяти постов в цветах «беж», «белый», «антрацит» и «алюминий». Изделия MERTEN M-PLAN станут идеальным приобретением для любителей классического сдержанного стиля.", "path": "uploads/series/78/788/1556374917442.png"}], "published": true, "description": "Лаконичный дизайн без наворотов и отличное качество за разумные деньги — это секрет успеха серии MERTEN M-PLAN. Плоская прямая форма рамок выглядит просто и со вкусом, элегантно подчеркивая розетки и выключатели. Производитель предлагает рамки до пяти постов в цветах «беж», «белый», «антрацит» и «алюминий». Изделия MERTEN M-PLAN станут идеальным приобретением для любителей классического сдержанного стиля.", "productTypes": []},
        "created": "2021-08-30 07:38:20.994189",
        "modified": "2021-08-30 07:38:20.994189",
        "deleted": false
      },
      {
        "id": "8RDwJWE0uBibM8swPkvRp",
        "rev": 0,
        "options": {"slug": "gira-classix", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA ClassiX", "oldId": 216, "images": [{"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785025041.png"}, {"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785036692.png"}, {"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785042357.png"}, {"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785047363.png"}, {"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785109684.png"}, {"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785114845.png"}, {"alt": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "path": "uploads/series/21/216/1556785188564.png"}], "published": true, "description": "При взгляде на изделия GIRA ClassiX приходит мысль о том, что компания черпала вдохновение в стиле Барокко при создании серии, получившейся такой дорогой и изысканной. Богатый внешний вид продукции GIRA ClassiX притягивает взгляд и восхищает! Роскошные рамки серии выполнены из благородных материалов - латунь и бронза, они засверкают мягким блеском в обрамлении света в интерьерах в классическом стиле. Наравне с внешними характеристиками можно отметить высококлассную сборку, функциональность и простоту монтажа выключателей и розеток GIRA ClassiX.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.004470",
        "modified": "2021-08-30 07:38:21.004470",
        "deleted": false
      },
      {
        "id": "UeA74exSxjl5jLm424i3i",
        "rev": 0,
        "options": {"slug": "jung-ls-990-metall", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 металл", "oldId": 787, "images": [{"alt": "JUNG LS 990 с рамками из металла - это сама элегантность. Для почитателей строгих форм, четких линий и безупречного дизайна розетки и выключатели серии LS 990 станут отличным выгодным приобретением. Многопостовые рамки изготавливаются из металла в цветах алюминий, нержавеющая сталь, классическая и античная латунь, золото, хром.", "path": "uploads/series/78/787/1556370923875.png"}, {"alt": "JUNG LS 990 с рамками из металла - это сама элегантность. Для почитателей строгих форм, четких линий и безупречного дизайна розетки и выключатели серии LS 990 станут отличным выгодным приобретением. Многопостовые рамки изготавливаются из металла в цветах алюминий, нержавеющая сталь, классическая и античная латунь, золото, хром.", "path": "uploads/series/78/787/1556370931717.png"}, {"alt": "JUNG LS 990 с рамками из металла - это сама элегантность. Для почитателей строгих форм, четких линий и безупречного дизайна розетки и выключатели серии LS 990 станут отличным выгодным приобретением. Многопостовые рамки изготавливаются из металла в цветах алюминий, нержавеющая сталь, классическая и античная латунь, золото, хром.", "path": "uploads/series/78/787/1556370942145.png"}, {"alt": "JUNG LS 990 с рамками из металла - это сама элегантность. Для почитателей строгих форм, четких линий и безупречного дизайна розетки и выключатели серии LS 990 станут отличным выгодным приобретением. Многопостовые рамки изготавливаются из металла в цветах алюминий, нержавеющая сталь, классическая и античная латунь, золото, хром.", "path": "uploads/series/78/787/1556370948441.png"}], "published": true, "description": "JUNG LS 990 с рамками из металла - это сама элегантность. Для почитателей строгих форм, четких линий и безупречного дизайна розетки и выключатели серии LS 990 станут отличным выгодным приобретением. Многопостовые рамки изготавливаются из металла в цветах алюминий, нержавеющая сталь, классическая и античная латунь, золото, хром.", "productTypes": []},
        "created": "2021-08-30 07:38:21.016811",
        "modified": "2021-08-30 07:38:21.016811",
        "deleted": false
      },
      {
        "id": "P0AjNk-i0yKNjeEvUulin",
        "rev": 0,
        "options": {"slug": "merten-m-pure", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten M-Pure", "oldId": 457, "images": [{"alt": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "path": "uploads/series/45/457/1556375207441.png"}, {"alt": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "path": "uploads/series/45/457/1556375213526.png"}, {"alt": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "path": "uploads/series/45/457/1556375233059.png"}, {"alt": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "path": "uploads/series/45/457/1556375241052.png"}, {"alt": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "path": "uploads/series/45/457/1556375268145.png"}, {"alt": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "path": "uploads/series/45/457/1556375283973.png"}], "published": true, "description": "MERTEN M-PURE – это отличное решение для стильного современного помещения. Строгие формы, четкие прямые линии, модная цветовая палитра, безопасные материалы, отличное качество — все это про розетки и выключатели M-PURE. Покупатель может выбрать светлые оттенки — кремовый, белый, или остановиться на темный тонах — антрацит или алюминий. Роскошный дизайн выключателей и розеток MERTEN M-PURE впишется в любой интерьер.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.028178",
        "modified": "2021-08-30 07:38:21.028178",
        "deleted": false
      },
      {
        "id": "k-H0XRT6SquLXA5I_Tklb",
        "rev": 0,
        "options": {"slug": "fontini-venezia-colonial", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia Colonial", "oldId": 829, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Colonial.", "path": "uploads/series/82/829/1606124734686.png"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Colonial.", "path": "uploads/series/82/829/1606124739157.jpg"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Colonial.", "productTypes": []},
        "created": "2021-08-30 07:38:21.040049",
        "modified": "2021-08-30 07:38:21.040049",
        "deleted": false
      },
      {
        "id": "KJQmaGYl-r1otlle5LKCr",
        "rev": 0,
        "options": {"slug": "legrand-etika", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Etika", "oldId": 784, "images": [{"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786069384.png"}, {"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786074870.png"}, {"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786079673.png"}, {"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786084700.png"}, {"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786089672.png"}, {"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786093886.png"}, {"alt": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "path": "uploads/series/78/784/1556786098386.png"}], "published": true, "description": "LEGRAND ETIKA — серия с огромным количеством сочных оттенков на любой вкус. Покупатель может выбрать сливовый цвет или остановиться на цветах какао, зеленый папоротник, слоновая кость. Если же Вы ищете классическое решение, то присмотритесь к рамкам белого цвета. Рамки с закругленным углом изготовлены из прочных материалов, защищены от пыли и царапин. Розетки и выключатели LEGRAND ETIKA можно купить как для домашней установки, так и для офиса, магазина, шоурума, салоны красоты — качественные изделия будут долго служить и радовать своих пользователей даже при активной ежедневной эксплуатации.", "productTypes": []},
        "created": "2021-08-30 07:38:21.050273",
        "modified": "2021-08-30 07:38:21.050273",
        "deleted": false
      },
      {
        "id": "rNLyPbxUfbu9TfMKA7B1C",
        "rev": 0,
        "options": {"slug": "prozhektory-trekovye-galogennye-lival", "brand": "aO9tS-sR-2rw59GZsHVOc", "label": "Прожекторы трековые галогенные Lival", "oldId": 312, "images": [], "published": false, "description": "Трековые галогенные прожекторы Lival&nbsp;применяются в освещении торговых центров, выставок, складов, а также бытовых объектов. Поворотный механизм делает использование прожекторов удобным и расширяет возможности освещения. &nbsp;Трековые галогенные прожекторы Lival&nbsp;выпускаются в черном, белом и сером цветах.\n&nbsp;Наш интернет-магазин \"VIProzetki.ru\" предлагает купить&nbsp;&nbsp;трековые галогенные светильники Lival на шинопровод&nbsp;по практичной цене. Также мы предоставляем гарантию 1 год и услугу доставки.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.063502",
        "modified": "2021-08-30 07:38:21.063502",
        "deleted": false
      },
      {
        "id": "wVA9IOeF6UUNT1ww-NTLd",
        "rev": 0,
        "options": {"slug": "legrand-valena", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Valena", "oldId": 128, "images": [{"alt": "Розетки и выключатели LEGRAND VALENA сочетают в себе отличное качество и классический дизайн. Рамки LEGRAND VALENA в цветах белый и слоновая кость пользуются невероятной популярностью у покупателей. Несмотря на внешнюю простоту, выдержанный стиль продукции этой серии вкупе с отличными техническими характеристиками станет достойным решением по хорошей цене как для офиса, так и для домашнего интерьера.\n", "path": "uploads/series/12/128/1556371126399.png"}, {"alt": "Розетки и выключатели LEGRAND VALENA сочетают в себе отличное качество и классический дизайн. Рамки LEGRAND VALENA в цветах белый и слоновая кость пользуются невероятной популярностью у покупателей. Несмотря на внешнюю простоту, выдержанный стиль продукции этой серии вкупе с отличными техническими характеристиками станет достойным решением по хорошей цене как для офиса, так и для домашнего интерьера.\n", "path": "uploads/series/12/128/1556371132063.png"}], "published": true, "description": "Розетки и выключатели LEGRAND VALENA сочетают в себе отличное качество и классический дизайн. Рамки LEGRAND VALENA в цветах белый и слоновая кость пользуются невероятной популярностью у покупателей. Несмотря на внешнюю простоту, выдержанный стиль продукции этой серии вкупе с отличными техническими характеристиками станет достойным решением по хорошей цене как для офиса, так и для домашнего интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.081517",
        "modified": "2021-08-30 07:38:21.081517",
        "deleted": false
      },
      {
        "id": "Pz4uee0rQwx2OHKV4nLL1",
        "rev": 0,
        "options": {"slug": "svetilniki-esylux", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Светильники ESYLUX", "oldId": 696, "images": [], "published": false, "description": "Светильники ESYLUX&nbsp;купить со склада в Москве от официального диллера. на все&nbsp;Светильники ESYLUX предоставляется оригинальная гарантия производителя.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.093771",
        "modified": "2021-08-30 07:38:21.093771",
        "deleted": false
      },
      {
        "id": "bUVJf3m0gS5OsAtdroQ9_",
        "rev": 0,
        "options": {"slug": "svetilniki-gauss", "brand": "ZHbiai5iv2dsock-gQ1Aq", "label": "Светильники Gauss", "oldId": 522, "images": [], "published": false, "description": "В нашем интернет магазине Вы можете купить светильники Gauss по отличной цене и с доставкой в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.103786",
        "modified": "2021-08-30 07:38:21.103786",
        "deleted": false
      },
      {
        "id": "_KGUuT0vOOAkodcZDfTaJ",
        "rev": 0,
        "options": {"slug": "svetodiodnye-prozhektory-trekovye-lival", "brand": "aO9tS-sR-2rw59GZsHVOc", "label": "Светодиодные прожекторы трековые Lival", "oldId": 330, "images": [], "published": false, "description": "Трековые светодиодные прожекторы Lival&nbsp;подходят для бытового и небытового использования. Прожекторы Lival&nbsp;часто применяются в освещении выставок, магазинов и технических объектов. Благодаря наличию в&nbsp;трековых светодиодных прожекторах Lival&nbsp; поворотного механизма освещение можно сделать поистине уникальным. Прожекторы выпускаются в черном, белом и сером цветах.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает выгодные условия для покупки&nbsp;&nbsp;светодиодных прожекторов Lival -&nbsp;приятные цены, доставка и гарантия 1 год.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.114579",
        "modified": "2021-08-30 07:38:21.114579",
        "deleted": false
      },
      {
        "id": "ZvhSs4bmZfubEWQ4BJ6gD",
        "rev": 0,
        "options": {"slug": "sumerechnye-vyklyuchateli-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Сумеречные выключатели - Steinel", "oldId": 338, "images": [], "published": false, "description": "Приобретая сумеречный выключатель, Вы избавляете себя от лишних денежных трат на электроэнергию — свет будет включаться только при необходимости. В нашем интернет-магазине «VIP розетки» вы можете заказать сумеречные выключатели Steinel или купить их в нашем офисе.\nСумеречные выключатели Steinel работают автоматизировано, то есть свет включается и выключается в соответствии с уровнем освещенности. Покупка такого устройства как сумеречные выключатели фирмы Steinel поможет Вам контролировать освещение при наступлении темноты. &nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.126151",
        "modified": "2021-08-30 07:38:21.126151",
        "deleted": false
      },
      {
        "id": "R4k8N0fHQGWwhwwulrgZS",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-new-rozetki-i-vyklyuchateli", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric UNICA NEW розетки и выключатели", "oldId": 757, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:21.136198",
        "modified": "2021-08-30 07:38:21.136198",
        "deleted": false
      },
      {
        "id": "8g4PiKUR4sj9qbLqBRSWz",
        "rev": 0,
        "options": {"slug": "komplekty-dlya-obogreva-trub-ebeco-frostvakt", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Комплекты для обогрева труб Ebeco FROSTVAKT", "oldId": 294, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить комплекты саморегулирующегося кабеля для обогрева труб и трубопроводов Ebeco FROSTVAKT по выгодной цене с доставкой.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.145537",
        "modified": "2021-08-30 07:38:21.145537",
        "deleted": false
      },
      {
        "id": "k9jgMpmdrOrigyM9SnBYF",
        "rev": 0,
        "options": {"slug": "ramki-lux-international-chernyy-alyuminiy", "brand": null, "label": "Рамки Lux International черный алюминий", "oldId": 626, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:21.153373",
        "modified": "2021-08-30 07:38:21.153373",
        "deleted": false
      },
      {
        "id": "GBqN7ahvRtSEYO4QDSdA_",
        "rev": 0,
        "options": {"slug": "simon-82-klavishi-i-nakladki-grafit", "brand": "r4z76noRiFcr5eW8uFAr2", "label": "Simon 82 клавиши и накладки графит", "oldId": 599, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:21.159994",
        "modified": "2021-08-30 07:38:21.159994",
        "deleted": false
      },
      {
        "id": "4X5TFIlBtSPQtOqp8ExYy",
        "rev": 0,
        "options": {"slug": "delta-natur-dub-svetlyy", "brand": "VnLwm_p8Q8oRwgQ5NLlbL", "label": "Delta Natur дуб светлый", "oldId": 57, "images": [], "published": false, "description": "Розетки, выключатели, рамки и накладки серии Siemens DELTA natur&nbsp;цвета&nbsp;\"дуб светлый\"&nbsp;напомнят Вам о природе в городском интерьере.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.170210",
        "modified": "2021-08-30 07:38:21.170210",
        "deleted": false
      },
      {
        "id": "P8klR9A7zNoezMmT_vDFt",
        "rev": 0,
        "options": {"slug": "jung-cd-500", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG CD-500", "oldId": 50, "images": [], "published": false, "description": "Розетки, выключатели, накладки, рамки и клавиши Jung CD 500 - это составляющие шикарной серии Jung. Накладки Jung CD 500 представлены в двух вариантах - накладки Jung CD 500 с покрытием \"бронза\" и накладки Jung CD 500 с покрытием \"платина\". Цвета накладок Jung CD 500 - белый, слоновая кость, серый, светло-серый, черный и коричневый.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.180063",
        "modified": "2021-08-30 07:38:21.180063",
        "deleted": false
      },
      {
        "id": "2siYNlfNRHJMujp7W_ySa",
        "rev": 0,
        "options": {"slug": "berker-k5", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker K.5", "oldId": 42, "images": [], "published": false, "description": "Розетки, клавиши и накладки Berker K.5 придутся Вам по вкусу. Материал Berker K.5 - нержавеющая сталь.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.190151",
        "modified": "2021-08-30 07:38:21.190151",
        "deleted": false
      },
      {
        "id": "7qGfPK9EOPvB8HXpczrmf",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-elevator", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Elevator", "oldId": 355, "images": [], "published": false, "description": "Выдвижной розеточный модуль BACHMANN ELEVATOR подходит для установки на рабочем столе и не занимает много места - нужно лишь отверстие диаметром 79мм. Для того, чтобы открыть или закрыть модуль, &nbsp;достаточно нажатия пальцем. Модуль&nbsp;ELEVATOR выпускается в 2-х конфигурациях: с двумя розетками и двумя информационными разъемами или с тремя розетками.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Elevator_slide1.jpg\" style=\"height:330px; width:710px\" />http://bachmann.ru/netcat_files/multifile/2278/Elevator_slide2.jpg\" style=\"height:330px; width:710px\" />\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.200389",
        "modified": "2021-08-30 07:38:21.200389",
        "deleted": false
      },
      {
        "id": "V2xpn376EW_--u2JDkuBe",
        "rev": 0,
        "options": {"slug": "gewiss-geo-international", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "GEWISS GEO INTERNATIONAL", "oldId": 642, "images": [{"alt": "GEWISS GEO INTERNATIONAL - это изюминка для стильного современного помещения. Рамки GEO INTERNATIONAL изготовлены на один, два и три поста в классических тонах - металлик, кремовый, чёрный, антрацит. Производитель предлагает как горизонтальные, так и вертикальные рамки, что даёт полет для исполнения любых дизайнерских фантазий. Установочное электрооборудование GEWISS – розетки и выключатели - производится из высококачественного технополимера, а значит, прослужит верой и правдой своему покупателю.", "path": "uploads/series/64/642/1556610538020.jpg"}, {"alt": "GEWISS GEO INTERNATIONAL - это изюминка для стильного современного помещения. Рамки GEO INTERNATIONAL изготовлены на один, два и три поста в классических тонах - металлик, кремовый, чёрный, антрацит. Производитель предлагает как горизонтальные, так и вертикальные рамки, что даёт полет для исполнения любых дизайнерских фантазий. Установочное электрооборудование GEWISS – розетки и выключатели - производится из высококачественного технополимера, а значит, прослужит верой и правдой своему покупателю.", "path": "uploads/series/64/642/1556610544304.jpg"}, {"alt": "GEWISS GEO INTERNATIONAL - это изюминка для стильного современного помещения. Рамки GEO INTERNATIONAL изготовлены на один, два и три поста в классических тонах - металлик, кремовый, чёрный, антрацит. Производитель предлагает как горизонтальные, так и вертикальные рамки, что даёт полет для исполнения любых дизайнерских фантазий. Установочное электрооборудование GEWISS – розетки и выключатели - производится из высококачественного технополимера, а значит, прослужит верой и правдой своему покупателю.", "path": "uploads/series/64/642/1556610550372.jpg"}], "published": true, "description": "GEWISS GEO INTERNATIONAL - это изюминка для стильного современного помещения. Рамки GEO INTERNATIONAL изготовлены на один, два и три поста в классических тонах - металлик, кремовый, чёрный, антрацит. Производитель предлагает как горизонтальные, так и вертикальные рамки, что даёт полет для исполнения любых дизайнерских фантазий. Установочное электрооборудование GEWISS – розетки и выключатели - производится из высококачественного технополимера, а значит, прослужит верой и правдой своему покупателю.", "productTypes": []},
        "created": "2021-08-30 07:38:21.212234",
        "modified": "2021-08-30 07:38:21.212234",
        "deleted": false
      },
      {
        "id": "eDh8Nqv-O8cIUel8p_Pa6",
        "rev": 0,
        "options": {"slug": "trekovye-prozhektory-metallogalogen-lival", "brand": "aO9tS-sR-2rw59GZsHVOc", "label": "Трековые прожекторы  металлогалоген Lival", "oldId": 350, "images": [], "published": false, "description": "&nbsp;Металлогалогенные светильники на шинопровод Lival&nbsp;часто используются в магазинах, на выставках и скалдах. Производятся в белом, сером и черном цвете. &nbsp;Наличие поворотного механизма позволяет создавать неограниченные варианты освещения.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете приобрести прожекторы&nbsp;Lival&nbsp;по отличной цене. Предоставляется гарантия 1 год и доставка.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.222876",
        "modified": "2021-08-30 07:38:21.222876",
        "deleted": false
      },
      {
        "id": "VIDcKslI4JefMBDJEnGHd",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-berker", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Датчики движения Berker", "oldId": 278, "images": [], "published": false, "description": "Датчики движения Berker подходят для внутренней и наружной установки помогут создать комфортные условия в Вашем доме.&nbsp;Датчики движения Berker и датчики присутствия Berker дают возможность экономить на счетах за электроэнергию и предупредят о незваных гостях.\nВ нашем интернет-магазине &quot;VIProzetki.ru&quot; Вы можете приобрести датчики движения Berker и датчики присутствия Berker по выгодной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.234325",
        "modified": "2021-08-30 07:38:21.234325",
        "deleted": false
      },
      {
        "id": "MyfRAMDumNvMXdPK3oLll",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-twist", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Twist", "oldId": 360, "images": [], "published": false, "description": "Электрические модули&nbsp;Bachmann&nbsp;Twist &nbsp;с розетками &nbsp;подходят для дома и офиса. Эргономичный дизайн позволяет устанавливать модуль столешницы кухонных или рабочих столов. Кабель питания подключается напрямую к модулю Bachmann&nbsp;Twist, который можно укомплектовать крышкой цвета нержавеющей стали или матового хрома. Поворот крышки закрывает разъемы и защищает их от загрязнений.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Twist_slide1.jpg\" style=\"height:330px; width:710px\" />http://bachmann.ru/netcat_files/multifile/2278/Twist_slide3.jpg\" style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.245791",
        "modified": "2021-08-30 07:38:21.245791",
        "deleted": false
      },
      {
        "id": "HDNx-JYprd9Hc5lfdzv1h",
        "rev": 0,
        "options": {"slug": "gira-classix-art", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA ClassiX Art", "oldId": 217, "images": [{"alt": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "path": "uploads/series/21/217/1556369051805.png"}, {"alt": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "path": "uploads/series/21/217/1556369059351.png"}, {"alt": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "path": "uploads/series/21/217/1556369072017.png"}, {"alt": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "path": "uploads/series/21/217/1556369080634.png"}, {"alt": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "path": "uploads/series/21/217/1556785321061.png"}, {"alt": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "path": "uploads/series/21/217/1556785357124.png"}], "published": true, "description": "Серия GIRA ClassiX Art – это дизайн класса люкс для роскошных вилл, отелей, особняков. Если Вы искатель шикарных деталей для квартиры в классическом стиле, в стиле модерн или барокко — розетки и выключатели ClassiX Art Ваш вариант! Изделия из бронзы и латуни в кремовом цвете, цветах бронза и антрацит в интерьере расскажут о Вас как о человеке, ценящем благородство и роскошь. Рамки GIRA ClassiX Art отличаются от однотонных ClassiX изящным узором.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.257481",
        "modified": "2021-08-30 07:38:21.257481",
        "deleted": false
      },
      {
        "id": "6QAQAx4IsmFe2pW42klTs",
        "rev": 0,
        "options": {"slug": "abb-impuls", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Impuls", "oldId": 14, "images": [], "published": false, "description": "Серия ABB Impuls сочетает в себе оригинальный дизайн и инновационные технические решения. Цвета ABB Impuls - шампань, белый, беж, черный, серебро. Помимо этого серия ABB Impuls может похвастаться хромированными и золотыми рамками. Так же в серии ABB Impuls выпускаются оригинальные нажимные механизмы ABB. У выключателей серии ABB Impuls оригинальная подсветка вокруг клавиши.\nУ нас в интернет-магазине ВсеРозетки.ру Вы можете купить розетки,выключатели,рамки ABB Impuls или заказать рамки,розетки и выключатели ABB Impuls от немецкой корпорации ABB по отличной цене.Посмотреть,выбрать нужный цвет, дизайн и оформить заказ(купить) на розетки и выключатели ABB Impuls Вы можете подъехав к нам в магазин.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.269357",
        "modified": "2021-08-30 07:38:21.269357",
        "deleted": false
      },
      {
        "id": "WKTm9-PYH-2VqjpMm0HKJ",
        "rev": 0,
        "options": {"slug": "ebeco", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Ebeco", "oldId": 260, "images": [], "published": false, "description": "Шведская компания&nbsp;Ebeco - одна из ведущих компаний по производству теплых полов.&nbsp;Ebeco имеет представительства&nbsp;\nКомпания специализируется на выпуске кабельных и пленочных систем электрообогрева для домашнего и профессионального использования и имеет филиалы не только в Европе, но и в России. Продукция &nbsp;Ebeco&nbsp;отличается высочайшим качеством и долговечностью.&nbsp;В нашем интернет магазине Вы можете купить продукцию Ebeco с доставкой и по отличной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.280115",
        "modified": "2021-08-30 07:38:21.280115",
        "deleted": false
      },
      {
        "id": "vn3KTo8fDTchu7s4MV0VM",
        "rev": 0,
        "options": {"slug": "svetodiodnye-prozhektory", "brand": null, "label": "Светодиодные прожекторы", "oldId": 327, "images": [], "published": false, "description": "Светодиодные прожекторы \"Виктел\" используют для внутреннего и наружного освещения - дома, в ландшафтном дизайне, в торговых центрах, на рекламных щитах, складах.\nСветодиодные прожекторы \"Виктел\" для удобства использования можно подключить к датчикам движения и сумеречным выключателям\nВ нашем интернет-магазине \"VIProzetki.ru\" Вы можете приобрести прожекторы \"Виктел\" по привлекательной цене.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.289227",
        "modified": "2021-08-30 07:38:21.289227",
        "deleted": false
      },
      {
        "id": "pPkVndqARhnWtDhXFeK91",
        "rev": 0,
        "options": {"slug": "jung-a-500-alyuminiy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 алюминий", "oldId": 771, "images": [], "published": false, "description": "Розетки, выключатели, рамки, клавиши и накладки серии Jung А 500&nbsp;алюминиевого цвета обладают прекрасными техническими характеристиками и стильным лаконичным дизайном. Изделия серии подойдут для различных стилей и типов помещений.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.296586",
        "modified": "2021-08-30 07:38:21.296586",
        "deleted": false
      },
      {
        "id": "JBNC9jkP3vzoi3-WyZpyu",
        "rev": 0,
        "options": {"slug": "abb-dynasty-slonovaya-kost", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty слоновая кость", "oldId": 503, "images": [], "published": false, "description": "У нас в интернет-магазине VipRozetki.ru Вы можете купить розетки,клавиши,накладки ABB Dynasty слоновая кость ,заказать розетки ABB Dynasty слоновая кость от компании ABB по отличной цене и с доставкой по Москве .\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.305895",
        "modified": "2021-08-30 07:38:21.305895",
        "deleted": false
      },
      {
        "id": "5fdeiyocpFrgoQSFxAZL0",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-esylux-compact-express", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики движения ESYLUX Compact express", "oldId": 686, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:21.314682",
        "modified": "2021-08-30 07:38:21.314682",
        "deleted": false
      },
      {
        "id": "Fpg7jy2Bv8f4XvYbiLbpp",
        "rev": 0,
        "options": {"slug": "kabel-dlya-obogreva-trub-ebeco", "brand": "jxKp-YFq3xnAhZF-F1gY7", "label": "Кабель для обогрева труб Ebeco", "oldId": 293, "images": [], "published": false, "description": "В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить или заказать с доставкой саморегулирующийся нагревательный кабель Ebeco для обогрева труб &nbsp;по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.322189",
        "modified": "2021-08-30 07:38:21.322189",
        "deleted": false
      },
      {
        "id": "IjlM6OpaDQHNjFWfR1j6x",
        "rev": 0,
        "options": {"slug": "termoregulyatory-frontier", "brand": "wYe0UEwTnEDz8TTm-8Hb7", "label": "Терморегуляторы Frontier", "oldId": 308, "images": [], "published": false, "description": "Терморегуляторы Frontier выпускаются двух видов: накладные и встраиваемые. Они подходят для использования с различными системами кондиционирования и вентиляции, а также отопления.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает Вам заказать&nbsp;терморегуляторы Frontier для регулировки теплого пола и всех видов отопления по экономичной цене с доставкой или самовывозом.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.331020",
        "modified": "2021-08-30 07:38:21.331020",
        "deleted": false
      },
      {
        "id": "gszF9LuAgZkwafCmq4ca-",
        "rev": 0,
        "options": {"slug": "faldi", "brand": "0HdMLKAZs8Up8JPNyomtb", "label": "Faldi", "oldId": 579, "images": [], "published": false, "description": "FALDI - инновационный производитель светодиодного осветительного оборудования и комплектующих для светодиодных систем освещения. Российский светотехнический завод полного цикла FALDI сотрудничает по всей Россией и странами СНГ, и предлагает своим почитателям самые свежие технологические решения. Продукция FALDI - это светодиодные светильники для офисов, дорожного и уличного освещения. Так же FALDI производят светодиодные системы освещения для промышленно-производственных помещений. У нас Вы можете приобрести светодиодные светильники FALDI с доставкой по России. Так же мы предлагаем нашим покупателям быструю доставку по Москве.\nОснащенное по последнему слову техники КБ FALDI под руководством инженера с многолетним опытом работы в крупнейших авто и машиностроительных концернах Германии ежегодно разрабатывает, тестирует и внедряет десятки новейших светотехнических решений для производства светодиодных светильников.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.339659",
        "modified": "2021-08-30 07:38:21.339659",
        "deleted": false
      },
      {
        "id": "KRnHGksUsjkHd18ySg2iY",
        "rev": 0,
        "options": {"slug": "lival", "brand": "aO9tS-sR-2rw59GZsHVOc", "label": "Lival", "oldId": 265, "images": [], "published": false, "description": "Компания Lival&nbsp;основана в 1945 году. Фирма приобрела большое доверие благодаря своей продукции, имеющей оптимальное соотношение цены и качества.&nbsp;\nLival производит&nbsp;светодиодные трековые прожекторы, светильники на шинопровод, трековые галогенные прожекторы и трековые металлогалогенные прожекторы,&nbsp;которые используют в торговых центрах, банках, аэропортах, офисах и предприятиях.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает продукцию&nbsp;Lival&nbsp;по экономичным ценам c гарантией 1 год.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.347861",
        "modified": "2021-08-30 07:38:21.347861",
        "deleted": false
      },
      {
        "id": "XR2B0cVmsbD8a-dwldFg7",
        "rev": 0,
        "options": {"slug": "udliniteli-anam-legrand", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Удлинители Anam Legrand", "oldId": 706, "images": [], "published": false, "description": "Удлинители \"Легранд\" являются эталоном надежности среди прочих брендов электро установочных изделий. Legrand представляет широкий модельный ряд. У нас представлены модели с возможностью подключения до 8 приборов. Бытовые удлинители соответствуют классу электро безопасности IP20 (для использования внутри помещений). Также есть модификации с выключателем и световой индикацией. В некоторых моделях установлен автомат перегрузки. Покупая в нашем интернет магазине Вы гарантированно получаете продукцию мирового бренда, будьте бдительны на рынке встречаются подделки.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.356730",
        "modified": "2021-08-30 07:38:21.356730",
        "deleted": false
      },
      {
        "id": "Qn7zBKmqcB2KmccjBNq20",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-merten", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Датчики движения Merten", "oldId": 284, "images": [], "published": false, "description": "&nbsp;\nДатчики движения Merten позволяют легко настроить освещение дома или на улице с помощью различных уровней настройки.&nbsp;\nТакже&nbsp;Датчики движения и присутствия Merten помогут обезопасить Ваш дом - они реагируют на изменение тепла и движения в пространстве и помогут Вам вовремя обнаружить возгорание или вторжение посторонних.&nbsp;\nНаш интернет-магазин \"VIProzetki.ru\" предлагает купить&nbsp;датчики движения и присутствия Merten&nbsp;с доставкой и по привлекательной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.367075",
        "modified": "2021-08-30 07:38:21.367075",
        "deleted": false
      },
      {
        "id": "YEsWOpFId0QcdnvU7zL51",
        "rev": 0,
        "options": {"slug": "avtomaticheskie-vyklyuchateli-hager-2-polyusnye-6ka-b-harakteristiki", "brand": "_bh7JsPSl-aeWtxzhuMtw", "label": "Автоматические выключатели Hager 2 полюсные 6kA, B характеристики", "oldId": 724, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:21.376732",
        "modified": "2021-08-30 07:38:21.376732",
        "deleted": false
      },
      {
        "id": "2o6CKqsvCgaSm0GMTyArP",
        "rev": 0,
        "options": {"slug": "ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "LedMonster", "oldId": 552, "images": [], "published": false, "description": "LedMonster — скандинавский бренд светодиодных светильников премиум класса, сочетающий в себе современный дизайн и новейшие разработки в области светодиодного Led освещения. Стратегия бренда заключается в высоком качестве и современном дизайне, при этом технические характеристики светильников являются передовыми в области светодиодного освещения. Основой дизайна светодиодных светильников бренда является стиль минимализм, благодаря которому продукция компании LedMonster легко подходит под любой интерьер и ее можно купить для любого помещения\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.385488",
        "modified": "2021-08-30 07:38:21.385488",
        "deleted": false
      },
      {
        "id": "hFDf2vbvQaT7i1-aQ3smv",
        "rev": 0,
        "options": {"slug": "victel", "brand": "lopR_M_2C32VOWya5hb6m", "label": "Victel", "oldId": 270, "images": [], "published": false, "description": "Компания Виктел&nbsp;вышла на рынок в 1990 году. Виктел производит оснащение помещений, зданий, территорий объектов, включая проектирование и проведение высокотехнологичных работ. Виктел - сервисный партнер&nbsp;&nbsp;LG, Beckhoff,&nbsp;Siemens,&nbsp;Panasonic. У компании Виктел&nbsp;есть филиалы&nbsp;в Москве, Санкт-Петербурге, Красноярске, Новосибирске и Минске (Белоруссия).&nbsp;\n\nПродукция Виктел имеет отличные характеритики - она надежна, долговечна и качественно выполнена.&nbsp;Светодиодные лампы,светодиодные светильники, светодиодные прожекторы,светодиодные светильники Виктел VKLUX&nbsp;изготавливаются в Тайване и Юго-Восточной Азии. Продукция и фабрики, на которых она изготавливается, проходят различные проверки и имеют все сертификаты качества и безопасности.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.396142",
        "modified": "2021-08-30 07:38:21.396142",
        "deleted": false
      },
      {
        "id": "doDMTyIT65QdYnW-2ajkl",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-ledmonster-vstraivaemye", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Светодиодные светильники LedMonster встраиваемые", "oldId": 553, "images": [], "published": false, "description": "Светодиодные светильники LedMonster встраиваемые - ведущее направление производства лед монстер (Скандинавия) Вся продукция отличается лаконичным и легким дизайном, применением современных технологий при изготовлении светодиодов и надежных схем в драйверах устройств питания, которым уделяется особый контроль на производстве, благодаря чему многие светильники имеют высокие показатели времени гарантированной бесперебойной работы. В нашем интернет магазине Вы можете купить светодиодные светильники LedMonster встраиваемые или заказать светодиодные светильники LedMonster по отличной цене с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.408169",
        "modified": "2021-08-30 07:38:21.408169",
        "deleted": false
      },
      {
        "id": "DJy3RrVXp0K2_gK3CuLbN",
        "rev": 0,
        "options": {"slug": "gira", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "Gira", "oldId": 81, "images": [], "published": false, "description": "Немецкая компания&nbsp;Gira является входит в топ производителей&nbsp;электроустановочных изделий и компонентов системы интеллектуального здания и пользуется невероятной популярностью в России.&nbsp;Gira производит качественные домофоны, энергетические стойки, радиошинные системы, автоматизированные устройства, устройства для создания системы \"умный дом\", и также разнообразные розетки и выключатели премиум класса.&nbsp;\nВы можете купить розетки Gira в нашем интернет магазине или выбрать нужную серию розеток и выключателей Гира приехав в наш магазин,можете заказать доставку розеток Gira в Москве или до транспортной компании.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.418908",
        "modified": "2021-08-30 07:38:21.418908",
        "deleted": false
      },
      {
        "id": "E_LzySRwOVZheC6i7IRtP",
        "rev": 0,
        "options": {"slug": "esylux", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "ESYLUX", "oldId": 679, "images": [], "published": false, "description": "Автоматическое освещение - незаменимая часть жизни современного общества. Благодаря светильникам и прожекторам с датчиками движения затраты на электроэнергию становятся существенно ниже, ведь такие устройства работают только в том случае, если в зоне их действия зафиксировано движение. Приборы с датчиками движения отлично справятся с освещением в парках, в складских помещениях, на дачном участке или в коридоре квартиры. Светильники с датчиками движения легко устанавливаются, долго служат и недорого стоят, чем привлекают внимание потребителей.\nМы предлагаем нашим клиентам только самые лучшие светильники и прожекторы со сверхчувствительными датчиками движения. Мы собрали в нашем ассортименте только самую популярную и проверенную продукцию, которая оценена пользователями по всему миру. Наши профессиональные консультанты подберут осветительное оборудование, исходя из особенностей Вашего интерьера и Ваших потребностей.\nКачественные датчики движения и датчики присутствия ESYLUX создают новый уровень качества жизни и энергетическую эффективность.\nКупить датчики движения и присутствия ESYLUX оптом с доставкой и не только в Москве.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.434290",
        "modified": "2021-08-30 07:38:21.434290",
        "deleted": false
      },
      {
        "id": "w5N_StexR60dZONXqxzyb",
        "rev": 0,
        "options": {"slug": "bticino-axolute-ramki-pryamougolnye", "brand": "G9QW9gXfruqcKx3ecg9jn", "label": "Bticino Axolute рамки прямоугольные", "oldId": 48, "images": [{"alt": "BTICINO Axolute в прямоугольном исполнении рамок выпускается в приятном многообразии цветов: оттенки «мрамор», «антрацит», «титан». «алюминий». «темное серебро», «голубое стекло», «жемчужное серебро». Дорогие и высококачественные материалы розеток и выключателей выглядят дорого и стильно, изделия серии будут находкой как для квартир, так и для офисов и других видов помещений. Гладкая поверхность рамок BTICINO Axolute изящно подчеркнет дизайн любого интерьера.\n", "path": "uploads/series/4/48/1556610072105.jpg"}, {"alt": "BTICINO Axolute в прямоугольном исполнении рамок выпускается в приятном многообразии цветов: оттенки «мрамор», «антрацит», «титан». «алюминий». «темное серебро», «голубое стекло», «жемчужное серебро». Дорогие и высококачественные материалы розеток и выключателей выглядят дорого и стильно, изделия серии будут находкой как для квартир, так и для офисов и других видов помещений. Гладкая поверхность рамок BTICINO Axolute изящно подчеркнет дизайн любого интерьера.\n", "path": "uploads/series/4/48/1556610083221.jpg"}, {"alt": "BTICINO Axolute в прямоугольном исполнении рамок выпускается в приятном многообразии цветов: оттенки «мрамор», «антрацит», «титан». «алюминий». «темное серебро», «голубое стекло», «жемчужное серебро». Дорогие и высококачественные материалы розеток и выключателей выглядят дорого и стильно, изделия серии будут находкой как для квартир, так и для офисов и других видов помещений. Гладкая поверхность рамок BTICINO Axolute изящно подчеркнет дизайн любого интерьера.\n", "path": "uploads/series/4/48/1556610095102.jpg"}, {"alt": "BTICINO Axolute в прямоугольном исполнении рамок выпускается в приятном многообразии цветов: оттенки «мрамор», «антрацит», «титан». «алюминий». «темное серебро», «голубое стекло», «жемчужное серебро». Дорогие и высококачественные материалы розеток и выключателей выглядят дорого и стильно, изделия серии будут находкой как для квартир, так и для офисов и других видов помещений. Гладкая поверхность рамок BTICINO Axolute изящно подчеркнет дизайн любого интерьера.\n", "path": "uploads/series/4/48/1556610109559.jpg"}], "published": true, "description": "BTICINO Axolute в прямоугольном исполнении рамок выпускается в приятном многообразии цветов: оттенки «мрамор», «антрацит», «титан». «алюминий». «темное серебро», «голубое стекло», «жемчужное серебро». Дорогие и высококачественные материалы розеток и выключателей выглядят дорого и стильно, изделия серии будут находкой как для квартир, так и для офисов и других видов помещений. Гладкая поверхность рамок BTICINO Axolute изящно подчеркнет дизайн любого интерьера.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.446133",
        "modified": "2021-08-30 07:38:21.446133",
        "deleted": false
      },
      {
        "id": "qy3LUxUvMh9JII0iGwy2u",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-esylux-compact-express", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики присутствия ESYLUX Compact express", "oldId": 687, "images": [], "published": false, "description": "Датчики присутствия ESYLUX Compact express представляют собой специальную серию датчиков&nbsp;ESYLUX уменьшенного размера. Такие датчики менее заметны в интерьере, требуют меньщее посадочное отверстие и могут устанавливаться там где недостаточно места для полноразмерных датчиков. Приобрести датчики можно онлайн с доставкой либо в Москве в Центре дизайна и интерьера экспострой в 121 офисе.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.456163",
        "modified": "2021-08-30 07:38:21.456163",
        "deleted": false
      },
      {
        "id": "Ekd2SbAprSKSvVFa2HF6l",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-naruzhnoy-i-vnutrenney-ustanovki-steinel", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Датчики движения наружной и внутренней установки Steinel", "oldId": 288, "images": [], "published": false, "description": "Датчики движения наружной и внутренней установки немецкой фирмы Steinel используются для регулировки подачи электроэнергии, путем включения и выключения света. Датчики движения Steinel пригодны для наружного(уличного) и внутреннего использования. Работа датчиков движения обуславливается реакцией на движение и тепловое излучения. При наличии его устройство включает свет, при отсутствии — отключает. Steinel изготавливает также датчики объема, которые реагируют на изменение объема пространства.\nВ нашем интернет-магазине «VIProzetki.ru» Вы найдете датчики движения Steinel, которые мы поможем Вам выбрать и купить в соответствии с Вашими потребностями. Мы предоставляем выгодные условия покупки датчиков движения steinel, всю продукцию можно приобрести в наших магазинах.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.466240",
        "modified": "2021-08-30 07:38:21.466240",
        "deleted": false
      },
      {
        "id": "suUg4_xEQzPCOE8g_5npt",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-legrand", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Датчики движения Legrand", "oldId": 283, "images": [], "published": false, "description": "&nbsp;Датчики движения Legrand&nbsp;изготовлены в соответствии с самыми высокими стандартами качества и имеют все необходимые сертификаты. &nbsp;Датчики движения Legrand&nbsp;отличаются не только стильным дизайном, но и удобством использования и простой установкой.&nbsp;\nВ нашем интернет-магазине вы можете приобрести датчики&nbsp;Legrand&nbsp;по доступной цене.&nbsp;\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.477635",
        "modified": "2021-08-30 07:38:21.477635",
        "deleted": false
      },
      {
        "id": "MsEwZiHSVY2I3Q5mKzsFs",
        "rev": 0,
        "options": {"slug": "jung-a-creation-plastik", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A Creation пластик", "oldId": 1, "images": [{"alt": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "path": "uploads/series/0/1/1556370312261.png"}, {"alt": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "path": "uploads/series/0/1/1556370322878.png"}, {"alt": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "path": "uploads/series/0/1/1556370331112.png"}, {"alt": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "path": "uploads/series/0/1/1556370339313.png"}, {"alt": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "path": "uploads/series/0/1/1556370347843.png"}, {"alt": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "path": "uploads/series/0/1/1556370356377.png"}], "published": true, "description": "Розетки и выключатели JUNG A CREATION в пластике пользуются широкой популярностью. Качественная сборка и отличный дизайн сразу же обращают к себе внимание покупателя. Рамки A CREATION изготовлены из прочного дюропласта, что гарантирует долгую службу без царапин, сколов, отпечатков и загрязнений. Расцветки: белый, шампань, чёрный, мокко.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.489271",
        "modified": "2021-08-30 07:38:21.489271",
        "deleted": false
      },
      {
        "id": "A0qrukhgVw3njR_37lzyu",
        "rev": 0,
        "options": {"slug": "r-gira-classix", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "Р Gira ClassiX", "oldId": 82, "images": [{"alt": "Серия Gira ClassiX выделяется своим изяществом и благородством форм, а рамки серии Gira ClassiX Art приглянутся покупателю благодаря свому красивому изысканному рисунку. Розетки и выключатели Gira ClassiX подойдут не только для обустройства дома. Изделия серии Gira ClassiX и Gira ClassiX Art в интерьере офиса, дачи или коттеджа подчеркнут Ваш статус и безупречный вкус.\nРамки, розетки, клавиши и накладки Gira ClassiX выполнена в строгом металлическом дизайне. Цвета Gira ClassiX - бронза, латунь(золото).\n", "path": "uploads/series/8/82/1541588293824.jpg"}], "published": false, "description": "Серия Gira ClassiX выделяется своим изяществом и благородством форм, а рамки серии Gira ClassiX Art приглянутся покупателю благодаря свому красивому изысканному рисунку. Розетки и выключатели Gira ClassiX подойдут не только для обустройства дома. Изделия серии Gira ClassiX и Gira ClassiX Art в интерьере офиса, дачи или коттеджа подчеркнут Ваш статус и безупречный вкус.\nРамки, розетки, клавиши и накладки Gira ClassiX выполнена в строгом металлическом дизайне. Цвета Gira ClassiX - бронза, латунь(золото).\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.502498",
        "modified": "2021-08-30 07:38:21.502498",
        "deleted": false
      },
      {
        "id": "gwkjgpjOPdpzjZxKviApj",
        "rev": 0,
        "options": {"slug": "legrand-seliane-metallik", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Сeliane металлик", "oldId": 132, "images": [{"alt": "Рамки LEGRAND CELIANE в дизайне «металлик» изготавливаются из высококачественных материалов в расцветках: никель, медь, алюминий, вольфрам. Глянцевая поверхность рамок устойчива к царапинам и пыли, а это значит, что розетки и выключатели долго прослужат пользователю и даже после многих лет эксплуатации сохранят свой первозданный вид. LEGRAND CELIANE металлик — это стильное решение для стильного интерьера!\n", "path": "uploads/series/13/132/1556374195459.png"}, {"alt": "Рамки LEGRAND CELIANE в дизайне «металлик» изготавливаются из высококачественных материалов в расцветках: никель, медь, алюминий, вольфрам. Глянцевая поверхность рамок устойчива к царапинам и пыли, а это значит, что розетки и выключатели долго прослужат пользователю и даже после многих лет эксплуатации сохранят свой первозданный вид. LEGRAND CELIANE металлик — это стильное решение для стильного интерьера!\n", "path": "uploads/series/13/132/1556374201189.png"}, {"alt": "Рамки LEGRAND CELIANE в дизайне «металлик» изготавливаются из высококачественных материалов в расцветках: никель, медь, алюминий, вольфрам. Глянцевая поверхность рамок устойчива к царапинам и пыли, а это значит, что розетки и выключатели долго прослужат пользователю и даже после многих лет эксплуатации сохранят свой первозданный вид. LEGRAND CELIANE металлик — это стильное решение для стильного интерьера!\n", "path": "uploads/series/13/132/1556374207028.png"}, {"alt": "Рамки LEGRAND CELIANE в дизайне «металлик» изготавливаются из высококачественных материалов в расцветках: никель, медь, алюминий, вольфрам. Глянцевая поверхность рамок устойчива к царапинам и пыли, а это значит, что розетки и выключатели долго прослужат пользователю и даже после многих лет эксплуатации сохранят свой первозданный вид. LEGRAND CELIANE металлик — это стильное решение для стильного интерьера!\n", "path": "uploads/series/13/132/1556374214250.png"}], "published": true, "description": "Рамки LEGRAND CELIANE в дизайне «металлик» изготавливаются из высококачественных материалов в расцветках: никель, медь, алюминий, вольфрам. Глянцевая поверхность рамок устойчива к царапинам и пыли, а это значит, что розетки и выключатели долго прослужат пользователю и даже после многих лет эксплуатации сохранят свой первозданный вид. LEGRAND CELIANE металлик — это стильное решение для стильного интерьера!\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.514652",
        "modified": "2021-08-30 07:38:21.514652",
        "deleted": false
      },
      {
        "id": "mCzXF1lAjji8i9DohOaaI",
        "rev": 0,
        "options": {"slug": "datchiki-prisutstviya-esylux", "brand": "m9SEqTrhhJVacnX0Gk0VA", "label": "Датчики присутствия ESYLUX", "oldId": 685, "images": [], "published": false, "description": "Датчики&nbsp;присутствия&nbsp;ESYLUX -&nbsp;это&nbsp;не&nbsp;просто&nbsp;роскошь&nbsp;современной&nbsp;жизни,&nbsp;прежде&nbsp;всего-&nbsp;это&nbsp;безопасность&nbsp;вашей&nbsp;собственности.&nbsp;В&nbsp;нашем&nbsp;разделе&nbsp;вы&nbsp;найдете&nbsp;абсолютно&nbsp;все&nbsp;модели&nbsp;датчиков&nbsp;присутствия&nbsp;марки&nbsp;Esylux&nbsp;серии&nbsp;PD.&nbsp;У&nbsp;нас&nbsp;представлены&nbsp;хиты&nbsp;продаж: (&nbsp;Потолочный&nbsp;датчик&nbsp;c&nbsp;радиусом&nbsp;охвата&nbsp;360&nbsp;градусов,&nbsp;периметром&nbsp;обнаружения&nbsp;до&nbsp;8&nbsp;м&nbsp;в&nbsp;диаметре&nbsp;Esylux&nbsp;PD&nbsp;360i/8&nbsp;Basic&nbsp;EB10430435&nbsp;),&nbsp; (Потолочный&nbsp;&quot;Ведомый&quot;&nbsp;датчик&nbsp;присутствия&nbsp;(&quot;Slave&quot;)&nbsp;Esylux&nbsp;PD&nbsp;360/8&nbsp;Slave&nbsp;EM10425028).&nbsp;А&nbsp;также&nbsp;вы&nbsp;найдете&nbsp;в&nbsp;разделе&nbsp;датчики&nbsp;присутствия&nbsp;новинки&nbsp;бренда&nbsp;&nbsp;Esylux&nbsp;встраиваемые&nbsp;Esylux&nbsp;PD-FLAT&nbsp;360i/8&nbsp;SQUARE&nbsp;WHITE&nbsp;EP10427923.&nbsp;В&nbsp;современной&nbsp;жизни&nbsp;комфорт&nbsp;ценится&nbsp;превыше&nbsp;всего,&nbsp;даже&nbsp;в&nbsp;безопасности.&nbsp;А&nbsp;экономичность&nbsp;данных&nbsp;моделей&nbsp;будут&nbsp;приятным&nbsp;бонусом&nbsp;для&nbsp;вашего&nbsp;кошелька.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.527556",
        "modified": "2021-08-30 07:38:21.527556",
        "deleted": false
      },
      {
        "id": "8Y_dHEJHLOR1RKFxskxlZ",
        "rev": 0,
        "options": {"slug": "datchiki-dvizheniya-horoz-electric", "brand": "OEFmul_0rxJbL3Ef9rPcr", "label": "Датчики движения Horoz Electric", "oldId": 463, "images": [], "published": false, "description": "Возможно значительное снижение необходимых расходов на потребляемую энергию с использованием в быту бюджетных датчиков движения Horoz Electric . В работе бытовых датчиков движения используется принцип постоянного контроля инфракрасного излучения. При условии появления объекта с температурой больше окружающей на 5 градусов по Цельсию и достаточной массой, включается свет,при помощи специальной линзы направляется сигнал к фотоэлементу, что и позволяет лампам автоматически включаться.\nКупить датчики движения Horoz Electric или заказать с доставкой оптом датчики движения Horoz Electric Вы можете в нашем интернет магазине.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.539748",
        "modified": "2021-08-30 07:38:21.539748",
        "deleted": false
      },
      {
        "id": "8FWACQ9KwrD2TJ0bzVE6H",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnye-maty-ceilhit-psvd-180-n-50", "brand": "Tg3TwcRkvlK85ZBgGf7cE", "label": "Теплые полы нагревательные маты Ceilhit PSVD-180-N-50", "oldId": 340, "images": [], "published": false, "description": "Теплые полы на электрических нагревательных матах Ceilhit - это специальная монтажная сетка с закрепленной на ней кабелем. Такая конструкция позволяет быстро и комфортно обогреть пол. Система отличается упрощенным монтажем - нет необходимости устанавливать теплоизоляцию, теплоотражающий экран и крепления кабеля;&nbsp;&nbsp;теплый пол нагревательный мат Ceilhit можно укладывать прямо на бетонную стяжку. Теплый пол необходимо залить плиточным клеем, и общая высота мата, клея и напольного покрытия составит&nbsp;&nbsp;от 18.5 до 30.5 миллиметров. За счет небольшой толщины пол гораздо быстрее прогревается. Сетку нагревательного мата можно резать, что дает гибкость монтажа. Не забывайте, что при монтаже нужно отступать около 10-12 сантиментров от стен и мебели для избежания перегрева; теплый пол - это средство создания комфортной температуры пола, а не основной источник тепла.&nbsp;\n&nbsp;В нашем интернет-магазине \"VIProzetki.ru\" Вы можете купить нагревательные маты Ceilhit по хорошей цене с доставкой.&nbsp;\n\n&nbsp;\nhttp://www.ceilhit.ru/img/db/1663.jpg\" style=\"height:245px; width:250px\" />http://www.ceilhit.ru/img/db/1661.jpg\" style=\"height:245px; width:300px\" />http://www.ceilhit.ru/img/db/1662.jpg\" style=\"height:245px; width:250px\" />\n&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.553561",
        "modified": "2021-08-30 07:38:21.553561",
        "deleted": false
      },
      {
        "id": "-V_UpX8qie6_NYgzBYj6E",
        "rev": 0,
        "options": {"slug": "teplye-poly-nagrevatelnye-maty-devi", "brand": "8AHf8fmLMUtcYuqH725Q9", "label": "Теплые полы нагревательные маты Devi", "oldId": 341, "images": [], "published": false, "description": "Теплые полы нагревательные маты&nbsp;Devi легки в установке - на тыльную сторону уже нанесен спец. Нанесенная разметка поможет подогнать нагревательные маты&nbsp;Devi&nbsp; до требуемых параметров, ведь маты можно резать и придавать любую форму.&nbsp;\nВы сможете установить теплые полы практически под любое напольное покрытие - диаметр провода не превышает&nbsp;&nbsp;4,5 мм.&nbsp;\nВ нашем интернет-магазине \"VIProzetki.ru\" мы предлагаем Вам купить&nbsp;нагревательные маты&nbsp;Devi по выгодной цене&nbsp; или заказать с доставкой.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.564719",
        "modified": "2021-08-30 07:38:21.564719",
        "deleted": false
      },
      {
        "id": "v7snTy6c61S5Md_oiT9Ql",
        "rev": 0,
        "options": {"slug": "svetodiodnye-prozhektora-steinel-s-datchikami-dvizheniya-i-bez", "brand": "plAFd6F1B5BqgGPeLNldm", "label": "Светодиодные прожектора Steinel с датчиками движения и без", "oldId": 328, "images": [], "published": false, "description": "Светодиодные прожекторы и светодиодные прожекторы с датчиком движения Steinel выгодно отличаются своей энергосберегательностью, качеством и долговечностью. Эти прожекторы применяются в самом широком спектре — их используют на даче и дома, на складе и в торговых центрах, и в качестве подсветки архитектурных и скульптурных сооружений.\nКупить светодиодные прожекторы Steinel, светодиодные прожекторы с датчиком движения и другую продукцию фирмы Steinel вы можете в нашем интернет-магазине «VIProsetki.ru»\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.576107",
        "modified": "2021-08-30 07:38:21.576107",
        "deleted": false
      },
      {
        "id": "m3bYiB8lnsSefCKwd2bzD",
        "rev": 0,
        "options": {"slug": "elektricheskie-moduli-bachmann-conference", "brand": "bmS85bPvD1Ly-2mhBRUCo", "label": "Электрические модули Bachmann Conference", "oldId": 352, "images": [], "published": false, "description": "Электрические модули BACHMANN Conference подходят для установки на рабочих местах, в конференц залах и переговорных. Модули BACHMANN Conference делает удобным доступ ко всем разъемам - скрытый в столешнице, для открытия на него достаточно легкого нажатия. Наличие зазора для проводов позволяет держать из под рукой. Встраиваемые модули Conference имеют неограниченные возможности для модификации и настраиваются в процессе использования - Вы можете включить в него все, что требуется. Кроме удобства, модули Conference&nbsp;&nbsp;весьма органичны в дизайне интерьера, так как их крышки представлены в различных цветах.&nbsp;\nhttp://bachmann.ru/netcat_files/multifile/2278/Conference_slide1.jpg\" style=\"height:330px; width:710px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.586036",
        "modified": "2021-08-30 07:38:21.586036",
        "deleted": false
      },
      {
        "id": "mXqUDvrsjRLegpcal1luH",
        "rev": 0,
        "options": {"slug": "svetodiodnye-svetilniki-s-datchikom-dvizheniya-zamel-ledix", "brand": "Qy88YcLKgRx5Dlec6ESXv", "label": "Светодиодные светильники с датчиком движения Zamel Ledix", "oldId": 333, "images": [], "published": false, "description": "Светодиодные светильники с датчиком движения Zamel отличаются простым монтажем - их можно установить в стандартный подрозетник или монтажную коробку. Светильники &nbsp;Zamel&nbsp;отлично подходят не только для интерьерного освещения, но для лестниц, коридоров, подиумов.&nbsp;Светильники&nbsp;&nbsp;Zamel выпускаются в цветах золото, сталь, алюминий и графит.\n\nСветильники могут подключаться к сети&nbsp;&nbsp;230 V AC 50/60 Hz или к блоку питания&nbsp;14 V DC в зависимости от версии.&nbsp;Элемент PIR (пассивный инфракрасный датчик) дает возможность выключателю срабатывать при движении с радуисе покрытия датчика. Светильник будет включен, пока объект находится в зоне датчика. При отсутствии движения он продолжает светить еще в течении&nbsp;Т = 2 до 35 с в зависимости от положения регулятора выдержки времени Time. Сумеречные датчики реагируют на общий уровень освещенности и&nbsp;регулируется в диапазоне от 2 до 20 люкс с потенциометра LUX, что позволяет выставить необходимый \"Уровень Сумерек\".&nbsp;\nЛинза в светильнике с датчиком движения установлена таким образом, чтобы угол обнаружения движения был 120 ° и на расстоянии 2-3м.&nbsp;Светильники с датчиком движения оборудованы&nbsp;дополнительным замыкающим беспотенциальным контактом с максимальной нагрузкой 3 А. Благодаря этому контакту появляется возможность подключить еще несколько светильников в качестве дополняющих. После того, как датчик движения обнаружит сигнал, загорается первый светильник, &nbsp;а затем остальные, что позволяет легко управлять освещением, например, в коридорах.&nbsp;\nЗоны срабатывания датчиков движения PIR\nhttp://ledix.com.ua/wp-content/uploads/2013/07/czu1.jpg\" style=\"height:246px; width:407px\" />\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.597682",
        "modified": "2021-08-30 07:38:21.597682",
        "deleted": false
      },
      {
        "id": "3C-QBxhntXxuNAq91cJFV",
        "rev": 0,
        "options": {"slug": "berker-q7", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.7", "oldId": 793, "images": [{"alt": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "path": "uploads/series/79/793/1556784715047.jpg"}, {"alt": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "path": "uploads/series/79/793/1556784721015.jpg"}, {"alt": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "path": "uploads/series/79/793/1556784727735.jpg"}, {"alt": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "path": "uploads/series/79/793/1556784733905.jpg"}, {"alt": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "path": "uploads/series/79/793/1556784740536.jpg"}, {"alt": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "path": "uploads/series/79/793/1556784747961.jpg"}], "published": true, "description": "BERKER Q.7 - это безупречно качественные и стильные рамки до 5 постов, выполненные из высокопрочных материалов, готовые служить своим хозяевам верой и правдой многие годы. Вариации поражают умы самых изощрённых дизайнеров: бетон, алюминий, сланец, стекло, нержавеющая сталь - выбор на любой вкус и для любых стилистических решений. Прямые линии, тонкий профиль, прозрачный каркас и многообразная цветовая гамма розеток и выключателей BERKER Q.7 найдут своё применение в любом помещении. ", "productTypes": []},
        "created": "2021-08-30 07:38:21.612393",
        "modified": "2021-08-30 07:38:21.612393",
        "deleted": false
      },
      {
        "id": "trQFqQRADvHqQgXKiEDam",
        "rev": 0,
        "options": {"slug": "lineynye-svetilniki-ledmonster", "brand": "3c5dTG72DTYZ4TYkehP1Y", "label": "Линейные светильники LedMonster", "oldId": 568, "images": [], "published": false, "description": "Линейные светильники &quot;LedMonster&quot; произведены из высококачественного алюминиевого профиля оснащены первоклассными рассеивателями и имеют &quot;правильную&quot; ширину спектра. Серия LedMonster рекомендована для освещения рабочих зон и офисов. Светильники легко компонуются в любые конструкции и сложные помещения сохраняя элегантность дизайна. Линейные алюминиевые профили LedMonster - это премиальная продукция, в ней продуманы все мелочи. Каждый профиль идеально подходит друг другу, применение анодированного алюминия позволяет использовать светильники LedMonster во влажных помещениях и делает их стойкими к механическим повреждениям.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.623930",
        "modified": "2021-08-30 07:38:21.623930",
        "deleted": false
      },
      {
        "id": "Yb-QskOun9oZ_JHHL-CHC",
        "rev": 0,
        "options": {"slug": "abb-basic-55", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Basic 55", "oldId": 8, "images": [{"alt": "Отличный вариант для уютного домашнего интерьера — это розетки и выключатели ABB BASIС 55. Сочетание невысокой цены и высочайшего качества оценят практичные и экономные покупатели. Ненавязчивый, но стильный дизайн BASIС 55 впишется в интерьер ванной, кухни, спальни. Розетки и выключатели ABB абсолютно безопасны для человека, поэтому они будут уместны и для установки в детской комнате.\n", "path": "uploads/series/0/8/1556369539280.png"}, {"alt": "Отличный вариант для уютного домашнего интерьера — это розетки и выключатели ABB BASIС 55. Сочетание невысокой цены и высочайшего качества оценят практичные и экономные покупатели. Ненавязчивый, но стильный дизайн BASIС 55 впишется в интерьер ванной, кухни, спальни. Розетки и выключатели ABB абсолютно безопасны для человека, поэтому они будут уместны и для установки в детской комнате.\n", "path": "uploads/series/0/8/1556369547000.png"}, {"alt": "Отличный вариант для уютного домашнего интерьера — это розетки и выключатели ABB BASIС 55. Сочетание невысокой цены и высочайшего качества оценят практичные и экономные покупатели. Ненавязчивый, но стильный дизайн BASIС 55 впишется в интерьер ванной, кухни, спальни. Розетки и выключатели ABB абсолютно безопасны для человека, поэтому они будут уместны и для установки в детской комнате.\n", "path": "uploads/series/0/8/1556369557674.png"}, {"alt": "Отличный вариант для уютного домашнего интерьера — это розетки и выключатели ABB BASIС 55. Сочетание невысокой цены и высочайшего качества оценят практичные и экономные покупатели. Ненавязчивый, но стильный дизайн BASIС 55 впишется в интерьер ванной, кухни, спальни. Розетки и выключатели ABB абсолютно безопасны для человека, поэтому они будут уместны и для установки в детской комнате.\n", "path": "uploads/series/0/8/1556369564865.png"}], "published": true, "description": "Отличный вариант для уютного домашнего интерьера — это розетки и выключатели ABB BASIС 55. Сочетание невысокой цены и высочайшего качества оценят практичные и экономные покупатели. Ненавязчивый, но стильный дизайн BASIС 55 впишется в интерьер ванной, кухни, спальни. Розетки и выключатели ABB абсолютно безопасны для человека, поэтому они будут уместны и для установки в детской комнате.\n", "productTypes": []},
        "created": "2021-08-30 07:38:22.047692",
        "modified": "2021-08-30 07:38:22.047692",
        "deleted": false
      },
      {
        "id": "qY4_5Chj7QdhcrxKlRASe",
        "rev": 0,
        "options": {"slug": "jung-a-creation-steklo", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A Creation стекло", "oldId": 101, "images": [{"alt": "\nJUNG A CREATION (стекло)- презентабельные и стильные розетки и выключатели для тех, кому важна каждая деталь. С помощью правильно подобранных выключателей и розеток можно расставить акценты и интерьер заиграет новыми красками. Поэтому наши покупатели в восторге от изумительных стеклянных рамок этой серии. Производитель предлагает палитру, которая подойдёт для любой дизайнерской задумки: можно выбрать из цветов «алюминий», «белый», «чёрный», «матовое стекло», «шампань».\n", "path": "uploads/series/10/101/1556370368834.png"}, {"alt": "\nJUNG A CREATION (стекло)- презентабельные и стильные розетки и выключатели для тех, кому важна каждая деталь. С помощью правильно подобранных выключателей и розеток можно расставить акценты и интерьер заиграет новыми красками. Поэтому наши покупатели в восторге от изумительных стеклянных рамок этой серии. Производитель предлагает палитру, которая подойдёт для любой дизайнерской задумки: можно выбрать из цветов «алюминий», «белый», «чёрный», «матовое стекло», «шампань».\n", "path": "uploads/series/10/101/1556370378314.png"}, {"alt": "\nJUNG A CREATION (стекло)- презентабельные и стильные розетки и выключатели для тех, кому важна каждая деталь. С помощью правильно подобранных выключателей и розеток можно расставить акценты и интерьер заиграет новыми красками. Поэтому наши покупатели в восторге от изумительных стеклянных рамок этой серии. Производитель предлагает палитру, которая подойдёт для любой дизайнерской задумки: можно выбрать из цветов «алюминий», «белый», «чёрный», «матовое стекло», «шампань».\n", "path": "uploads/series/10/101/1556370383876.png"}, {"alt": "\nJUNG A CREATION (стекло)- презентабельные и стильные розетки и выключатели для тех, кому важна каждая деталь. С помощью правильно подобранных выключателей и розеток можно расставить акценты и интерьер заиграет новыми красками. Поэтому наши покупатели в восторге от изумительных стеклянных рамок этой серии. Производитель предлагает палитру, которая подойдёт для любой дизайнерской задумки: можно выбрать из цветов «алюминий», «белый», «чёрный», «матовое стекло», «шампань».\n", "path": "uploads/series/10/101/1556370391042.png"}], "published": true, "description": "\nJUNG A CREATION (стекло)- презентабельные и стильные розетки и выключатели для тех, кому важна каждая деталь. С помощью правильно подобранных выключателей и розеток можно расставить акценты и интерьер заиграет новыми красками. Поэтому наши покупатели в восторге от изумительных стеклянных рамок этой серии. Производитель предлагает палитру, которая подойдёт для любой дизайнерской задумки: можно выбрать из цветов «алюминий», «белый», «чёрный», «матовое стекло», «шампань».\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.634371",
        "modified": "2021-08-30 07:38:21.634371",
        "deleted": false
      },
      {
        "id": "pD4mSIWRCrLou2GpwF6-K",
        "rev": 0,
        "options": {"slug": "gira-classix-latun", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "GIRA ClassiX латунь", "oldId": 84, "images": [{"alt": "Розетки, накладки и клавиши серии GIRA ClassiX&nbsp;латуневого цвета будут по достоинству оценены за привлекательный внешний вид и отменное качество.&nbsp;\n", "path": "uploads/series/8/84/1541588323824.jpg"}], "published": false, "description": "Розетки, накладки и клавиши серии GIRA ClassiX&nbsp;латуневого цвета будут по достоинству оценены за привлекательный внешний вид и отменное качество.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.645285",
        "modified": "2021-08-30 07:38:21.645285",
        "deleted": false
      },
      {
        "id": "-1X__OyFLdTD7xO0pFkSZ",
        "rev": 0,
        "options": {"slug": "fontini-venezia-metal-kvadrat", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia Metal квадрат", "oldId": 828, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal квадрат.", "path": "uploads/series/82/828/1607164251040.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal квадрат.", "path": "uploads/series/82/828/1607164256313.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal квадрат.", "path": "uploads/series/82/828/1607164260814.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal квадрат.", "path": "uploads/series/82/828/1607164265085.jpg"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal квадрат.", "productTypes": []},
        "created": "2021-08-30 07:38:21.654758",
        "modified": "2021-08-30 07:38:21.654758",
        "deleted": false
      },
      {
        "id": "DB4Nhc16g4s80hp8dCQT7",
        "rev": 0,
        "options": {"slug": "gewiss-lux-international", "brand": "5OItzQecHCqVTW3_pTLGJ", "label": "GEWISS LUX INTERNATIONAL", "oldId": 619, "images": [{"alt": "GEWISS LUX INTERNATIONAL - это качественные и стильные итальянские выключатели и розетки с изысканными линиями и утонченной формой. Рамки LUX INTERNATIONAL выполнены из экологически чистых материалов - дерева, стекла, нержавеющей стали. Многообразие оттенков рамок позволит подобрать изделия, гармоничные именно для Вашего дизайна. Можно выбрать рамки как в горизонтальном, так и в вертикальном исполнении, на один, два, три или четыре поста в зависимости от необходимости и дизайнерской задумки. Розетки и выключатели GEWISS LUX INTERNATIONAL - отличный выбор для тех, кто ценит комфорт, натуральные материалы и лаконичный дизайн.", "path": "uploads/series/61/619/1556613526919.jpg"}, {"alt": "GEWISS LUX INTERNATIONAL - это качественные и стильные итальянские выключатели и розетки с изысканными линиями и утонченной формой. Рамки LUX INTERNATIONAL выполнены из экологически чистых материалов - дерева, стекла, нержавеющей стали. Многообразие оттенков рамок позволит подобрать изделия, гармоничные именно для Вашего дизайна. Можно выбрать рамки как в горизонтальном, так и в вертикальном исполнении, на один, два, три или четыре поста в зависимости от необходимости и дизайнерской задумки. Розетки и выключатели GEWISS LUX INTERNATIONAL - отличный выбор для тех, кто ценит комфорт, натуральные материалы и лаконичный дизайн.", "path": "uploads/series/61/619/1556613534475.jpg"}, {"alt": "GEWISS LUX INTERNATIONAL - это качественные и стильные итальянские выключатели и розетки с изысканными линиями и утонченной формой. Рамки LUX INTERNATIONAL выполнены из экологически чистых материалов - дерева, стекла, нержавеющей стали. Многообразие оттенков рамок позволит подобрать изделия, гармоничные именно для Вашего дизайна. Можно выбрать рамки как в горизонтальном, так и в вертикальном исполнении, на один, два, три или четыре поста в зависимости от необходимости и дизайнерской задумки. Розетки и выключатели GEWISS LUX INTERNATIONAL - отличный выбор для тех, кто ценит комфорт, натуральные материалы и лаконичный дизайн.", "path": "uploads/series/61/619/1556613541563.jpg"}, {"alt": "GEWISS LUX INTERNATIONAL - это качественные и стильные итальянские выключатели и розетки с изысканными линиями и утонченной формой. Рамки LUX INTERNATIONAL выполнены из экологически чистых материалов - дерева, стекла, нержавеющей стали. Многообразие оттенков рамок позволит подобрать изделия, гармоничные именно для Вашего дизайна. Можно выбрать рамки как в горизонтальном, так и в вертикальном исполнении, на один, два, три или четыре поста в зависимости от необходимости и дизайнерской задумки. Розетки и выключатели GEWISS LUX INTERNATIONAL - отличный выбор для тех, кто ценит комфорт, натуральные материалы и лаконичный дизайн.", "path": "uploads/series/61/619/1556613548089.jpg"}, {"alt": "GEWISS LUX INTERNATIONAL - это качественные и стильные итальянские выключатели и розетки с изысканными линиями и утонченной формой. Рамки LUX INTERNATIONAL выполнены из экологически чистых материалов - дерева, стекла, нержавеющей стали. Многообразие оттенков рамок позволит подобрать изделия, гармоничные именно для Вашего дизайна. Можно выбрать рамки как в горизонтальном, так и в вертикальном исполнении, на один, два, три или четыре поста в зависимости от необходимости и дизайнерской задумки. Розетки и выключатели GEWISS LUX INTERNATIONAL - отличный выбор для тех, кто ценит комфорт, натуральные материалы и лаконичный дизайн.", "path": "uploads/series/61/619/1556613554022.jpg"}], "published": true, "description": "GEWISS LUX INTERNATIONAL - это качественные и стильные итальянские выключатели и розетки с изысканными линиями и утонченной формой. Рамки LUX INTERNATIONAL выполнены из экологически чистых материалов - дерева, стекла, нержавеющей стали. Многообразие оттенков рамок позволит подобрать изделия, гармоничные именно для Вашего дизайна. Можно выбрать рамки как в горизонтальном, так и в вертикальном исполнении, на один, два, три или четыре поста в зависимости от необходимости и дизайнерской задумки. Розетки и выключатели GEWISS LUX INTERNATIONAL - отличный выбор для тех, кто ценит комфорт, натуральные материалы и лаконичный дизайн.", "productTypes": []},
        "created": "2021-08-30 07:38:21.663772",
        "modified": "2021-08-30 07:38:21.663772",
        "deleted": false
      },
      {
        "id": "KhGRhqoF3XObqmtZi99cn",
        "rev": 0,
        "options": {"slug": "jung-a-500-antracit", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 500 антрацит", "oldId": 783, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:21.673781",
        "modified": "2021-08-30 07:38:21.673781",
        "deleted": false
      },
      {
        "id": "4kY9LzcAZ2Fi9ZMN7X6AW",
        "rev": 0,
        "options": {"slug": "gira-esprit", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "Gira Esprit", "oldId": 86, "images": [{"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785697445.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785702274.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785706931.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785712148.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785717472.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785723186.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785729095.png"}, {"alt": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "path": "uploads/series/8/86/1556785736758.png"}], "published": true, "description": "Продукция серии GIRA ESPRIT создана, чтобы преобразить любое помещение. Интерьер заиграет новыми красками благодаря рамкам строгой прямоугольной формы — только четкие линии, лаконичный дизайн и выразительный сдержанный стиль. GIRA ESPRIT изготавливается из дерева, нержавеющей стали, стекла в множестве оттенков: белое стекло, салатовое стекло, дымчатое стекло, антрацит, светло-серый. Розетки и выключатели серии GIRA ESPRIT станут украшением интерьера в стиле «hi tech» и расставят нужные акценты в дизайне помещения.\n.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.683389",
        "modified": "2021-08-30 07:38:21.683389",
        "deleted": false
      },
      {
        "id": "Inls43gIFahp7YRrI8W0X",
        "rev": 0,
        "options": {"slug": "schneider-electric-odace", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Odace", "oldId": 184, "images": [{"alt": "SCHNEIDER ELECTRIC ODACE - потрясающая серия розеток и выключателей, созданная для современных и стильных. Закруглённые углы рамок в сочетании с круглой клавишей смотрятся мягко и элегантно, таких розеток и выключателей хочется касаться. SCHNEIDER ELECTRIC ODACE с алюминиевой и белой клавишей в обрамлении рамок в цветах белый, алюминий, сланец, ольха - это наиболее популярные комбо, но на этом выбор не ограничивается и покупатель может собрать розетки и выключатели на свой вкус с учётом особенностей своего интерьера.", "path": "uploads/series/18/184/1556376695214.png"}, {"alt": "SCHNEIDER ELECTRIC ODACE - потрясающая серия розеток и выключателей, созданная для современных и стильных. Закруглённые углы рамок в сочетании с круглой клавишей смотрятся мягко и элегантно, таких розеток и выключателей хочется касаться. SCHNEIDER ELECTRIC ODACE с алюминиевой и белой клавишей в обрамлении рамок в цветах белый, алюминий, сланец, ольха - это наиболее популярные комбо, но на этом выбор не ограничивается и покупатель может собрать розетки и выключатели на свой вкус с учётом особенностей своего интерьера.", "path": "uploads/series/18/184/1556376700691.png"}, {"alt": "SCHNEIDER ELECTRIC ODACE - потрясающая серия розеток и выключателей, созданная для современных и стильных. Закруглённые углы рамок в сочетании с круглой клавишей смотрятся мягко и элегантно, таких розеток и выключателей хочется касаться. SCHNEIDER ELECTRIC ODACE с алюминиевой и белой клавишей в обрамлении рамок в цветах белый, алюминий, сланец, ольха - это наиболее популярные комбо, но на этом выбор не ограничивается и покупатель может собрать розетки и выключатели на свой вкус с учётом особенностей своего интерьера.", "path": "uploads/series/18/184/1556376705750.png"}, {"alt": "SCHNEIDER ELECTRIC ODACE - потрясающая серия розеток и выключателей, созданная для современных и стильных. Закруглённые углы рамок в сочетании с круглой клавишей смотрятся мягко и элегантно, таких розеток и выключателей хочется касаться. SCHNEIDER ELECTRIC ODACE с алюминиевой и белой клавишей в обрамлении рамок в цветах белый, алюминий, сланец, ольха - это наиболее популярные комбо, но на этом выбор не ограничивается и покупатель может собрать розетки и выключатели на свой вкус с учётом особенностей своего интерьера.", "path": "uploads/series/18/184/1556376714120.png"}, {"alt": "SCHNEIDER ELECTRIC ODACE - потрясающая серия розеток и выключателей, созданная для современных и стильных. Закруглённые углы рамок в сочетании с круглой клавишей смотрятся мягко и элегантно, таких розеток и выключателей хочется касаться. SCHNEIDER ELECTRIC ODACE с алюминиевой и белой клавишей в обрамлении рамок в цветах белый, алюминий, сланец, ольха - это наиболее популярные комбо, но на этом выбор не ограничивается и покупатель может собрать розетки и выключатели на свой вкус с учётом особенностей своего интерьера.", "path": "uploads/series/18/184/1556376720931.png"}], "published": true, "description": "SCHNEIDER ELECTRIC ODACE - потрясающая серия розеток и выключателей, созданная для современных и стильных. Закруглённые углы рамок в сочетании с круглой клавишей смотрятся мягко и элегантно, таких розеток и выключателей хочется касаться. SCHNEIDER ELECTRIC ODACE с алюминиевой и белой клавишей в обрамлении рамок в цветах белый, алюминий, сланец, ольха - это наиболее популярные комбо, но на этом выбор не ограничивается и покупатель может собрать розетки и выключатели на свой вкус с учётом особенностей своего интерьера.", "productTypes": []},
        "created": "2021-08-30 07:38:21.694022",
        "modified": "2021-08-30 07:38:21.694022",
        "deleted": false
      },
      {
        "id": "uEArzbxAiI6Qad0pKTmze",
        "rev": 0,
        "options": {"slug": "sky", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "Sky ", "oldId": 805, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.056611",
        "modified": "2021-08-30 07:38:22.056611",
        "deleted": false
      },
      {
        "id": "-LkP5DTaQCYxzZxJTRUJ3",
        "rev": 0,
        "options": {"slug": "abb-mehanizmy-sky", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB механизмы Sky ", "oldId": 806, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.065418",
        "modified": "2021-08-30 07:38:22.065418",
        "deleted": false
      },
      {
        "id": "cpqxGmke_ydBRW297_k_g",
        "rev": 0,
        "options": {"slug": "abb-sky-klavishi-i-nakladki", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Sky клавиши и накладки", "oldId": 808, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.074395",
        "modified": "2021-08-30 07:38:22.074395",
        "deleted": false
      },
      {
        "id": "TERzHoh_4vgVfM6_CLkQl",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-hameleon", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Unica hameleon", "oldId": 182, "images": [{"alt": "SCHNEIDER ELECTRIC UNICA Хамелеон - это широкая палитра цветов рамок для горизонтальной и вертикальной установки. Рамки изготавливаются из ударопрочного термопласта в цветах терракотовый, бежевый, серый, коричневый, морская волна, белый, зеленое яблоко, синий и многих других. Механизмы выпускаются в белом и бежевом цветах, гармонично сочетающихся с рамками любой расцветки. Элегантные розетки и выключатели UNICA Хамелеон помогут преобразить интерьер, выгодно подчеркнув дизайнерскую задумку и индивидуальность помещения.", "path": "uploads/series/18/182/1556377103819.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA Хамелеон - это широкая палитра цветов рамок для горизонтальной и вертикальной установки. Рамки изготавливаются из ударопрочного термопласта в цветах терракотовый, бежевый, серый, коричневый, морская волна, белый, зеленое яблоко, синий и многих других. Механизмы выпускаются в белом и бежевом цветах, гармонично сочетающихся с рамками любой расцветки. Элегантные розетки и выключатели UNICA Хамелеон помогут преобразить интерьер, выгодно подчеркнув дизайнерскую задумку и индивидуальность помещения.", "path": "uploads/series/18/182/1556377108463.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA Хамелеон - это широкая палитра цветов рамок для горизонтальной и вертикальной установки. Рамки изготавливаются из ударопрочного термопласта в цветах терракотовый, бежевый, серый, коричневый, морская волна, белый, зеленое яблоко, синий и многих других. Механизмы выпускаются в белом и бежевом цветах, гармонично сочетающихся с рамками любой расцветки. Элегантные розетки и выключатели UNICA Хамелеон помогут преобразить интерьер, выгодно подчеркнув дизайнерскую задумку и индивидуальность помещения.", "path": "uploads/series/18/182/1556377113153.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA Хамелеон - это широкая палитра цветов рамок для горизонтальной и вертикальной установки. Рамки изготавливаются из ударопрочного термопласта в цветах терракотовый, бежевый, серый, коричневый, морская волна, белый, зеленое яблоко, синий и многих других. Механизмы выпускаются в белом и бежевом цветах, гармонично сочетающихся с рамками любой расцветки. Элегантные розетки и выключатели UNICA Хамелеон помогут преобразить интерьер, выгодно подчеркнув дизайнерскую задумку и индивидуальность помещения.", "path": "uploads/series/18/182/1556377117346.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA Хамелеон - это широкая палитра цветов рамок для горизонтальной и вертикальной установки. Рамки изготавливаются из ударопрочного термопласта в цветах терракотовый, бежевый, серый, коричневый, морская волна, белый, зеленое яблоко, синий и многих других. Механизмы выпускаются в белом и бежевом цветах, гармонично сочетающихся с рамками любой расцветки. Элегантные розетки и выключатели UNICA Хамелеон помогут преобразить интерьер, выгодно подчеркнув дизайнерскую задумку и индивидуальность помещения.", "path": "uploads/series/18/182/1556377124272.png"}], "published": true, "description": "SCHNEIDER ELECTRIC UNICA Хамелеон - это широкая палитра цветов рамок для горизонтальной и вертикальной установки. Рамки изготавливаются из ударопрочного термопласта в цветах терракотовый, бежевый, серый, коричневый, морская волна, белый, зеленое яблоко, синий и многих других. Механизмы выпускаются в белом и бежевом цветах, гармонично сочетающихся с рамками любой расцветки. Элегантные розетки и выключатели UNICA Хамелеон помогут преобразить интерьер, выгодно подчеркнув дизайнерскую задумку и индивидуальность помещения.", "productTypes": []},
        "created": "2021-08-30 07:38:21.703661",
        "modified": "2021-08-30 07:38:21.703661",
        "deleted": false
      },
      {
        "id": "L24p57QmbZb3Kuy_IZ5XP",
        "rev": 0,
        "options": {"slug": "gira-e2", "brand": "S1L5f_Mdl3IOt0bxQLdF0", "label": "Gira E2", "oldId": 85, "images": [{"alt": "GIRA E2 – это воплощение простоты и стиля. Гладкая глянцевая или матовая поверхность рамок и клавиш GIRA E2 выполнена в самых распространенных цветах — белый, антрацит и алюминий. Розетки и выключатели этой серии призваны украшать офисы, интерьеры в стиле «минимализм». Отличное решение для тех, кто предпочитает классический строгий дизайн без наворотов и излишней вычурности.", "path": "uploads/series/8/85/1556785433089.png"}, {"alt": "GIRA E2 – это воплощение простоты и стиля. Гладкая глянцевая или матовая поверхность рамок и клавиш GIRA E2 выполнена в самых распространенных цветах — белый, антрацит и алюминий. Розетки и выключатели этой серии призваны украшать офисы, интерьеры в стиле «минимализм». Отличное решение для тех, кто предпочитает классический строгий дизайн без наворотов и излишней вычурности.", "path": "uploads/series/8/85/1556785438387.png"}, {"alt": "GIRA E2 – это воплощение простоты и стиля. Гладкая глянцевая или матовая поверхность рамок и клавиш GIRA E2 выполнена в самых распространенных цветах — белый, антрацит и алюминий. Розетки и выключатели этой серии призваны украшать офисы, интерьеры в стиле «минимализм». Отличное решение для тех, кто предпочитает классический строгий дизайн без наворотов и излишней вычурности.", "path": "uploads/series/8/85/1556785443665.png"}], "published": true, "description": "GIRA E2 – это воплощение простоты и стиля. Гладкая глянцевая или матовая поверхность рамок и клавиш GIRA E2 выполнена в самых распространенных цветах — белый, антрацит и алюминий. Розетки и выключатели этой серии призваны украшать офисы, интерьеры в стиле «минимализм». Отличное решение для тех, кто предпочитает классический строгий дизайн без наворотов и излишней вычурности.", "productTypes": []},
        "created": "2021-08-30 07:38:21.715559",
        "modified": "2021-08-30 07:38:21.715559",
        "deleted": false
      },
      {
        "id": "wWgSrNE_sjo_prjcwaMV-",
        "rev": 0,
        "options": {"slug": "unica-new-studio-schneider-electric", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "UNICA NEW STUDIO Schneider Electric", "oldId": 762, "images": [{"alt": "Серия SCHNEIDER ELECTRIC NEW STUDIO проста в монтаже и совмещается с другими продуктами линейки UNICA. Особенность серии STUDIO - квадратная элегантная рамка с округлыми углами и классические цветовые решения: белый, бежевый, антрацит и алюминий. Розетки и выключатели этой серии подойдут как для жилого помещения, так и для офисного интерьера. При изготовлении продукции UNICA используется качественный термопласт.", "path": "uploads/series/76/762/1556378905791.jpg"}, {"alt": "Серия SCHNEIDER ELECTRIC NEW STUDIO проста в монтаже и совмещается с другими продуктами линейки UNICA. Особенность серии STUDIO - квадратная элегантная рамка с округлыми углами и классические цветовые решения: белый, бежевый, антрацит и алюминий. Розетки и выключатели этой серии подойдут как для жилого помещения, так и для офисного интерьера. При изготовлении продукции UNICA используется качественный термопласт.", "path": "uploads/series/76/762/1556378912794.jpg"}, {"alt": "Серия SCHNEIDER ELECTRIC NEW STUDIO проста в монтаже и совмещается с другими продуктами линейки UNICA. Особенность серии STUDIO - квадратная элегантная рамка с округлыми углами и классические цветовые решения: белый, бежевый, антрацит и алюминий. Розетки и выключатели этой серии подойдут как для жилого помещения, так и для офисного интерьера. При изготовлении продукции UNICA используется качественный термопласт.", "path": "uploads/series/76/762/1556378917973.jpg"}, {"alt": "Серия SCHNEIDER ELECTRIC NEW STUDIO проста в монтаже и совмещается с другими продуктами линейки UNICA. Особенность серии STUDIO - квадратная элегантная рамка с округлыми углами и классические цветовые решения: белый, бежевый, антрацит и алюминий. Розетки и выключатели этой серии подойдут как для жилого помещения, так и для офисного интерьера. При изготовлении продукции UNICA используется качественный термопласт.", "path": "uploads/series/76/762/1556788163829.jpg"}], "published": true, "description": "Серия SCHNEIDER ELECTRIC NEW STUDIO проста в монтаже и совмещается с другими продуктами линейки UNICA. Особенность серии STUDIO - квадратная элегантная рамка с округлыми углами и классические цветовые решения: белый, бежевый, антрацит и алюминий. Розетки и выключатели этой серии подойдут как для жилого помещения, так и для офисного интерьера. При изготовлении продукции UNICA используется качественный термопласт.", "productTypes": []},
        "created": "2021-08-30 07:38:21.726463",
        "modified": "2021-08-30 07:38:21.726463",
        "deleted": false
      },
      {
        "id": "vMK3PaITdSpi7Bz2Y65Tk",
        "rev": 0,
        "options": {"slug": "unica-new-studio-color-schneider-electric", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "UNICA NEW STUDIO COLOR Schneider Electric", "oldId": 763, "images": [{"alt": "SCHNEIDER ELECTRIC NEW STUDIO COLOR - это многообразие оттенков на любой вкус. Рамки из термопласта в цветах зеленое яблоко, красный, лиловый, песочный, шоколад, шампань, белый, бежевый позволят сделать правильный выбор именно для Вашего интерьера. Розетки и выключатели SCHNEIDER ELECTRIC UNICA COLOR станут отличным приобретением для человека, ценящего отличный дизайн и превосходное качество.", "path": "uploads/series/76/763/1556787938400.jpg"}, {"alt": "SCHNEIDER ELECTRIC NEW STUDIO COLOR - это многообразие оттенков на любой вкус. Рамки из термопласта в цветах зеленое яблоко, красный, лиловый, песочный, шоколад, шампань, белый, бежевый позволят сделать правильный выбор именно для Вашего интерьера. Розетки и выключатели SCHNEIDER ELECTRIC UNICA COLOR станут отличным приобретением для человека, ценящего отличный дизайн и превосходное качество.", "path": "uploads/series/76/763/1556787945995.jpg"}, {"alt": "SCHNEIDER ELECTRIC NEW STUDIO COLOR - это многообразие оттенков на любой вкус. Рамки из термопласта в цветах зеленое яблоко, красный, лиловый, песочный, шоколад, шампань, белый, бежевый позволят сделать правильный выбор именно для Вашего интерьера. Розетки и выключатели SCHNEIDER ELECTRIC UNICA COLOR станут отличным приобретением для человека, ценящего отличный дизайн и превосходное качество.", "path": "uploads/series/76/763/1556787952349.jpg"}, {"alt": "SCHNEIDER ELECTRIC NEW STUDIO COLOR - это многообразие оттенков на любой вкус. Рамки из термопласта в цветах зеленое яблоко, красный, лиловый, песочный, шоколад, шампань, белый, бежевый позволят сделать правильный выбор именно для Вашего интерьера. Розетки и выключатели SCHNEIDER ELECTRIC UNICA COLOR станут отличным приобретением для человека, ценящего отличный дизайн и превосходное качество.", "path": "uploads/series/76/763/1556787961614.jpg"}], "published": true, "description": "SCHNEIDER ELECTRIC NEW STUDIO COLOR - это многообразие оттенков на любой вкус. Рамки из термопласта в цветах зеленое яблоко, красный, лиловый, песочный, шоколад, шампань, белый, бежевый позволят сделать правильный выбор именно для Вашего интерьера. Розетки и выключатели SCHNEIDER ELECTRIC UNICA COLOR станут отличным приобретением для человека, ценящего отличный дизайн и превосходное качество.", "productTypes": []},
        "created": "2021-08-30 07:38:21.738393",
        "modified": "2021-08-30 07:38:21.738393",
        "deleted": false
      },
      {
        "id": "Hk1WUPSDHVY0MLP1Ubiwl",
        "rev": 0,
        "options": {"slug": "schneider-electric-atlas-design", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Atlas Design", "oldId": 785, "images": [{"alt": "SCHNEIDER ELECTRIC Atlas Design - серия классических розеток и выключателей квадратной формы с классической квадратной клавишей. Лаконичные рамки в цветах «алюминий», «бежевый», «белый», «грифель», «жемчуг», «изумруд», «карбон», «мокко», «сталь», «шампань» гармонично обрамляют клавиши в таких же оттенках. Широкая палитра даёт создать неповторимые розетки и выключатели под самый требовательный вкус. Хорошие цены и безупречный внешний вид делают изделия этой серии отличным претендентом на появление в вашем доме.В серии Schneider Electric Atlas Design вышли новые рамки Schneider Electric Atlas Design Nature выполненные в органическом стекле, под мрамор&nbsp; АЙС ГРЕЙ, под дерево БАМБУК, под металл Оникс, под мрамор Крем роял.", "path": "uploads/series/78/785/1556376826350.jpg"}, {"alt": "SCHNEIDER ELECTRIC Atlas Design - серия классических розеток и выключателей квадратной формы с классической квадратной клавишей. Лаконичные рамки в цветах «алюминий», «бежевый», «белый», «грифель», «жемчуг», «изумруд», «карбон», «мокко», «сталь», «шампань» гармонично обрамляют клавиши в таких же оттенках. Широкая палитра даёт создать неповторимые розетки и выключатели под самый требовательный вкус. Хорошие цены и безупречный внешний вид делают изделия этой серии отличным претендентом на появление в вашем доме.В серии Schneider Electric Atlas Design вышли новые рамки Schneider Electric Atlas Design Nature выполненные в органическом стекле, под мрамор&nbsp; АЙС ГРЕЙ, под дерево БАМБУК, под металл Оникс, под мрамор Крем роял.", "path": "uploads/series/78/785/1556376835077.jpg"}, {"alt": "SCHNEIDER ELECTRIC Atlas Design - серия классических розеток и выключателей квадратной формы с классической квадратной клавишей. Лаконичные рамки в цветах «алюминий», «бежевый», «белый», «грифель», «жемчуг», «изумруд», «карбон», «мокко», «сталь», «шампань» гармонично обрамляют клавиши в таких же оттенках. Широкая палитра даёт создать неповторимые розетки и выключатели под самый требовательный вкус. Хорошие цены и безупречный внешний вид делают изделия этой серии отличным претендентом на появление в вашем доме.В серии Schneider Electric Atlas Design вышли новые рамки Schneider Electric Atlas Design Nature выполненные в органическом стекле, под мрамор&nbsp; АЙС ГРЕЙ, под дерево БАМБУК, под металл Оникс, под мрамор Крем роял.", "path": "uploads/series/78/785/1556376841457.jpg"}, {"alt": "SCHNEIDER ELECTRIC Atlas Design - серия классических розеток и выключателей квадратной формы с классической квадратной клавишей. Лаконичные рамки в цветах «алюминий», «бежевый», «белый», «грифель», «жемчуг», «изумруд», «карбон», «мокко», «сталь», «шампань» гармонично обрамляют клавиши в таких же оттенках. Широкая палитра даёт создать неповторимые розетки и выключатели под самый требовательный вкус. Хорошие цены и безупречный внешний вид делают изделия этой серии отличным претендентом на появление в вашем доме.В серии Schneider Electric Atlas Design вышли новые рамки Schneider Electric Atlas Design Nature выполненные в органическом стекле, под мрамор&nbsp; АЙС ГРЕЙ, под дерево БАМБУК, под металл Оникс, под мрамор Крем роял.", "path": "uploads/series/78/785/1556376864870.jpg"}], "published": true, "description": "SCHNEIDER ELECTRIC Atlas Design - серия классических розеток и выключателей квадратной формы с классической квадратной клавишей. Лаконичные рамки в цветах «алюминий», «бежевый», «белый», «грифель», «жемчуг», «изумруд», «карбон», «мокко», «сталь», «шампань» гармонично обрамляют клавиши в таких же оттенках. Широкая палитра даёт создать неповторимые розетки и выключатели под самый требовательный вкус. Хорошие цены и безупречный внешний вид делают изделия этой серии отличным претендентом на появление в вашем доме.В серии Schneider Electric Atlas Design вышли новые рамки Schneider Electric Atlas Design Nature выполненные в органическом стекле, под мрамор&nbsp; АЙС ГРЕЙ, под дерево БАМБУК, под металл Оникс, под мрамор Крем роял.", "productTypes": []},
        "created": "2021-08-30 07:38:21.747840",
        "modified": "2021-08-30 07:38:21.747840",
        "deleted": false
      },
      {
        "id": "6mvZtN610YdziTsttjdV_",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Unica", "oldId": 181, "images": [{"alt": "SCHNEIDER ELECTRIC UNICA - это розетки и выключатели для любителей выделяться. Неординарный дизайн этой серии откликнулся в сердцах покупателей со всего мира. Самыми популярными оттенками серии UNICA являются белый и бежевый. В сочетании с клавишами в цветах «алюминий», «белый», «бежевый» и «антрацит» конструкция смотрится максимально свежо и привлекательно. Универсальность и надежность вкупе с премиальным дизайном сделали SCHNEIDER ELECTRIC UNICA одной из самых популярных серий розеток и выключателей бренда.", "path": "uploads/series/18/181/1556376918956.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA - это розетки и выключатели для любителей выделяться. Неординарный дизайн этой серии откликнулся в сердцах покупателей со всего мира. Самыми популярными оттенками серии UNICA являются белый и бежевый. В сочетании с клавишами в цветах «алюминий», «белый», «бежевый» и «антрацит» конструкция смотрится максимально свежо и привлекательно. Универсальность и надежность вкупе с премиальным дизайном сделали SCHNEIDER ELECTRIC UNICA одной из самых популярных серий розеток и выключателей бренда.", "path": "uploads/series/18/181/1556376923644.png"}], "published": true, "description": "SCHNEIDER ELECTRIC UNICA - это розетки и выключатели для любителей выделяться. Неординарный дизайн этой серии откликнулся в сердцах покупателей со всего мира. Самыми популярными оттенками серии UNICA являются белый и бежевый. В сочетании с клавишами в цветах «алюминий», «белый», «бежевый» и «антрацит» конструкция смотрится максимально свежо и привлекательно. Универсальность и надежность вкупе с премиальным дизайном сделали SCHNEIDER ELECTRIC UNICA одной из самых популярных серий розеток и выключателей бренда.", "productTypes": []},
        "created": "2021-08-30 07:38:21.757348",
        "modified": "2021-08-30 07:38:21.757348",
        "deleted": false
      },
      {
        "id": "mzs78ffBmHWepMdqgyk4l",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-class", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Unica Class", "oldId": 782, "images": [{"alt": "SCHNEIDER ELECTRIC UNICA CLASS - это большой выбор розеток и выключателей с рамками из кожи, стекла и металла. Палитра UNICA CLASS разнообразна, а следовательно, изделия серии найдут своё применение в любом интерьере. Особенно привлекательно смотрится цвет «чёрное стекло» в сочетании с белой клавишей. Розетки и выключатели SCHNEIDER ELECTRIC UNICA CLASS - это отличное приобретение для людей с хорошим вкусом.", "path": "uploads/series/78/782/1556377002872.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA CLASS - это большой выбор розеток и выключателей с рамками из кожи, стекла и металла. Палитра UNICA CLASS разнообразна, а следовательно, изделия серии найдут своё применение в любом интерьере. Особенно привлекательно смотрится цвет «чёрное стекло» в сочетании с белой клавишей. Розетки и выключатели SCHNEIDER ELECTRIC UNICA CLASS - это отличное приобретение для людей с хорошим вкусом.", "path": "uploads/series/78/782/1556377008963.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA CLASS - это большой выбор розеток и выключателей с рамками из кожи, стекла и металла. Палитра UNICA CLASS разнообразна, а следовательно, изделия серии найдут своё применение в любом интерьере. Особенно привлекательно смотрится цвет «чёрное стекло» в сочетании с белой клавишей. Розетки и выключатели SCHNEIDER ELECTRIC UNICA CLASS - это отличное приобретение для людей с хорошим вкусом.", "path": "uploads/series/78/782/1556377014274.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA CLASS - это большой выбор розеток и выключателей с рамками из кожи, стекла и металла. Палитра UNICA CLASS разнообразна, а следовательно, изделия серии найдут своё применение в любом интерьере. Особенно привлекательно смотрится цвет «чёрное стекло» в сочетании с белой клавишей. Розетки и выключатели SCHNEIDER ELECTRIC UNICA CLASS - это отличное приобретение для людей с хорошим вкусом.", "path": "uploads/series/78/782/1556377021388.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA CLASS - это большой выбор розеток и выключателей с рамками из кожи, стекла и металла. Палитра UNICA CLASS разнообразна, а следовательно, изделия серии найдут своё применение в любом интерьере. Особенно привлекательно смотрится цвет «чёрное стекло» в сочетании с белой клавишей. Розетки и выключатели SCHNEIDER ELECTRIC UNICA CLASS - это отличное приобретение для людей с хорошим вкусом.", "path": "uploads/series/78/782/1556377025471.png"}], "published": true, "description": "SCHNEIDER ELECTRIC UNICA CLASS - это большой выбор розеток и выключателей с рамками из кожи, стекла и металла. Палитра UNICA CLASS разнообразна, а следовательно, изделия серии найдут своё применение в любом интерьере. Особенно привлекательно смотрится цвет «чёрное стекло» в сочетании с белой клавишей. Розетки и выключатели SCHNEIDER ELECTRIC UNICA CLASS - это отличное приобретение для людей с хорошим вкусом.", "productTypes": []},
        "created": "2021-08-30 07:38:21.769308",
        "modified": "2021-08-30 07:38:21.769308",
        "deleted": false
      },
      {
        "id": "BRQZb2HVZ_65Z__TGaI_H",
        "rev": 0,
        "options": {"slug": "unica-new-pure-schneider-electric", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "UNICA NEW PURE Schneider Electric", "oldId": 765, "images": [{"alt": "SCHNEIDER ELECTRIC UNICA NEW PURE - это серия розеток и выключателей из качественных благородных материалов. Клавиши в белом цвете в сочетании с рамками “белое” и “матовое белое” стекло гармонично впишутся в уютную и светлую спальню. А вариант в цвете алюминий станет находкой для интерьера в стиле хай-тек. Отличное качество розеток и выключателей SCHNEIDER ELECTRIC UNICA NEW PURE - это прекрасный повод для удачной покупки, которая будет радовать ещё долгие годы своим внешним видом и долгим сроком службы.", "path": "uploads/series/76/765/1556787658540.jpg"}, {"alt": "SCHNEIDER ELECTRIC UNICA NEW PURE - это серия розеток и выключателей из качественных благородных материалов. Клавиши в белом цвете в сочетании с рамками “белое” и “матовое белое” стекло гармонично впишутся в уютную и светлую спальню. А вариант в цвете алюминий станет находкой для интерьера в стиле хай-тек. Отличное качество розеток и выключателей SCHNEIDER ELECTRIC UNICA NEW PURE - это прекрасный повод для удачной покупки, которая будет радовать ещё долгие годы своим внешним видом и долгим сроком службы.", "path": "uploads/series/76/765/1556787664422.jpg"}, {"alt": "SCHNEIDER ELECTRIC UNICA NEW PURE - это серия розеток и выключателей из качественных благородных материалов. Клавиши в белом цвете в сочетании с рамками “белое” и “матовое белое” стекло гармонично впишутся в уютную и светлую спальню. А вариант в цвете алюминий станет находкой для интерьера в стиле хай-тек. Отличное качество розеток и выключателей SCHNEIDER ELECTRIC UNICA NEW PURE - это прекрасный повод для удачной покупки, которая будет радовать ещё долгие годы своим внешним видом и долгим сроком службы.", "path": "uploads/series/76/765/1556787671052.jpg"}], "published": true, "description": "SCHNEIDER ELECTRIC UNICA NEW PURE - это серия розеток и выключателей из качественных благородных материалов. Клавиши в белом цвете в сочетании с рамками “белое” и “матовое белое” стекло гармонично впишутся в уютную и светлую спальню. А вариант в цвете алюминий станет находкой для интерьера в стиле хай-тек. Отличное качество розеток и выключателей SCHNEIDER ELECTRIC UNICA NEW PURE - это прекрасный повод для удачной покупки, которая будет радовать ещё долгие годы своим внешним видом и долгим сроком службы.", "productTypes": []},
        "created": "2021-08-30 07:38:21.780975",
        "modified": "2021-08-30 07:38:21.780975",
        "deleted": false
      },
      {
        "id": "z7vPfD0mdK8Mf8hb5IqU6",
        "rev": 0,
        "options": {"slug": "unica-new-studio-metal-schneider-electric", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "UNICA NEW STUDIO METAL Schneider Electric", "oldId": 764, "images": [{"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA NEW STUDIO METAL подкупают не только безупречным внешним видом - на приятном наощупь покрытии не остаются отпечатки пальцев. А значит, красивыми и презентабельными такие изделия будут долгие годы. Рамки в расцветках «медь», «золото», «никель», «хром» и «бронза» в сочетании с белыми и бежевыми клавишами, а также с клавишами в расцветках «антрацит» и «алюминий» заставят заиграть интерьер новыми красками.", "path": "uploads/series/76/764/1547316266183.jpg"}, {"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA NEW STUDIO METAL подкупают не только безупречным внешним видом - на приятном наощупь покрытии не остаются отпечатки пальцев. А значит, красивыми и презентабельными такие изделия будут долгие годы. Рамки в расцветках «медь», «золото», «никель», «хром» и «бронза» в сочетании с белыми и бежевыми клавишами, а также с клавишами в расцветках «антрацит» и «алюминий» заставят заиграть интерьер новыми красками.", "path": "uploads/series/76/764/1556378413396.jpg"}, {"alt": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA NEW STUDIO METAL подкупают не только безупречным внешним видом - на приятном наощупь покрытии не остаются отпечатки пальцев. А значит, красивыми и презентабельными такие изделия будут долгие годы. Рамки в расцветках «медь», «золото», «никель», «хром» и «бронза» в сочетании с белыми и бежевыми клавишами, а также с клавишами в расцветках «антрацит» и «алюминий» заставят заиграть интерьер новыми красками.", "path": "uploads/series/76/764/1556378437359.jpg"}], "published": true, "description": "Розетки и выключатели SCHNEIDER ELECTRIC UNICA NEW STUDIO METAL подкупают не только безупречным внешним видом - на приятном наощупь покрытии не остаются отпечатки пальцев. А значит, красивыми и презентабельными такие изделия будут долгие годы. Рамки в расцветках «медь», «золото», «никель», «хром» и «бронза» в сочетании с белыми и бежевыми клавишами, а также с клавишами в расцветках «антрацит» и «алюминий» заставят заиграть интерьер новыми красками.", "productTypes": []},
        "created": "2021-08-30 07:38:21.791109",
        "modified": "2021-08-30 07:38:21.791109",
        "deleted": false
      },
      {
        "id": "NIDKdaOSaZa4IgJ5iYs1I",
        "rev": 0,
        "options": {"slug": "schneider-electric-unica-quadro", "brand": "zoaKxPZbF64oXYCBhRa7t", "label": "Schneider Electric Unica Quadro", "oldId": 770, "images": [{"alt": "SCHNEIDER ELECTRIC UNICA QUADRO - это воплощение яркости и нежности, строгости и легкости. Классические розетки и выключатели в неклассических сочных цветах на любой вкус станут украшением любого интерьера. Клавиши в цветах «белый», «бежевый», «антрацит», «алюминий» украсят рамки вкусных цветов «карамель», «киви», «малина», «голубика». Розетки и выключатели SCHNEIDER ELECTRIC UNICA QUADRO призваны заявить о хорошем вкусе и индивидуальности своего приобретателя.", "path": "uploads/series/77/770/1556377296369.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA QUADRO - это воплощение яркости и нежности, строгости и легкости. Классические розетки и выключатели в неклассических сочных цветах на любой вкус станут украшением любого интерьера. Клавиши в цветах «белый», «бежевый», «антрацит», «алюминий» украсят рамки вкусных цветов «карамель», «киви», «малина», «голубика». Розетки и выключатели SCHNEIDER ELECTRIC UNICA QUADRO призваны заявить о хорошем вкусе и индивидуальности своего приобретателя.", "path": "uploads/series/77/770/1556377302311.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA QUADRO - это воплощение яркости и нежности, строгости и легкости. Классические розетки и выключатели в неклассических сочных цветах на любой вкус станут украшением любого интерьера. Клавиши в цветах «белый», «бежевый», «антрацит», «алюминий» украсят рамки вкусных цветов «карамель», «киви», «малина», «голубика». Розетки и выключатели SCHNEIDER ELECTRIC UNICA QUADRO призваны заявить о хорошем вкусе и индивидуальности своего приобретателя.", "path": "uploads/series/77/770/1556377308472.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA QUADRO - это воплощение яркости и нежности, строгости и легкости. Классические розетки и выключатели в неклассических сочных цветах на любой вкус станут украшением любого интерьера. Клавиши в цветах «белый», «бежевый», «антрацит», «алюминий» украсят рамки вкусных цветов «карамель», «киви», «малина», «голубика». Розетки и выключатели SCHNEIDER ELECTRIC UNICA QUADRO призваны заявить о хорошем вкусе и индивидуальности своего приобретателя.", "path": "uploads/series/77/770/1556377313624.png"}, {"alt": "SCHNEIDER ELECTRIC UNICA QUADRO - это воплощение яркости и нежности, строгости и легкости. Классические розетки и выключатели в неклассических сочных цветах на любой вкус станут украшением любого интерьера. Клавиши в цветах «белый», «бежевый», «антрацит», «алюминий» украсят рамки вкусных цветов «карамель», «киви», «малина», «голубика». Розетки и выключатели SCHNEIDER ELECTRIC UNICA QUADRO призваны заявить о хорошем вкусе и индивидуальности своего приобретателя.", "path": "uploads/series/77/770/1556377318737.png"}], "published": true, "description": "SCHNEIDER ELECTRIC UNICA QUADRO - это воплощение яркости и нежности, строгости и легкости. Классические розетки и выключатели в неклассических сочных цветах на любой вкус станут украшением любого интерьера. Клавиши в цветах «белый», «бежевый», «антрацит», «алюминий» украсят рамки вкусных цветов «карамель», «киви», «малина», «голубика». Розетки и выключатели SCHNEIDER ELECTRIC UNICA QUADRO призваны заявить о хорошем вкусе и индивидуальности своего приобретателя.", "productTypes": []},
        "created": "2021-08-30 07:38:21.800617",
        "modified": "2021-08-30 07:38:21.800617",
        "deleted": false
      },
      {
        "id": "5Ktk_cluvhmhyP_BTknEP",
        "rev": 0,
        "options": {"slug": "berker-r3", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker R.3", "oldId": 795, "images": [{"alt": "Изделия BERKER R.3 выразительны и лаконичны. Круглая клавиша вкупе с квадратной рамкой выглядит минималистично и изысканно, поэтому BERKER R.3 идеальный вариант для любителей строгих невычурных конструкций. Розетки и выключатели BERKER R.3 гармонично впишутся как в офисное помещение, так и в современную уютную квартиру. Покупатель может выбрать клавиши в цветах чёрный и полярная белизна, оформив их рамками из алюминия, стали и стекла.\r<div></div><div>Купить розетки и выключатели Berker R3 по хорошей цене с бесплатной доставкой по Москве.</div>", "path": "uploads/series/79/795/1555784413746.jpg"}, {"alt": "Изделия BERKER R.3 выразительны и лаконичны. Круглая клавиша вкупе с квадратной рамкой выглядит минималистично и изысканно, поэтому BERKER R.3 идеальный вариант для любителей строгих невычурных конструкций. Розетки и выключатели BERKER R.3 гармонично впишутся как в офисное помещение, так и в современную уютную квартиру. Покупатель может выбрать клавиши в цветах чёрный и полярная белизна, оформив их рамками из алюминия, стали и стекла.\r<div></div><div>Купить розетки и выключатели Berker R3 по хорошей цене с бесплатной доставкой по Москве.</div>", "path": "uploads/series/79/795/1555784420807.jpg"}, {"alt": "Изделия BERKER R.3 выразительны и лаконичны. Круглая клавиша вкупе с квадратной рамкой выглядит минималистично и изысканно, поэтому BERKER R.3 идеальный вариант для любителей строгих невычурных конструкций. Розетки и выключатели BERKER R.3 гармонично впишутся как в офисное помещение, так и в современную уютную квартиру. Покупатель может выбрать клавиши в цветах чёрный и полярная белизна, оформив их рамками из алюминия, стали и стекла.\r<div></div><div>Купить розетки и выключатели Berker R3 по хорошей цене с бесплатной доставкой по Москве.</div>", "path": "uploads/series/79/795/1555784426737.jpg"}, {"alt": "Изделия BERKER R.3 выразительны и лаконичны. Круглая клавиша вкупе с квадратной рамкой выглядит минималистично и изысканно, поэтому BERKER R.3 идеальный вариант для любителей строгих невычурных конструкций. Розетки и выключатели BERKER R.3 гармонично впишутся как в офисное помещение, так и в современную уютную квартиру. Покупатель может выбрать клавиши в цветах чёрный и полярная белизна, оформив их рамками из алюминия, стали и стекла.\r<div></div><div>Купить розетки и выключатели Berker R3 по хорошей цене с бесплатной доставкой по Москве.</div>", "path": "uploads/series/79/795/1555784437700.jpg"}], "published": true, "description": "Изделия BERKER R.3 выразительны и лаконичны. Круглая клавиша вкупе с квадратной рамкой выглядит минималистично и изысканно, поэтому BERKER R.3 идеальный вариант для любителей строгих невычурных конструкций. Розетки и выключатели BERKER R.3 гармонично впишутся как в офисное помещение, так и в современную уютную квартиру. Покупатель может выбрать клавиши в цветах чёрный и полярная белизна, оформив их рамками из алюминия, стали и стекла.\r<div></div><div>Купить розетки и выключатели Berker R3 по хорошей цене с бесплатной доставкой по Москве.</div>", "productTypes": []},
        "created": "2021-08-30 07:38:21.809427",
        "modified": "2021-08-30 07:38:21.809427",
        "deleted": false
      },
      {
        "id": "K9GNp8mM2KEhH-Ru907bp",
        "rev": 0,
        "options": {"slug": "jung-a-550", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A 550", "oldId": 801, "images": [{"alt": "JUNG A 550 - серия классических розеток и выключателей в строгом стиле. Рамки и клавиши серии выполнены в расцветках «алюминий», «антрацит», «чёрный» и «белый». Если Вы хотите купить качественные розетки и выключатели по хорошей цене, то JUNG A 550 - отличный вариант.", "path": "uploads/series/80/801/1563285858982.jpg"}, {"alt": "JUNG A 550 - серия классических розеток и выключателей в строгом стиле. Рамки и клавиши серии выполнены в расцветках «алюминий», «антрацит», «чёрный» и «белый». Если Вы хотите купить качественные розетки и выключатели по хорошей цене, то JUNG A 550 - отличный вариант.", "path": "uploads/series/80/801/1563285875512.jpg"}, {"alt": "JUNG A 550 - серия классических розеток и выключателей в строгом стиле. Рамки и клавиши серии выполнены в расцветках «алюминий», «антрацит», «чёрный» и «белый». Если Вы хотите купить качественные розетки и выключатели по хорошей цене, то JUNG A 550 - отличный вариант.", "path": "uploads/series/80/801/1563285880670.jpg"}, {"alt": "JUNG A 550 - серия классических розеток и выключателей в строгом стиле. Рамки и клавиши серии выполнены в расцветках «алюминий», «антрацит», «чёрный» и «белый». Если Вы хотите купить качественные розетки и выключатели по хорошей цене, то JUNG A 550 - отличный вариант.", "path": "uploads/series/80/801/1563285888985.jpg"}], "published": true, "description": "JUNG A 550 - серия классических розеток и выключателей в строгом стиле. Рамки и клавиши серии выполнены в расцветках «алюминий», «антрацит», «чёрный» и «белый». Если Вы хотите купить качественные розетки и выключатели по хорошей цене, то JUNG A 550 - отличный вариант.", "productTypes": []},
        "created": "2021-08-30 07:38:21.820642",
        "modified": "2021-08-30 07:38:21.820642",
        "deleted": false
      },
      {
        "id": "pyS7sLcok0IecJmya-fNi",
        "rev": 0,
        "options": {"slug": "jung-a-flow", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG A Flow", "oldId": 800, "images": [{"alt": "JUNG A FLOW - решение для тех, кому по душе классические розетки и выключатели. Стандартный набор расцветок и неброский внешний вид, прямоугольная рама с закруглёнными краями и квадратная клавиша - это отличительные черты серии A FLOW. Понравится тем, кто ищет качественные розетки и выключатели без лишних наворотов.", "path": "uploads/series/80/800/1563285513834.jpg"}, {"alt": "JUNG A FLOW - решение для тех, кому по душе классические розетки и выключатели. Стандартный набор расцветок и неброский внешний вид, прямоугольная рама с закруглёнными краями и квадратная клавиша - это отличительные черты серии A FLOW. Понравится тем, кто ищет качественные розетки и выключатели без лишних наворотов.", "path": "uploads/series/80/800/1563285580648.jpg"}, {"alt": "JUNG A FLOW - решение для тех, кому по душе классические розетки и выключатели. Стандартный набор расцветок и неброский внешний вид, прямоугольная рама с закруглёнными краями и квадратная клавиша - это отличительные черты серии A FLOW. Понравится тем, кто ищет качественные розетки и выключатели без лишних наворотов.", "path": "uploads/series/80/800/1563285587069.jpg"}], "published": true, "description": "JUNG A FLOW - решение для тех, кому по душе классические розетки и выключатели. Стандартный набор расцветок и неброский внешний вид, прямоугольная рама с закруглёнными краями и квадратная клавиша - это отличительные черты серии A FLOW. Понравится тем, кто ищет качественные розетки и выключатели без лишних наворотов.", "productTypes": []},
        "created": "2021-08-30 07:38:21.832315",
        "modified": "2021-08-30 07:38:21.832315",
        "deleted": false
      },
      {
        "id": "8Z9BHVqB5I6Lw0Cgb7kA5",
        "rev": 0,
        "options": {"slug": "fede-barcelona", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede Barcelona", "oldId": 62, "images": [{"alt": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "path": "uploads/series/6/62/1556382289141.png"}, {"alt": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "path": "uploads/series/6/62/1556382294663.png"}, {"alt": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "path": "uploads/series/6/62/1556382300143.png"}, {"alt": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "path": "uploads/series/6/62/1556382306008.png"}, {"alt": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "path": "uploads/series/6/62/1556382312047.png"}, {"alt": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "path": "uploads/series/6/62/1556382317097.png"}], "published": true, "description": "FEDE BARCELONA - это премиальные розетки и выключатели знаменитой испанской компании. Изделия серии изготавливаются из  латуни и стекловолокна. Покупателю доступны на выбор 4 варианта рамок и широкая цветовая гамма клавиш: светлое золото, состаренная медь, чёрный, никель, графит, красное золото, бронза матовая, белый, бежевый. Отличное качество и дорогой дизайн серии FEDE BARCELONA найдут применение в шикарном интерьере человека, ценящего внешние характеристики и долгий срок службы испанских розеток и выключателей.В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Barcelona по отличной цене .\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.843908",
        "modified": "2021-08-30 07:38:21.843908",
        "deleted": false
      },
      {
        "id": "wIbY3vUgLic7piQJuzJHl",
        "rev": 0,
        "options": {"slug": "fede-madrid", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede Madrid", "oldId": 65, "images": [{"alt": "FEDE MADRID - это строгие рамки в четырёх расцветках и широкая палитра клавиш. Покупатель может выбрать из клавиш в оттенках «беж», «белый», «матовая бронза», «графит», «красное золото», «бронза матовая», «бронза светлая», «никель», «чёрный», «светлый хром». Варианты рамок: блестящее золото, белый, никель, платина. Изделия FEDE MADRID изготавливаются с использованием ручного труда, что делает их ещё более уникальными. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Madrid&nbsp; по выгодной цене .", "path": "uploads/series/6/65/1556382475505.png"}, {"alt": "FEDE MADRID - это строгие рамки в четырёх расцветках и широкая палитра клавиш. Покупатель может выбрать из клавиш в оттенках «беж», «белый», «матовая бронза», «графит», «красное золото», «бронза матовая», «бронза светлая», «никель», «чёрный», «светлый хром». Варианты рамок: блестящее золото, белый, никель, платина. Изделия FEDE MADRID изготавливаются с использованием ручного труда, что делает их ещё более уникальными. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Madrid&nbsp; по выгодной цене .", "path": "uploads/series/6/65/1556382481492.png"}, {"alt": "FEDE MADRID - это строгие рамки в четырёх расцветках и широкая палитра клавиш. Покупатель может выбрать из клавиш в оттенках «беж», «белый», «матовая бронза», «графит», «красное золото», «бронза матовая», «бронза светлая», «никель», «чёрный», «светлый хром». Варианты рамок: блестящее золото, белый, никель, платина. Изделия FEDE MADRID изготавливаются с использованием ручного труда, что делает их ещё более уникальными. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Madrid&nbsp; по выгодной цене .", "path": "uploads/series/6/65/1556382486825.png"}, {"alt": "FEDE MADRID - это строгие рамки в четырёх расцветках и широкая палитра клавиш. Покупатель может выбрать из клавиш в оттенках «беж», «белый», «матовая бронза», «графит», «красное золото», «бронза матовая», «бронза светлая», «никель», «чёрный», «светлый хром». Варианты рамок: блестящее золото, белый, никель, платина. Изделия FEDE MADRID изготавливаются с использованием ручного труда, что делает их ещё более уникальными. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Madrid&nbsp; по выгодной цене .", "path": "uploads/series/6/65/1556382492745.png"}], "published": true, "description": "FEDE MADRID - это строгие рамки в четырёх расцветках и широкая палитра клавиш. Покупатель может выбрать из клавиш в оттенках «беж», «белый», «матовая бронза», «графит», «красное золото», «бронза матовая», «бронза светлая», «никель», «чёрный», «светлый хром». Варианты рамок: блестящее золото, белый, никель, платина. Изделия FEDE MADRID изготавливаются с использованием ручного труда, что делает их ещё более уникальными. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки Fede Madrid&nbsp; по выгодной цене .", "productTypes": []},
        "created": "2021-08-30 07:38:21.856444",
        "modified": "2021-08-30 07:38:21.856444",
        "deleted": false
      },
      {
        "id": "cfWQvmiqvncQ7qfydum4i",
        "rev": 0,
        "options": {"slug": "abb-niessen-zenit", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Niessen Zenit", "oldId": 22, "images": [{"alt": "ABB NIESSEN ZENIT — это уникальные одноклавишные или двухклавишные выключатели с LED-подсветкой зеленого цвета посередине клавиши. Рамки серии выполнены из стекла, стали и камня «сланец» в цветовых решениях белый, серебро, антрацит, кофейное стекло, шампань. Венге, жемчужное стекло. Широкая палитра позволит подобрать исключительно выгодный вариант для Вашего интерьера. Розетки и выключатели ABB NIESSEN ZENIT будут радовать своим безупречным дизайном и отличным сроком службы требовательного и разборчивого покупателя.\n", "path": "uploads/series/2/22/1556369645998.png"}, {"alt": "ABB NIESSEN ZENIT — это уникальные одноклавишные или двухклавишные выключатели с LED-подсветкой зеленого цвета посередине клавиши. Рамки серии выполнены из стекла, стали и камня «сланец» в цветовых решениях белый, серебро, антрацит, кофейное стекло, шампань. Венге, жемчужное стекло. Широкая палитра позволит подобрать исключительно выгодный вариант для Вашего интерьера. Розетки и выключатели ABB NIESSEN ZENIT будут радовать своим безупречным дизайном и отличным сроком службы требовательного и разборчивого покупателя.\n", "path": "uploads/series/2/22/1556369669010.png"}, {"alt": "ABB NIESSEN ZENIT — это уникальные одноклавишные или двухклавишные выключатели с LED-подсветкой зеленого цвета посередине клавиши. Рамки серии выполнены из стекла, стали и камня «сланец» в цветовых решениях белый, серебро, антрацит, кофейное стекло, шампань. Венге, жемчужное стекло. Широкая палитра позволит подобрать исключительно выгодный вариант для Вашего интерьера. Розетки и выключатели ABB NIESSEN ZENIT будут радовать своим безупречным дизайном и отличным сроком службы требовательного и разборчивого покупателя.\n", "path": "uploads/series/2/22/1556369685239.png"}, {"alt": "ABB NIESSEN ZENIT — это уникальные одноклавишные или двухклавишные выключатели с LED-подсветкой зеленого цвета посередине клавиши. Рамки серии выполнены из стекла, стали и камня «сланец» в цветовых решениях белый, серебро, антрацит, кофейное стекло, шампань. Венге, жемчужное стекло. Широкая палитра позволит подобрать исключительно выгодный вариант для Вашего интерьера. Розетки и выключатели ABB NIESSEN ZENIT будут радовать своим безупречным дизайном и отличным сроком службы требовательного и разборчивого покупателя.\n", "path": "uploads/series/2/22/1556369694670.png"}, {"alt": "ABB NIESSEN ZENIT — это уникальные одноклавишные или двухклавишные выключатели с LED-подсветкой зеленого цвета посередине клавиши. Рамки серии выполнены из стекла, стали и камня «сланец» в цветовых решениях белый, серебро, антрацит, кофейное стекло, шампань. Венге, жемчужное стекло. Широкая палитра позволит подобрать исключительно выгодный вариант для Вашего интерьера. Розетки и выключатели ABB NIESSEN ZENIT будут радовать своим безупречным дизайном и отличным сроком службы требовательного и разборчивого покупателя.\n", "path": "uploads/series/2/22/1556369703391.png"}], "published": true, "description": "ABB NIESSEN ZENIT — это уникальные одноклавишные или двухклавишные выключатели с LED-подсветкой зеленого цвета посередине клавиши. Рамки серии выполнены из стекла, стали и камня «сланец» в цветовых решениях белый, серебро, антрацит, кофейное стекло, шампань. Венге, жемчужное стекло. Широкая палитра позволит подобрать исключительно выгодный вариант для Вашего интерьера. Розетки и выключатели ABB NIESSEN ZENIT будут радовать своим безупречным дизайном и отличным сроком службы требовательного и разборчивого покупателя.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.957316",
        "modified": "2021-08-30 07:38:21.957316",
        "deleted": false
      },
      {
        "id": "BeUxUhywTqIE0zxxsL3M4",
        "rev": 0,
        "options": {"slug": "fontini-f37", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini F37", "oldId": 822, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini F37.", "path": "uploads/series/82/822/1607161081583.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini F37.", "path": "uploads/series/82/822/1607161087149.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini F37.", "path": "uploads/series/82/822/1607161090625.png"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini F37.", "path": "uploads/series/82/822/1607161096214.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini F37.", "path": "uploads/series/82/822/1607161103668.jpg"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini F37.", "productTypes": []},
        "created": "2021-08-30 07:38:21.867338",
        "modified": "2021-08-30 07:38:21.867338",
        "deleted": false
      },
      {
        "id": "aoyJDOfS7S3T0ZRS6XeuQ",
        "rev": 0,
        "options": {"slug": "fede-marco", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "FEDE Marco", "oldId": 797, "images": [{"alt": "FEDE MARCO - серия лаконичных розеток и выключателей с неброским изысканным дизайном. Несмотря на внешнюю простоту, FEDE MARCO привлекает покупателя палитрой расцветок: например, глубокий, насыщенный и дорогой цвет рамки «красное вино» потрясающе смотрится в сочетании с белой клавишей. И таких вариаций десятки среди широкого многообразия цветов серии. Розетки и выключатели FEDE MARCO - это удачное приобретение для тех, кто ценит сдержанную роскошь.Купить по лучшим ценам с доставкой розетки и выключатели FEDE Marco.", "path": "uploads/series/79/797/1556382593395.png"}, {"alt": "FEDE MARCO - серия лаконичных розеток и выключателей с неброским изысканным дизайном. Несмотря на внешнюю простоту, FEDE MARCO привлекает покупателя палитрой расцветок: например, глубокий, насыщенный и дорогой цвет рамки «красное вино» потрясающе смотрится в сочетании с белой клавишей. И таких вариаций десятки среди широкого многообразия цветов серии. Розетки и выключатели FEDE MARCO - это удачное приобретение для тех, кто ценит сдержанную роскошь.Купить по лучшим ценам с доставкой розетки и выключатели FEDE Marco.", "path": "uploads/series/79/797/1556382598343.png"}, {"alt": "FEDE MARCO - серия лаконичных розеток и выключателей с неброским изысканным дизайном. Несмотря на внешнюю простоту, FEDE MARCO привлекает покупателя палитрой расцветок: например, глубокий, насыщенный и дорогой цвет рамки «красное вино» потрясающе смотрится в сочетании с белой клавишей. И таких вариаций десятки среди широкого многообразия цветов серии. Розетки и выключатели FEDE MARCO - это удачное приобретение для тех, кто ценит сдержанную роскошь.Купить по лучшим ценам с доставкой розетки и выключатели FEDE Marco.", "path": "uploads/series/79/797/1556382603284.png"}, {"alt": "FEDE MARCO - серия лаконичных розеток и выключателей с неброским изысканным дизайном. Несмотря на внешнюю простоту, FEDE MARCO привлекает покупателя палитрой расцветок: например, глубокий, насыщенный и дорогой цвет рамки «красное вино» потрясающе смотрится в сочетании с белой клавишей. И таких вариаций десятки среди широкого многообразия цветов серии. Розетки и выключатели FEDE MARCO - это удачное приобретение для тех, кто ценит сдержанную роскошь.Купить по лучшим ценам с доставкой розетки и выключатели FEDE Marco.", "path": "uploads/series/79/797/1556382608619.png"}], "published": true, "description": "FEDE MARCO - серия лаконичных розеток и выключателей с неброским изысканным дизайном. Несмотря на внешнюю простоту, FEDE MARCO привлекает покупателя палитрой расцветок: например, глубокий, насыщенный и дорогой цвет рамки «красное вино» потрясающе смотрится в сочетании с белой клавишей. И таких вариаций десятки среди широкого многообразия цветов серии. Розетки и выключатели FEDE MARCO - это удачное приобретение для тех, кто ценит сдержанную роскошь.Купить по лучшим ценам с доставкой розетки и выключатели FEDE Marco.", "productTypes": []},
        "created": "2021-08-30 07:38:21.877516",
        "modified": "2021-08-30 07:38:21.877516",
        "deleted": false
      },
      {
        "id": "8Eqv2bZKOyDSCvj5crcOs",
        "rev": 0,
        "options": {"slug": "fede-san-sebastian", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede San Sebastian", "oldId": 66, "images": [{"alt": "FEDE SAN SEBASTIAN - это серия розеток и выключателей класса люкс для шикарных интерьеров. Роскошная узорчатая рама в сочетании с классической клавишей смотрится изысканно и делает конструкцию воздушной и необычной. Отличное качество и износостойкость розеток и выключателей FEDE SAN SEBASTIAN придутся по вкусу ценителям вещей «на века». Благодаря конфигуратору будет максимально просто выбрать оттенки SAN SEBASTIAN именно для Вашего интерьера. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede San Sebastian на выгодных условиях. &nbsp;\n", "path": "uploads/series/6/66/1556382694418.png"}, {"alt": "FEDE SAN SEBASTIAN - это серия розеток и выключателей класса люкс для шикарных интерьеров. Роскошная узорчатая рама в сочетании с классической клавишей смотрится изысканно и делает конструкцию воздушной и необычной. Отличное качество и износостойкость розеток и выключателей FEDE SAN SEBASTIAN придутся по вкусу ценителям вещей «на века». Благодаря конфигуратору будет максимально просто выбрать оттенки SAN SEBASTIAN именно для Вашего интерьера. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede San Sebastian на выгодных условиях. &nbsp;\n", "path": "uploads/series/6/66/1556382700565.png"}, {"alt": "FEDE SAN SEBASTIAN - это серия розеток и выключателей класса люкс для шикарных интерьеров. Роскошная узорчатая рама в сочетании с классической клавишей смотрится изысканно и делает конструкцию воздушной и необычной. Отличное качество и износостойкость розеток и выключателей FEDE SAN SEBASTIAN придутся по вкусу ценителям вещей «на века». Благодаря конфигуратору будет максимально просто выбрать оттенки SAN SEBASTIAN именно для Вашего интерьера. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede San Sebastian на выгодных условиях. &nbsp;\n", "path": "uploads/series/6/66/1556382705616.png"}, {"alt": "FEDE SAN SEBASTIAN - это серия розеток и выключателей класса люкс для шикарных интерьеров. Роскошная узорчатая рама в сочетании с классической клавишей смотрится изысканно и делает конструкцию воздушной и необычной. Отличное качество и износостойкость розеток и выключателей FEDE SAN SEBASTIAN придутся по вкусу ценителям вещей «на века». Благодаря конфигуратору будет максимально просто выбрать оттенки SAN SEBASTIAN именно для Вашего интерьера. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede San Sebastian на выгодных условиях. &nbsp;\n", "path": "uploads/series/6/66/1556382710822.png"}, {"alt": "FEDE SAN SEBASTIAN - это серия розеток и выключателей класса люкс для шикарных интерьеров. Роскошная узорчатая рама в сочетании с классической клавишей смотрится изысканно и делает конструкцию воздушной и необычной. Отличное качество и износостойкость розеток и выключателей FEDE SAN SEBASTIAN придутся по вкусу ценителям вещей «на века». Благодаря конфигуратору будет максимально просто выбрать оттенки SAN SEBASTIAN именно для Вашего интерьера. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede San Sebastian на выгодных условиях. &nbsp;\n", "path": "uploads/series/6/66/1556382716264.png"}], "published": true, "description": "FEDE SAN SEBASTIAN - это серия розеток и выключателей класса люкс для шикарных интерьеров. Роскошная узорчатая рама в сочетании с классической клавишей смотрится изысканно и делает конструкцию воздушной и необычной. Отличное качество и износостойкость розеток и выключателей FEDE SAN SEBASTIAN придутся по вкусу ценителям вещей «на века». Благодаря конфигуратору будет максимально просто выбрать оттенки SAN SEBASTIAN именно для Вашего интерьера. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede San Sebastian на выгодных условиях. &nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.887984",
        "modified": "2021-08-30 07:38:21.887984",
        "deleted": false
      },
      {
        "id": "Yh2PESqmF3vcGm12VjFnY",
        "rev": 0,
        "options": {"slug": "fede-toledo-", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede Toledo ", "oldId": 68, "images": [{"alt": "Серия розеток и выключателей FEDE TOLEDO - это настоящее произведение искусства. Рамка в цвете Oxyde Green - прямое тому подтверждение. В сочетании с клавишей в оттенке «графит» изумрудный оттенок рамы морской волны становится более глубоким и насыщенным. Стильное и смелое решение для необычного интерьера. А самое главное, розетки и выключатели FEDE TOLEDO так же прочны и долговечны, как и красивы. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede Toledo по выгодной цене.&nbsp;\n", "path": "uploads/series/6/68/1556382959934.png"}, {"alt": "Серия розеток и выключателей FEDE TOLEDO - это настоящее произведение искусства. Рамка в цвете Oxyde Green - прямое тому подтверждение. В сочетании с клавишей в оттенке «графит» изумрудный оттенок рамы морской волны становится более глубоким и насыщенным. Стильное и смелое решение для необычного интерьера. А самое главное, розетки и выключатели FEDE TOLEDO так же прочны и долговечны, как и красивы. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede Toledo по выгодной цене.&nbsp;\n", "path": "uploads/series/6/68/1556382967690.png"}, {"alt": "Серия розеток и выключателей FEDE TOLEDO - это настоящее произведение искусства. Рамка в цвете Oxyde Green - прямое тому подтверждение. В сочетании с клавишей в оттенке «графит» изумрудный оттенок рамы морской волны становится более глубоким и насыщенным. Стильное и смелое решение для необычного интерьера. А самое главное, розетки и выключатели FEDE TOLEDO так же прочны и долговечны, как и красивы. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede Toledo по выгодной цене.&nbsp;\n", "path": "uploads/series/6/68/1556382983216.png"}, {"alt": "Серия розеток и выключателей FEDE TOLEDO - это настоящее произведение искусства. Рамка в цвете Oxyde Green - прямое тому подтверждение. В сочетании с клавишей в оттенке «графит» изумрудный оттенок рамы морской волны становится более глубоким и насыщенным. Стильное и смелое решение для необычного интерьера. А самое главное, розетки и выключатели FEDE TOLEDO так же прочны и долговечны, как и красивы. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede Toledo по выгодной цене.&nbsp;\n", "path": "uploads/series/6/68/1556382991212.png"}, {"alt": "Серия розеток и выключателей FEDE TOLEDO - это настоящее произведение искусства. Рамка в цвете Oxyde Green - прямое тому подтверждение. В сочетании с клавишей в оттенке «графит» изумрудный оттенок рамы морской волны становится более глубоким и насыщенным. Стильное и смелое решение для необычного интерьера. А самое главное, розетки и выключатели FEDE TOLEDO так же прочны и долговечны, как и красивы. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede Toledo по выгодной цене.&nbsp;\n", "path": "uploads/series/6/68/1556382997921.png"}], "published": true, "description": "Серия розеток и выключателей FEDE TOLEDO - это настоящее произведение искусства. Рамка в цвете Oxyde Green - прямое тому подтверждение. В сочетании с клавишей в оттенке «графит» изумрудный оттенок рамы морской волны становится более глубоким и насыщенным. Стильное и смелое решение для необычного интерьера. А самое главное, розетки и выключатели FEDE TOLEDO так же прочны и долговечны, как и красивы. В нашем интернет-магазине Розетки Шоп Вы можете&nbsp;купить рамки Fede Toledo по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.899549",
        "modified": "2021-08-30 07:38:21.899549",
        "deleted": false
      },
      {
        "id": "aFqefGYzKME-LBWrflSvD",
        "rev": 0,
        "options": {"slug": "mehanizmy", "brand": "Db631XicQnZuaIBMGGoO6", "label": "Механизмы", "oldId": 802, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:21.911641",
        "modified": "2021-08-30 07:38:21.911641",
        "deleted": false
      },
      {
        "id": "0A7SvGel13gjCHzlXlxE6",
        "rev": 0,
        "options": {"slug": "abb", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB", "oldId": 7, "images": [], "published": false, "description": "Корпорация АББ является передовым разработчиком технологий в сфере электроэнергетики и автоматизации. Технологии АББ активно внедряются в промышленные предприятия и энергетические компании с целью снижения негативного воздействия производства на окружающую среду и повышения производительности.&nbsp;\nАББ имеет предприятия в более чем 100 странах, в штате компании работает около 145 тысяч человек.&nbsp;\nВ нашем интернет магазине Вы можете купить розетки и выключатели ABB или заказать розетки и выключатели Абб по хорошей цене от компании ABB. \n", "productTypes": []},
        "created": "2021-08-30 07:38:21.921640",
        "modified": "2021-08-30 07:38:21.921640",
        "deleted": false
      },
      {
        "id": "FapaFO7OJ-6swszzQKTx0",
        "rev": 0,
        "options": {"slug": "rekomenduemoe", "brand": "KVrU0ocz-SuPNYeC43IkR", "label": "Рекомендуемое", "oldId": 803, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:21.930894",
        "modified": "2021-08-30 07:38:21.930894",
        "deleted": false
      },
      {
        "id": "ov0FwZDiYsrFj-tNlpeLa",
        "rev": 0,
        "options": {"slug": "novinki", "brand": "KVrU0ocz-SuPNYeC43IkR", "label": "Новинки", "oldId": 804, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:21.939782",
        "modified": "2021-08-30 07:38:21.939782",
        "deleted": false
      },
      {
        "id": "9tzQ2MS4Qamvk7knozgJ2",
        "rev": 0,
        "options": {"slug": "abb-dynasty", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Dynasty", "oldId": 502, "images": [{"alt": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "path": "uploads/series/50/502/1556369579583.png"}, {"alt": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "path": "uploads/series/50/502/1556369588246.png"}, {"alt": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "path": "uploads/series/50/502/1556369596224.png"}, {"alt": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "path": "uploads/series/50/502/1556369603675.png"}, {"alt": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "path": "uploads/series/50/502/1556369612424.png"}, {"alt": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "path": "uploads/series/50/502/1556369620045.png"}], "published": true, "description": "ABB DYNASTY – это красивая серия розеток и выключателей с рамками из латуни, стекла и пластика. Самые популярные расцветки антрацит и слоновая кость подойдут как для офиса, так и для домашнего интерьера. У нас покупатель может выбрать и купить выключатели и розетки ABB, исходя из своего бюджета и потребностей. Мы с радостью поможем подобрать идеальный вариант для Вас и Вашего дома.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.948452",
        "modified": "2021-08-30 07:38:21.948452",
        "deleted": false
      },
      {
        "id": "4x6EFuRwIdbAChRDlmCyT",
        "rev": 0,
        "options": {"slug": "merten-d-life", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten D-LIFE", "oldId": 735, "images": [{"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374643305.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374650221.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374658725.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374666370.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374676065.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374683507.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374694693.png"}, {"alt": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "path": "uploads/series/73/735/1556374701200.png"}], "published": true, "description": "Отличное решение для премиальных люксовых интерьеров — MERTEN D-LIFE. Потрясающая сборка, четкие линии, тонкие рамки в цветах «никель», «шампань», «белый кристалл», «черный оникс», «антрацит», «белый лотос» - все это делает серию такой изысканной и привлекательной. Рамки серии изготавливаются из камня, металла, стекла и термопласта — не правда ли, большой выбор для любой дизайнерской задумки? У нас можно приобрести суперстильные и сверхкачественные выключатели и розетки MERTEN D-LIFE с доставкой в любой уголок России.\n\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.966494",
        "modified": "2021-08-30 07:38:21.966494",
        "deleted": false
      },
      {
        "id": "GgEWFgh4294fCH5W7ITFT",
        "rev": 0,
        "options": {"slug": "merten-antique", "brand": "AvqaI7K1HSxfM3VNPQ_1W", "label": "Merten Antique", "oldId": 151, "images": [{"alt": "MERTEN ANTIQUE – это незаурядная серия розеток и выключателей премиум-класса. Такие изделия легко можно встретить в особняке или отеле класса «Люкс», так как их богатый внешний вид и отличное качество созданы для роскошных интерьеров. Цветовая палитра серии разнообразна: Вы можете выбрать белый, бежевый, коричневый оттенки, оттенки «блестящая латунь» и «античная латунь». Крупная клавиша и тонкая рамка в античном стиле в сочетании смотрятся дорого и стильно, без вульгарности и излишней помпезности. Розетки и выключатели MERTEN ANTIQUE не только хороши собой, но и долговечны, что порадует любителей качественных хороших вещей.\n", "path": "uploads/series/15/151/1556374391547.png"}, {"alt": "MERTEN ANTIQUE – это незаурядная серия розеток и выключателей премиум-класса. Такие изделия легко можно встретить в особняке или отеле класса «Люкс», так как их богатый внешний вид и отличное качество созданы для роскошных интерьеров. Цветовая палитра серии разнообразна: Вы можете выбрать белый, бежевый, коричневый оттенки, оттенки «блестящая латунь» и «античная латунь». Крупная клавиша и тонкая рамка в античном стиле в сочетании смотрятся дорого и стильно, без вульгарности и излишней помпезности. Розетки и выключатели MERTEN ANTIQUE не только хороши собой, но и долговечны, что порадует любителей качественных хороших вещей.\n", "path": "uploads/series/15/151/1556374396761.png"}, {"alt": "MERTEN ANTIQUE – это незаурядная серия розеток и выключателей премиум-класса. Такие изделия легко можно встретить в особняке или отеле класса «Люкс», так как их богатый внешний вид и отличное качество созданы для роскошных интерьеров. Цветовая палитра серии разнообразна: Вы можете выбрать белый, бежевый, коричневый оттенки, оттенки «блестящая латунь» и «античная латунь». Крупная клавиша и тонкая рамка в античном стиле в сочетании смотрятся дорого и стильно, без вульгарности и излишней помпезности. Розетки и выключатели MERTEN ANTIQUE не только хороши собой, но и долговечны, что порадует любителей качественных хороших вещей.\n", "path": "uploads/series/15/151/1556374401323.png"}, {"alt": "MERTEN ANTIQUE – это незаурядная серия розеток и выключателей премиум-класса. Такие изделия легко можно встретить в особняке или отеле класса «Люкс», так как их богатый внешний вид и отличное качество созданы для роскошных интерьеров. Цветовая палитра серии разнообразна: Вы можете выбрать белый, бежевый, коричневый оттенки, оттенки «блестящая латунь» и «античная латунь». Крупная клавиша и тонкая рамка в античном стиле в сочетании смотрятся дорого и стильно, без вульгарности и излишней помпезности. Розетки и выключатели MERTEN ANTIQUE не только хороши собой, но и долговечны, что порадует любителей качественных хороших вещей.\n", "path": "uploads/series/15/151/1556374407177.png"}, {"alt": "MERTEN ANTIQUE – это незаурядная серия розеток и выключателей премиум-класса. Такие изделия легко можно встретить в особняке или отеле класса «Люкс», так как их богатый внешний вид и отличное качество созданы для роскошных интерьеров. Цветовая палитра серии разнообразна: Вы можете выбрать белый, бежевый, коричневый оттенки, оттенки «блестящая латунь» и «античная латунь». Крупная клавиша и тонкая рамка в античном стиле в сочетании смотрятся дорого и стильно, без вульгарности и излишней помпезности. Розетки и выключатели MERTEN ANTIQUE не только хороши собой, но и долговечны, что порадует любителей качественных хороших вещей.\n", "path": "uploads/series/15/151/1556374411849.png"}], "published": true, "description": "MERTEN ANTIQUE – это незаурядная серия розеток и выключателей премиум-класса. Такие изделия легко можно встретить в особняке или отеле класса «Люкс», так как их богатый внешний вид и отличное качество созданы для роскошных интерьеров. Цветовая палитра серии разнообразна: Вы можете выбрать белый, бежевый, коричневый оттенки, оттенки «блестящая латунь» и «античная латунь». Крупная клавиша и тонкая рамка в античном стиле в сочетании смотрятся дорого и стильно, без вульгарности и излишней помпезности. Розетки и выключатели MERTEN ANTIQUE не только хороши собой, но и долговечны, что порадует любителей качественных хороших вещей.\n", "productTypes": []},
        "created": "2021-08-30 07:38:21.982990",
        "modified": "2021-08-30 07:38:21.982990",
        "deleted": false
      },
      {
        "id": "1XQKf9gRyI9GFNHFT1RK-",
        "rev": 0,
        "options": {"slug": "jung-ls-990-plastik", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "JUNG LS 990 пластик", "oldId": 786, "images": [{"alt": "JUNG LS 990 с рамками из пластика - это вечная и всеми любимая классика. Розетки и выключатели этой серии популярны и пользуются спросом благодаря своему строгому, но приметному дизайну и отличному качеству. Большая клавиша и узкая рамка - вот главная концепция JUNG LS 990 в пластике. Покупатель может выбрать оттенки рамок - беж, серый, белый, чёрный.", "path": "uploads/series/78/786/1556370971109.png"}, {"alt": "JUNG LS 990 с рамками из пластика - это вечная и всеми любимая классика. Розетки и выключатели этой серии популярны и пользуются спросом благодаря своему строгому, но приметному дизайну и отличному качеству. Большая клавиша и узкая рамка - вот главная концепция JUNG LS 990 в пластике. Покупатель может выбрать оттенки рамок - беж, серый, белый, чёрный.", "path": "uploads/series/78/786/1556370982727.png"}, {"alt": "JUNG LS 990 с рамками из пластика - это вечная и всеми любимая классика. Розетки и выключатели этой серии популярны и пользуются спросом благодаря своему строгому, но приметному дизайну и отличному качеству. Большая клавиша и узкая рамка - вот главная концепция JUNG LS 990 в пластике. Покупатель может выбрать оттенки рамок - беж, серый, белый, чёрный.", "path": "uploads/series/78/786/1556370991528.png"}, {"alt": "JUNG LS 990 с рамками из пластика - это вечная и всеми любимая классика. Розетки и выключатели этой серии популярны и пользуются спросом благодаря своему строгому, но приметному дизайну и отличному качеству. Большая клавиша и узкая рамка - вот главная концепция JUNG LS 990 в пластике. Покупатель может выбрать оттенки рамок - беж, серый, белый, чёрный.", "path": "uploads/series/78/786/1556370996846.png"}], "published": true, "description": "JUNG LS 990 с рамками из пластика - это вечная и всеми любимая классика. Розетки и выключатели этой серии популярны и пользуются спросом благодаря своему строгому, но приметному дизайну и отличному качеству. Большая клавиша и узкая рамка - вот главная концепция JUNG LS 990 в пластике. Покупатель может выбрать оттенки рамок - беж, серый, белый, чёрный.", "productTypes": []},
        "created": "2021-08-30 07:38:21.994985",
        "modified": "2021-08-30 07:38:21.994985",
        "deleted": false
      },
      {
        "id": "aWaqsR3TiE3omxbc7P5gl",
        "rev": 0,
        "options": {"slug": "berker-q3", "brand": "llCUtLwlMQXEdHtukQLtv", "label": "Berker Q.3", "oldId": 791, "images": [{"alt": "BERKER Q.3 - это классические розетки и выключатели в уже полюбившихся пользователю стандартных цветах: белый, полярная белизна, антрацит, алюминий. При всей своей внешней хрупкости и утонченности продукция BERKER Q.3 максимально прочна и долговечна, потому что изготавливается из самых лучших и качественных материалов. Изделия этой серии сочетают в себе отличное качество, надежность и адекватную цену. Приятный сдержанный внешний вид придётся по вкусу любителям минимализма. Розетки и выключатели BERKER Q.3 станут отличным решением для дома, офиса, хостела или отеля. ", "path": "uploads/series/79/791/1556365318417.jpg"}, {"alt": "BERKER Q.3 - это классические розетки и выключатели в уже полюбившихся пользователю стандартных цветах: белый, полярная белизна, антрацит, алюминий. При всей своей внешней хрупкости и утонченности продукция BERKER Q.3 максимально прочна и долговечна, потому что изготавливается из самых лучших и качественных материалов. Изделия этой серии сочетают в себе отличное качество, надежность и адекватную цену. Приятный сдержанный внешний вид придётся по вкусу любителям минимализма. Розетки и выключатели BERKER Q.3 станут отличным решением для дома, офиса, хостела или отеля. ", "path": "uploads/series/79/791/1556784605308.jpg"}, {"alt": "BERKER Q.3 - это классические розетки и выключатели в уже полюбившихся пользователю стандартных цветах: белый, полярная белизна, антрацит, алюминий. При всей своей внешней хрупкости и утонченности продукция BERKER Q.3 максимально прочна и долговечна, потому что изготавливается из самых лучших и качественных материалов. Изделия этой серии сочетают в себе отличное качество, надежность и адекватную цену. Приятный сдержанный внешний вид придётся по вкусу любителям минимализма. Розетки и выключатели BERKER Q.3 станут отличным решением для дома, офиса, хостела или отеля. ", "path": "uploads/series/79/791/1556784623514.jpg"}], "published": true, "description": "BERKER Q.3 - это классические розетки и выключатели в уже полюбившихся пользователю стандартных цветах: белый, полярная белизна, антрацит, алюминий. При всей своей внешней хрупкости и утонченности продукция BERKER Q.3 максимально прочна и долговечна, потому что изготавливается из самых лучших и качественных материалов. Изделия этой серии сочетают в себе отличное качество, надежность и адекватную цену. Приятный сдержанный внешний вид придётся по вкусу любителям минимализма. Розетки и выключатели BERKER Q.3 станут отличным решением для дома, офиса, хостела или отеля. ", "productTypes": []},
        "created": "2021-08-30 07:38:22.005779",
        "modified": "2021-08-30 07:38:22.005779",
        "deleted": false
      },
      {
        "id": "8TgJcXoxp6qrgz1lzypAw",
        "rev": 0,
        "options": {"slug": "fede-granada", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede GRANADA", "oldId": 64, "images": [{"alt": "Серия FEDE GRANADA популярна и узнаваема благодаря узору, обрамляющему рамку изделий. Продукция серии исполнена в андалузском стиле с присущей ему детализацией и роскошью. У нас Вы можете купить розетки и выключатели FEDE GRANADA в различных цветовых вариациях для любого интерьера на любой вкус.В нашем интернет-магазине Розетки Шоп Вы можете купить&nbsp;рамки Fede Granada по выгодной цене.&nbsp;\n", "path": "uploads/series/6/64/1556382368451.png"}, {"alt": "Серия FEDE GRANADA популярна и узнаваема благодаря узору, обрамляющему рамку изделий. Продукция серии исполнена в андалузском стиле с присущей ему детализацией и роскошью. У нас Вы можете купить розетки и выключатели FEDE GRANADA в различных цветовых вариациях для любого интерьера на любой вкус.В нашем интернет-магазине Розетки Шоп Вы можете купить&nbsp;рамки Fede Granada по выгодной цене.&nbsp;\n", "path": "uploads/series/6/64/1556382375169.png"}, {"alt": "Серия FEDE GRANADA популярна и узнаваема благодаря узору, обрамляющему рамку изделий. Продукция серии исполнена в андалузском стиле с присущей ему детализацией и роскошью. У нас Вы можете купить розетки и выключатели FEDE GRANADA в различных цветовых вариациях для любого интерьера на любой вкус.В нашем интернет-магазине Розетки Шоп Вы можете купить&nbsp;рамки Fede Granada по выгодной цене.&nbsp;\n", "path": "uploads/series/6/64/1556382381255.png"}], "published": true, "description": "Серия FEDE GRANADA популярна и узнаваема благодаря узору, обрамляющему рамку изделий. Продукция серии исполнена в андалузском стиле с присущей ему детализацией и роскошью. У нас Вы можете купить розетки и выключатели FEDE GRANADA в различных цветовых вариациях для любого интерьера на любой вкус.В нашем интернет-магазине Розетки Шоп Вы можете купить&nbsp;рамки Fede Granada по выгодной цене.&nbsp;\n", "productTypes": []},
        "created": "2021-08-30 07:38:22.016190",
        "modified": "2021-08-30 07:38:22.016190",
        "deleted": false
      },
      {
        "id": "1BHWTOlkj_Fgj3ZZR_vUY",
        "rev": 0,
        "options": {"slug": "fede-sevilla", "brand": "Y70qCUU3SN4FV1_IjRdMA", "label": "Fede Sevilla", "oldId": 67, "images": [{"alt": "Розетки и выключатели FEDE SEVILLA - это изысканный внешний вид и превосходное качество. Рамка серии украшена плетёным узором, выделяющим ее среди других продуктов компании. Если правильно подобрать сочетание цветов рамок и клавиш, интерьер засияет новыми оттенками. Розетки и выключатели FEDE SEVILLA порадуют любителей выделяться - дизайн серии не останется без внимания и соберёт комплименты Ваших гостей. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки серии&nbsp;&nbsp;Fede Sevilla на выгодных условиях.\n", "path": "uploads/series/6/67/1556382789380.png"}, {"alt": "Розетки и выключатели FEDE SEVILLA - это изысканный внешний вид и превосходное качество. Рамка серии украшена плетёным узором, выделяющим ее среди других продуктов компании. Если правильно подобрать сочетание цветов рамок и клавиш, интерьер засияет новыми оттенками. Розетки и выключатели FEDE SEVILLA порадуют любителей выделяться - дизайн серии не останется без внимания и соберёт комплименты Ваших гостей. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки серии&nbsp;&nbsp;Fede Sevilla на выгодных условиях.\n", "path": "uploads/series/6/67/1556382794334.png"}, {"alt": "Розетки и выключатели FEDE SEVILLA - это изысканный внешний вид и превосходное качество. Рамка серии украшена плетёным узором, выделяющим ее среди других продуктов компании. Если правильно подобрать сочетание цветов рамок и клавиш, интерьер засияет новыми оттенками. Розетки и выключатели FEDE SEVILLA порадуют любителей выделяться - дизайн серии не останется без внимания и соберёт комплименты Ваших гостей. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки серии&nbsp;&nbsp;Fede Sevilla на выгодных условиях.\n", "path": "uploads/series/6/67/1556382799697.png"}], "published": true, "description": "Розетки и выключатели FEDE SEVILLA - это изысканный внешний вид и превосходное качество. Рамка серии украшена плетёным узором, выделяющим ее среди других продуктов компании. Если правильно подобрать сочетание цветов рамок и клавиш, интерьер засияет новыми оттенками. Розетки и выключатели FEDE SEVILLA порадуют любителей выделяться - дизайн серии не останется без внимания и соберёт комплименты Ваших гостей. В нашем интернет-магазине Розетки Шоп Вы можете купить рамки серии&nbsp;&nbsp;Fede Sevilla на выгодных условиях.\n", "productTypes": []},
        "created": "2021-08-30 07:38:22.027375",
        "modified": "2021-08-30 07:38:22.027375",
        "deleted": false
      },
      {
        "id": "NFC6533VjoMezMGrxKGSk",
        "rev": 0,
        "options": {"slug": "legrand-valena-life", "brand": "MPhYSpWNOWGL09gv2_Tf8", "label": "Legrand Valena Life", "oldId": 789, "images": [{"alt": "LEGRAND VALENA LIFE – это идеальное французское качество, легкий монтаж, разнообразная палитра цветов и эффектный дизайн. Прямые линии рамок серии притягивают взгляд, а широкий выбор оттенков дает простор для фантазии. Покупатель может выбрать классические цвета «белый» и «слоновая кость», либо выбрать более яркие решения — однотонные либо с узорами на свой вкус. Надежность конструкции розеток и выключателей LEGRAND VALENA LIFE позволяет устанавливать их не только дома, но и в местах с большим потоком людей — в офисах, магазинах, ресторанах, гостиницах. Стойкие к ударам и царапинам изделия LEGRAND готовы к долгой эксплуатации без внешних и внутренних повреждений.", "path": "uploads/series/78/789/1556371394733.png"}, {"alt": "LEGRAND VALENA LIFE – это идеальное французское качество, легкий монтаж, разнообразная палитра цветов и эффектный дизайн. Прямые линии рамок серии притягивают взгляд, а широкий выбор оттенков дает простор для фантазии. Покупатель может выбрать классические цвета «белый» и «слоновая кость», либо выбрать более яркие решения — однотонные либо с узорами на свой вкус. Надежность конструкции розеток и выключателей LEGRAND VALENA LIFE позволяет устанавливать их не только дома, но и в местах с большим потоком людей — в офисах, магазинах, ресторанах, гостиницах. Стойкие к ударам и царапинам изделия LEGRAND готовы к долгой эксплуатации без внешних и внутренних повреждений.", "path": "uploads/series/78/789/1556371399547.png"}, {"alt": "LEGRAND VALENA LIFE – это идеальное французское качество, легкий монтаж, разнообразная палитра цветов и эффектный дизайн. Прямые линии рамок серии притягивают взгляд, а широкий выбор оттенков дает простор для фантазии. Покупатель может выбрать классические цвета «белый» и «слоновая кость», либо выбрать более яркие решения — однотонные либо с узорами на свой вкус. Надежность конструкции розеток и выключателей LEGRAND VALENA LIFE позволяет устанавливать их не только дома, но и в местах с большим потоком людей — в офисах, магазинах, ресторанах, гостиницах. Стойкие к ударам и царапинам изделия LEGRAND готовы к долгой эксплуатации без внешних и внутренних повреждений.", "path": "uploads/series/78/789/1556371408095.png"}, {"alt": "LEGRAND VALENA LIFE – это идеальное французское качество, легкий монтаж, разнообразная палитра цветов и эффектный дизайн. Прямые линии рамок серии притягивают взгляд, а широкий выбор оттенков дает простор для фантазии. Покупатель может выбрать классические цвета «белый» и «слоновая кость», либо выбрать более яркие решения — однотонные либо с узорами на свой вкус. Надежность конструкции розеток и выключателей LEGRAND VALENA LIFE позволяет устанавливать их не только дома, но и в местах с большим потоком людей — в офисах, магазинах, ресторанах, гостиницах. Стойкие к ударам и царапинам изделия LEGRAND готовы к долгой эксплуатации без внешних и внутренних повреждений.", "path": "uploads/series/78/789/1556371413997.png"}], "published": true, "description": "LEGRAND VALENA LIFE – это идеальное французское качество, легкий монтаж, разнообразная палитра цветов и эффектный дизайн. Прямые линии рамок серии притягивают взгляд, а широкий выбор оттенков дает простор для фантазии. Покупатель может выбрать классические цвета «белый» и «слоновая кость», либо выбрать более яркие решения — однотонные либо с узорами на свой вкус. Надежность конструкции розеток и выключателей LEGRAND VALENA LIFE позволяет устанавливать их не только дома, но и в местах с большим потоком людей — в офисах, магазинах, ресторанах, гостиницах. Стойкие к ударам и царапинам изделия LEGRAND готовы к долгой эксплуатации без внешних и внутренних повреждений.", "productTypes": []},
        "created": "2021-08-30 07:38:22.036631",
        "modified": "2021-08-30 07:38:22.036631",
        "deleted": false
      },
      {
        "id": "9LrstF4buzb6ALw3AjS83",
        "rev": 0,
        "options": {"slug": "abb-sky-moon-klavishi-i-nakladki", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Sky Moon клавиши и накладки", "oldId": 810, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.083536",
        "modified": "2021-08-30 07:38:22.083536",
        "deleted": false
      },
      {
        "id": "RdGTmq4ekIh7-qG73Rnpi",
        "rev": 0,
        "options": {"slug": "abb-niessen-sky-moon", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Niessen Sky Moon", "oldId": 809, "images": [{"alt": "ABB Sky Moon - продукция для тех, кто устал от классического дизайна и хочет расставить правильные акценты в интерьере. Квадратная рамка с прямыми линиями сочетается с круглой клавишей, создавая конструкцию, притягивающую взгляды и вызывающую желание прикоснуться к ней. Привлекательные розетки и выключатели серии представлены в цветах чёрное стекло, белое стекло и нержавеющая сталь.&nbsp;<div>Помимо внешней выразительности, серия ABB Skymoon станет интересна потенциальному покупателю отличным качеством сборки, гарантирующим долговечность и безопасность эксплуатации. Покупая ABB Sky Moon, Вы можете быть уверены в том, что приобретаете надежную, качественную, и красивую продукцию, которая будет служить долгие годы.</div>", "path": "uploads/series/80/809/1604578051864.jpg"}, {"alt": "ABB Sky Moon - продукция для тех, кто устал от классического дизайна и хочет расставить правильные акценты в интерьере. Квадратная рамка с прямыми линиями сочетается с круглой клавишей, создавая конструкцию, притягивающую взгляды и вызывающую желание прикоснуться к ней. Привлекательные розетки и выключатели серии представлены в цветах чёрное стекло, белое стекло и нержавеющая сталь.&nbsp;<div>Помимо внешней выразительности, серия ABB Skymoon станет интересна потенциальному покупателю отличным качеством сборки, гарантирующим долговечность и безопасность эксплуатации. Покупая ABB Sky Moon, Вы можете быть уверены в том, что приобретаете надежную, качественную, и красивую продукцию, которая будет служить долгие годы.</div>", "path": "uploads/series/80/809/1604578059798.jpg"}, {"alt": "ABB Sky Moon - продукция для тех, кто устал от классического дизайна и хочет расставить правильные акценты в интерьере. Квадратная рамка с прямыми линиями сочетается с круглой клавишей, создавая конструкцию, притягивающую взгляды и вызывающую желание прикоснуться к ней. Привлекательные розетки и выключатели серии представлены в цветах чёрное стекло, белое стекло и нержавеющая сталь.&nbsp;<div>Помимо внешней выразительности, серия ABB Skymoon станет интересна потенциальному покупателю отличным качеством сборки, гарантирующим долговечность и безопасность эксплуатации. Покупая ABB Sky Moon, Вы можете быть уверены в том, что приобретаете надежную, качественную, и красивую продукцию, которая будет служить долгие годы.</div>", "path": "uploads/series/80/809/1604578066313.jpg"}], "published": true, "description": "ABB Sky Moon - продукция для тех, кто устал от классического дизайна и хочет расставить правильные акценты в интерьере. Квадратная рамка с прямыми линиями сочетается с круглой клавишей, создавая конструкцию, притягивающую взгляды и вызывающую желание прикоснуться к ней. Привлекательные розетки и выключатели серии представлены в цветах чёрное стекло, белое стекло и нержавеющая сталь.&nbsp;<div>Помимо внешней выразительности, серия ABB Skymoon станет интересна потенциальному покупателю отличным качеством сборки, гарантирующим долговечность и безопасность эксплуатации. Покупая ABB Sky Moon, Вы можете быть уверены в том, что приобретаете надежную, качественную, и красивую продукцию, которая будет служить долгие годы.</div>", "productTypes": []},
        "created": "2021-08-30 07:38:22.092737",
        "modified": "2021-08-30 07:38:22.092737",
        "deleted": false
      },
      {
        "id": "fURyNLEqqOStsZgkRO_Hb",
        "rev": 0,
        "options": {"slug": "abb-niessen-sky", "brand": "H8eZPPqexttjzoeIMaUp8", "label": "ABB Niessen Sky", "oldId": 807, "images": [{"alt": "Серия выключателей ABB SKY выполнена в современном угловатом дизайне, привлекает внимание тонкими линиями. Элегантная продукция серии найдёт применение в интерьере в стиле минимализм и будет выигрышно смотреться в любом из представленных в линейке цветовых решений. Покупатель может выбрать рамки из дерева, пластика, металла и стекла, что делает ABB SKY подходящей серией под любую дизайнерскую задумку. Цвета рамок ABB SKY - белый, чёрное стекло, нержавеющая сталь, белое стекло, венге - заставят заиграть интерьер новыми красками. Выбирая ABB Sky, Вы вносите изюминку в дизайн Вашего жилища.&nbsp;<div>Серия розеток и выключателей ABB Niessen Sky выполнена в пластике, стекле, металле и дереве.&nbsp; &nbsp;В нашем интернет магазине Вы купите по отличной цене ABB Niessen Sky с доставкой по Москве.</div>", "path": "uploads/series/80/807/1603901784402.jpg"}, {"alt": "Серия выключателей ABB SKY выполнена в современном угловатом дизайне, привлекает внимание тонкими линиями. Элегантная продукция серии найдёт применение в интерьере в стиле минимализм и будет выигрышно смотреться в любом из представленных в линейке цветовых решений. Покупатель может выбрать рамки из дерева, пластика, металла и стекла, что делает ABB SKY подходящей серией под любую дизайнерскую задумку. Цвета рамок ABB SKY - белый, чёрное стекло, нержавеющая сталь, белое стекло, венге - заставят заиграть интерьер новыми красками. Выбирая ABB Sky, Вы вносите изюминку в дизайн Вашего жилища.&nbsp;<div>Серия розеток и выключателей ABB Niessen Sky выполнена в пластике, стекле, металле и дереве.&nbsp; &nbsp;В нашем интернет магазине Вы купите по отличной цене ABB Niessen Sky с доставкой по Москве.</div>", "path": "uploads/series/80/807/1603901805333.jpg"}, {"alt": "Серия выключателей ABB SKY выполнена в современном угловатом дизайне, привлекает внимание тонкими линиями. Элегантная продукция серии найдёт применение в интерьере в стиле минимализм и будет выигрышно смотреться в любом из представленных в линейке цветовых решений. Покупатель может выбрать рамки из дерева, пластика, металла и стекла, что делает ABB SKY подходящей серией под любую дизайнерскую задумку. Цвета рамок ABB SKY - белый, чёрное стекло, нержавеющая сталь, белое стекло, венге - заставят заиграть интерьер новыми красками. Выбирая ABB Sky, Вы вносите изюминку в дизайн Вашего жилища.&nbsp;<div>Серия розеток и выключателей ABB Niessen Sky выполнена в пластике, стекле, металле и дереве.&nbsp; &nbsp;В нашем интернет магазине Вы купите по отличной цене ABB Niessen Sky с доставкой по Москве.</div>", "path": "uploads/series/80/807/1603901977672.png"}, {"alt": "Серия выключателей ABB SKY выполнена в современном угловатом дизайне, привлекает внимание тонкими линиями. Элегантная продукция серии найдёт применение в интерьере в стиле минимализм и будет выигрышно смотреться в любом из представленных в линейке цветовых решений. Покупатель может выбрать рамки из дерева, пластика, металла и стекла, что делает ABB SKY подходящей серией под любую дизайнерскую задумку. Цвета рамок ABB SKY - белый, чёрное стекло, нержавеющая сталь, белое стекло, венге - заставят заиграть интерьер новыми красками. Выбирая ABB Sky, Вы вносите изюминку в дизайн Вашего жилища.&nbsp;<div>Серия розеток и выключателей ABB Niessen Sky выполнена в пластике, стекле, металле и дереве.&nbsp; &nbsp;В нашем интернет магазине Вы купите по отличной цене ABB Niessen Sky с доставкой по Москве.</div>", "path": "uploads/series/80/807/1603902054742.jpg"}], "published": true, "description": "Серия выключателей ABB SKY выполнена в современном угловатом дизайне, привлекает внимание тонкими линиями. Элегантная продукция серии найдёт применение в интерьере в стиле минимализм и будет выигрышно смотреться в любом из представленных в линейке цветовых решений. Покупатель может выбрать рамки из дерева, пластика, металла и стекла, что делает ABB SKY подходящей серией под любую дизайнерскую задумку. Цвета рамок ABB SKY - белый, чёрное стекло, нержавеющая сталь, белое стекло, венге - заставят заиграть интерьер новыми красками. Выбирая ABB Sky, Вы вносите изюминку в дизайн Вашего жилища.&nbsp;<div>Серия розеток и выключателей ABB Niessen Sky выполнена в пластике, стекле, металле и дереве.&nbsp; &nbsp;В нашем интернет магазине Вы купите по отличной цене ABB Niessen Sky с доставкой по Москве.</div>", "productTypes": []},
        "created": "2021-08-30 07:38:22.102882",
        "modified": "2021-08-30 07:38:22.102882",
        "deleted": false
      },
      {
        "id": "CZnydV72AdjMZKjs2zIeF",
        "rev": 0,
        "options": {"slug": "jung-1912-mehanizmy", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung 1912 механизмы", "oldId": 811, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.111923",
        "modified": "2021-08-30 07:38:22.111923",
        "deleted": false
      },
      {
        "id": "hATo2YDDAW96lu5uZTV5B",
        "rev": 0,
        "options": {"slug": "jung-1912-nakladki", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung 1912 накладки", "oldId": 812, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.121559",
        "modified": "2021-08-30 07:38:22.121559",
        "deleted": false
      },
      {
        "id": "_DPS07YatiF063k0cYNvs",
        "rev": 0,
        "options": {"slug": "jung-ls990-dark", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung LS990 Dark", "oldId": 815, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.130624",
        "modified": "2021-08-30 07:38:22.130624",
        "deleted": false
      },
      {
        "id": "55i4SVanSKneAFW9ydk_u",
        "rev": 0,
        "options": {"slug": "fontini-venezia-clasica", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia Clasica", "oldId": 826, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Clasica.", "path": "uploads/series/82/826/1606123744965.png"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Clasica.", "path": "uploads/series/82/826/1606123963654.png"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Clasica.", "productTypes": []},
        "created": "2021-08-30 07:38:22.138941",
        "modified": "2021-08-30 07:38:22.138941",
        "deleted": false
      },
      {
        "id": "hea8btxY-C2AZbOyZTJuy",
        "rev": 0,
        "options": {"slug": "garbydimbler", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Garby/Dimbler", "oldId": 816, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.148940",
        "modified": "2021-08-30 07:38:22.148940",
        "deleted": false
      },
      {
        "id": "wETu_LJ3Re7m-KjyFYk0M",
        "rev": 0,
        "options": {"slug": "bridge", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Bridge", "oldId": 817, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.158563",
        "modified": "2021-08-30 07:38:22.158563",
        "deleted": false
      },
      {
        "id": "dumS7T1hS5SjpucPsam1j",
        "rev": 0,
        "options": {"slug": "do", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "DO", "oldId": 818, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.167841",
        "modified": "2021-08-30 07:38:22.167841",
        "deleted": false
      },
      {
        "id": "P-SHmyTmzlK8A8c1gIAv5",
        "rev": 0,
        "options": {"slug": "51", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "5.1", "oldId": 819, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.177001",
        "modified": "2021-08-30 07:38:22.177001",
        "deleted": false
      },
      {
        "id": "Y_gp2AGsFlOVVacqbmQXr",
        "rev": 0,
        "options": {"slug": "dimbler", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "DIMBLER", "oldId": 820, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.186364",
        "modified": "2021-08-30 07:38:22.186364",
        "deleted": false
      },
      {
        "id": "GTX1h0nAihAg5Rj7JeDXo",
        "rev": 0,
        "options": {"slug": "aksessuary-fontini", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Аксессуары FONTINI", "oldId": 821, "images": [], "published": false, "description": "Описание", "productTypes": []},
        "created": "2021-08-30 07:38:22.197510",
        "modified": "2021-08-30 07:38:22.197510",
        "deleted": false
      },
      {
        "id": "6VLCmFJqjBfaNjafwp25H",
        "rev": 0,
        "options": {"slug": "fontini", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini", "oldId": 70, "images": [], "published": false, "description": "", "productTypes": []},
        "created": "2021-08-30 07:38:22.208330",
        "modified": "2021-08-30 07:38:22.208330",
        "deleted": false
      },
      {
        "id": "m4aghRINNs_HfeYQB_bvD",
        "rev": 0,
        "options": {"slug": "fontini-venezia-metal", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia Metal", "oldId": 825, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal.", "path": "uploads/series/82/825/1606125019489.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal.", "path": "uploads/series/82/825/1606125024560.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal.", "path": "uploads/series/82/825/1606125028670.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal.", "path": "uploads/series/82/825/1606125038454.png"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Metal.", "productTypes": []},
        "created": "2021-08-30 07:38:22.218104",
        "modified": "2021-08-30 07:38:22.218104",
        "deleted": false
      },
      {
        "id": "vnb_PWjmg815yyWi95r3s",
        "rev": 0,
        "options": {"slug": "fontini-venezia-oval", "brand": "ZOZ9kW-KZ8aofAmbdS6v8", "label": "Fontini Venezia Oval", "oldId": 827, "images": [{"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Oval.&nbsp;", "path": "uploads/series/82/827/1606126164412.jpg"}, {"alt": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Oval.&nbsp;", "path": "uploads/series/82/827/1606126170285.jpg"}], "published": true, "description": "Купить в нашем интернет магазине по отличной цене с доставкой по Москве и РФ розетки и выключатели Fontini Venezia Oval.&nbsp;", "productTypes": []},
        "created": "2021-08-30 07:38:22.227850",
        "modified": "2021-08-30 07:38:22.227850",
        "deleted": false
      },
      {
        "id": "JDaGuFSf5hz18-77Ogcly",
        "rev": 0,
        "options": {"slug": "jung-ls-1912", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung LS 1912", "oldId": 813, "images": [{"alt": "<div>Серия выключателей JUNG LS 1912- это возврат к истокам. Тумблерные выключатели серии сконструированы по типу самых первых выключателей JUNG, что в корне отличает их от современных привычных пользователю изделий. Покупатель может выбрать форму тумблера: она может быть конусной, в форме куба и в форме цилиндра на Ваш выбор. Варианты расцветок рамок и механизмов выключателей JUNG LS 1912 - темный алюминий, классический алюминий, нержавеющая сталь и латунь. Механизмы пяти цветов и рамки пяти цветов могут разнообразно комплектоваться на выбор заказчика.</div>Вы можете купить дизайнерскую серию розеток и выключателей Jung LS 1912 с тумблерными стильными выключателями. Розетки и выключатели Jung LS 1912 изготовлены из металла.", "path": "uploads/series/81/813/1605436010917.png"}, {"alt": "<div>Серия выключателей JUNG LS 1912- это возврат к истокам. Тумблерные выключатели серии сконструированы по типу самых первых выключателей JUNG, что в корне отличает их от современных привычных пользователю изделий. Покупатель может выбрать форму тумблера: она может быть конусной, в форме куба и в форме цилиндра на Ваш выбор. Варианты расцветок рамок и механизмов выключателей JUNG LS 1912 - темный алюминий, классический алюминий, нержавеющая сталь и латунь. Механизмы пяти цветов и рамки пяти цветов могут разнообразно комплектоваться на выбор заказчика.</div>Вы можете купить дизайнерскую серию розеток и выключателей Jung LS 1912 с тумблерными стильными выключателями. Розетки и выключатели Jung LS 1912 изготовлены из металла.", "path": "uploads/series/81/813/1605436022495.png"}, {"alt": "<div>Серия выключателей JUNG LS 1912- это возврат к истокам. Тумблерные выключатели серии сконструированы по типу самых первых выключателей JUNG, что в корне отличает их от современных привычных пользователю изделий. Покупатель может выбрать форму тумблера: она может быть конусной, в форме куба и в форме цилиндра на Ваш выбор. Варианты расцветок рамок и механизмов выключателей JUNG LS 1912 - темный алюминий, классический алюминий, нержавеющая сталь и латунь. Механизмы пяти цветов и рамки пяти цветов могут разнообразно комплектоваться на выбор заказчика.</div>Вы можете купить дизайнерскую серию розеток и выключателей Jung LS 1912 с тумблерными стильными выключателями. Розетки и выключатели Jung LS 1912 изготовлены из металла.", "path": "uploads/series/81/813/1605436034311.png"}, {"alt": "<div>Серия выключателей JUNG LS 1912- это возврат к истокам. Тумблерные выключатели серии сконструированы по типу самых первых выключателей JUNG, что в корне отличает их от современных привычных пользователю изделий. Покупатель может выбрать форму тумблера: она может быть конусной, в форме куба и в форме цилиндра на Ваш выбор. Варианты расцветок рамок и механизмов выключателей JUNG LS 1912 - темный алюминий, классический алюминий, нержавеющая сталь и латунь. Механизмы пяти цветов и рамки пяти цветов могут разнообразно комплектоваться на выбор заказчика.</div>Вы можете купить дизайнерскую серию розеток и выключателей Jung LS 1912 с тумблерными стильными выключателями. Розетки и выключатели Jung LS 1912 изготовлены из металла.", "path": "uploads/series/81/813/1605436056068.png"}], "published": true, "description": "<div>Серия выключателей JUNG LS 1912- это возврат к истокам. Тумблерные выключатели серии сконструированы по типу самых первых выключателей JUNG, что в корне отличает их от современных привычных пользователю изделий. Покупатель может выбрать форму тумблера: она может быть конусной, в форме куба и в форме цилиндра на Ваш выбор. Варианты расцветок рамок и механизмов выключателей JUNG LS 1912 - темный алюминий, классический алюминий, нержавеющая сталь и латунь. Механизмы пяти цветов и рамки пяти цветов могут разнообразно комплектоваться на выбор заказчика.</div>Вы можете купить дизайнерскую серию розеток и выключателей Jung LS 1912 с тумблерными стильными выключателями. Розетки и выключатели Jung LS 1912 изготовлены из металла.", "productTypes": []},
        "created": "2021-08-30 07:38:22.238517",
        "modified": "2021-08-30 07:38:22.238517",
        "deleted": false
      },
      {
        "id": "v0s7iAvGweG9puxDSyqY3",
        "rev": 0,
        "options": {"slug": "jung-eco-profi-standart", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung Eco Profi Standart", "oldId": 830, "images": [{"alt": "<div>Серия розеток и выключателей Jung Eco Profi Standart отличается интересным дизайном рамок. Jung Eco Profi Standart рамки ,розетки и выключатели сделаны из качественного пластика и можно отметит не высокую стоимость продукции. Розетки и выключатели Jung Eco Profi Standart украсят любое помещение и придадут вашему интерьеру определенный баланс.</div>Купить розетки и выключатели Jung Eco Profi Standart по отличной цене с доставкой в Москве и РФ.&nbsp;", "path": "uploads/series/83/830/1609081540803.jpg"}, {"alt": "<div>Серия розеток и выключателей Jung Eco Profi Standart отличается интересным дизайном рамок. Jung Eco Profi Standart рамки ,розетки и выключатели сделаны из качественного пластика и можно отметит не высокую стоимость продукции. Розетки и выключатели Jung Eco Profi Standart украсят любое помещение и придадут вашему интерьеру определенный баланс.</div>Купить розетки и выключатели Jung Eco Profi Standart по отличной цене с доставкой в Москве и РФ.&nbsp;", "path": "uploads/series/83/830/1609081549028.jpg"}, {"alt": "<div>Серия розеток и выключателей Jung Eco Profi Standart отличается интересным дизайном рамок. Jung Eco Profi Standart рамки ,розетки и выключатели сделаны из качественного пластика и можно отметит не высокую стоимость продукции. Розетки и выключатели Jung Eco Profi Standart украсят любое помещение и придадут вашему интерьеру определенный баланс.</div>Купить розетки и выключатели Jung Eco Profi Standart по отличной цене с доставкой в Москве и РФ.&nbsp;", "path": "uploads/series/83/830/1609081553595.jpg"}], "published": true, "description": "<div>Серия розеток и выключателей Jung Eco Profi Standart отличается интересным дизайном рамок. Jung Eco Profi Standart рамки ,розетки и выключатели сделаны из качественного пластика и можно отметит не высокую стоимость продукции. Розетки и выключатели Jung Eco Profi Standart украсят любое помещение и придадут вашему интерьеру определенный баланс.</div>Купить розетки и выключатели Jung Eco Profi Standart по отличной цене с доставкой в Москве и РФ.&nbsp;", "productTypes": []},
        "created": "2021-08-30 07:38:22.250994",
        "modified": "2021-08-30 07:38:22.250994",
        "deleted": false
      },
      {
        "id": "Tv6ZLK_34Nr-en6wJKohM",
        "rev": 0,
        "options": {"slug": "jung-eco-profi", "brand": "1w9P8WUhWyA89t1F8qmmi", "label": "Jung ECO Profi", "oldId": 776, "images": [{"alt": "JUNG ECO PROFI - это розетки и выключатели по хорошей цене. Рамки ECO PROFI выпускаются в четырёх цветах: белый, слоновая кость, алюминий и антрацит. Высококачественный пластик дуропласт, из которого изготавливают продукцию серии, проверен производителем и абсолютно безопасен для человека. Гладкая поверхность выключателей и розеток JUNG ECO PROFI приятна на ощупь, к ней захочется прикасаться вновь и вновь. Отличный выбор для стильного и уютного дома.", "path": "uploads/series/77/776/1556370608286.png"}, {"alt": "JUNG ECO PROFI - это розетки и выключатели по хорошей цене. Рамки ECO PROFI выпускаются в четырёх цветах: белый, слоновая кость, алюминий и антрацит. Высококачественный пластик дуропласт, из которого изготавливают продукцию серии, проверен производителем и абсолютно безопасен для человека. Гладкая поверхность выключателей и розеток JUNG ECO PROFI приятна на ощупь, к ней захочется прикасаться вновь и вновь. Отличный выбор для стильного и уютного дома.", "path": "uploads/series/77/776/1556370615175.png"}, {"alt": "JUNG ECO PROFI - это розетки и выключатели по хорошей цене. Рамки ECO PROFI выпускаются в четырёх цветах: белый, слоновая кость, алюминий и антрацит. Высококачественный пластик дуропласт, из которого изготавливают продукцию серии, проверен производителем и абсолютно безопасен для человека. Гладкая поверхность выключателей и розеток JUNG ECO PROFI приятна на ощупь, к ней захочется прикасаться вновь и вновь. Отличный выбор для стильного и уютного дома.", "path": "uploads/series/77/776/1556370631140.png"}, {"alt": "JUNG ECO PROFI - это розетки и выключатели по хорошей цене. Рамки ECO PROFI выпускаются в четырёх цветах: белый, слоновая кость, алюминий и антрацит. Высококачественный пластик дуропласт, из которого изготавливают продукцию серии, проверен производителем и абсолютно безопасен для человека. Гладкая поверхность выключателей и розеток JUNG ECO PROFI приятна на ощупь, к ней захочется прикасаться вновь и вновь. Отличный выбор для стильного и уютного дома.", "path": "uploads/series/77/776/1556370640916.png"}], "published": true, "description": "JUNG ECO PROFI - это розетки и выключатели по хорошей цене. Рамки ECO PROFI выпускаются в четырёх цветах: белый, слоновая кость, алюминий и антрацит. Высококачественный пластик дуропласт, из которого изготавливают продукцию серии, проверен производителем и абсолютно безопасен для человека. Гладкая поверхность выключателей и розеток JUNG ECO PROFI приятна на ощупь, к ней захочется прикасаться вновь и вновь. Отличный выбор для стильного и уютного дома.", "productTypes": []},
        "created": "2021-08-30 07:38:22.261808",
        "modified": "2021-08-30 07:38:22.261808",
        "deleted": false
      }
    ]'::jsonb;

    FOR i IN SELECT * FROM jsonb_array_elements(dataList)
        LOOP
            opt = i -> 'options';
            select id into brandId from brand where old_id = opt->>'brand';
            INSERT INTO serie (title, slug, description, brand_id, old_id, options) values
                (opt->>'label', opt->>'slug', opt->>'description', brandId, i->>'id', '{}'::jsonb) on conflict (title) do nothing;

        END LOOP;
END $$;