FROM ubuntu:21.10

RUN apt-get update && apt-get install -y \
    sqlite3 zip curl

ADD *.sh /root/scripts/
ADD *.sql /root/scripts/

RUN /root/scripts/schemaSetup.sh && \
    /root/scripts/downloadAndUnzip.sh && \
    /root/scripts/dataLoader.sh && \
    /root/scripts/cleanup.sh
