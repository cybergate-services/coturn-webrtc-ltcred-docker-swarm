FROM ubuntu:18.04
MAINTAINER Chinthaka Deshapriya <chinthaka@cybergate.lk>

RUN apt-get update && apt-get install -y coturn && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TURN_PORT 3478
ENV TURN_PORT_START 10000
ENV TURN_PORT_END 20000
ENV TURN_SECRET mysecret
ENV TURN_SERVER_NAME coturn
ENV TURN_REALM teams.cyber.lk
ENV ALTERNATE-SERVER1=coturn1.teams.cyber.lk
ENV ALTERNATE-SERVER3=coturn1.teams.cyber.lk
ENV ALTERNATE-SERVER1=coturn1.teams.cyber.lk

ADD start_coturn.sh start_coturn.sh
RUN chmod +x start_coturn.sh

CMD ["./start_coturn.sh"]
