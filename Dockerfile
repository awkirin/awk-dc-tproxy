FROM ubuntu AS tproxy

RUN apt update && apt install privoxy obfs4proxy tor -y

COPY ./torrc /etc/tor/torrc

EXPOSE 9050 9051

CMD ["tor"]