FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Denver
RUN apt update && \
    apt install -y wget qtbase5-dev libqt5webengine5 libqt5webenginewidgets5 libqt5webkit5 libqt5multimediawidgets5 libqt5websockets5 
RUN wget https://www.jsoftware.com/download/j9.6/install/j9.6_linux64.tar.gz && \
    tar xvf j9.6_linux64.tar.gz && \
    cd j9.6 && \
    echo "install'all'" | ./jconsole.sh && \
    ./updatejqt.sh \
    cd ..
ENTRYPOINT ./j9.6/jqt.sh

