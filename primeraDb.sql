-- Aqui ire escribiendo los comandos que utilice para crear mi primera base de datos
SHOW DATABASES;

CREATE DATABASE primer_db;

SHOW DATABASES;

USE primer_db;

SHOW TABLES;

CREATE TABLES info_estudiantes(
    id_registro_estudiantes INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(30) NOT NULL,
    Apellido VARCHAR(30) NOT NULL,
    Edad INT NOT NULL,
    Carrera VARCHAR(30)
    PRIMARY KEY(id_registro_estudiantes)

);

SHOW TABLES;

DESCRIBE info_estudiantes;

SELECT * FROM info_estudiantes;

 INSERT INTO info_estudiantes(Nombre, Apellido, Edad, Carrera) VALUE ("Juan", "Perez",30, "Psicologia");
 INSERT INTO info_estudiantes(Nombre, Apellido, Edad, Carrera) VALUE ("Roberto","Garcia",22,"Medicina");
 INSERT INTO info_estudiantes(Nombre, Apellido, Edad, Carrera) VALUE ("Carla","Lopez",29,"Contador Publico");
 INSERT INTO info_estudiantes(Nombre, Apellido, Edad, Carrera) VALUE ("Martin","Carrizo",20,"Ciencias Politicas");
 INSERT INTO info_estudiantes(Nombre, Apellido, Edad, Carrera) VALUE ("Esteban","Quito",25,"Ingenieria Electronica");
 INSERT INTO info_estudiantes(Nombre, Apellido, Edad, Carrera) VALUE ("Marcela","Esperanza",35,"Psicologia");

SELECT * FROM info_estudiantes WHERE id_registro_estudiante = 3;

SELECT * FROM info_estudiantes LIMIT 3;

-- Actualizar registro ,cambio de edad y Carrera.

UPDATE info_estudiantes SET Edad = 31, Carrera = "Medicina" WHERE id_registro_estudiante = 1;

-- Ahora voy a borrar a un estudiante que abandono la carrera

DELETE FROM info_estudiantes WHERE id_registro_estudiante = 4;

-- reviso el estado final de la base de datos

SELECT * FROM info_estudiantes;

+------------------------+---------+-----------+------+------------------------+
| id_registro_estudiante | Nombre  | Apellido  | Edad | Carrera                |
+------------------------+---------+-----------+------+------------------------+
|                      1 | Juan    | Perez     |   31 | Medicina               |
|                      2 | Roberto | Garcia    |   22 | Medicina               |
|                      3 | Carla   | Lopez     |   29 | Contador Publico       |
|                      5 | Esteban | Quito     |   25 | Ingenieria Electronica |
|                      6 | Marcela | Esperanza |   35 | Psicologia             |
+------------------------+---------+-----------+------+------------------------+