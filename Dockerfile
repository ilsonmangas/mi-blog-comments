FROM ghcr.io/isso-comments/isso:release
COPY isso.conf /config/isso.conf
EXPOSE 8080
CMD ["isso", "-c", "/config/isso.conf", "run"]