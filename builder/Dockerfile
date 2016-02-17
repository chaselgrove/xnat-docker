FROM tomcat:7.0.67-jre7

RUN apt-get update \
    && apt-get install -y postgresql-client-9.4 \
                          openjdk-7-jdk \
                          git

RUN mkdir /builder /xnat

WORKDIR /builder

COPY start /builder/
RUN chmod +x /builder/start

RUN git clone https://github.com/chaselgrove/xnat-installer.git

ENV XNAT_INSTALLER_DIR /builder/xnat-installer

CMD /builder/start

# eof
