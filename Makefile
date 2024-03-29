postgres:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root postdb

dropdb:
	docker exec -it postgres12 dropdb postdb

get-sqlx:
	go get -u github.com/jmoiron/sqlx

get-pq:
	go get -u github.com/lib/pq

run:
	go run main.go


.PHONY: postgres createdb dropdb get-sqlx get-pq run