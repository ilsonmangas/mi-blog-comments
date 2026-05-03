# Usamos la imagen oficial de Isso
FROM ghcr.io/isso-comments/isso:release

# Copiamos tu configuración al servidor
COPY isso.conf /config/isso.conf

# Exponemos el puerto donde trabaja Isso
EXPOSE 8080

# Comando para arrancar el programa
CMD ["isso", "-c", "/config/isso.conf", "run"]
