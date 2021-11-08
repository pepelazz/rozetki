DO $$DECLARE r record;
             dataList jsonb;
             contIdArr int[] := '{}';
             i jsonb;
BEGIN

    dataList = '[
      {
        "id": "_RA_HK9haT6zZR8PhgQkc",
        "rev": 0,
        "options": {"label": "Состаренная медь", "oldId": 1},
        "created": "2021-08-30 07:38:22.363762",
        "modified": "2021-08-30 07:38:22.363762",
        "deleted": false
      },
      {
        "id": "fyqnQhdd0hKC1a9RQQ5_T",
        "rev": 0,
        "options": {"label": "Блестящая латунь", "oldId": 2},
        "created": "2021-08-30 07:38:22.369404",
        "modified": "2021-08-30 07:38:22.369404",
        "deleted": false
      },
      {
        "id": "VEUVIDfpSpjgG8lvFqEiy",
        "rev": 0,
        "options": {"label": "Белый камень", "oldId": 3},
        "created": "2021-08-30 07:38:22.375020",
        "modified": "2021-08-30 07:38:22.375020",
        "deleted": false
      },
      {
        "id": "X30Ub6gmSbtTCjDPnjqKD",
        "rev": 0,
        "options": {"label": "Состаренная медь", "oldId": 4},
        "created": "2021-08-30 07:38:22.380132",
        "modified": "2021-08-30 07:38:22.380132",
        "deleted": false
      },
      {
        "id": "l2-egseX8LJzwIXtF7vJY",
        "rev": 0,
        "options": {"label": "Linoleum-Multiplex антрацит", "oldId": 5},
        "created": "2021-08-30 07:38:22.385482",
        "modified": "2021-08-30 07:38:22.385482",
        "deleted": false
      },
      {
        "id": "lUCnX0oYtpKT5kL8tvNcL",
        "rev": 0,
        "options": {"label": "Сталь", "oldId": 6},
        "created": "2021-08-30 07:38:22.390288",
        "modified": "2021-08-30 07:38:22.390288",
        "deleted": false
      },
      {
        "id": "ApPKZsn8xFaewfSKRMbCD",
        "rev": 0,
        "options": {"label": "Грифель", "oldId": 7},
        "created": "2021-08-30 07:38:22.395823",
        "modified": "2021-08-30 07:38:22.395823",
        "deleted": false
      },
      {
        "id": "rUI3Qe2kqSKL47y9KtUUE",
        "rev": 0,
        "options": {"label": "Какао-бежевый", "oldId": 8},
        "created": "2021-08-30 07:38:22.400547",
        "modified": "2021-08-30 07:38:22.400547",
        "deleted": false
      },
      {
        "id": "oxpzFXyi4lJOG_m0zYWef",
        "rev": 0,
        "options": {"label": "Никель-алюминий", "oldId": 9},
        "created": "2021-08-30 07:38:22.405487",
        "modified": "2021-08-30 07:38:22.405487",
        "deleted": false
      },
      {
        "id": "3KLFuFrY5kX0vQt0k8GYy",
        "rev": 0,
        "options": {"label": "Смальта белая глина", "oldId": 10},
        "created": "2021-08-30 07:38:22.410426",
        "modified": "2021-08-30 07:38:22.410426",
        "deleted": false
      },
      {
        "id": "n0Fc3UzWHBeNnh3kSOBip",
        "rev": 0,
        "options": {"label": "Черная перкаль", "oldId": 11},
        "created": "2021-08-30 07:38:22.415247",
        "modified": "2021-08-30 07:38:22.415247",
        "deleted": false
      },
      {
        "id": "L9f69-A3Di8fw_rFCMtNA",
        "rev": 0,
        "options": {"label": "Лиловый-бежевый", "oldId": 12},
        "created": "2021-08-30 07:38:22.419708",
        "modified": "2021-08-30 07:38:22.419708",
        "deleted": false
      },
      {
        "id": "-aBxLp8izaEC8jzFJHDB0",
        "rev": 0,
        "options": {"label": "Хром матовый-алюминий", "oldId": 13},
        "created": "2021-08-30 07:38:22.424463",
        "modified": "2021-08-30 07:38:22.424463",
        "deleted": false
      },
      {
        "id": "ei-5sIsI8thKSCgyITG5H",
        "rev": 0,
        "options": {"label": "Античная латунь", "oldId": 14},
        "created": "2021-08-30 07:38:22.428921",
        "modified": "2021-08-30 07:38:22.428921",
        "deleted": false
      },
      {
        "id": "pjNPQGGKN8snVv83fJJtP",
        "rev": 0,
        "options": {"label": "Луна под камень", "oldId": 15},
        "created": "2021-08-30 07:38:22.433377",
        "modified": "2021-08-30 07:38:22.433377",
        "deleted": false
      },
      {
        "id": "uzfUXzIw-xlwYPUorTj7B",
        "rev": 0,
        "options": {"label": "Оранжевая-бежевый", "oldId": 16},
        "created": "2021-08-30 07:38:22.437719",
        "modified": "2021-08-30 07:38:22.437719",
        "deleted": false
      },
      {
        "id": "OTtb3QUzRl7J67FYSsjtK",
        "rev": 0,
        "options": {"label": "Шампань-белый", "oldId": 17},
        "created": "2021-08-30 07:38:22.442266",
        "modified": "2021-08-30 07:38:22.442266",
        "deleted": false
      },
      {
        "id": "VtTvW0s3NAaPFcXLzPCw-",
        "rev": 0,
        "options": {"label": "Полированная латунь-белая роспись", "oldId": 18},
        "created": "2021-08-30 07:38:22.448017",
        "modified": "2021-08-30 07:38:22.448017",
        "deleted": false
      },
      {
        "id": "J9WuYr01R28wy0qk4qfCj",
        "rev": 0,
        "options": {"label": "Молочно-белый монохромный", "oldId": 19},
        "created": "2021-08-30 07:38:22.453071",
        "modified": "2021-08-30 07:38:22.453071",
        "deleted": false
      },
      {
        "id": "pbeA84gPJ1sa5t12aq0-H",
        "rev": 0,
        "options": {"label": "Черный под кожу", "oldId": 20},
        "created": "2021-08-30 07:38:22.457866",
        "modified": "2021-08-30 07:38:22.457866",
        "deleted": false
      },
      {
        "id": "4A2EcidWnpysGBY1Jlb-T",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь-пластик", "oldId": 21},
        "created": "2021-08-30 07:38:22.462363",
        "modified": "2021-08-30 07:38:22.462363",
        "deleted": false
      },
      {
        "id": "NXdYU88dh9kq_pCn9HnP0",
        "rev": 0,
        "options": {"label": "Рубин стекло", "oldId": 22},
        "created": "2021-08-30 07:38:22.467345",
        "modified": "2021-08-30 07:38:22.467345",
        "deleted": false
      },
      {
        "id": "wglfApqknC0_l5qDrXw9c",
        "rev": 0,
        "options": {"label": "Медь-антрацит", "oldId": 23},
        "created": "2021-08-30 07:38:22.472248",
        "modified": "2021-08-30 07:38:22.472248",
        "deleted": false
      },
      {
        "id": "EfnpukDLERCxsMV0i2Wth",
        "rev": 0,
        "options": {"label": "Фиолетовый белый глянец", "oldId": 24},
        "created": "2021-08-30 07:38:22.477588",
        "modified": "2021-08-30 07:38:22.477588",
        "deleted": false
      },
      {
        "id": "CR3VdFy10ptKJ1a4fN4qP",
        "rev": 0,
        "options": {"label": "Золото металл", "oldId": 25},
        "created": "2021-08-30 07:38:22.482246",
        "modified": "2021-08-30 07:38:22.482246",
        "deleted": false
      },
      {
        "id": "jxYYkyZpHtsg6MBaYDzhW",
        "rev": 0,
        "options": {"label": "Песочные-белый", "oldId": 26},
        "created": "2021-08-30 07:38:22.487052",
        "modified": "2021-08-30 07:38:22.487052",
        "deleted": false
      },
      {
        "id": "YvLjHIR-8c_muf9KRHlwN",
        "rev": 0,
        "options": {"label": "Песочный-алюминий", "oldId": 27},
        "created": "2021-08-30 07:38:22.491665",
        "modified": "2021-08-30 07:38:22.491665",
        "deleted": false
      },
      {
        "id": "vx411iCgnsRzo4t51hsG5",
        "rev": 0,
        "options": {"label": "Фарфор", "oldId": 28},
        "created": "2021-08-30 07:38:22.496703",
        "modified": "2021-08-30 07:38:22.496703",
        "deleted": false
      },
      {
        "id": "wKnOrwxMInPOri12dMbxB",
        "rev": 0,
        "options": {"label": "Дерево черешня", "oldId": 29},
        "created": "2021-08-30 07:38:22.501772",
        "modified": "2021-08-30 07:38:22.501772",
        "deleted": false
      },
      {
        "id": "QLxiNBunp7j7aMus4lNkd",
        "rev": 0,
        "options": {"label": "Смальта графит", "oldId": 30},
        "created": "2021-08-30 07:38:22.506621",
        "modified": "2021-08-30 07:38:22.506621",
        "deleted": false
      },
      {
        "id": "FEXpT5U9sPD2UhS4-qt26",
        "rev": 0,
        "options": {"label": "Латунь-крем", "oldId": 31},
        "created": "2021-08-30 07:38:22.511157",
        "modified": "2021-08-30 07:38:22.511157",
        "deleted": false
      },
      {
        "id": "1a8FBscUfTPueljTsD7Ob",
        "rev": 0,
        "options": {"label": "Натуральный сланец", "oldId": 32},
        "created": "2021-08-30 07:38:22.515989",
        "modified": "2021-08-30 07:38:22.515989",
        "deleted": false
      },
      {
        "id": "av5bVxT3u1EVxZEkW29tT",
        "rev": 0,
        "options": {"label": "Мокко", "oldId": 33},
        "created": "2021-08-30 07:38:22.521015",
        "modified": "2021-08-30 07:38:22.521015",
        "deleted": false
      },
      {
        "id": "ZwyMFOaTknlnnmhdGOsAi",
        "rev": 0,
        "options": {"label": "Хром", "oldId": 34},
        "created": "2021-08-30 07:38:22.525855",
        "modified": "2021-08-30 07:38:22.525855",
        "deleted": false
      },
      {
        "id": "q6Mt6zfaJQY3n7l0nXCyQ",
        "rev": 0,
        "options": {"label": "Индиго-белый", "oldId": 35},
        "created": "2021-08-30 07:38:22.531183",
        "modified": "2021-08-30 07:38:22.531183",
        "deleted": false
      },
      {
        "id": "M0XmHPsZ_nKXmNH6LW1HQ",
        "rev": 0,
        "options": {"label": "Полированная латунь-черное стекло", "oldId": 36},
        "created": "2021-08-30 07:38:22.536498",
        "modified": "2021-08-30 07:38:22.536498",
        "deleted": false
      },
      {
        "id": "8H9YtdtCTIOQGC8_i3hkK",
        "rev": 0,
        "options": {"label": "Белый лотос", "oldId": 37},
        "created": "2021-08-30 07:38:22.541876",
        "modified": "2021-08-30 07:38:22.541876",
        "deleted": false
      },
      {
        "id": "S5i7yStEHuD86vbs64Akh",
        "rev": 0,
        "options": {"label": "Черный оникс стекло", "oldId": 38},
        "created": "2021-08-30 07:38:22.547003",
        "modified": "2021-08-30 07:38:22.547003",
        "deleted": false
      },
      {
        "id": "C_2cHtn3du5dpkCLdaAPy",
        "rev": 0,
        "options": {"label": "Фисташковый-бежевый", "oldId": 39},
        "created": "2021-08-30 07:38:22.552464",
        "modified": "2021-08-30 07:38:22.552464",
        "deleted": false
      },
      {
        "id": "53krvWz-Y7fuQpxQbH965",
        "rev": 0,
        "options": {"label": "Linoleum-Multiplex светло-серый", "oldId": 40},
        "created": "2021-08-30 07:38:22.557628",
        "modified": "2021-08-30 07:38:22.557628",
        "deleted": false
      },
      {
        "id": "JF6FwY5tkJuGs1kjOA5zn",
        "rev": 0,
        "options": {"label": "Кожа-белый", "oldId": 41},
        "created": "2021-08-30 07:38:22.562384",
        "modified": "2021-08-30 07:38:22.562384",
        "deleted": false
      },
      {
        "id": "Ey8dNTckb2FyXfESI8wwS",
        "rev": 0,
        "options": {"label": "Антрацит металл", "oldId": 42},
        "created": "2021-08-30 07:38:22.567672",
        "modified": "2021-08-30 07:38:22.567672",
        "deleted": false
      },
      {
        "id": "QjRe1c6dE132WnysIBGWb",
        "rev": 0,
        "options": {"label": "Алюминий-oxid металл", "oldId": 43},
        "created": "2021-08-30 07:38:22.573350",
        "modified": "2021-08-30 07:38:22.573350",
        "deleted": false
      },
      {
        "id": "Gm-4dMaKgQpIcrZ5serpC",
        "rev": 0,
        "options": {"label": "Песочный-бежевый", "oldId": 44},
        "created": "2021-08-30 07:38:22.578108",
        "modified": "2021-08-30 07:38:22.578108",
        "deleted": false
      },
      {
        "id": "LSnYe4V5SfHPEpQBGvcRL",
        "rev": 0,
        "options": {"label": "Латунь", "oldId": 45},
        "created": "2021-08-30 07:38:22.584033",
        "modified": "2021-08-30 07:38:22.584033",
        "deleted": false
      },
      {
        "id": "zhdeD5_r-3_4rSUo97tde",
        "rev": 0,
        "options": {"label": "Черный технополимер", "oldId": 46},
        "created": "2021-08-30 07:38:22.590217",
        "modified": "2021-08-30 07:38:22.590217",
        "deleted": false
      },
      {
        "id": "hb5IfCQq3tkKLognIcr0c",
        "rev": 0,
        "options": {"label": "Голубое стекло", "oldId": 47},
        "created": "2021-08-30 07:38:22.595501",
        "modified": "2021-08-30 07:38:22.595501",
        "deleted": false
      },
      {
        "id": "W_7w4fnalWqRxirb9-adw",
        "rev": 0,
        "options": {"label": "Стекло белое-полярная белизна", "oldId": 48},
        "created": "2021-08-30 07:38:22.600812",
        "modified": "2021-08-30 07:38:22.600812",
        "deleted": false
      },
      {
        "id": "ULPxd2VrChvHCl6ny5YSD",
        "rev": 0,
        "options": {"label": "Бежевый-бежевый", "oldId": 49},
        "created": "2021-08-30 07:38:22.606899",
        "modified": "2021-08-30 07:38:22.606899",
        "deleted": false
      },
      {
        "id": "BB6m4cTc0yeiflpfVmJwW",
        "rev": 0,
        "options": {"label": "Голубой лед-белый", "oldId": 50},
        "created": "2021-08-30 07:38:22.612629",
        "modified": "2021-08-30 07:38:22.612629",
        "deleted": false
      },
      {
        "id": "ke7aIxrwKn9kBoz_YMaOL",
        "rev": 0,
        "options": {"label": "Алюминий матовый-белый", "oldId": 51},
        "created": "2021-08-30 07:38:22.617994",
        "modified": "2021-08-30 07:38:22.617994",
        "deleted": false
      },
      {
        "id": "5-r0SQjUW_i8jU4iHBawV",
        "rev": 0,
        "options": {"label": "Коричневый", "oldId": 52},
        "created": "2021-08-30 07:38:22.623224",
        "modified": "2021-08-30 07:38:22.623224",
        "deleted": false
      },
      {
        "id": "zB9Eyixc_cIfCpSvDxNzm",
        "rev": 0,
        "options": {"label": "Рубиновый", "oldId": 53},
        "created": "2021-08-30 07:38:22.628487",
        "modified": "2021-08-30 07:38:22.628487",
        "deleted": false
      },
      {
        "id": "C7YUaaBMbXl6okbZn7bAh",
        "rev": 0,
        "options": {"label": "Кожа-антрацит", "oldId": 54},
        "created": "2021-08-30 07:38:22.634628",
        "modified": "2021-08-30 07:38:22.634628",
        "deleted": false
      },
      {
        "id": "5HPZLA9UtWpghXze0eOQE",
        "rev": 0,
        "options": {"label": "Черный металлик", "oldId": 55},
        "created": "2021-08-30 07:38:22.639982",
        "modified": "2021-08-30 07:38:22.639982",
        "deleted": false
      },
      {
        "id": "ineR7YYivKbzZ3pllsXfs",
        "rev": 0,
        "options": {"label": "Сапфир стекло", "oldId": 56},
        "created": "2021-08-30 07:38:22.647347",
        "modified": "2021-08-30 07:38:22.647347",
        "deleted": false
      },
      {
        "id": "kKYaywsepOpkNCJLfpVa8",
        "rev": 0,
        "options": {"label": "Лиловый муар", "oldId": 57},
        "created": "2021-08-30 07:38:22.652708",
        "modified": "2021-08-30 07:38:22.652708",
        "deleted": false
      },
      {
        "id": "gHA2jj2H4VFOeQ1bM3sTb",
        "rev": 0,
        "options": {"label": "Жемчужное серебро", "oldId": 58},
        "created": "2021-08-30 07:38:22.658296",
        "modified": "2021-08-30 07:38:22.658296",
        "deleted": false
      },
      {
        "id": "a3cJtEkbnmn3pnbwO4ymu",
        "rev": 0,
        "options": {"label": "Перламутр", "oldId": 59},
        "created": "2021-08-30 07:38:22.663758",
        "modified": "2021-08-30 07:38:22.663758",
        "deleted": false
      },
      {
        "id": "tOgH6dQnsZhZBmvxD-nq9",
        "rev": 0,
        "options": {"label": "Титан-белый", "oldId": 60},
        "created": "2021-08-30 07:38:22.668669",
        "modified": "2021-08-30 07:38:22.668669",
        "deleted": false
      },
      {
        "id": "zOWbKC0Xa2CD94JuVDm8l",
        "rev": 0,
        "options": {"label": "Никель-антрацит", "oldId": 61},
        "created": "2021-08-30 07:38:22.674983",
        "modified": "2021-08-30 07:38:22.674983",
        "deleted": false
      },
      {
        "id": "eGcEfUn_0kEHLMNgMhNQP",
        "rev": 0,
        "options": {"label": "Алюминий металл", "oldId": 62},
        "created": "2021-08-30 07:38:22.679983",
        "modified": "2021-08-30 07:38:22.679983",
        "deleted": false
      },
      {
        "id": "EmTkigu2NWJYfj0eTnCM-",
        "rev": 0,
        "options": {"label": "Индиго-бежевый", "oldId": 63},
        "created": "2021-08-30 07:38:22.685282",
        "modified": "2021-08-30 07:38:22.685282",
        "deleted": false
      },
      {
        "id": "PQGD2bTJsZARgaOU5X7ZC",
        "rev": 0,
        "options": {"label": "Белое стекло", "oldId": 64},
        "created": "2021-08-30 07:38:22.690244",
        "modified": "2021-08-30 07:38:22.690244",
        "deleted": false
      },
      {
        "id": "TwHFRlHVL-0TPLsz_12mu",
        "rev": 0,
        "options": {"label": "Гранат-белый", "oldId": 65},
        "created": "2021-08-30 07:38:22.695196",
        "modified": "2021-08-30 07:38:22.695196",
        "deleted": false
      },
      {
        "id": "lBfL4gENUgXIonBpVMMU5",
        "rev": 0,
        "options": {"label": "Черная-антрацит", "oldId": 66},
        "created": "2021-08-30 07:38:22.700399",
        "modified": "2021-08-30 07:38:22.700399",
        "deleted": false
      },
      {
        "id": "CNT7qMWh6mlxoaGZxZJyH",
        "rev": 0,
        "options": {"label": "Титановый", "oldId": 67},
        "created": "2021-08-30 07:38:22.705742",
        "modified": "2021-08-30 07:38:22.705742",
        "deleted": false
      },
      {
        "id": "wqIbucWMZbBQrntMTmcHh",
        "rev": 0,
        "options": {"label": "Серебристый алюминий", "oldId": 68},
        "created": "2021-08-30 07:38:22.711172",
        "modified": "2021-08-30 07:38:22.711172",
        "deleted": false
      },
      {
        "id": "1Ggk2XnmTpBt18mNvM7qB",
        "rev": 0,
        "options": {"label": "Дуб (белый)", "oldId": 69},
        "created": "2021-08-30 07:38:22.716344",
        "modified": "2021-08-30 07:38:22.716344",
        "deleted": false
      },
      {
        "id": "QvjGodBwT7mYNG5q7r3iA",
        "rev": 0,
        "options": {"label": "Кожа пурпур", "oldId": 70},
        "created": "2021-08-30 07:38:22.720889",
        "modified": "2021-08-30 07:38:22.720889",
        "deleted": false
      },
      {
        "id": "lBr5auyexpvpcNmRpV0nL",
        "rev": 0,
        "options": {"label": "Золото металлик", "oldId": 71},
        "created": "2021-08-30 07:38:22.725585",
        "modified": "2021-08-30 07:38:22.725585",
        "deleted": false
      },
      {
        "id": "hUbl8RQAWcTQuxHqrfMX9",
        "rev": 0,
        "options": {"label": "Алюминий пластик", "oldId": 72},
        "created": "2021-08-30 07:38:22.730422",
        "modified": "2021-08-30 07:38:22.730422",
        "deleted": false
      },
      {
        "id": "luj_V_5ZnA0CG_05cnfkA",
        "rev": 0,
        "options": {"label": "Стекло жемчужное", "oldId": 73},
        "created": "2021-08-30 07:38:22.735409",
        "modified": "2021-08-30 07:38:22.735409",
        "deleted": false
      },
      {
        "id": "flY-HVp3E8chqTL-MpZj8",
        "rev": 0,
        "options": {"label": "Мокка", "oldId": 74},
        "created": "2021-08-30 07:38:22.740439",
        "modified": "2021-08-30 07:38:22.740439",
        "deleted": false
      },
      {
        "id": "H7I874GJxtpdfo6eSWkD0",
        "rev": 0,
        "options": {"label": "Никель велюр", "oldId": 75},
        "created": "2021-08-30 07:38:22.745008",
        "modified": "2021-08-30 07:38:22.745008",
        "deleted": false
      },
      {
        "id": "eTebEtQ5TBONoAdGbOb0_",
        "rev": 0,
        "options": {"label": "Античная латунь-белая роспись", "oldId": 76},
        "created": "2021-08-30 07:38:22.749852",
        "modified": "2021-08-30 07:38:22.749852",
        "deleted": false
      },
      {
        "id": "pC16JS9EDtiwtqB-Nqx3g",
        "rev": 0,
        "options": {"label": "Оникс-алюминий", "oldId": 77},
        "created": "2021-08-30 07:38:22.754764",
        "modified": "2021-08-30 07:38:22.754764",
        "deleted": false
      },
      {
        "id": "E0MqO2Bfrg_ldNZn7AS_c",
        "rev": 0,
        "options": {"label": "Хром-антрацит", "oldId": 78},
        "created": "2021-08-30 07:38:22.759466",
        "modified": "2021-08-30 07:38:22.759466",
        "deleted": false
      },
      {
        "id": "DMb_FsOE2DSTtbwL9cbc0",
        "rev": 0,
        "options": {"label": "Изумруд стекло", "oldId": 79},
        "created": "2021-08-30 07:38:22.764205",
        "modified": "2021-08-30 07:38:22.764205",
        "deleted": false
      },
      {
        "id": "Y2ERKjeivweCNHihJqnsS",
        "rev": 0,
        "options": {"label": "Песочная-глянец крем", "oldId": 80},
        "created": "2021-08-30 07:38:22.768670",
        "modified": "2021-08-30 07:38:22.768670",
        "deleted": false
      },
      {
        "id": "SNy1n69ITH0pKT_Cu8WS-",
        "rev": 0,
        "options": {"label": "Серо голубое стекло", "oldId": 81},
        "created": "2021-08-30 07:38:22.774107",
        "modified": "2021-08-30 07:38:22.774107",
        "deleted": false
      },
      {
        "id": "IKh369hvlQDkhy9yTPNCH",
        "rev": 0,
        "options": {"label": "Никель металл", "oldId": 82},
        "created": "2021-08-30 07:38:22.778918",
        "modified": "2021-08-30 07:38:22.778918",
        "deleted": false
      },
      {
        "id": "qLEb2QNEm7ZCYnhwIRvd9",
        "rev": 0,
        "options": {"label": "Активный белый", "oldId": 83},
        "created": "2021-08-30 07:38:22.783589",
        "modified": "2021-08-30 07:38:22.783589",
        "deleted": false
      },
      {
        "id": "zakLd7NGYH4-puIpqbrsE",
        "rev": 0,
        "options": {"label": "Белая перкаль", "oldId": 96},
        "created": "2021-08-30 07:38:22.788224",
        "modified": "2021-08-30 07:38:22.788224",
        "deleted": false
      },
      {
        "id": "tUjifmnomsRyvcUw5cqMo",
        "rev": 0,
        "options": {"label": "Кристалл стекло", "oldId": 104},
        "created": "2021-08-30 07:38:22.793423",
        "modified": "2021-08-30 07:38:22.793423",
        "deleted": false
      },
      {
        "id": "fFctiKZGR0EfymYMZHoeu",
        "rev": 0,
        "options": {"label": "Кожа-песок", "oldId": 112},
        "created": "2021-08-30 07:38:22.797890",
        "modified": "2021-08-30 07:38:22.797890",
        "deleted": false
      },
      {
        "id": "In2R7f_9UgtA4gm0FHgHK",
        "rev": 0,
        "options": {"label": "Техно", "oldId": 121},
        "created": "2021-08-30 07:38:22.802588",
        "modified": "2021-08-30 07:38:22.802588",
        "deleted": false
      },
      {
        "id": "j4rOhbogiJeHzsUtQSWXQ",
        "rev": 0,
        "options": {"label": "Лиловый-белый", "oldId": 130},
        "created": "2021-08-30 07:38:22.807013",
        "modified": "2021-08-30 07:38:22.807013",
        "deleted": false
      },
      {
        "id": "nISLykjqoV-C8EKxsP5mI",
        "rev": 0,
        "options": {"label": "Песочный-белый глянец", "oldId": 139},
        "created": "2021-08-30 07:38:22.811682",
        "modified": "2021-08-30 07:38:22.811682",
        "deleted": false
      },
      {
        "id": "3RXenyQm7VjrhHHiBdcZd",
        "rev": 0,
        "options": {"label": "Светло-серый", "oldId": 148},
        "created": "2021-08-30 07:38:22.816061",
        "modified": "2021-08-30 07:38:22.816061",
        "deleted": false
      },
      {
        "id": "Zz72CO1Bh04LGs114KFg2",
        "rev": 0,
        "options": {"label": "Орех дерево", "oldId": 165},
        "created": "2021-08-30 07:38:22.820809",
        "modified": "2021-08-30 07:38:22.820809",
        "deleted": false
      },
      {
        "id": "E086CG0Hwt1EEJHunyKLR",
        "rev": 0,
        "options": {"label": "Хром металлик", "oldId": 183},
        "created": "2021-08-30 07:38:22.825670",
        "modified": "2021-08-30 07:38:22.825670",
        "deleted": false
      },
      {
        "id": "-5cYmn-ftdbD8mIudeyeH",
        "rev": 0,
        "options": {"label": "Грэй-алюминий", "oldId": 193},
        "created": "2021-08-30 07:38:22.830601",
        "modified": "2021-08-30 07:38:22.830601",
        "deleted": false
      },
      {
        "id": "87rNv2LZL82ZEohBlgOhd",
        "rev": 0,
        "options": {"label": "Белый-алюминий", "oldId": 202},
        "created": "2021-08-30 07:38:22.835367",
        "modified": "2021-08-30 07:38:22.835367",
        "deleted": false
      },
      {
        "id": "o-JW9xj5J4gl0afFoAxut",
        "rev": 0,
        "options": {"label": "Морская волна-бежевый", "oldId": 211},
        "created": "2021-08-30 07:38:22.840003",
        "modified": "2021-08-30 07:38:22.840003",
        "deleted": false
      },
      {
        "id": "Y51VGEWxFwYM6gXTMqRa6",
        "rev": 0,
        "options": {"label": "Дерево-антрацит", "oldId": 221},
        "created": "2021-08-30 07:38:22.844495",
        "modified": "2021-08-30 07:38:22.844495",
        "deleted": false
      },
      {
        "id": "PoZlPUu9h7Yq8xmXJafli",
        "rev": 0,
        "options": {"label": "Базальт камень", "oldId": 229},
        "created": "2021-08-30 07:38:22.849831",
        "modified": "2021-08-30 07:38:22.849831",
        "deleted": false
      },
      {
        "id": "xpCgMV1eMbbkV-tTWuaat",
        "rev": 0,
        "options": {"label": "Зеленое яблоко-бежевый", "oldId": 235},
        "created": "2021-08-30 07:38:22.854163",
        "modified": "2021-08-30 07:38:22.854163",
        "deleted": false
      },
      {
        "id": "NvcgY0yhlp8K-vcYhkauv",
        "rev": 0,
        "options": {"label": "Терракотовый-бежевый", "oldId": 244},
        "created": "2021-08-30 07:38:22.858464",
        "modified": "2021-08-30 07:38:22.858464",
        "deleted": false
      },
      {
        "id": "GHzJnngyqzvC_EFxTzNBL",
        "rev": 0,
        "options": {"label": "Полярно белый", "oldId": 253},
        "created": "2021-08-30 07:38:22.863540",
        "modified": "2021-08-30 07:38:22.863540",
        "deleted": false
      },
      {
        "id": "9jBKhGnv5PWO6a3zW9EJ9",
        "rev": 0,
        "options": {"label": "Зеленый-алюминий", "oldId": 262},
        "created": "2021-08-30 07:38:22.868323",
        "modified": "2021-08-30 07:38:22.868323",
        "deleted": false
      },
      {
        "id": "toAV5eVs7CEzt2c66gSQM",
        "rev": 0,
        "options": {"label": "Лазурный пунктум", "oldId": 271},
        "created": "2021-08-30 07:38:22.872892",
        "modified": "2021-08-30 07:38:22.872892",
        "deleted": false
      },
      {
        "id": "gXjeqc8tU6TliODXEYLVz",
        "rev": 0,
        "options": {"label": "Серый-бежевый", "oldId": 280},
        "created": "2021-08-30 07:38:22.877627",
        "modified": "2021-08-30 07:38:22.877627",
        "deleted": false
      },
      {
        "id": "NU_UzOKrpgFi_X1PdePRR",
        "rev": 0,
        "options": {"label": "Салатовое стекло", "oldId": 289},
        "created": "2021-08-30 07:38:22.882350",
        "modified": "2021-08-30 07:38:22.882350",
        "deleted": false
      },
      {
        "id": "JzQMRw6kuql73e5TGmdix",
        "rev": 0,
        "options": {"label": "Венге дерево", "oldId": 299},
        "created": "2021-08-30 07:38:22.886927",
        "modified": "2021-08-30 07:38:22.886927",
        "deleted": false
      },
      {
        "id": "CrO35p1ssdU_wjf8bIqcx",
        "rev": 0,
        "options": {"label": "Светлый титан", "oldId": 317},
        "created": "2021-08-30 07:38:22.893802",
        "modified": "2021-08-30 07:38:22.893802",
        "deleted": false
      },
      {
        "id": "q_fUWLT4qq2KsgbdMICCs",
        "rev": 0,
        "options": {"label": "Грин перкаль", "oldId": 335},
        "created": "2021-08-30 07:38:22.899323",
        "modified": "2021-08-30 07:38:22.899323",
        "deleted": false
      },
      {
        "id": "6yMiovxdOqMWC0w7Ns_-N",
        "rev": 0,
        "options": {"label": "Светлое золото", "oldId": 352},
        "created": "2021-08-30 07:38:22.904862",
        "modified": "2021-08-30 07:38:22.904862",
        "deleted": false
      },
      {
        "id": "6hB1kXYUaQuAGWiUo-es5",
        "rev": 0,
        "options": {"label": "Темный металлик", "oldId": 84},
        "created": "2021-08-30 07:38:22.910157",
        "modified": "2021-08-30 07:38:22.910157",
        "deleted": false
      },
      {
        "id": "PyDXKLqW26ki1OWQuqxrf",
        "rev": 0,
        "options": {"label": "Морской синий", "oldId": 93},
        "created": "2021-08-30 07:38:22.915417",
        "modified": "2021-08-30 07:38:22.915417",
        "deleted": false
      },
      {
        "id": "XC_UV-1WoctZ3QywYcztB",
        "rev": 0,
        "options": {"label": "Кожа макиато", "oldId": 99},
        "created": "2021-08-30 07:38:22.920924",
        "modified": "2021-08-30 07:38:22.920924",
        "deleted": false
      },
      {
        "id": "nYZ2jqWSzUQAqPPfeSrLt",
        "rev": 0,
        "options": {"label": "Стекло белое", "oldId": 107},
        "created": "2021-08-30 07:38:22.925410",
        "modified": "2021-08-30 07:38:22.925410",
        "deleted": false
      },
      {
        "id": "Hcsg_dOxV7rQcQK33IQ13",
        "rev": 0,
        "options": {"label": "Хром матовый-графит", "oldId": 116},
        "created": "2021-08-30 07:38:22.929990",
        "modified": "2021-08-30 07:38:22.929990",
        "deleted": false
      },
      {
        "id": "VxusrD6vhOiA8AmiYBVqP",
        "rev": 0,
        "options": {"label": "Серо-зеленые-белый", "oldId": 125},
        "created": "2021-08-30 07:38:22.935376",
        "modified": "2021-08-30 07:38:22.935376",
        "deleted": false
      },
      {
        "id": "j31NXX2Iy1OYuUIw4XV4Q",
        "rev": 0,
        "options": {"label": "Морская волна-белый", "oldId": 134},
        "created": "2021-08-30 07:38:22.940955",
        "modified": "2021-08-30 07:38:22.940955",
        "deleted": false
      },
      {
        "id": "knQ2_CtswyirVyGR4K7-R",
        "rev": 0,
        "options": {"label": "Молочно-белый", "oldId": 143},
        "created": "2021-08-30 07:38:22.945722",
        "modified": "2021-08-30 07:38:22.945722",
        "deleted": false
      },
      {
        "id": "Bkt2s1S8ifMBvBvE3DZIT",
        "rev": 0,
        "options": {"label": "Ардезия", "oldId": 152},
        "created": "2021-08-30 07:38:22.951368",
        "modified": "2021-08-30 07:38:22.951368",
        "deleted": false
      },
      {
        "id": "v8jNBuLLABfzHraWPa3qh",
        "rev": 0,
        "options": {"label": "Кожа блэк пиксел", "oldId": 157},
        "created": "2021-08-30 07:38:22.956457",
        "modified": "2021-08-30 07:38:22.956457",
        "deleted": false
      },
      {
        "id": "RmK7qCvhsWkL3rojHGh-X",
        "rev": 0,
        "options": {"label": "Платина-серебро металл", "oldId": 166},
        "created": "2021-08-30 07:38:22.961664",
        "modified": "2021-08-30 07:38:22.961664",
        "deleted": false
      },
      {
        "id": "GPuFiZXVsob9BCGi_aay3",
        "rev": 0,
        "options": {"label": "Нордик-графит", "oldId": 175},
        "created": "2021-08-30 07:38:22.971108",
        "modified": "2021-08-30 07:38:22.971108",
        "deleted": false
      },
      {
        "id": "6iWNNLCw5u5ApOore6M9S",
        "rev": 0,
        "options": {"label": "Стекло графит", "oldId": 184},
        "created": "2021-08-30 07:38:22.976988",
        "modified": "2021-08-30 07:38:22.976988",
        "deleted": false
      },
      {
        "id": "eB8x0aSbfaMhND_eboypB",
        "rev": 0,
        "options": {"label": "Полированная латунь-черная роспись", "oldId": 196},
        "created": "2021-08-30 07:38:22.982158",
        "modified": "2021-08-30 07:38:22.982158",
        "deleted": false
      },
      {
        "id": "2Ehpl1QDnCXg6Uw0iCl_i",
        "rev": 0,
        "options": {"label": "Акрил оранжевый-белый", "oldId": 205},
        "created": "2021-08-30 07:38:22.990751",
        "modified": "2021-08-30 07:38:22.990751",
        "deleted": false
      },
      {
        "id": "4oAV7CccXM2hKpS2nV_0r",
        "rev": 0,
        "options": {"label": "Дуб-антрацит", "oldId": 214},
        "created": "2021-08-30 07:38:22.995944",
        "modified": "2021-08-30 07:38:22.995944",
        "deleted": false
      },
      {
        "id": "F5ATxDl7lBx5NdJP1MD5e",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь-черный", "oldId": 225},
        "created": "2021-08-30 07:38:23.000534",
        "modified": "2021-08-30 07:38:23.000534",
        "deleted": false
      },
      {
        "id": "HlKjsb1yNkYTrZXhzY8h5",
        "rev": 0,
        "options": {"label": "Хром металл", "oldId": 238},
        "created": "2021-08-30 07:38:23.007756",
        "modified": "2021-08-30 07:38:23.007756",
        "deleted": false
      },
      {
        "id": "ztSr_iV4z3F7MRpnPlqOc",
        "rev": 0,
        "options": {"label": "Лунный алюминий", "oldId": 247},
        "created": "2021-08-30 07:38:23.013125",
        "modified": "2021-08-30 07:38:23.013125",
        "deleted": false
      },
      {
        "id": "nh_kUjPqlfUjTavrTBvnn",
        "rev": 0,
        "options": {"label": "Черный металл", "oldId": 256},
        "created": "2021-08-30 07:38:23.018516",
        "modified": "2021-08-30 07:38:23.018516",
        "deleted": false
      },
      {
        "id": "dB6-Jsx2vv7Kebe01oqPR",
        "rev": 0,
        "options": {"label": "Шлифованная нержавеющая сталь", "oldId": 265},
        "created": "2021-08-30 07:38:23.027253",
        "modified": "2021-08-30 07:38:23.027253",
        "deleted": false
      },
      {
        "id": "Fe8_jW9NjbtmdblOFZp4r",
        "rev": 0,
        "options": {"label": "Зеркальный хром стекло", "oldId": 274},
        "created": "2021-08-30 07:38:23.033024",
        "modified": "2021-08-30 07:38:23.033024",
        "deleted": false
      },
      {
        "id": "aMo6FIQLCRDm3p6didxB_",
        "rev": 0,
        "options": {"label": "Гранат-бежевый", "oldId": 283},
        "created": "2021-08-30 07:38:23.038559",
        "modified": "2021-08-30 07:38:23.038559",
        "deleted": false
      },
      {
        "id": "N4xRLzRWiIavC0M54Liy7",
        "rev": 0,
        "options": {"label": "Светлая галька", "oldId": 292},
        "created": "2021-08-30 07:38:23.046469",
        "modified": "2021-08-30 07:38:23.046469",
        "deleted": false
      },
      {
        "id": "W-r1tY5M4AEVL36kwKoaq",
        "rev": 0,
        "options": {"label": "Никель", "oldId": 306},
        "created": "2021-08-30 07:38:23.051643",
        "modified": "2021-08-30 07:38:23.051643",
        "deleted": false
      },
      {
        "id": "1D-8CajK-W1ujQmNBOUkh",
        "rev": 0,
        "options": {"label": "Жемчуг", "oldId": 315},
        "created": "2021-08-30 07:38:23.057345",
        "modified": "2021-08-30 07:38:23.057345",
        "deleted": false
      },
      {
        "id": "27su_joC-CCMTjW1zHdiq",
        "rev": 0,
        "options": {"label": "Бронза матовая", "oldId": 324},
        "created": "2021-08-30 07:38:23.065469",
        "modified": "2021-08-30 07:38:23.065469",
        "deleted": false
      },
      {
        "id": "Eb2vMl6nz7HEs6mKmdkhD",
        "rev": 0,
        "options": {"label": "Стекло прозрачный лед", "oldId": 333},
        "created": "2021-08-30 07:38:23.071158",
        "modified": "2021-08-30 07:38:23.071158",
        "deleted": false
      },
      {
        "id": "G9iAM6MJUBRebWrVzFdgh",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь пластик", "oldId": 342},
        "created": "2021-08-30 07:38:23.076768",
        "modified": "2021-08-30 07:38:23.076768",
        "deleted": false
      },
      {
        "id": "KKo9__yulfcWFcSUGd6iB",
        "rev": 0,
        "options": {"label": "Полярная белизна", "oldId": 351},
        "created": "2021-08-30 07:38:23.084862",
        "modified": "2021-08-30 07:38:23.084862",
        "deleted": false
      },
      {
        "id": "XSq2SaO8IWCgMed-qCgS8",
        "rev": 0,
        "options": {"label": "Стекло кристальный зеленый", "oldId": 359},
        "created": "2021-08-30 07:38:23.090804",
        "modified": "2021-08-30 07:38:23.090804",
        "deleted": false
      },
      {
        "id": "F009LSjADOEXtsZKOs7OR",
        "rev": 0,
        "options": {"label": "Бронза-бронза", "oldId": 85},
        "created": "2021-08-30 07:38:23.096185",
        "modified": "2021-08-30 07:38:23.096185",
        "deleted": false
      },
      {
        "id": "Hf8ddjgmtZClSHGctMcLS",
        "rev": 0,
        "options": {"label": "Малина", "oldId": 91},
        "created": "2021-08-30 07:38:23.104539",
        "modified": "2021-08-30 07:38:23.104539",
        "deleted": false
      },
      {
        "id": "0DwwZNRTWGL1RcWHo2niH",
        "rev": 0,
        "options": {"label": "Рубиновый под кожу", "oldId": 100},
        "created": "2021-08-30 07:38:23.109046",
        "modified": "2021-08-30 07:38:23.109046",
        "deleted": false
      },
      {
        "id": "odHEabpMaGtvR47ts4xKW",
        "rev": 0,
        "options": {"label": "Родий-алюминий", "oldId": 108},
        "created": "2021-08-30 07:38:23.114629",
        "modified": "2021-08-30 07:38:23.114629",
        "deleted": false
      },
      {
        "id": "AgLm9S-eb-45vwsCav72U",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь-полярная белизна", "oldId": 117},
        "created": "2021-08-30 07:38:23.121610",
        "modified": "2021-08-30 07:38:23.121610",
        "deleted": false
      },
      {
        "id": "JBqR8C-RO9Mcgja-ER1lO",
        "rev": 0,
        "options": {"label": "Каучук-антрацит", "oldId": 126},
        "created": "2021-08-30 07:38:23.127480",
        "modified": "2021-08-30 07:38:23.127480",
        "deleted": false
      },
      {
        "id": "cWB7OzFZWwPuMfC9rwfLU",
        "rev": 0,
        "options": {"label": "Сахара", "oldId": 135},
        "created": "2021-08-30 07:38:23.132922",
        "modified": "2021-08-30 07:38:23.132922",
        "deleted": false
      },
      {
        "id": "HFFjJNXG-FTZHK8hkCHCO",
        "rev": 0,
        "options": {"label": "Берилл-алюминий", "oldId": 144},
        "created": "2021-08-30 07:38:23.138048",
        "modified": "2021-08-30 07:38:23.138048",
        "deleted": false
      },
      {
        "id": "0cOwsvcvoqQMaNe97ESBE",
        "rev": 0,
        "options": {"label": "Мокко металл", "oldId": 153},
        "created": "2021-08-30 07:38:23.143023",
        "modified": "2021-08-30 07:38:23.143023",
        "deleted": false
      },
      {
        "id": "IS85SU_iMVlRI-QsyuzJG",
        "rev": 0,
        "options": {"label": "Полированный алюминий-белый", "oldId": 158},
        "created": "2021-08-30 07:38:23.148896",
        "modified": "2021-08-30 07:38:23.148896",
        "deleted": false
      },
      {
        "id": "ZIj98HWmtdmXsX_JKcsQG",
        "rev": 0,
        "options": {"label": "Зеркальный алюминий", "oldId": 167},
        "created": "2021-08-30 07:38:23.154628",
        "modified": "2021-08-30 07:38:23.154628",
        "deleted": false
      },
      {
        "id": "yK_O4yoePc8OzS6moG4WV",
        "rev": 0,
        "options": {"label": "Алюминий-черный", "oldId": 176},
        "created": "2021-08-30 07:38:23.160068",
        "modified": "2021-08-30 07:38:23.160068",
        "deleted": false
      },
      {
        "id": "5SwVBN6L-2WAHmB9w7DrN",
        "rev": 0,
        "options": {"label": "Бежевая карамель", "oldId": 185},
        "created": "2021-08-30 07:38:23.165179",
        "modified": "2021-08-30 07:38:23.165179",
        "deleted": false
      },
      {
        "id": "B2xdcgYS8a1--p-89C0hz",
        "rev": 0,
        "options": {"label": "Акрил красный-антрацит", "oldId": 195},
        "created": "2021-08-30 07:38:23.170290",
        "modified": "2021-08-30 07:38:23.170290",
        "deleted": false
      },
      {
        "id": "52Ds_YDmYsf6v3ehqjsYZ",
        "rev": 0,
        "options": {"label": "Стекло шампань", "oldId": 204},
        "created": "2021-08-30 07:38:23.175512",
        "modified": "2021-08-30 07:38:23.175512",
        "deleted": false
      },
      {
        "id": "2PGZ6FMshtqalBejth78e",
        "rev": 0,
        "options": {"label": "Белая-белый", "oldId": 213},
        "created": "2021-08-30 07:38:23.181048",
        "modified": "2021-08-30 07:38:23.181048",
        "deleted": false
      },
      {
        "id": "9ywaDRm_eQA_wxPPcutzw",
        "rev": 0,
        "options": {"label": "Матовое стекло", "oldId": 224},
        "created": "2021-08-30 07:38:23.186266",
        "modified": "2021-08-30 07:38:23.186266",
        "deleted": false
      },
      {
        "id": "9m8BnlAzT3y4QqX8YU1jO",
        "rev": 0,
        "options": {"label": "Шоколад-белый", "oldId": 239},
        "created": "2021-08-30 07:38:23.191888",
        "modified": "2021-08-30 07:38:23.191888",
        "deleted": false
      },
      {
        "id": "msFXULzxZb9qXQoSWKpNk",
        "rev": 0,
        "options": {"label": "Алюминий-черный металл", "oldId": 248},
        "created": "2021-08-30 07:38:23.196871",
        "modified": "2021-08-30 07:38:23.196871",
        "deleted": false
      },
      {
        "id": "eMzU6iZYjHbeAts1V6XaX",
        "rev": 0,
        "options": {"label": "Стекло", "oldId": 257},
        "created": "2021-08-30 07:38:23.202431",
        "modified": "2021-08-30 07:38:23.202431",
        "deleted": false
      },
      {
        "id": "2gfTrQt81TNykLQlCLjAj",
        "rev": 0,
        "options": {"label": "Стекло черное-черный", "oldId": 266},
        "created": "2021-08-30 07:38:23.208203",
        "modified": "2021-08-30 07:38:23.208203",
        "deleted": false
      },
      {
        "id": "EFS4nVExeR9kI2_roLzXn",
        "rev": 0,
        "options": {"label": "Кальцит оранжевый стекло", "oldId": 275},
        "created": "2021-08-30 07:38:23.213435",
        "modified": "2021-08-30 07:38:23.213435",
        "deleted": false
      },
      {
        "id": "OPghFFhdKYeic2nftGBcG",
        "rev": 0,
        "options": {"label": "Черный-антрацит", "oldId": 284},
        "created": "2021-08-30 07:38:23.218147",
        "modified": "2021-08-30 07:38:23.218147",
        "deleted": false
      },
      {
        "id": "-_QqgkcjGqftyYQB4tjy-",
        "rev": 0,
        "options": {"label": "Бронза", "oldId": 293},
        "created": "2021-08-30 07:38:23.223508",
        "modified": "2021-08-30 07:38:23.223508",
        "deleted": false
      },
      {
        "id": "xdqeehwKKtyGLvm6TQNFO",
        "rev": 0,
        "options": {"label": "Песочный-антрацит", "oldId": 308},
        "created": "2021-08-30 07:38:23.228831",
        "modified": "2021-08-30 07:38:23.228831",
        "deleted": false
      },
      {
        "id": "HzELGVAyjwtqCxNqRAJS6",
        "rev": 0,
        "options": {"label": "Карамель", "oldId": 326},
        "created": "2021-08-30 07:38:23.234113",
        "modified": "2021-08-30 07:38:23.234113",
        "deleted": false
      },
      {
        "id": "GFca2caM9hn_O7Fie_EZ9",
        "rev": 0,
        "options": {"label": "Матовое серебро", "oldId": 344},
        "created": "2021-08-30 07:38:23.239098",
        "modified": "2021-08-30 07:38:23.239098",
        "deleted": false
      },
      {
        "id": "K4sECkjlH7Df0zKp6I0yT",
        "rev": 0,
        "options": {"label": "Оливковый металл", "oldId": 361},
        "created": "2021-08-30 07:38:23.244536",
        "modified": "2021-08-30 07:38:23.244536",
        "deleted": false
      },
      {
        "id": "oYZBDYtMeYfTxCiRS5bOW",
        "rev": 0,
        "options": {"label": "Linoleum-Multiplex красный", "oldId": 86},
        "created": "2021-08-30 07:38:23.249468",
        "modified": "2021-08-30 07:38:23.249468",
        "deleted": false
      },
      {
        "id": "xeGw0Ipgrq32sjwnZ_Epv",
        "rev": 0,
        "options": {"label": "Красный оксид стекло", "oldId": 94},
        "created": "2021-08-30 07:38:23.254409",
        "modified": "2021-08-30 07:38:23.254409",
        "deleted": false
      },
      {
        "id": "ZBn0rCKB4-XSR0pSD3xUe",
        "rev": 0,
        "options": {"label": "Фиолетовая перкаль", "oldId": 102},
        "created": "2021-08-30 07:38:23.259163",
        "modified": "2021-08-30 07:38:23.259163",
        "deleted": false
      },
      {
        "id": "Myps-7qK7RHNZcsgc8ANT",
        "rev": 0,
        "options": {"label": "Медь", "oldId": 110},
        "created": "2021-08-30 07:38:23.264211",
        "modified": "2021-08-30 07:38:23.264211",
        "deleted": false
      },
      {
        "id": "buQw5Q8tz1Xuc3p6poc4B",
        "rev": 0,
        "options": {"label": "Красное золото", "oldId": 119},
        "created": "2021-08-30 07:38:23.268909",
        "modified": "2021-08-30 07:38:23.268909",
        "deleted": false
      },
      {
        "id": "3qx9azx0lzOH-LEIIetkR",
        "rev": 0,
        "options": {"label": "Кремовый", "oldId": 128},
        "created": "2021-08-30 07:38:23.274223",
        "modified": "2021-08-30 07:38:23.274223",
        "deleted": false
      },
      {
        "id": "G27XlzF_k3yWqfaoUOJ8e",
        "rev": 0,
        "options": {"label": "Красное вино металл", "oldId": 137},
        "created": "2021-08-30 07:38:23.279031",
        "modified": "2021-08-30 07:38:23.279031",
        "deleted": false
      },
      {
        "id": "oSqnDZRhsxB0Xidda0457",
        "rev": 0,
        "options": {"label": "Светлый хром", "oldId": 146},
        "created": "2021-08-30 07:38:23.284522",
        "modified": "2021-08-30 07:38:23.284522",
        "deleted": false
      },
      {
        "id": "BbzVOFnaUHf3UDGefDN5m",
        "rev": 0,
        "options": {"label": "Бронза-бежевый", "oldId": 155},
        "created": "2021-08-30 07:38:23.290212",
        "modified": "2021-08-30 07:38:23.290212",
        "deleted": false
      },
      {
        "id": "oT1TE_87Tum-HTjLqC5yd",
        "rev": 0,
        "options": {"label": "Corian черный рифленый", "oldId": 160},
        "created": "2021-08-30 07:38:23.295499",
        "modified": "2021-08-30 07:38:23.295499",
        "deleted": false
      },
      {
        "id": "Af6scZ1Gbi8sAoq_ej0jX",
        "rev": 0,
        "options": {"label": "Античная латунь-белое стекло", "oldId": 169},
        "created": "2021-08-30 07:38:23.300727",
        "modified": "2021-08-30 07:38:23.300727",
        "deleted": false
      },
      {
        "id": "uo-cOEX1eOsXHXYzr0t3U",
        "rev": 0,
        "options": {"label": "Алюминий-полярная белизна", "oldId": 178},
        "created": "2021-08-30 07:38:23.306768",
        "modified": "2021-08-30 07:38:23.306768",
        "deleted": false
      },
      {
        "id": "QveKblx_3y6bAuiQ9pjiw",
        "rev": 0,
        "options": {"label": "Медь-белый", "oldId": 187},
        "created": "2021-08-30 07:38:23.312176",
        "modified": "2021-08-30 07:38:23.312176",
        "deleted": false
      },
      {
        "id": "Tm2IsMoomvc-3RuTbHerR",
        "rev": 0,
        "options": {"label": "Апельсиновая карамель", "oldId": 197},
        "created": "2021-08-30 07:38:23.320349",
        "modified": "2021-08-30 07:38:23.320349",
        "deleted": false
      },
      {
        "id": "Hio8bY6oSEGYt486cnYLH",
        "rev": 0,
        "options": {"label": "Бронза-белый", "oldId": 206},
        "created": "2021-08-30 07:38:23.325433",
        "modified": "2021-08-30 07:38:23.325433",
        "deleted": false
      },
      {
        "id": "Hg_80dQyVOaVlPBvbLBdw",
        "rev": 0,
        "options": {"label": "Алюминий коричневый", "oldId": 215},
        "created": "2021-08-30 07:38:23.330774",
        "modified": "2021-08-30 07:38:23.330774",
        "deleted": false
      },
      {
        "id": "fSOWXzchGX8oVEccpLu8W",
        "rev": 0,
        "options": {"label": "Хром-алюминий", "oldId": 226},
        "created": "2021-08-30 07:38:23.338722",
        "modified": "2021-08-30 07:38:23.338722",
        "deleted": false
      },
      {
        "id": "AqGywLmb_BpZC2Bea4Z7w",
        "rev": 0,
        "options": {"label": "Темная кожа", "oldId": 241},
        "created": "2021-08-30 07:38:23.345122",
        "modified": "2021-08-30 07:38:23.345122",
        "deleted": false
      },
      {
        "id": "NzCg6Jk499xkG_g2vYtAv",
        "rev": 0,
        "options": {"label": "Смальта мокка", "oldId": 259},
        "created": "2021-08-30 07:38:23.350686",
        "modified": "2021-08-30 07:38:23.350686",
        "deleted": false
      },
      {
        "id": "J4BtBvRglvOwLZOhwDJRj",
        "rev": 0,
        "options": {"label": "Белый кристалл стекло", "oldId": 277},
        "created": "2021-08-30 07:38:23.356621",
        "modified": "2021-08-30 07:38:23.356621",
        "deleted": false
      },
      {
        "id": "g5LGCjxWh6-FsBkj2_MdB",
        "rev": 0,
        "options": {"label": "Полированная латунь-белое стекло", "oldId": 295},
        "created": "2021-08-30 07:38:23.362289",
        "modified": "2021-08-30 07:38:23.362289",
        "deleted": false
      },
      {
        "id": "-ar2xKfQdHas6dw8MpLhj",
        "rev": 0,
        "options": {"label": "Оранжевый муар", "oldId": 301},
        "created": "2021-08-30 07:38:23.367684",
        "modified": "2021-08-30 07:38:23.367684",
        "deleted": false
      },
      {
        "id": "3RRuAb4QlnxkvDRAipigP",
        "rev": 0,
        "options": {"label": "Алюминий", "oldId": 310},
        "created": "2021-08-30 07:38:23.373033",
        "modified": "2021-08-30 07:38:23.373033",
        "deleted": false
      },
      {
        "id": "UtD-fXIfAOx1aac26_t6j",
        "rev": 0,
        "options": {"label": "Стекло бриллиант", "oldId": 319},
        "created": "2021-08-30 07:38:23.378520",
        "modified": "2021-08-30 07:38:23.378520",
        "deleted": false
      },
      {
        "id": "B3_Svv1BTwvWabaQ1_v0A",
        "rev": 0,
        "options": {"label": "Вишня-алюминий", "oldId": 328},
        "created": "2021-08-30 07:38:23.383421",
        "modified": "2021-08-30 07:38:23.383421",
        "deleted": false
      },
      {
        "id": "hxQkfPNWtgBbb8NC3hoXf",
        "rev": 0,
        "options": {"label": "Ретро", "oldId": 337},
        "created": "2021-08-30 07:38:23.389009",
        "modified": "2021-08-30 07:38:23.389009",
        "deleted": false
      },
      {
        "id": "D7pxqFUL5F9yaR0Rk_w4C",
        "rev": 0,
        "options": {"label": "Бежевый", "oldId": 346},
        "created": "2021-08-30 07:38:23.394323",
        "modified": "2021-08-30 07:38:23.394323",
        "deleted": false
      },
      {
        "id": "-okr8S6E80Y8DrHV_O96_",
        "rev": 0,
        "options": {"label": "Стекло аквамарин", "oldId": 354},
        "created": "2021-08-30 07:38:23.399580",
        "modified": "2021-08-30 07:38:23.399580",
        "deleted": false
      },
      {
        "id": "kVtRI6-qj7Pic3M5jTPqv",
        "rev": 0,
        "options": {"label": "Латунь классик", "oldId": 87},
        "created": "2021-08-30 07:38:23.404726",
        "modified": "2021-08-30 07:38:23.404726",
        "deleted": false
      },
      {
        "id": "W5hhQEn-0fea9-znydRPb",
        "rev": 0,
        "options": {"label": "Шампань-бежевый", "oldId": 92},
        "created": "2021-08-30 07:38:23.410486",
        "modified": "2021-08-30 07:38:23.410486",
        "deleted": false
      },
      {
        "id": "DgPa5UyHH0o1eCnuCi_6s",
        "rev": 0,
        "options": {"label": "Латунь-антрацит", "oldId": 101},
        "created": "2021-08-30 07:38:23.415322",
        "modified": "2021-08-30 07:38:23.415322",
        "deleted": false
      },
      {
        "id": "v-edmYCRGEXZSYOV8uzog",
        "rev": 0,
        "options": {"label": "Графит", "oldId": 109},
        "created": "2021-08-30 07:38:23.420833",
        "modified": "2021-08-30 07:38:23.420833",
        "deleted": false
      },
      {
        "id": "XokZFGz9RQC0BoqTexjUb",
        "rev": 0,
        "options": {"label": "Никель-графит", "oldId": 118},
        "created": "2021-08-30 07:38:23.426233",
        "modified": "2021-08-30 07:38:23.426233",
        "deleted": false
      },
      {
        "id": "KDtCf-dWUXuFGCz2kx_0p",
        "rev": 0,
        "options": {"label": "Linoleum-Multiplex синий", "oldId": 127},
        "created": "2021-08-30 07:38:23.431271",
        "modified": "2021-08-30 07:38:23.431271",
        "deleted": false
      },
      {
        "id": "tWaCaleS18oY8AqB7DFK0",
        "rev": 0,
        "options": {"label": "Стекло черное", "oldId": 136},
        "created": "2021-08-30 07:38:23.436778",
        "modified": "2021-08-30 07:38:23.436778",
        "deleted": false
      },
      {
        "id": "ZyUDxtCJYF8zbtG0BHy-L",
        "rev": 0,
        "options": {"label": "Синий-бежевый", "oldId": 145},
        "created": "2021-08-30 07:38:23.442683",
        "modified": "2021-08-30 07:38:23.442683",
        "deleted": false
      },
      {
        "id": "h8yESCqjHyhmXPf-6R5vF",
        "rev": 0,
        "options": {"label": "Белый металл", "oldId": 154},
        "created": "2021-08-30 07:38:23.452954",
        "modified": "2021-08-30 07:38:23.452954",
        "deleted": false
      },
      {
        "id": "OUmLhdUXFILEfZJ86O3ey",
        "rev": 0,
        "options": {"label": "Мятная карамель", "oldId": 159},
        "created": "2021-08-30 07:38:23.457935",
        "modified": "2021-08-30 07:38:23.457935",
        "deleted": false
      },
      {
        "id": "P5z4Nxr1x-ANAEQ-A6zcl",
        "rev": 0,
        "options": {"label": "Опал-графит", "oldId": 168},
        "created": "2021-08-30 07:38:23.462695",
        "modified": "2021-08-30 07:38:23.462695",
        "deleted": false
      },
      {
        "id": "aB2GP0K2pR8SV5Isob-s4",
        "rev": 0,
        "options": {"label": "Грей перкаль", "oldId": 177},
        "created": "2021-08-30 07:38:23.467636",
        "modified": "2021-08-30 07:38:23.467636",
        "deleted": false
      },
      {
        "id": "d0jKBD9TQzEKlc87JQjXT",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь-белый", "oldId": 186},
        "created": "2021-08-30 07:38:23.472030",
        "modified": "2021-08-30 07:38:23.472030",
        "deleted": false
      },
      {
        "id": "TnlgNrtd7vEPp55kZKGEP",
        "rev": 0,
        "options": {"label": "Какао", "oldId": 198},
        "created": "2021-08-30 07:38:23.476958",
        "modified": "2021-08-30 07:38:23.476958",
        "deleted": false
      },
      {
        "id": "IAHTcBISy-b1Y2j1jhqVR",
        "rev": 0,
        "options": {"label": "Бетон-белый", "oldId": 216},
        "created": "2021-08-30 07:38:23.481390",
        "modified": "2021-08-30 07:38:23.481390",
        "deleted": false
      },
      {
        "id": "d5WBawO11G7_QOve9mHh4",
        "rev": 0,
        "options": {"label": "Коричневая-антрацит", "oldId": 223},
        "created": "2021-08-30 07:38:23.485962",
        "modified": "2021-08-30 07:38:23.485962",
        "deleted": false
      },
      {
        "id": "ZUgIxwvaDKuQih-UxwfcW",
        "rev": 0,
        "options": {"label": "Дымчатое стекло", "oldId": 240},
        "created": "2021-08-30 07:38:23.490825",
        "modified": "2021-08-30 07:38:23.490825",
        "deleted": false
      },
      {
        "id": "dyPVV-OuxOSbXd8yYgNyY",
        "rev": 0,
        "options": {"label": "Песочный-белый", "oldId": 249},
        "created": "2021-08-30 07:38:23.495222",
        "modified": "2021-08-30 07:38:23.495222",
        "deleted": false
      },
      {
        "id": "DC080QXIeFpPwLeBTA-iM",
        "rev": 0,
        "options": {"label": "Малахит", "oldId": 258},
        "created": "2021-08-30 07:38:23.499489",
        "modified": "2021-08-30 07:38:23.499489",
        "deleted": false
      },
      {
        "id": "l5liHd3_OcqsbTJHqVv7p",
        "rev": 0,
        "options": {"label": "Белый-антрацит", "oldId": 267},
        "created": "2021-08-30 07:38:23.503708",
        "modified": "2021-08-30 07:38:23.503708",
        "deleted": false
      },
      {
        "id": "hySNmKyl_KXLT5x4tqZIp",
        "rev": 0,
        "options": {"label": "Бетон-антрацит", "oldId": 276},
        "created": "2021-08-30 07:38:23.507799",
        "modified": "2021-08-30 07:38:23.507799",
        "deleted": false
      },
      {
        "id": "2J5_jFmQf4TSBKDCTKsrh",
        "rev": 0,
        "options": {"label": "Матовый черный", "oldId": 285},
        "created": "2021-08-30 07:38:23.512212",
        "modified": "2021-08-30 07:38:23.512212",
        "deleted": false
      },
      {
        "id": "h_hBfr99QKjKG8romqXhh",
        "rev": 0,
        "options": {"label": "Оранж", "oldId": 294},
        "created": "2021-08-30 07:38:23.516493",
        "modified": "2021-08-30 07:38:23.516493",
        "deleted": false
      },
      {
        "id": "o8BTGhxddRWQ14MzDmvte",
        "rev": 0,
        "options": {"label": "Какао-белый", "oldId": 307},
        "created": "2021-08-30 07:38:23.520717",
        "modified": "2021-08-30 07:38:23.520717",
        "deleted": false
      },
      {
        "id": "U_d79ZCX7evAX6v_seLt9",
        "rev": 0,
        "options": {"label": "Фарфор белая феерия", "oldId": 316},
        "created": "2021-08-30 07:38:23.524986",
        "modified": "2021-08-30 07:38:23.524986",
        "deleted": false
      },
      {
        "id": "pslGw3yHKsnYhp3EmOa4m",
        "rev": 0,
        "options": {"label": "Песок под камень", "oldId": 325},
        "created": "2021-08-30 07:38:23.529468",
        "modified": "2021-08-30 07:38:23.529468",
        "deleted": false
      },
      {
        "id": "0kNfq0WaKh8Sj3t4u38Jn",
        "rev": 0,
        "options": {"label": "Махагон стекло", "oldId": 334},
        "created": "2021-08-30 07:38:23.533751",
        "modified": "2021-08-30 07:38:23.533751",
        "deleted": false
      },
      {
        "id": "-PXwsKs5dMW40TIG_AGe-",
        "rev": 0,
        "options": {"label": "Красный-белый", "oldId": 343},
        "created": "2021-08-30 07:38:23.539091",
        "modified": "2021-08-30 07:38:23.539091",
        "deleted": false
      },
      {
        "id": "KwUIB3GxKpxS7xlV7yX-K",
        "rev": 0,
        "options": {"label": "Сланец", "oldId": 360},
        "created": "2021-08-30 07:38:23.543791",
        "modified": "2021-08-30 07:38:23.543791",
        "deleted": false
      },
      {
        "id": "3lmI3OdcKcx8JRBro6r87",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь (алюминий)", "oldId": 88},
        "created": "2021-08-30 07:38:23.549160",
        "modified": "2021-08-30 07:38:23.549160",
        "deleted": false
      },
      {
        "id": "7vRTftCvsSct_Chtor2Jd",
        "rev": 0,
        "options": {"label": "Коричневый-кремовый глянец", "oldId": 97},
        "created": "2021-08-30 07:38:23.554515",
        "modified": "2021-08-30 07:38:23.554515",
        "deleted": false
      },
      {
        "id": "BV1R85vOI7iFD_E0EEgfV",
        "rev": 0,
        "options": {"label": "Белый-белый", "oldId": 114},
        "created": "2021-08-30 07:38:23.559685",
        "modified": "2021-08-30 07:38:23.559685",
        "deleted": false
      },
      {
        "id": "xDxrxQQYduUc1WTCijSu2",
        "rev": 0,
        "options": {"label": "Глянец белый", "oldId": 123},
        "created": "2021-08-30 07:38:23.564913",
        "modified": "2021-08-30 07:38:23.564913",
        "deleted": false
      },
      {
        "id": "KlKeaLYcCGs6Vg5K22y2f",
        "rev": 0,
        "options": {"label": "Металлик хром", "oldId": 132},
        "created": "2021-08-30 07:38:23.569943",
        "modified": "2021-08-30 07:38:23.569943",
        "deleted": false
      },
      {
        "id": "UuXWsD8enLO42EsS2hcR8",
        "rev": 0,
        "options": {"label": "Оникс-графит", "oldId": 141},
        "created": "2021-08-30 07:38:23.575291",
        "modified": "2021-08-30 07:38:23.575291",
        "deleted": false
      },
      {
        "id": "4aSx2sh-PYy-D54usdcKr",
        "rev": 0,
        "options": {"label": "Фисташковый-белый", "oldId": 150},
        "created": "2021-08-30 07:38:23.580899",
        "modified": "2021-08-30 07:38:23.580899",
        "deleted": false
      },
      {
        "id": "mEYs8tHBvISx9k7d7H81i",
        "rev": 0,
        "options": {"label": "Зеленое яблоко-белый", "oldId": 164},
        "created": "2021-08-30 07:38:23.586421",
        "modified": "2021-08-30 07:38:23.586421",
        "deleted": false
      },
      {
        "id": "E09amdiWLil1tKSzP-5o4",
        "rev": 0,
        "options": {"label": "Матовое стекло пластик", "oldId": 173},
        "created": "2021-08-30 07:38:23.592894",
        "modified": "2021-08-30 07:38:23.592894",
        "deleted": false
      },
      {
        "id": "3ykNr3PLqo53BCK2HIwN3",
        "rev": 0,
        "options": {"label": "Вишня-графит", "oldId": 182},
        "created": "2021-08-30 07:38:23.598426",
        "modified": "2021-08-30 07:38:23.598426",
        "deleted": false
      },
      {
        "id": "GiWp8QKzZf8kppc4BpEaJ",
        "rev": 0,
        "options": {"label": "Серебро", "oldId": 194},
        "created": "2021-08-30 07:38:23.604040",
        "modified": "2021-08-30 07:38:23.604040",
        "deleted": false
      },
      {
        "id": "wxkSO2Hs97L1owaBMEgq2",
        "rev": 0,
        "options": {"label": "Бирюзовый муар", "oldId": 203},
        "created": "2021-08-30 07:38:23.609177",
        "modified": "2021-08-30 07:38:23.609177",
        "deleted": false
      },
      {
        "id": "xwJrCGzLppRnCWbl8Dnxn",
        "rev": 0,
        "options": {"label": "Темное серебро", "oldId": 212},
        "created": "2021-08-30 07:38:23.614432",
        "modified": "2021-08-30 07:38:23.614432",
        "deleted": false
      },
      {
        "id": "VibhSltPupT61Dkr28SQM",
        "rev": 0,
        "options": {"label": "Белый", "oldId": 222},
        "created": "2021-08-30 07:38:23.619798",
        "modified": "2021-08-30 07:38:23.619798",
        "deleted": false
      },
      {
        "id": "PUMZc_qOJPqkmc7sVcptC",
        "rev": 0,
        "options": {"label": "Терракотовый-белый", "oldId": 230},
        "created": "2021-08-30 07:38:23.624700",
        "modified": "2021-08-30 07:38:23.624700",
        "deleted": false
      },
      {
        "id": "X_Cas66daMN7JhYiFyhln",
        "rev": 0,
        "options": {"label": "Шоколад-антрацит", "oldId": 236},
        "created": "2021-08-30 07:38:23.629577",
        "modified": "2021-08-30 07:38:23.629577",
        "deleted": false
      },
      {
        "id": "dwo1xnZhWck02_qDpLK0A",
        "rev": 0,
        "options": {"label": "Роскошный черный", "oldId": 245},
        "created": "2021-08-30 07:38:23.634976",
        "modified": "2021-08-30 07:38:23.634976",
        "deleted": false
      },
      {
        "id": "CYaNaNwhkOtBR9sXZUlYG",
        "rev": 0,
        "options": {"label": "Черный никель", "oldId": 254},
        "created": "2021-08-30 07:38:23.639997",
        "modified": "2021-08-30 07:38:23.639997",
        "deleted": false
      },
      {
        "id": "ymGr7tguf5QyEiK0msI7q",
        "rev": 0,
        "options": {"label": "Стекло кофейное", "oldId": 263},
        "created": "2021-08-30 07:38:23.645424",
        "modified": "2021-08-30 07:38:23.645424",
        "deleted": false
      },
      {
        "id": "ncxhY0_G1sEWnv4ZGCixe",
        "rev": 0,
        "options": {"label": "Кельтская сталь", "oldId": 272},
        "created": "2021-08-30 07:38:23.650628",
        "modified": "2021-08-30 07:38:23.650628",
        "deleted": false
      },
      {
        "id": "6A9UA_MhnY_WfNfy410jX",
        "rev": 0,
        "options": {"label": "Стекло мокко", "oldId": 281},
        "created": "2021-08-30 07:38:23.656114",
        "modified": "2021-08-30 07:38:23.656114",
        "deleted": false
      },
      {
        "id": "yE_3Gwe4AKPxe1395FVrD",
        "rev": 0,
        "options": {"label": "Белая карамель", "oldId": 290},
        "created": "2021-08-30 07:38:23.661447",
        "modified": "2021-08-30 07:38:23.661447",
        "deleted": false
      },
      {
        "id": "ZAT0Ih5VppmJ2xd0NW49g",
        "rev": 0,
        "options": {"label": "Черный белый глянец", "oldId": 303},
        "created": "2021-08-30 07:38:23.667016",
        "modified": "2021-08-30 07:38:23.667016",
        "deleted": false
      },
      {
        "id": "1pDmtJTfy8SFsb7P4xueW",
        "rev": 0,
        "options": {"label": "Киви", "oldId": 312},
        "created": "2021-08-30 07:38:23.672328",
        "modified": "2021-08-30 07:38:23.672328",
        "deleted": false
      },
      {
        "id": "eMXktDTSHTbxT94zcOOhk",
        "rev": 0,
        "options": {"label": "Коричневый-белый", "oldId": 321},
        "created": "2021-08-30 07:38:23.676890",
        "modified": "2021-08-30 07:38:23.676890",
        "deleted": false
      },
      {
        "id": "KHfQ1u9m4snIK0vihvoW3",
        "rev": 0,
        "options": {"label": "Кожа карамель", "oldId": 330},
        "created": "2021-08-30 07:38:23.682096",
        "modified": "2021-08-30 07:38:23.682096",
        "deleted": false
      },
      {
        "id": "nqmdOEhj_xm6UZms2gTwQ",
        "rev": 0,
        "options": {"label": "Слоновая кость глянец", "oldId": 339},
        "created": "2021-08-30 07:38:23.687388",
        "modified": "2021-08-30 07:38:23.687388",
        "deleted": false
      },
      {
        "id": "0SAHaXRMykqKgiU0ntbMe",
        "rev": 0,
        "options": {"label": "Светлая кожа", "oldId": 348},
        "created": "2021-08-30 07:38:23.692958",
        "modified": "2021-08-30 07:38:23.692958",
        "deleted": false
      },
      {
        "id": "77cJZkU_7LD4MeM3rl40e",
        "rev": 0,
        "options": {"label": "Металл", "oldId": 356},
        "created": "2021-08-30 07:38:23.698398",
        "modified": "2021-08-30 07:38:23.698398",
        "deleted": false
      },
      {
        "id": "o1tyVra99qgvb_LF2z2ym",
        "rev": 0,
        "options": {"label": "Флюорит-графит", "oldId": 89},
        "created": "2021-08-30 07:38:23.703723",
        "modified": "2021-08-30 07:38:23.703723",
        "deleted": false
      },
      {
        "id": "ljqp5G3DSFPQgTO4_LcOu",
        "rev": 0,
        "options": {"label": "Зеленый папоротник", "oldId": 106},
        "created": "2021-08-30 07:38:23.709414",
        "modified": "2021-08-30 07:38:23.709414",
        "deleted": false
      },
      {
        "id": "5uZ8YgUeYQUmnbWP3Rtt1",
        "rev": 0,
        "options": {"label": "Вольфрам", "oldId": 124},
        "created": "2021-08-30 07:38:23.715143",
        "modified": "2021-08-30 07:38:23.715143",
        "deleted": false
      },
      {
        "id": "eBf9bsn1t1dOdLatCDOXh",
        "rev": 0,
        "options": {"label": "Матовое стекло-белый", "oldId": 142},
        "created": "2021-08-30 07:38:23.720934",
        "modified": "2021-08-30 07:38:23.720934",
        "deleted": false
      },
      {
        "id": "6E498D5GeFOmdymtFYc9M",
        "rev": 0,
        "options": {"label": "Золото-антрацит", "oldId": 156},
        "created": "2021-08-30 07:38:23.726513",
        "modified": "2021-08-30 07:38:23.726513",
        "deleted": false
      },
      {
        "id": "6lR6DmnO-QL6ibNdCrKY4",
        "rev": 0,
        "options": {"label": "Кислотная металл", "oldId": 174},
        "created": "2021-08-30 07:38:23.731884",
        "modified": "2021-08-30 07:38:23.731884",
        "deleted": false
      },
      {
        "id": "eBnTu2yP3C_asHEcrroOr",
        "rev": 0,
        "options": {"label": "Ольха-белый", "oldId": 188},
        "created": "2021-08-30 07:38:23.737265",
        "modified": "2021-08-30 07:38:23.737265",
        "deleted": false
      },
      {
        "id": "JEAOcciZuaCWCbp75sILX",
        "rev": 0,
        "options": {"label": "Черное стекло-антрацит", "oldId": 190},
        "created": "2021-08-30 07:38:23.742654",
        "modified": "2021-08-30 07:38:23.742654",
        "deleted": false
      },
      {
        "id": "G9VlgIlDhr671jDVr6Jcd",
        "rev": 0,
        "options": {"label": "Латунь-латунь", "oldId": 199},
        "created": "2021-08-30 07:38:23.748197",
        "modified": "2021-08-30 07:38:23.748197",
        "deleted": false
      },
      {
        "id": "K5nJiNXomKvDp7jnejGED",
        "rev": 0,
        "options": {"label": "Золото-белый", "oldId": 208},
        "created": "2021-08-30 07:38:23.754066",
        "modified": "2021-08-30 07:38:23.754066",
        "deleted": false
      },
      {
        "id": "7N7ZfRX84NtBBISTe1RcB",
        "rev": 0,
        "options": {"label": "Опал-алюминий", "oldId": 217},
        "created": "2021-08-30 07:38:23.759314",
        "modified": "2021-08-30 07:38:23.759314",
        "deleted": false
      },
      {
        "id": "03U2nGTljt-Igtu_de3Cj",
        "rev": 0,
        "options": {"label": "Стекло зеркало", "oldId": 227},
        "created": "2021-08-30 07:38:23.765231",
        "modified": "2021-08-30 07:38:23.765231",
        "deleted": false
      },
      {
        "id": "qd7SyAmNPVnPaJpZD2d_C",
        "rev": 0,
        "options": {"label": "Оранж пунктум", "oldId": 233},
        "created": "2021-08-30 07:38:23.770446",
        "modified": "2021-08-30 07:38:23.770446",
        "deleted": false
      },
      {
        "id": "eKyO8cPv0nzKS-Ht-8isQ",
        "rev": 0,
        "options": {"label": "Рубин", "oldId": 242},
        "created": "2021-08-30 07:38:23.776255",
        "modified": "2021-08-30 07:38:23.776255",
        "deleted": false
      },
      {
        "id": "2dO8WjxqfE1gXIZp2vTx8",
        "rev": 0,
        "options": {"label": "Голубая карамель", "oldId": 251},
        "created": "2021-08-30 07:38:23.781525",
        "modified": "2021-08-30 07:38:23.781525",
        "deleted": false
      },
      {
        "id": "F5_OuTPwej3mTvVE0X4RN",
        "rev": 0,
        "options": {"label": "Нордик-алюминий", "oldId": 260},
        "created": "2021-08-30 07:38:23.787044",
        "modified": "2021-08-30 07:38:23.787044",
        "deleted": false
      },
      {
        "id": "f14fo-9vabKGjUwdiqekS",
        "rev": 0,
        "options": {"label": "Хром-графит", "oldId": 269},
        "created": "2021-08-30 07:38:23.792149",
        "modified": "2021-08-30 07:38:23.792149",
        "deleted": false
      },
      {
        "id": "9LICqmBKWwVM1Lx7HsNDi",
        "rev": 0,
        "options": {"label": "Фиолетовый-антрацит", "oldId": 278},
        "created": "2021-08-30 07:38:23.797232",
        "modified": "2021-08-30 07:38:23.797232",
        "deleted": false
      },
      {
        "id": "vCmaDAXpxkf2QeEbhvbqa",
        "rev": 0,
        "options": {"label": "Акрил", "oldId": 287},
        "created": "2021-08-30 07:38:23.802613",
        "modified": "2021-08-30 07:38:23.802613",
        "deleted": false
      },
      {
        "id": "2o0RlLMB1l0iILAed15f7",
        "rev": 0,
        "options": {"label": "Мрамор", "oldId": 296},
        "created": "2021-08-30 07:38:23.808242",
        "modified": "2021-08-30 07:38:23.808242",
        "deleted": false
      },
      {
        "id": "lObq3DejNLzWpwaAqDUce",
        "rev": 0,
        "options": {"label": "Антрацит", "oldId": 304},
        "created": "2021-08-30 07:38:23.814382",
        "modified": "2021-08-30 07:38:23.814382",
        "deleted": false
      },
      {
        "id": "yMbdtBRzkPUNR8iGBRfxn",
        "rev": 0,
        "options": {"label": "Фиолетовый-алюминий", "oldId": 313},
        "created": "2021-08-30 07:38:23.819382",
        "modified": "2021-08-30 07:38:23.819382",
        "deleted": false
      },
      {
        "id": "mTy9ibpEWM1h3ilQeRzWH",
        "rev": 0,
        "options": {"label": "Linoleum-Multiplex коричневый", "oldId": 322},
        "created": "2021-08-30 07:38:23.824646",
        "modified": "2021-08-30 07:38:23.824646",
        "deleted": false
      },
      {
        "id": "c2fj00fCMyzmIQ8-iW6vD",
        "rev": 0,
        "options": {"label": "Красная", "oldId": 331},
        "created": "2021-08-30 07:38:23.830232",
        "modified": "2021-08-30 07:38:23.830232",
        "deleted": false
      },
      {
        "id": "8sEm7lMQU2jdpL93AufF3",
        "rev": 0,
        "options": {"label": "Шампань металл", "oldId": 340},
        "created": "2021-08-30 07:38:23.836335",
        "modified": "2021-08-30 07:38:23.836335",
        "deleted": false
      },
      {
        "id": "UVAH6IMvnXf_HSYoGCWbu",
        "rev": 0,
        "options": {"label": "Античная латунь-черное стекло", "oldId": 349},
        "created": "2021-08-30 07:38:23.841980",
        "modified": "2021-08-30 07:38:23.841980",
        "deleted": false
      },
      {
        "id": "30sC5fkqYTR_Eq5ExUd7r",
        "rev": 0,
        "options": {"label": "Зеленое Яблоко-белый", "oldId": 357},
        "created": "2021-08-30 07:38:23.847783",
        "modified": "2021-08-30 07:38:23.847783",
        "deleted": false
      },
      {
        "id": "wFywhJ9uKXmHRNQJu2X-l",
        "rev": 0,
        "options": {"label": "Титан металл", "oldId": 90},
        "created": "2021-08-30 07:38:23.853495",
        "modified": "2021-08-30 07:38:23.853495",
        "deleted": false
      },
      {
        "id": "wGaFd5GURyqEgb2uTY75t",
        "rev": 0,
        "options": {"label": "Акрил красный-белый", "oldId": 105},
        "created": "2021-08-30 07:38:23.860787",
        "modified": "2021-08-30 07:38:23.860787",
        "deleted": false
      },
      {
        "id": "Sa3Os3viWHsJkpZctagE6",
        "rev": 0,
        "options": {"label": "Бежевый металл", "oldId": 113},
        "created": "2021-08-30 07:38:23.866099",
        "modified": "2021-08-30 07:38:23.866099",
        "deleted": false
      },
      {
        "id": "aeUAoRCVaLh_UXa4tv4B_",
        "rev": 0,
        "options": {"label": "Ледяная сталь", "oldId": 122},
        "created": "2021-08-30 07:38:23.873157",
        "modified": "2021-08-30 07:38:23.873157",
        "deleted": false
      },
      {
        "id": "PIdvWHk1Yv44kcdCY4AMj",
        "rev": 0,
        "options": {"label": "Алюминий-металлик", "oldId": 131},
        "created": "2021-08-30 07:38:23.878752",
        "modified": "2021-08-30 07:38:23.878752",
        "deleted": false
      },
      {
        "id": "BnX8YC3SKxHe7uPwdIhSZ",
        "rev": 0,
        "options": {"label": "Черный-алюминий", "oldId": 140},
        "created": "2021-08-30 07:38:23.885123",
        "modified": "2021-08-30 07:38:23.885123",
        "deleted": false
      },
      {
        "id": "jzTJdSn0Iv3qz1fE5dn3M",
        "rev": 0,
        "options": {"label": "Зеленое Яблоко-бежевый", "oldId": 149},
        "created": "2021-08-30 07:38:23.897657",
        "modified": "2021-08-30 07:38:23.897657",
        "deleted": false
      },
      {
        "id": "WvIk2kgd8a5pd0rhfy6V4",
        "rev": 0,
        "options": {"label": "Шампань", "oldId": 163},
        "created": "2021-08-30 07:38:23.902027",
        "modified": "2021-08-30 07:38:23.902027",
        "deleted": false
      },
      {
        "id": "8kQraNHIueYL4J1gxF3PX",
        "rev": 0,
        "options": {"label": "Оранжевая-белый", "oldId": 172},
        "created": "2021-08-30 07:38:23.907004",
        "modified": "2021-08-30 07:38:23.907004",
        "deleted": false
      },
      {
        "id": "1d6Xi3DpW31_NtjPaG1OO",
        "rev": 0,
        "options": {"label": "Золото-бежевый", "oldId": 181},
        "created": "2021-08-30 07:38:23.912027",
        "modified": "2021-08-30 07:38:23.912027",
        "deleted": false
      },
      {
        "id": "EYesRGOI0qxEF0XOx0AwC",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь", "oldId": 192},
        "created": "2021-08-30 07:38:23.917675",
        "modified": "2021-08-30 07:38:23.917675",
        "deleted": false
      },
      {
        "id": "f4SaAB4Ru7ajlx4p3uYqU",
        "rev": 0,
        "options": {"label": "Табак-алюминий", "oldId": 201},
        "created": "2021-08-30 07:38:23.923185",
        "modified": "2021-08-30 07:38:23.923185",
        "deleted": false
      },
      {
        "id": "Rw6-UjKJj-E6LnLr1OC8_",
        "rev": 0,
        "options": {"label": "Венге (алюминий)", "oldId": 210},
        "created": "2021-08-30 07:38:23.928840",
        "modified": "2021-08-30 07:38:23.928840",
        "deleted": false
      },
      {
        "id": "NM4nSxA_bJRxArArKTACN",
        "rev": 0,
        "options": {"label": "Linoleum-Multiplex светло-коричневый", "oldId": 220},
        "created": "2021-08-30 07:38:23.934427",
        "modified": "2021-08-30 07:38:23.934427",
        "deleted": false
      },
      {
        "id": "RRvH8lbtIF27KON6zTpW5",
        "rev": 0,
        "options": {"label": "Серый родий металл", "oldId": 231},
        "created": "2021-08-30 07:38:23.939777",
        "modified": "2021-08-30 07:38:23.939777",
        "deleted": false
      },
      {
        "id": "qMHNEnI-KM6UJaRs9kfpl",
        "rev": 0,
        "options": {"label": "Табак-графит", "oldId": 237},
        "created": "2021-08-30 07:38:23.945275",
        "modified": "2021-08-30 07:38:23.945275",
        "deleted": false
      },
      {
        "id": "iYctvuwyjWBH3J21GWqXh",
        "rev": 0,
        "options": {"label": "Бронза-крем", "oldId": 246},
        "created": "2021-08-30 07:38:23.951269",
        "modified": "2021-08-30 07:38:23.951269",
        "deleted": false
      },
      {
        "id": "Kbr9eOIfUlu6s9DhCFYB6",
        "rev": 0,
        "options": {"label": "Тиковое дерево", "oldId": 255},
        "created": "2021-08-30 07:38:23.957255",
        "modified": "2021-08-30 07:38:23.957255",
        "deleted": false
      },
      {
        "id": "vUqVKTEAtHStomvby9C72",
        "rev": 0,
        "options": {"label": "Белый декапо", "oldId": 264},
        "created": "2021-08-30 07:38:23.962928",
        "modified": "2021-08-30 07:38:23.962928",
        "deleted": false
      },
      {
        "id": "PKN0kWChQRN4l59DY8AYW",
        "rev": 0,
        "options": {"label": "Каррара мрамор", "oldId": 273},
        "created": "2021-08-30 07:38:23.967965",
        "modified": "2021-08-30 07:38:23.967965",
        "deleted": false
      },
      {
        "id": "4Aqgrvnzb--ZaGphu-WZ8",
        "rev": 0,
        "options": {"label": "Бетон", "oldId": 282},
        "created": "2021-08-30 07:38:23.973714",
        "modified": "2021-08-30 07:38:23.973714",
        "deleted": false
      },
      {
        "id": "U939W8Ug_5AZuYo0YLxud",
        "rev": 0,
        "options": {"label": "КЛЕН/белый", "oldId": 291},
        "created": "2021-08-30 07:38:23.978501",
        "modified": "2021-08-30 07:38:23.978501",
        "deleted": false
      },
      {
        "id": "fV7vFjyhFKtRjvjhICKnp",
        "rev": 0,
        "options": {"label": "Дерево-белый", "oldId": 302},
        "created": "2021-08-30 07:38:23.984106",
        "modified": "2021-08-30 07:38:23.984106",
        "deleted": false
      },
      {
        "id": "m_K23FfbZagBh321wX15L",
        "rev": 0,
        "options": {"label": "Коричневый-алюминий", "oldId": 311},
        "created": "2021-08-30 07:38:23.989481",
        "modified": "2021-08-30 07:38:23.989481",
        "deleted": false
      },
      {
        "id": "PjOIwr8GfPNhCTixevPLB",
        "rev": 0,
        "options": {"label": "Смальта кармин", "oldId": 320},
        "created": "2021-08-30 07:38:23.994798",
        "modified": "2021-08-30 07:38:23.994798",
        "deleted": false
      },
      {
        "id": "f9-IzxnxfpvSWa5XnhQEm",
        "rev": 0,
        "options": {"label": "Ясень дерево", "oldId": 329},
        "created": "2021-08-30 07:38:23.999544",
        "modified": "2021-08-30 07:38:23.999544",
        "deleted": false
      },
      {
        "id": "Nv9oSdeXrJri65fsSTRKD",
        "rev": 0,
        "options": {"label": "Венге-алюминий", "oldId": 338},
        "created": "2021-08-30 07:38:24.006148",
        "modified": "2021-08-30 07:38:24.006148",
        "deleted": false
      },
      {
        "id": "uUd_mtv34ufl8FR6Pcczz",
        "rev": 0,
        "options": {"label": "Лава под камень", "oldId": 347},
        "created": "2021-08-30 07:38:24.011421",
        "modified": "2021-08-30 07:38:24.011421",
        "deleted": false
      },
      {
        "id": "S6b1CJBCrYUgUTag_H7WW",
        "rev": 0,
        "options": {"label": "Фактурная сталь", "oldId": 355},
        "created": "2021-08-30 07:38:24.017239",
        "modified": "2021-08-30 07:38:24.017239",
        "deleted": false
      },
      {
        "id": "misCYIbVx3Xwe3i5l4lda",
        "rev": 0,
        "options": {"label": "Глянец крем", "oldId": 95},
        "created": "2021-08-30 07:38:24.023424",
        "modified": "2021-08-30 07:38:24.023424",
        "deleted": false
      },
      {
        "id": "0_YJ0OXbzYVYW3YrazpSZ",
        "rev": 0,
        "options": {"label": "Платиновый металлик", "oldId": 103},
        "created": "2021-08-30 07:38:24.029505",
        "modified": "2021-08-30 07:38:24.029505",
        "deleted": false
      },
      {
        "id": "-N4QJVVP690V_nSf6wfIH",
        "rev": 0,
        "options": {"label": "Карбон", "oldId": 111},
        "created": "2021-08-30 07:38:24.034728",
        "modified": "2021-08-30 07:38:24.034728",
        "deleted": false
      },
      {
        "id": "OCjFg_IeX27oyKEcw9laq",
        "rev": 0,
        "options": {"label": "Слоновая кость", "oldId": 120},
        "created": "2021-08-30 07:38:24.042239",
        "modified": "2021-08-30 07:38:24.042239",
        "deleted": false
      },
      {
        "id": "uRV6FOYTlatUIYOTR8ptR",
        "rev": 0,
        "options": {"label": "Коричневый-бежевый", "oldId": 129},
        "created": "2021-08-30 07:38:24.051691",
        "modified": "2021-08-30 07:38:24.051691",
        "deleted": false
      },
      {
        "id": "kNlQFHn1YmsXQg8tYa2yA",
        "rev": 0,
        "options": {"label": "Матовое золото", "oldId": 138},
        "created": "2021-08-30 07:38:24.057235",
        "modified": "2021-08-30 07:38:24.057235",
        "deleted": false
      },
      {
        "id": "ACDlU0OWcfJBz-GKNkoxR",
        "rev": 0,
        "options": {"label": "Стекло красное", "oldId": 147},
        "created": "2021-08-30 07:38:24.064012",
        "modified": "2021-08-30 07:38:24.064012",
        "deleted": false
      },
      {
        "id": "FChk6iGwBaGpQCF9kIU2T",
        "rev": 0,
        "options": {"label": "Античная латунь-черная роспись", "oldId": 161},
        "created": "2021-08-30 07:38:24.070033",
        "modified": "2021-08-30 07:38:24.070033",
        "deleted": false
      },
      {
        "id": "oWNJoLzRBbcu5C5Zhtim7",
        "rev": 0,
        "options": {"label": "Титан", "oldId": 170},
        "created": "2021-08-30 07:38:24.075666",
        "modified": "2021-08-30 07:38:24.075666",
        "deleted": false
      },
      {
        "id": "VIpkr2c8ytAcz_jzlFzOg",
        "rev": 0,
        "options": {"label": "Золото", "oldId": 179},
        "created": "2021-08-30 07:38:24.081020",
        "modified": "2021-08-30 07:38:24.081020",
        "deleted": false
      },
      {
        "id": "MpaMI4YvTVI512gyuki_z",
        "rev": 0,
        "options": {"label": "Стекло белое-белый", "oldId": 189},
        "created": "2021-08-30 07:38:24.086188",
        "modified": "2021-08-30 07:38:24.086188",
        "deleted": false
      },
      {
        "id": "xl33kFmQgXWwowjst_bRy",
        "rev": 0,
        "options": {"label": "Песочное стекло", "oldId": 207},
        "created": "2021-08-30 07:38:24.091981",
        "modified": "2021-08-30 07:38:24.091981",
        "deleted": false
      },
      {
        "id": "aUcrVG93unxrgNlbvbeOm",
        "rev": 0,
        "options": {"label": "Бронза светлая", "oldId": 219},
        "created": "2021-08-30 07:38:24.097564",
        "modified": "2021-08-30 07:38:24.097564",
        "deleted": false
      },
      {
        "id": "g-AeMEt2MgqozNgFBeRRo",
        "rev": 0,
        "options": {"label": "Серо-зеленые-бежевый", "oldId": 232},
        "created": "2021-08-30 07:38:24.103268",
        "modified": "2021-08-30 07:38:24.103268",
        "deleted": false
      },
      {
        "id": "qZb1o5RJHAf0gTbrcpn-0",
        "rev": 0,
        "options": {"label": "Розовый жемчуг", "oldId": 250},
        "created": "2021-08-30 07:38:24.108978",
        "modified": "2021-08-30 07:38:24.108978",
        "deleted": false
      },
      {
        "id": "y0IbXiFBA1XJmXucVG_MK",
        "rev": 0,
        "options": {"label": "Серый", "oldId": 268},
        "created": "2021-08-30 07:38:24.114353",
        "modified": "2021-08-30 07:38:24.114353",
        "deleted": false
      },
      {
        "id": "bkHJbzk0k909hSc37ddi7",
        "rev": 0,
        "options": {"label": "Хром-белый", "oldId": 286},
        "created": "2021-08-30 07:38:24.119111",
        "modified": "2021-08-30 07:38:24.119111",
        "deleted": false
      },
      {
        "id": "-Mf0PXutyVo4y7MkfYotl",
        "rev": 0,
        "options": {"label": "Песочные-бежевый", "oldId": 298},
        "created": "2021-08-30 07:38:24.124232",
        "modified": "2021-08-30 07:38:24.124232",
        "deleted": false
      },
      {
        "id": "en5CuYyCl_gYL0yKegxDR",
        "rev": 0,
        "options": {"label": "Белый под кожу", "oldId": 300},
        "created": "2021-08-30 07:38:24.129584",
        "modified": "2021-08-30 07:38:24.129584",
        "deleted": false
      },
      {
        "id": "SEeUC0AqvjP8IkvmqykyF",
        "rev": 0,
        "options": {"label": "Берилл-графит", "oldId": 309},
        "created": "2021-08-30 07:38:24.135038",
        "modified": "2021-08-30 07:38:24.135038",
        "deleted": false
      },
      {
        "id": "XNQ5ETsSKzjA8ncQXmEg6",
        "rev": 0,
        "options": {"label": "Цветные", "oldId": 318},
        "created": "2021-08-30 07:38:24.140128",
        "modified": "2021-08-30 07:38:24.140128",
        "deleted": false
      },
      {
        "id": "avEaK5KeIS6PCw4nKHQun",
        "rev": 0,
        "options": {"label": "Иберийский сланец", "oldId": 327},
        "created": "2021-08-30 07:38:24.145412",
        "modified": "2021-08-30 07:38:24.145412",
        "deleted": false
      },
      {
        "id": "8ZftKlCHpOop_wRTcC7eh",
        "rev": 0,
        "options": {"label": "Бриллиант белый стекло", "oldId": 336},
        "created": "2021-08-30 07:38:24.150727",
        "modified": "2021-08-30 07:38:24.150727",
        "deleted": false
      },
      {
        "id": "Q75AwtdJ1ujCgLk47RqNR",
        "rev": 0,
        "options": {"label": "Грэй-графит", "oldId": 345},
        "created": "2021-08-30 07:38:24.156170",
        "modified": "2021-08-30 07:38:24.156170",
        "deleted": false
      },
      {
        "id": "qyXczzbs-lqTbIyTHIKsI",
        "rev": 0,
        "options": {"label": "Зеленый-антрацит", "oldId": 353},
        "created": "2021-08-30 07:38:24.164411",
        "modified": "2021-08-30 07:38:24.164411",
        "deleted": false
      },
      {
        "id": "pcX8NLMM0KAmXja11Kqaw",
        "rev": 0,
        "options": {"label": "Сильвер пунктум", "oldId": 98},
        "created": "2021-08-30 07:38:24.169925",
        "modified": "2021-08-30 07:38:24.169925",
        "deleted": false
      },
      {
        "id": "Tss35oyWjgg535Z5ZQ3ZC",
        "rev": 0,
        "options": {"label": "Серый-белый", "oldId": 115},
        "created": "2021-08-30 07:38:24.175132",
        "modified": "2021-08-30 07:38:24.175132",
        "deleted": false
      },
      {
        "id": "N_53j588XingE5T6YWOWu",
        "rev": 0,
        "options": {"label": "Изумруд", "oldId": 133},
        "created": "2021-08-30 07:38:24.180429",
        "modified": "2021-08-30 07:38:24.180429",
        "deleted": false
      },
      {
        "id": "HAOnUfznz88Z_0pWbfK6m",
        "rev": 0,
        "options": {"label": "Голубой лед-бежевый", "oldId": 151},
        "created": "2021-08-30 07:38:24.185162",
        "modified": "2021-08-30 07:38:24.185162",
        "deleted": false
      },
      {
        "id": "Lz9uikoz-tFRuIQK94G2V",
        "rev": 0,
        "options": {"label": "Акрил оранжевый-антрацит", "oldId": 162},
        "created": "2021-08-30 07:38:24.189755",
        "modified": "2021-08-30 07:38:24.189755",
        "deleted": false
      },
      {
        "id": "_mlptiOs7qNidsqPC8NCP",
        "rev": 0,
        "options": {"label": "Черное стекло", "oldId": 171},
        "created": "2021-08-30 07:38:24.194897",
        "modified": "2021-08-30 07:38:24.194897",
        "deleted": false
      },
      {
        "id": "ODQkE1FGmB_TOombG5g6-",
        "rev": 0,
        "options": {"label": "Corian белый рельеф", "oldId": 180},
        "created": "2021-08-30 07:38:24.200671",
        "modified": "2021-08-30 07:38:24.200671",
        "deleted": false
      },
      {
        "id": "_7RxBuvH6jDLY7YMRy3zP",
        "rev": 0,
        "options": {"label": "Кожа-кофе", "oldId": 191},
        "created": "2021-08-30 07:38:24.206683",
        "modified": "2021-08-30 07:38:24.206683",
        "deleted": false
      },
      {
        "id": "k_YdKowo5pU6SPtGSi31L",
        "rev": 0,
        "options": {"label": "Синий-белый", "oldId": 200},
        "created": "2021-08-30 07:38:24.212226",
        "modified": "2021-08-30 07:38:24.212226",
        "deleted": false
      },
      {
        "id": "g-MUxPiXT62JtNR3sFJYd",
        "rev": 0,
        "options": {"label": "Венге-графит", "oldId": 209},
        "created": "2021-08-30 07:38:24.217386",
        "modified": "2021-08-30 07:38:24.217386",
        "deleted": false
      },
      {
        "id": "ss9fFZ9xplzdGFpIURlK3",
        "rev": 0,
        "options": {"label": "Бронза-антрацит", "oldId": 218},
        "created": "2021-08-30 07:38:24.222845",
        "modified": "2021-08-30 07:38:24.222845",
        "deleted": false
      },
      {
        "id": "j_x_UqtoCse4sR80x5I6f",
        "rev": 0,
        "options": {"label": "Камень-антрацит", "oldId": 228},
        "created": "2021-08-30 07:38:24.227902",
        "modified": "2021-08-30 07:38:24.227902",
        "deleted": false
      },
      {
        "id": "S0sD7OV66l24BONfULoku",
        "rev": 0,
        "options": {"label": "Родий-графит", "oldId": 234},
        "created": "2021-08-30 07:38:24.233034",
        "modified": "2021-08-30 07:38:24.233034",
        "deleted": false
      },
      {
        "id": "0KzrLnJkzZDuMpzi8GQTd",
        "rev": 0,
        "options": {"label": "Дымчато серый-антрацит", "oldId": 243},
        "created": "2021-08-30 07:38:24.238249",
        "modified": "2021-08-30 07:38:24.238249",
        "deleted": false
      },
      {
        "id": "H6pvBGlaCVWlPl5JloIvq",
        "rev": 0,
        "options": {"label": "Песочный муар", "oldId": 252},
        "created": "2021-08-30 07:38:24.243369",
        "modified": "2021-08-30 07:38:24.243369",
        "deleted": false
      },
      {
        "id": "a2ZNhBdFth6KL7DC6GCHQ",
        "rev": 0,
        "options": {"label": "Стекло брызги шампанского", "oldId": 261},
        "created": "2021-08-30 07:38:24.248631",
        "modified": "2021-08-30 07:38:24.248631",
        "deleted": false
      },
      {
        "id": "gR5uTK5qOnLrK351g4jyt",
        "rev": 0,
        "options": {"label": "Стекло охра", "oldId": 270},
        "created": "2021-08-30 07:38:24.253861",
        "modified": "2021-08-30 07:38:24.253861",
        "deleted": false
      },
      {
        "id": "t1gxvYefLMictLr9P18fE",
        "rev": 0,
        "options": {"label": "Голубика", "oldId": 279},
        "created": "2021-08-30 07:38:24.259009",
        "modified": "2021-08-30 07:38:24.259009",
        "deleted": false
      },
      {
        "id": "E-dQ-NvaQad-lt1BAePR8",
        "rev": 0,
        "options": {"label": "Сланец (алюминий)", "oldId": 288},
        "created": "2021-08-30 07:38:24.265026",
        "modified": "2021-08-30 07:38:24.265026",
        "deleted": false
      },
      {
        "id": "UzaWo3kKCNeKv173myv4j",
        "rev": 0,
        "options": {"label": "Зеленый-белый", "oldId": 297},
        "created": "2021-08-30 07:38:24.270393",
        "modified": "2021-08-30 07:38:24.270393",
        "deleted": false
      },
      {
        "id": "Ep-ik_Vs_4s751lNMsFlI",
        "rev": 0,
        "options": {"label": "Дымчато серый-белый", "oldId": 305},
        "created": "2021-08-30 07:38:24.275710",
        "modified": "2021-08-30 07:38:24.275710",
        "deleted": false
      },
      {
        "id": "EuClshIjANqT4nf75McY-",
        "rev": 0,
        "options": {"label": "Черный", "oldId": 314},
        "created": "2021-08-30 07:38:24.281124",
        "modified": "2021-08-30 07:38:24.281124",
        "deleted": false
      },
      {
        "id": "c2dOYHEA-f6yc37LjatLh",
        "rev": 0,
        "options": {"label": "Дуб беленый", "oldId": 323},
        "created": "2021-08-30 07:38:24.287401",
        "modified": "2021-08-30 07:38:24.287401",
        "deleted": false
      },
      {
        "id": "JuKVUJRkch3RCTMk_WiTj",
        "rev": 0,
        "options": {"label": "Дерево", "oldId": 332},
        "created": "2021-08-30 07:38:24.292309",
        "modified": "2021-08-30 07:38:24.292309",
        "deleted": false
      },
      {
        "id": "lzt9LbkQsdqq3KwBkF3wL",
        "rev": 0,
        "options": {"label": "Клен дерево", "oldId": 341},
        "created": "2021-08-30 07:38:24.298368",
        "modified": "2021-08-30 07:38:24.298368",
        "deleted": false
      },
      {
        "id": "kASxrOjB9NDSzOROYCANH",
        "rev": 0,
        "options": {"label": "Сливовый", "oldId": 350},
        "created": "2021-08-30 07:38:24.304683",
        "modified": "2021-08-30 07:38:24.304683",
        "deleted": false
      },
      {
        "id": "qQkaC7YwtsxFeom2upqhn",
        "rev": 0,
        "options": {"label": "Флюорит-алюминий", "oldId": 358},
        "created": "2021-08-30 07:38:24.310073",
        "modified": "2021-08-30 07:38:24.310073",
        "deleted": false
      },
      {
        "id": "iDqzTNW-qy5WRjt8lVuOW",
        "rev": 0,
        "options": {"label": "Блестящая патина", "oldId": 365},
        "created": "2021-08-30 07:38:24.315325",
        "modified": "2021-08-30 07:38:24.315325",
        "deleted": false
      },
      {
        "id": "bWc8vR5FOfgUGyKeXJzbg",
        "rev": 0,
        "options": {"label": "Золото - патина", "oldId": 366},
        "created": "2021-08-30 07:38:24.320789",
        "modified": "2021-08-30 07:38:24.320789",
        "deleted": false
      },
      {
        "id": "C9MLhn-vaaDbzADxjNPIb",
        "rev": 0,
        "options": {"label": "Блестящее золото", "oldId": 367},
        "created": "2021-08-30 07:38:24.326916",
        "modified": "2021-08-30 07:38:24.326916",
        "deleted": false
      },
      {
        "id": "kE-9dxWLk8RFSe-dMuYIu",
        "rev": 0,
        "options": {"label": "Блестящий хром", "oldId": 368},
        "created": "2021-08-30 07:38:24.332334",
        "modified": "2021-08-30 07:38:24.332334",
        "deleted": false
      },
      {
        "id": "r6cdy1aOMIcyUpT4ty2ZQ",
        "rev": 0,
        "options": {"label": "Oxyde green", "oldId": 369},
        "created": "2021-08-30 07:38:24.338498",
        "modified": "2021-08-30 07:38:24.338498",
        "deleted": false
      },
      {
        "id": "M7WeK68w4xouMRrWlX7Gi",
        "rev": 0,
        "options": {"label": "Real gold", "oldId": 370},
        "created": "2021-08-30 07:38:24.343596",
        "modified": "2021-08-30 07:38:24.343596",
        "deleted": false
      },
      {
        "id": "KZH9Th9asN9pUmwb9dXHE",
        "rev": 0,
        "options": {"label": "Rustic cooper", "oldId": 371},
        "created": "2021-08-30 07:38:24.349025",
        "modified": "2021-08-30 07:38:24.349025",
        "deleted": false
      },
      {
        "id": "qq-BCqeIVw4ye-qE1cFiP",
        "rev": 0,
        "options": {"label": "White decape", "oldId": 372},
        "created": "2021-08-30 07:38:24.355158",
        "modified": "2021-08-30 07:38:24.355158",
        "deleted": false
      },
      {
        "id": "nKBj1_3R9x1iJX8w7OsCu",
        "rev": 0,
        "options": {"label": "Matt patina", "oldId": 373},
        "created": "2021-08-30 07:38:24.359985",
        "modified": "2021-08-30 07:38:24.359985",
        "deleted": false
      },
      {
        "id": "0mRMnqGAOjHFbRRw_UOWi",
        "rev": 0,
        "options": {"label": "Nickel satin ", "oldId": 374},
        "created": "2021-08-30 07:38:24.364985",
        "modified": "2021-08-30 07:38:24.364985",
        "deleted": false
      },
      {
        "id": "IRg4Qs88wjm6kkbjR2gi8",
        "rev": 0,
        "options": {"label": "Antique silver", "oldId": 375},
        "created": "2021-08-30 07:38:24.370219",
        "modified": "2021-08-30 07:38:24.370219",
        "deleted": false
      },
      {
        "id": "zAVtrI8keJOmU0EJlgQSv",
        "rev": 0,
        "options": {"label": "Bright gold", "oldId": 376},
        "created": "2021-08-30 07:38:24.375656",
        "modified": "2021-08-30 07:38:24.375656",
        "deleted": false
      },
      {
        "id": "Ks6wQTh-eOq4B1XLtyAPe",
        "rev": 0,
        "options": {"label": "Стекло белое бриллиант", "oldId": 377},
        "created": "2021-08-30 07:38:24.381341",
        "modified": "2021-08-30 07:38:24.381341",
        "deleted": false
      },
      {
        "id": "HAgeZtX9Ut_IWoGGAipwy",
        "rev": 0,
        "options": {"label": "Стекло Алмаз", "oldId": 378},
        "created": "2021-08-30 07:38:24.386824",
        "modified": "2021-08-30 07:38:24.386824",
        "deleted": false
      },
      {
        "id": "8VOAkxVLyx2-rPb8MsnC8",
        "rev": 0,
        "options": {"label": "Черный бархат ", "oldId": 379},
        "created": "2021-08-30 07:38:24.392430",
        "modified": "2021-08-30 07:38:24.392430",
        "deleted": false
      },
      {
        "id": "DKwfp9hJQsxGXDRXqjvn9",
        "rev": 0,
        "options": {"label": "Белый ясень", "oldId": 380},
        "created": "2021-08-30 07:38:24.398331",
        "modified": "2021-08-30 07:38:24.398331",
        "deleted": false
      },
      {
        "id": "eTb2-2aS-f5JGV8DHenfH",
        "rev": 0,
        "options": {"label": "Серебро металл", "oldId": 381},
        "created": "2021-08-30 07:38:24.403497",
        "modified": "2021-08-30 07:38:24.403497",
        "deleted": false
      },
      {
        "id": "-JTUuzV7ptqjaqDUt98MR",
        "rev": 0,
        "options": {"label": "Латунь металл", "oldId": 382},
        "created": "2021-08-30 07:38:24.408781",
        "modified": "2021-08-30 07:38:24.408781",
        "deleted": false
      },
      {
        "id": "DCFmr08nFEXVsvLaEjam_",
        "rev": 0,
        "options": {"label": "Оникс металл", "oldId": 383},
        "created": "2021-08-30 07:38:24.415835",
        "modified": "2021-08-30 07:38:24.415835",
        "deleted": false
      },
      {
        "id": "LjDUWD-XfqknYFsyDskD8",
        "rev": 0,
        "options": {"label": "Алюминий стекло", "oldId": 384},
        "created": "2021-08-30 07:38:24.421483",
        "modified": "2021-08-30 07:38:24.421483",
        "deleted": false
      },
      {
        "id": "lZyytHop9a80brHIOyoqq",
        "rev": 0,
        "options": {"label": "Матовое белое стекло", "oldId": 385},
        "created": "2021-08-30 07:38:24.426230",
        "modified": "2021-08-30 07:38:24.426230",
        "deleted": false
      },
      {
        "id": "crIvxIU0OM5UUGGvpSd-V",
        "rev": 0,
        "options": {"label": "Матовое черное стекло", "oldId": 386},
        "created": "2021-08-30 07:38:24.431588",
        "modified": "2021-08-30 07:38:24.431588",
        "deleted": false
      },
      {
        "id": "w9K3eMh4D8sfN0majJA3_",
        "rev": 0,
        "options": {"label": "Крем роял мрамор", "oldId": 387},
        "created": "2021-08-30 07:38:24.437138",
        "modified": "2021-08-30 07:38:24.437138",
        "deleted": false
      },
      {
        "id": "Ni14TCTGNnOiaQ84utpWc",
        "rev": 0,
        "options": {"label": "Айс грей мрамор", "oldId": 388},
        "created": "2021-08-30 07:38:24.442776",
        "modified": "2021-08-30 07:38:24.442776",
        "deleted": false
      },
      {
        "id": "j84dqWTlNrvAHQxuu7rYP",
        "rev": 0,
        "options": {"label": "Дерево бамбук", "oldId": 389},
        "created": "2021-08-30 07:38:24.447845",
        "modified": "2021-08-30 07:38:24.447845",
        "deleted": false
      },
      {
        "id": "LnB638Jz6pszNYNtRySPc",
        "rev": 0,
        "options": {"label": "Шале-белый", "oldId": 391},
        "created": "2021-08-30 07:38:24.453488",
        "modified": "2021-08-30 07:38:24.453488",
        "deleted": false
      },
      {
        "id": "LwTgeb7vum7YmNgTB-dn0",
        "rev": 0,
        "options": {"label": "Бежевый-серый", "oldId": 392},
        "created": "2021-08-30 07:38:24.459345",
        "modified": "2021-08-30 07:38:24.459345",
        "deleted": false
      },
      {
        "id": "BVxns9XW32S9E8EFTdW1o",
        "rev": 0,
        "options": {"label": "Dark металл", "oldId": 393},
        "created": "2021-08-30 07:38:24.465320",
        "modified": "2021-08-30 07:38:24.465320",
        "deleted": false
      },
      {
        "id": "f2siBi0A3f5MPDVHGVWmo",
        "rev": 0,
        "options": {"label": "Натуральное дерево", "oldId": 394},
        "created": "2021-08-30 07:38:24.472503",
        "modified": "2021-08-30 07:38:24.472503",
        "deleted": false
      },
      {
        "id": "3dsHHM16N6MrsCiqLIHW3",
        "rev": 0,
        "options": {"label": "Сапелли", "oldId": 395},
        "created": "2021-08-30 07:38:24.477964",
        "modified": "2021-08-30 07:38:24.477964",
        "deleted": false
      },
      {
        "id": "jNgBxKJ5Wlu-uVW-H0yjN",
        "rev": 0,
        "options": {"label": "Белый лакированный", "oldId": 396},
        "created": "2021-08-30 07:38:24.483469",
        "modified": "2021-08-30 07:38:24.483469",
        "deleted": false
      },
      {
        "id": "thYuPMWZae3g6vkmcqZjt",
        "rev": 0,
        "options": {"label": "Орех", "oldId": 397},
        "created": "2021-08-30 07:38:24.489023",
        "modified": "2021-08-30 07:38:24.489023",
        "deleted": false
      },
      {
        "id": "2BQmc3cLBjdz3e4L19_0u",
        "rev": 0,
        "options": {"label": "Дуб", "oldId": 398},
        "created": "2021-08-30 07:38:24.494407",
        "modified": "2021-08-30 07:38:24.494407",
        "deleted": false
      },
      {
        "id": "IzB3BaThVqF0IuwTDMihL",
        "rev": 0,
        "options": {"label": "Фарфор состаренный", "oldId": 400},
        "created": "2021-08-30 07:38:24.499832",
        "modified": "2021-08-30 07:38:24.499832",
        "deleted": false
      },
      {
        "id": "hdlKbj80M7Yt5WckQ7vcc",
        "rev": 0,
        "options": {"label": "Белый фарфор", "oldId": 401},
        "created": "2021-08-30 07:38:24.504810",
        "modified": "2021-08-30 07:38:24.504810",
        "deleted": false
      },
      {
        "id": "TfTLpPhXrvx84blxxgg3-",
        "rev": 0,
        "options": {"label": "Мед", "oldId": 402},
        "created": "2021-08-30 07:38:24.510674",
        "modified": "2021-08-30 07:38:24.510674",
        "deleted": false
      },
      {
        "id": "ItHTzuQZXcFSeYKf9IIrr",
        "rev": 0,
        "options": {"label": "Старое дерево", "oldId": 403},
        "created": "2021-08-30 07:38:24.515964",
        "modified": "2021-08-30 07:38:24.515964",
        "deleted": false
      },
      {
        "id": "HnKiiQt1KRGv3qVnc2Vz7",
        "rev": 0,
        "options": {"label": "Черный фарфор", "oldId": 404},
        "created": "2021-08-30 07:38:24.521751",
        "modified": "2021-08-30 07:38:24.521751",
        "deleted": false
      },
      {
        "id": "tFwI4omlkl9AqaewKc1-M",
        "rev": 0,
        "options": {"label": "Вишня", "oldId": 405},
        "created": "2021-08-30 07:38:24.528362",
        "modified": "2021-08-30 07:38:24.528362",
        "deleted": false
      },
      {
        "id": "dLYBLvBKv6bljUy5bHnIN",
        "rev": 0,
        "options": {"label": "Табак", "oldId": 406},
        "created": "2021-08-30 07:38:24.533973",
        "modified": "2021-08-30 07:38:24.533973",
        "deleted": false
      },
      {
        "id": "j7vWMGl4Ybl7FxY6ozbd1",
        "rev": 0,
        "options": {"label": "Венге", "oldId": 407},
        "created": "2021-08-30 07:38:24.539735",
        "modified": "2021-08-30 07:38:24.539735",
        "deleted": false
      },
      {
        "id": "mdofUGpm2x3bk7P5hdr6f",
        "rev": 0,
        "options": {"label": "Металлик", "oldId": 408},
        "created": "2021-08-30 07:38:24.545008",
        "modified": "2021-08-30 07:38:24.545008",
        "deleted": false
      },
      {
        "id": "MSUHZcup2cmoWpo9nozhg",
        "rev": 0,
        "options": {"label": "Патина", "oldId": 409},
        "created": "2021-08-30 07:38:24.549826",
        "modified": "2021-08-30 07:38:24.549826",
        "deleted": false
      },
      {
        "id": "RMaLrbfkkP7i8Q7NU4WhO",
        "rev": 0,
        "options": {"label": "Белый фарфор-синий декор", "oldId": 410},
        "created": "2021-08-30 07:38:24.555190",
        "modified": "2021-08-30 07:38:24.555190",
        "deleted": false
      },
      {
        "id": "gRCj6ScFfbDqSa6RW1aSr",
        "rev": 0,
        "options": {"label": "Белый фарфор-коричневый декор", "oldId": 411},
        "created": "2021-08-30 07:38:24.560528",
        "modified": "2021-08-30 07:38:24.560528",
        "deleted": false
      },
      {
        "id": "uq_klTMnw8rxcfRzPK_WQ",
        "rev": 0,
        "options": {"label": "", "oldId": 0},
        "created": "2021-08-30 08:05:27.549186",
        "modified": "2021-08-30 08:05:27.549186",
        "deleted": false
      },
      {
        "id": "bQGDZCRiz_Q9MelAZEgmL",
        "rev": 0,
        "options": {"label": "Алюминий;; Металл", "oldId": 0},
        "created": "2021-08-30 08:06:58.615279",
        "modified": "2021-08-30 08:06:58.615279",
        "deleted": false
      },
      {
        "id": "JiF0zTdZ8GWhV8gOKSIsV",
        "rev": 0,
        "options": {"label": "Металл;; Нержавеющая сталь", "oldId": 0},
        "created": "2021-08-30 08:07:06.230596",
        "modified": "2021-08-30 08:07:06.230596",
        "deleted": false
      },
      {
        "id": "ZpoMKIj2eMKYYiXp2kzKa",
        "rev": 0,
        "options": {"label": "Золото;; Металл", "oldId": 0},
        "created": "2021-08-30 08:12:59.290023",
        "modified": "2021-08-30 08:12:59.290023",
        "deleted": false
      },
      {
        "id": "tDK-MUGSJVKOPS8QH8Aj8",
        "rev": 0,
        "options": {"label": "Кожа", "oldId": 0},
        "created": "2021-08-30 08:14:36.231724",
        "modified": "2021-08-30 08:14:36.231724",
        "deleted": false
      },
      {
        "id": "2DqDw1AhXni5O3KyDoXw4",
        "rev": 0,
        "options": {"label": "Линолеум", "oldId": 0},
        "created": "2021-08-30 08:16:50.669855",
        "modified": "2021-08-30 08:16:50.669855",
        "deleted": false
      },
      {
        "id": "qhTHWT1V6FbxdSAAFNxN7",
        "rev": 0,
        "options": {"label": "Металл;; Мокко", "oldId": 0},
        "created": "2021-08-30 08:21:57.282522",
        "modified": "2021-08-30 08:21:57.282522",
        "deleted": false
      },
      {
        "id": "xHzoPqs6pmgoktIeKileo",
        "rev": 0,
        "options": {"label": "Нержавеющая сталь;; Пластик", "oldId": 0},
        "created": "2021-08-30 08:21:57.403617",
        "modified": "2021-08-30 08:21:57.403617",
        "deleted": false
      },
      {
        "id": "O3AwPAvW67aD3UnghdgBY",
        "rev": 0,
        "options": {"label": "Металл;; Никель", "oldId": 0},
        "created": "2021-08-30 08:21:57.539486",
        "modified": "2021-08-30 08:21:57.539486",
        "deleted": false
      },
      {
        "id": "y2PYDEFQ_LGrKl5tDZebN",
        "rev": 0,
        "options": {"label": "Металл;; Шампань", "oldId": 0},
        "created": "2021-08-30 08:21:57.795176",
        "modified": "2021-08-30 08:21:57.795176",
        "deleted": false
      },
      {
        "id": "yMocynFecBvYj3DoViJ6W",
        "rev": 0,
        "options": {"label": "Белый;; Стекло", "oldId": 0},
        "created": "2021-08-30 08:21:57.922607",
        "modified": "2021-08-30 08:21:57.922607",
        "deleted": false
      },
      {
        "id": "jb78v_ZCfPB4YEaxaqlWx",
        "rev": 0,
        "options": {"label": "Стекло;; Черный", "oldId": 0},
        "created": "2021-08-30 08:21:58.063461",
        "modified": "2021-08-30 08:21:58.063461",
        "deleted": false
      },
      {
        "id": "MveXmIHchmZOz4wQI5VTO",
        "rev": 0,
        "options": {"label": "Базальт;; Камень", "oldId": 0},
        "created": "2021-08-30 08:21:58.187390",
        "modified": "2021-08-30 08:21:58.187390",
        "deleted": false
      }
    ]'::jsonb;

    FOR i IN SELECT * FROM jsonb_array_elements(dataList)
        LOOP
            INSERT INTO color (title, old_id, options) values
                (i->'options'->>'label', i->>'id', '{}'::jsonb) on conflict (title) do nothing;

        END LOOP;
END $$;