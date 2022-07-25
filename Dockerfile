FROM openjdk:11
ADD jboss-eap-7.4.0.zip /tmp/jboss-eap-7.4.0.zip
RUN unzip /tmp/jboss-eap-7.4.0.zip

ENV JBOSS_HOME /opt/jboss

RUN groupadd -r jboss -g 1000 && useradd -u 1000 -r -g jboss -m -d /opt/jboss -s /sbin/nologin -c "JBoss user" jboss && \
  chmod 755 ${JBOSS_HOME}

WORKDIR ${JBOSS_HOME}

USER jboss