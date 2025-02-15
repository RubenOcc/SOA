FROM openjdk:8

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get update && \
  apt-get -y install lsof && \
  mkdir -p /opt

ENV SOLR_VERSION 4.4.0
ENV SOLR solr-$SOLR_VERSION

RUN curl --retry 3 http://archive.apache.org/dist/lucene/solr/$SOLR_VERSION/$SOLR.tgz | tar -C /opt --extract --gzip
RUN mv /opt/$SOLR /opt/solr

RUN wget -qO- https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.49.tar.gz | tar xvz -C /opt && \
    mv /opt/mysql8-connector-java-5.1.49/mysql8-connector-java-5.1.49.jar /opt/solr/dist/

RUN useradd --home-dir /opt/solr --comment "Solr Server" solr

RUN chown -R solr:solr /opt/solr/example

RUN mkdir -p /solr/apps/solr/home

RUN ln -s /opt/solr/dist/ /solr/apps/solr/home/

USER solr

EXPOSE 8983
WORKDIR /opt/solr/example

CMD ["java", "-Dsolr.solr.home=multicore", "-jar", "start.jar"]
