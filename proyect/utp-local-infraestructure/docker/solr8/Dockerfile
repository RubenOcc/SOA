FROM solr:8.0.0-alpine


COPY conf/lib/mysql-connector-java-5.1.32-bin.jar /opt/solr/contrib/dataimporthandler/lib/


# RUN mkdir /opt/solr/solr-data && chmod 777 /opt/solr/solr-data
# export
COPY ./export.sh /opt/solr/export.sh
COPY ./data /opt/solr/solr-data