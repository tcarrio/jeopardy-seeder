#!/bin/bash
set -e 

psql -v ON_ERROR_STOP=1 --username="$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE TABLE entries (	
		id int,
		question text,
		answer text,
		categoryId int
	);
EOSQL
