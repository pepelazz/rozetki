#!/bin/bash

# функция выхода из скрипта при ошибке
is_err () {
    [ $? -ne 0 ]
}

# функция выхода из скрипта при ошибке
is_err () {
    [ $? -ne 0 ]
}

echo -e "\033[0;32m STEP1: create database dump...\033[0m"
ssh root@85.210.890.567 << EOF
    cd /home/deploy/projectName
    docker exec -t rozetki_postgres_1 pg_dumpall -c -U postgres  > rozetki_dump
EOF
if is_err; then return; fi

echo -e "\033[0;32m STEP2: copy file from server...\033[0m"
scp root@85.210.890.567://home/deploy/projectName/rozetki_dump .

# запускаем докер
docker-compose --file docker-compose.dev.yml up -d

# удаляем базу
echo -e "\033[0;32m STEP1: delete database...\033[0m"
sleep 5
docker exec -t rozetki_postgres_1 psql -U postgres -c 'DROP DATABASE rozetki'

# восстанавливаем базу
echo -e "\033[0;32m STEP2: restore database...\033[0m"
sleep 5
cat rozetki_dump | docker exec -i rozetki_postgres_1 psql -U postgres

# останавливаем докер
docker-compose stop