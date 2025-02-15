#!/bin/bash

echo "copiando todos los datos indexados";

rm -rf /opt/solr/server/solr/mycores/study/data
rm -rf /opt/solr/server/solr/mycores/acquired/data
rm -rf /opt/solr/server/solr/mycores/applicant/data
rm -rf /opt/solr/server/solr/mycores/application/data
rm -rf /opt/solr/server/solr/mycores/experience/data

  #toda la data esta en /opt/solr/solr-data
echo "Iniciando copia";
if [ -d "/opt/solr/solr-data/study" ]; then
    cp -R /opt/solr/solr-data/study /opt/solr/server/solr/mycores/study/data
    echo "Copio study";
fi
if [ -d "/opt/solr/solr-data/acquired" ]; then
    cp -R /opt/solr/solr-data/acquired /opt/solr/server/solr/mycores/acquired/data
    echo "Copio acquired";
fi
if [ -d "/opt/solr/solr-data/applicant" ]; then
    cp -R /opt/solr/solr-data/applicant /opt/solr/server/solr/mycores/applicant/data
    echo "Copio applicant";
fi
if [ -d "/opt/solr/solr-data/application" ]; then
    cp -R /opt/solr/solr-data/application /opt/solr/server/solr/mycores/application/data
    echo "Copio application";
fi
if [ -d "/opt/solr/solr-data/experience" ]; then
    cp -R /opt/solr/solr-data/experience /opt/solr/server/solr/mycores/experience/data
    echo "Copio experience";
fi

echo "Terminando copia";