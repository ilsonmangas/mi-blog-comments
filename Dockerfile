FROM ghcr.io/isso-comments/isso:release
USER root
RUN mkdir -p /db && chown isso:isso /db
COPY isso.conf /config/isso.conf
EXPOSE 8080
CMD ["isso", "-c", "/config/isso.conf", "run"]
