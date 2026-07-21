FROM debian:12-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl ca-certificates \
    && rm -rf /var/lib/apt/lists/*

CMD ["sh", "-c", "curl -sSf https://sshx.io/get | sh -s run"]
