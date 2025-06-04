FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY ./datos_falsos.sh .

RUN chmod +x datos_falsos.sh

RUN apt-get update && \
    apt-get install -y mosquitto mosquitto-clients && \
    rm -rf /var/lib/apt/lists/*

CMD ["./datos_falsos.sh"] 

