FROM debian:bookworm

RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat-openbsd

ENV PATH="/usr/games:${PATH}"
WORKDIR /app

COPY wisecow.sh /app/wisecow.sh
EXPOSE 4499

CMD ["./wisecow.sh"]

