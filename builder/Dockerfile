FROM tomcat:7.0.68-jre7

RUN apt-get update \
    && apt-get install -y postgresql-client-9.4 \
                          openjdk-7-jdk \
                          git

RUN curl -o /tmp/dockerize.tar.gz https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz \
    && tar -C /usr/local/bin -xzvf /tmp/dockerize.tar.gz \
    && rm /tmp/dockerize.tar.gz

COPY start /builder/
COPY config.tmpl /xnat/

ARG XNAT_VERSION=1.6.5

ENV XNAT_INSTALLER_DIR=/builder/xnat-installer \
    XNAT_VERSION=$XNAT_VERSION \
    JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64 \
    MAVEN_HOME=/xnat/xnat/plugin-resources/maven-1.0.2

RUN mkdir -p /builder /xnat/xnat \
    && chmod +x /builder/start \
    && git clone https://github.com/chaselgrove/xnat-installer.git /builder/xnat-installer \
    && curl -o /tmp/xnat-$XNAT_VERSION.tar.gz ftp://ftp.nrg.wustl.edu/pub/xnat/xnat-$XNAT_VERSION.tar.gz \
    && tar zxvf /tmp/xnat-$XNAT_VERSION.tar.gz --strip 1 -C /xnat/xnat \
    && rm /tmp/xnat-$XNAT_VERSION.tar.gz

# Run Maven once to download external jars as the repository is not always available
RUN cd /xnat/xnat && /xnat/xnat/plugin-resources/maven-1.0.2/bin/maven \
      -Dmaven.repo.remote=http://maven.xnat.org/xnat-maven1,http://repo1.maven.org/maven,http://mirrors.ibiblio.org/pub/mirrors/maven,http://mirrors.ibiblio.org/maven \
      xdat:setupLib

# Override /builder/xnat-installer/bin/build with our adapted version
COPY installer-build /builder/xnat-installer/bin/build

WORKDIR /builder

VOLUME /xnat/data
EXPOSE 8080

CMD /builder/start

# eof
