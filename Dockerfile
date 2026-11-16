FROM debian:stable-slim
WORKDIR /app
COPY agate.x86_64-unknown-linux-gnu /app/agate
COPY start.sh /app/start.sh
RUN chmod 755 /app/agate && \
    chmod 755 /app/start.sh
CMD /app/start.sh
