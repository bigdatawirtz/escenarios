SET FOREIGN_KEY_CHECKS = 0;
SELECT 'CREACION DE BASE DE DATOS: universidade' as 'INFO';

CREATE DATABASE universidade;

USE universidade;

# creación de táboa persoa
CREATE TABLE persoa(
NIF char(9) not null,
nome varchar(25) not null,
apelido varchar(50) not null,
cidade varchar(25),
enderezoRua varchar(50),
enderezoNum varchar(3),
telefono char(9),
dataNacemento date,
sexo char(1),
PRIMARY KEY (NIF),
CONSTRAINT CHK_persoa_1 CHECK (sexo in ('0','1','h','m'))
);

# creación de táboa asignatura
CREATE TABLE materia(
idMateria char(6) not null,
nome varchar(50) not null,
creditos decimal(4,2),
cuadrimestre char(1),
custoBasico decimal(5,2),
idProfesor char(4) references profesor(idprofesor),
idTitulacion char(6) references titulacion(idTitulacion),
curso char(1),
PRIMARY KEY (idMateria)
);

#creación de táboa alumno
CREATE TABLE alumno(
idAlumno CHAR(7) not null,
NIF CHAR(9) not null references persoa(NIF),
PRIMARY KEY (idAlumno)
);

#creación de táboa profesor
CREATE TABLE profesor(
idProfesor CHAR(4) not null,
NIF CHAR(9) not null references persoa(NIF),
PRIMARY KEY (idProfesor)
);


CREATE TABLE titulacion(
idTitulacion char(6) not null,
nome varchar(50) not null unique,
PRIMARY KEY (idTitulacion)
);


CREATE TABLE alumno_materia(
idAlumno char(7) references alumno(idAlumno),
idMateria char(6) references materia(idMateria),
numeroMatricula int
);

CREATE TABLE tamanho_materia(
tamanho varchar(10),
creditosMin decimal(5,2),
creditosMax decimal(5,2)
);

