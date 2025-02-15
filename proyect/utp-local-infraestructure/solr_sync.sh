#!/bin/sh

SOLR_DATABASE=$1
SOLR_DBUSER=$2
SOLR_DBPASSWORD=$3
ENV=$4
BRANCH=$5

echo "postulante
aviso
aptitud
carrera
institucion
post_adquirido
puesto
programas
ubigeo" > cores.tmp

while read line
do
    echo $line '>>>>>>>>>>'
    sed -i 's/{SOLR_DBCONNECTION}/mysql8:3306/g' ./docker/solr/solr/$line/conf/data-config.xml
    sed -i 's/{SOLR_DATABASE}/mdb_apt_aptitus/g' ./docker/solr/solr/${line}/conf/data-config.xml
    sed -i 's/{SOLR_DBUSER}/root/g' ./docker/solr/solr/${line}/conf/data-config.xml
    sed -i 's/{SOLR_DBPASSWORD}/1234/g' ./docker/solr/solr/${line}/conf/data-config.xml
    # time rsync -avzr src/solr/$line/conf/ root@solr4.${ENV}.aptitus.local:/var/lib/solr/${BRANCH}/solr/$line/conf
    ## Ejecutar reload core
    curl "http://localhost:8983/solr/admin/cores?wt=json&action=RELOAD&core=$line"
    ## Ejecutar data import
    curl "http://localhost:8983/solr/$line/dataimport?command=full-import"
done < cores.tmp

rm -rf cores.tmp
