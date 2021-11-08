package main

import (
	"encoding/gob"
	"flag"
	"github.com/pepelazz/rozetki/src/jobs"
	"github.com/pepelazz/rozetki/src/pg"
	"github.com/pepelazz/rozetki/src/sse"
	"github.com/pepelazz/rozetki/src/types"
	"github.com/pepelazz/rozetki/src/utils"
	"github.com/pepelazz/rozetki/src/webServer"

	"math/rand"
	"os"
	"time"
)

var (
	config *types.Config
	err    error
)

func main() {

	// считываем флаг dev. Если режим разработки, то меняем глобальные переменные
	isDev := flag.Bool("dev", false, "a bool")
	pgPort := flag.String("pg_port", "", "an string")
	pgPassword := flag.String("pg_pass", "", "an string")
	dbName := flag.String("dbname", "", "an string")

	flag.Parse()

	if *isDev {
		_ = os.Setenv("PG_PORT", "5438")
		if len(*pgPort) > 0 {
			_ = os.Setenv("PG_PORT", *pgPort)
		}
		if len(*pgPassword) > 0 {
			_ = os.Setenv("PG_PASSWORD", *pgPassword)
		}
		_ = os.Setenv("PG_HOST", "localhost")
		if len(*dbName) > 0 {
			_ = os.Setenv("PG_DBNAME", *dbName)
		}

		_ = os.Setenv("IS_DEVELOPMENT", "true")
	}

	// read config.toml
	config, err = types.ReadConfigFile("./config.toml")
	utils.CheckErr(err, "Read config")

	// postgres
	err = pg.StartPostgres(config.Postgres)
	utils.CheckErr(err, "StartPostgres")

	// инициализируем генератор случайных чисел
	rand.Seed(time.Now().UnixNano())
	//
	gob.Register(map[string]interface{}{})
	//
	jobs.StartJobs()

	// передаем часть конфига в utils
	utils.SetWebServerConfig(config.WebServer)
	utils.SetEmailConfig(config.Email)

	//go pg.GenerateFakeUsers(100)

	// инициализируем брокера для обработки подключений по SSE
	sse.Init()

	webServer.StartWebServer(*config)
}
