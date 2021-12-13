#!/bin/bash

# goto basedir
cd $(dirname "$0")

# var
PGSQL_HOST__="ocr_db"
PGSQL_PORT__="5432"
PGSQL_USER__="root"
PGSQL_PASS__="root"
PGSQL_DB__="ocr_web"

docker exec ocr_db /bin/bash -c '
    for file in `find /var/db/migration/* | grep -i '.sql'` 
    do 
        PGPASSWORD='$PGSQL_PASS__' psql -h '$PGSQL_HOST__' -p '$PGSQL_PORT__' -U '$PGSQL_USER__' -d '$PGSQL_DB__' < $file
    done
'
