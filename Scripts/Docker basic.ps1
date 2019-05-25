# Arroja info del docker si esta instalado,las imagenes que tenemos, etc.
docker info

#Muestra lista de container creados.
docker ps -a

#Muestra las imagenes descargas den docker
docker images

#Listar contenedores
docker ps -a

#Detener contenedor
docker stop Contenedor

#Eliminar contenedor
docker rm Contenedor

#Iniciar contenedor
docker start Contenedor

#listar images
docker image ls

#borrar todas las imágenes que no tienen ningún contenedor asociado (imágenes huérfanas)
docker image prune -a