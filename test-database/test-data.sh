#!/bin/bash

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE foodie;
    CREATE TABLE food(ID SERIAL PRIMARY KEY    ,Dish    VARCHAR(30) NOT NULL,Country VARCHAR(30) NOT NULL);
    INSERT INTO food (dish, country) VALUES  ('Migas', 'Mexican'),('Tom Yam', 'Thai');
EOSQL
