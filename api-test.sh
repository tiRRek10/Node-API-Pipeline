#!/bin/sh

curl --max-time 4 http://localhost:3000/food
curl --max-time 4 http://localhost:3000/food/1
curl --max-time 4 -X POST -H "Content-Type: application/json" -d '{"dish":"pizza", "country":"Italy"}' http://localhost:3000/food
curl --max-time 4 -X PUT -H "Content-Type: application/json" -d '{"dish":"spaghetti", "country":"Italy"}' http://localhost:3000/food/2
curl --max-time 4 -X DELETE -H "Content-Type: application/json"  http://localhost:3000/food/2