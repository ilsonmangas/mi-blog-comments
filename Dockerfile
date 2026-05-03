# Usamos la imagen oficial
FROM ghcr.io/isso-comments/isso:release

# Cambiamos a root para crear la carpeta sin errores de permisos
USER root
RUN mkdir -p /db && chmod 777 /db

# Copiamos tu configuración
COPY isso.conf /config/isso.conf

# Exponemos el puerto
EXPOSE 8080

# Comando para arrancar
CMD ["isso", "-c", "/config/isso.conf", "run"]
