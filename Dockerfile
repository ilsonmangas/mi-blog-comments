FROM ghcr.io/isso-comments/isso:release

# Cambiamos a root para preparar el entorno
USER root

# Crear carpeta de base de datos y dar permisos totales
# Esto evita el error de "Permission denied" o "Read-only"
RUN mkdir -p /db && chmod 777 /db

# Copiar tu config a la ruta que espera Isso
COPY isso.conf /config/isso.conf

# Informar a Railway qué puerto usar
ENV PORT=8080
EXPOSE 8080

# Ejecutar usando la ruta absoluta del binario para que no diga "not found"
# El flag -c indica la ruta del archivo de configuración
CMD ["/usr/local/bin/isso", "-c", "/config/isso.conf", "run"]
