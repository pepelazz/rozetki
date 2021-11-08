package main

import (
	"fmt"
	_ "github.com/lib/pq"
	"io/ioutil"
	"log"
)

func main() {
	b, err := ioutil.ReadFile("./multirozetki_public_rozetki_product_serie.json")
	if err != nil {
		log.Fatalf("error: %s", err.Error())
	}
	ioutil.WriteFile("importProductSerieLink.sql", []byte(getQueryStr(string(b))), 0644)
	//fmt.Printf("b %s\n", getQueryStr(string(b)))
	// создаем подключение к базе
	//dbinfo := fmt.Sprintf("postgres://postgres:%s@localhost:5438/%s?sslmode=disable",  "xvzDV4curLidx8IWZJ6czDHQ1qa7wjfL", "rozetki")
	//Pg, err := sql.Open("postgres", dbinfo)
	//if err != nil {
	//	log.Fatalf("db connect error: %s", err.Error())
	//}
	//err = Pg.Ping()
	//if err != nil {
	//	log.Fatalf("db connect error: %s", err.Error())
	//}
	//defer Pg.Close()
	//res, err := Pg.Exec(getQueryStr(string(b)))
	//if err != nil {
	//	log.Fatalf("db connect error: %s", err.Error())
	//}
	//fmt.Printf("query result %s\n", res)
}

func getQueryStr(jsonData string) string {
	return fmt.Sprintf(`
DO $$DECLARE r record;
             dataList jsonb;
             productId int;
             serieId int;
             opt jsonb;
             i jsonb;
             jsonResult jsonb;
BEGIN
	dataList = '%s'::jsonb;

    FOR i IN SELECT * FROM jsonb_array_elements(dataList)
        LOOP
            select id into productId from product where old_id = (i->'options'->>'product');
            select id into serieId from serie where old_id = (i->'options'->>'serie');
			select * into jsonResult from product_serie_link_update(jsonb_build_object('id', -1, 'product_id', productId, 'serie_id', serieId));
            if  (jsonResult->>'ok')::bool is not true then
				raise exception 'jsonResult %%', jsonResult;
            end if;

        END LOOP;
END $$;

`, jsonData)
}
