# postgres-tools

## backup

sudo docker run -it -v `pwd`/:/data -e DATABASE_URL=<db_url> shopa/postgres-tools /data/backup
