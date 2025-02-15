#!/bin/bash

#SOLR_DIR='/opt/solr/multicore/'
#
### Copy cores
#cp -ar . $SOLR_DIR ## Ruta del binario de Solr

SOLR_DIR=$(pwd)

## Setear variables
find $SOLR_DIR -name data-config.xml -type f -print0 | xargs -0 sed -i 's/{SOLR_DBCONNECTION}/mysql8:3306/g'
find $SOLR_DIR -name data-config.xml -type f -print0 | xargs -0 sed -i 's/{SOLR_DATABASE}/mdb_apt_aptitus/g'
find $SOLR_DIR -name data-config.xml -type f -print0 | xargs -0 sed -i 's/{SOLR_DBUSER}/root/g'
find $SOLR_DIR -name data-config.xml -type f -print0 | xargs -0 sed -i 's/{SOLR_DBPASSWORD}/1234/g'
