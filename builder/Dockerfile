FROM tomcat:7.0.67-jre7

RUN apt-get update \
    && apt-get install -y postgresql-client-9.4 \
                          openjdk-7-jdk \
                          git

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.2.0.tar.gz \
    && rm dockerize-linux-amd64-v0.2.0.tar.gz

COPY start /builder/
COPY config.tmpl /xnat/

ARG XNAT_VERSION=1.6.5

ENV XNAT_INSTALLER_DIR=/builder/xnat-installer \
    JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64 \
    MAVEN_HOME=/xnat/plugin-resources/maven-1.0.2

RUN mkdir -p /builder /xnat \
    && chmod +x /builder/start \
    && git clone https://github.com/chaselgrove/xnat-installer.git /builder/xnat-installer \
    && curl -o /tmp/xnat-$XNAT_VERSION.tar.gz ftp://ftp.nrg.wustl.edu/pub/xnat/xnat-$XNAT_VERSION.tar.gz \
    && tar zxvf /tmp/xnat-$XNAT_VERSION.tar.gz --strip 1 -C /xnat

# Run Maven once to download external jars as the repository is not always available
RUN cd /xnat && /xnat/plugin-resources/maven-1.0.2/bin/maven \
      -D maven.repo.remote=http://maven.xnat.org/xnat-maven1,http://repo1.maven.org/maven,http://mirrors.ibiblio.org/pub/mirrors/maven,http://mirrors.ibiblio.org/maven \
      xdat:setupLib

WORKDIR /builder

CMD /builder/start

# eof
