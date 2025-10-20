## Descripcion
Este proyecto demuestra la configuración y despliegue de un sistema de generación de turnos llamado LiMar, 
utilizando Docker, PostgreSQL 14 y pgAdmin 4.
Incluye las instrucciones de creación (DDL) e inserción (DML) de tablas para la base de datos servilimar.

## Requisitos:
-Tener intalado Docker.

## Instrucciones:
-Crear contenedor de postgres sql:
docker run --name database_course -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 postgres:14

-Crear contenedor de pgadmin:
docker run --rm -p 5050:80 --link database_course:database_course -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4

-Pegue las tablas y registros que estan en el repositorio, y ejecute.


