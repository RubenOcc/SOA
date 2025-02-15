#!/bin/bash

/opt/solr/bin/post -c study -d '<delete><query>*:*</query></delete>'
/opt/solr/bin/post -c acquired -d '<delete><query>*:*</query></delete>'
/opt/solr/bin/post -c applicant -d '<delete><query>*:*</query></delete>'
/opt/solr/bin/post -c application -d '<delete><query>*:*</query></delete>'
/opt/solr/bin/post -c experience -d '<delete><query>*:*</query></delete>'

/opt/solr/bin/post -c study /opt/solr/mydata/study.xml
/opt/solr/bin/post -c acquired /opt/solr/mydata/acquired.xml
/opt/solr/bin/post -c applicant /opt/solr/mydata/applicant.xml
/opt/solr/bin/post -c application /opt/solr/mydata/application.xml
/opt/solr/bin/post -c experience /opt/solr/mydata/experience.xml

cp -R /opt/solr/server/solr/mycores/study/data /opt/solr/mydata/data/study
cp -R /opt/solr/server/solr/mycores/acquired/data /opt/solr/mydata/data/acquired
cp -R /opt/solr/server/solr/mycores/applicant/data /opt/solr/mydata/data/applicant
cp -R /opt/solr/server/solr/mycores/application/data /opt/solr/mydata/data/application
cp -R /opt/solr/server/solr/mycores/experience/data /opt/solr/mydata/data/experience
