# Utiliza la imagen oficial de OpenJDK 17
FROM openjdk:25

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos start.sh y server.jar al contenedor
COPY start.sh server.jar /app/

# Otorga permisos de ejecución al script
RUN chmod +x start.sh

# Expone el puerto que utiliza tu servidor (modifica si es necesario)
EXPOSE 25565

# Ejecuta el script al iniciar el contenedor
CMD ["./start.sh"]
