FROM solr:9.2.0
COPY ./conf/docker-entrypoint.sh /opt/solr-9.2.0/docker/scripts/
COPY ./conf/security.json /var/solr/data/
COPY ./conf/basicAuth.conf /opt/solr/server/solr/
ENV SOLR_UID=8986
ENV SOLR_GID=8986
ENV SOLR_AUTH_TYPE='basic'
ENV SOLR_AUTHENTICATION_OPTS='-Dsolr.httpclient.config=/opt/solr/server/solr/basicAuth.conf'
ENV SOLR_OPTS='-Dsolr.jetty.request.header.size=28384 -Dsolr.jetty.request.buffer.size=28384'
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["solr-foreground"]