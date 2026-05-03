FROM ghcr.io/isso-comments/isso:release

USER root
# Creamos la carpeta y damos permisos
RUN mkdir -p /db && chmod 777 /db

COPY isso.conf /config/isso.conf

# Railway necesita saber que escuchamos en el puerto que él nos da
ENV PORT=8080
EXPOSE 8080

# Usamos la ruta absoluta del binario
CMD ["/usr/local/bin/isso", "-c", "/config/isso.conf", "run"]
