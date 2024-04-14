/*
Prompt:
Ahora necesito 99 inserts para la siguiente tabla:
CREATE TABLE Inspecciones(
	inspID int identity not null, 
  inspFecha datetime, 
	estNumero int not null, 
	inspRiesgo varchar(5) not null, 
	inspResultado varchar(25) not null, 
	violCodigo int not null, 
	inspComents varchar(100),
	constraint pk_Inspect primary key(inspID),
	constraint fk_EstabInsp foreign key(estNumero) references Establecimientos(estNumero),
	constraint fk_ViolInsp foreign key(violCodigo) references TipoViolacion(violCodigo),
	constraint ck_Riesgo check(inspRiesgo IN('Bajo','Medio','Alto')),
	constraint ck_Result check(inspResultado IN('Pasa', 'Falla', 'Pasa con condiciones', 'Oficina no encontrada')))
GO
Son las inspecciones realizadas a los establecimientos, están identificadas con un número auto incremental, se conoce la fecha, el riesgo que implica (Bajo, Medio, Alto) el resultado de la inspección que puede tomar los valores (Pasa, Falla, Pasa con condiciones, Oficina no encontrada), el tipo de violación y los comentarios de cada inspección

La cantidad de inspecciones debe variar para cada local, no puede ser la misma cantidad para todos los locales. Las fechas deber tener una diferencia de al menos 3 meses. Para los riesgos Bajo, y Medio el resultado es pasa con condiciones. Para el riesgo Alto, el resultado es Falla. Cuando es Oficina no encontrada, la violacion deberia ser no aplica (violacion de codigo 1). Asi mismo cuando se registren inspecciones donde no se encontraron violaciones incurridas, se debera usar este codigo de violacion. 

El local 13, debe tener todas las 14  violaciones declaradas anteriormetne en una inspeccion, a excepcion de 'No aplica'

No se pueden usar variables ni formulas.
*/

-- Inserciones para las inspecciones
-- La cantidad de inspecciones varía para cada local
-- Las fechas tienen una diferencia de al menos 3 meses

-- Establecimiento 1
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-01-15', 1, 'Bajo', 'Pasa con condiciones', 2, 'Buena limpieza'),
('2023-05-20', 1, 'Medio', 'Pasa con condiciones', 3, 'Almacenamiento adecuado'),
('2023-09-25', 1, 'Alto', 'Falla', 4, 'Manipulación inadecuada de alimentos');

-- Establecimiento 2
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-02-10', 2, 'Bajo', 'Pasa con condiciones', 5, 'Equipo de cocina en buen estado'),
('2023-06-15', 2, 'Medio', 'Pasa con condiciones', 6, 'Temperatura de almacenamiento adecuada'),
('2023-10-20', 2, 'Alto', 'Falla', 7, 'Contaminación cruzada en la cocina');

-- Establecimiento 3
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-03-05', 3, 'Bajo', 'Pasa con condiciones', 8, 'Personal con higiene adecuada'),
('2023-07-10', 3, 'Medio', 'Pasa con condiciones', 9, 'Limpieza de las instalaciones correcta'),
('2023-11-15', 3, 'Alto', 'Falla', 10, 'Uso incorrecto de químicos de limpieza');

-- Establecimiento 4
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-04-20', 4, 'Bajo', 'Pasa con condiciones', 11, 'Alimentos de calidad'),
('2023-08-25', 4, 'Medio', 'Pasa con condiciones', 12, 'Etiquetado correcto de alimentos'),
('2023-12-30', 4, 'Alto', 'Falla', 13, 'Personal no certificado');

-- Establecimiento 5
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-05-10', 5, 'Bajo', 'Pasa con condiciones', 14, 'Instalaciones limpias y ordenadas'),
('2023-09-15', 5, 'Medio', 'Pasa con condiciones', 1, 'No se encontraron violaciones'),
('2024-01-20', 5, 'Alto', 'Falla', 2, 'Insectos encontrados en la cocina');

-- Establecimiento 6
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-06-15', 6, 'Bajo', 'Pasa con condiciones', 3, 'Almacenamiento adecuado de alimentos'),
('2023-10-20', 6, 'Medio', 'Pasa con condiciones', 4, 'Personal con guantes'),
('2024-02-25', 6, 'Alto', 'Falla', 5, 'Equipo de cocina defectuoso');

-- Establecimiento 7
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-07-20', 7, 'Bajo', 'Pasa con condiciones', 6, 'Temperatura adecuada en la cocina'),
('2023-11-25', 7, 'Medio', 'Pasa con condiciones', 7, 'Áreas de almacenamiento limpias'),
('2024-03-30', 7, 'Alto', 'Falla', 8, 'Contaminación cruzada en la preparación de alimentos');

-- Establecimiento 8
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-08-25', 8, 'Bajo', 'Pasa con condiciones', 9, 'Limpieza adecuada de las instalaciones'),
('2023-12-30', 8, 'Medio', 'Pasa con condiciones', 10, 'Uso correcto de utensilios'),
('2024-04-05', 8, 'Alto', 'Falla', 11, 'Almacenamiento incorrecto de alimentos');

-- Establecimiento 9
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-09-30', 9, 'Bajo', 'Pasa con condiciones', 12, 'Etiquetado correcto de alimentos'),
('2024-01-05', 9, 'Medio', 'Pasa con condiciones', 13, 'Personal certificado'),
('2024-05-10', 9, 'Alto', 'Falla', 14, 'Mala calidad de los alimentos');

-- Establecimiento 10
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-10-05', 10, 'Bajo', 'Pasa con condiciones', 1, 'No se encontraron violaciones'),
('2024-02-10', 10, 'Medio', 'Pasa con condiciones', 2, 'Insectos encontrados en la cocina'),
('2024-06-15', 10, 'Alto', 'Falla', 3, 'Almacenamiento incorrecto de alimentos');

-- Establecimiento 11 (continuación)
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-11-10', 11, 'Bajo', 'Pasa con condiciones', 5, 'Equipo de cocina en buen estado'),
('2024-03-15', 11, 'Medio', 'Pasa con condiciones', 6, 'Temperatura adecuada en la cocina'),
('2024-07-20', 11, 'Alto', 'Falla', 7, 'Áreas de almacenamiento sucias');

-- Establecimiento 12
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-12-15', 12, 'Bajo', 'Pasa con condiciones', 8, 'Personal con higiene adecuada'),
('2024-04-20', 12, 'Medio', 'Pasa con condiciones', 9, 'Limpieza adecuada de las instalaciones'),
('2024-08-25', 12, 'Alto', 'Falla', 10, 'Contaminación cruzada en la preparación de alimentos');

-- Establecimiento 13
-- Se agregan todas las violaciones excepto "No aplica" (violCodigo 1)
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-01-01', 13, 'Alto', 'Falla', 2, 'Buena limpieza'),
('2023-04-05', 13, 'Alto', 'Falla', 3, 'Almacenamiento adecuado'),
('2023-07-10', 13, 'Alto', 'Falla', 4, 'Manipulación adecuada de alimentos'),
('2023-10-15', 13, 'Alto', 'Falla', 5, 'Equipo de cocina en buen estado'),
('2024-01-20', 13, 'Alto', 'Falla', 6, 'Temperatura adecuada en la cocina'),
('2024-04-25', 13, 'Alto', 'Falla', 7, 'Áreas de almacenamiento limpias'),
('2024-07-30', 13, 'Alto', 'Falla', 8, 'Personal con higiene adecuada'),
('2024-11-05', 13, 'Alto', 'Falla', 9, 'Limpieza adecuada de las instalaciones'),
('2025-02-10', 13, 'Alto', 'Falla', 10, 'Uso correcto de utensilios'),
('2025-05-15', 13, 'Alto', 'Falla', 11, 'Almacenamiento incorrecto de alimentos'),
('2025-08-20', 13, 'Alto', 'Falla', 12, 'Etiquetado correcto de alimentos'),
('2025-11-25', 13, 'Alto', 'Falla', 13, 'Personal certificado'),
('2026-03-01', 13, 'Alto', 'Falla', 14, 'Mala calidad de los alimentos');

-- Establecimiento 14
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-02-01', 14, 'Bajo', 'Pasa con condiciones', 1, 'No se encontraron violaciones'),
('2023-05-10', 14, 'Medio', 'Pasa con condiciones', 2, 'Insectos encontrados en la cocina'),
('2023-08-15', 14, 'Alto', 'Falla', 3, 'Almacenamiento incorrecto de alimentos');

-- Establecimiento 15
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-03-10', 15, 'Bajo', 'Pasa con condiciones', 4, 'Personal con guantes'),
('2023-06-15', 15, 'Medio', 'Pasa con condiciones', 5, 'Equipo de cocina en buen estado'),
('2023-09-20', 15, 'Alto', 'Falla', 6, 'Temperatura inadecuada en la cocina');

-- Establecimiento 16
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-04-15', 16, 'Bajo', 'Pasa con condiciones', 7, 'Áreas de almacenamiento limpias'),
('2023-07-20', 16, 'Medio', 'Pasa con condiciones', 8, 'Personal con higiene adecuada'),
('2023-10-25', 16, 'Alto', 'Falla', 9, 'Limpieza adecuada de las instalaciones');

-- Establecimiento 17
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-05-20', 17, 'Bajo', 'Pasa con condiciones', 10, 'Uso correcto de utensilios'),
('2023-08-25', 17, 'Medio', 'Pasa con condiciones', 11, 'Almacenamiento incorrecto de alimentos'),
('2023-11-30', 17, 'Alto', 'Falla', 12, 'Etiquetado incorrecto de alimentos');

-- Establecimiento 18
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-06-25', 18, 'Bajo', 'Pasa con condiciones', 13, 'Personal certificado'),
('2023-09-30', 18, 'Medio', 'Pasa con condiciones', 14, 'Mala calidad de los alimentos'),
('2023-12-05', 18, 'Alto', 'Falla', 1, 'No aplica');

-- Establecimiento 19 (continuación)
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-07-30', 19, 'Bajo', 'Pasa con condiciones', 2, 'Insectos encontrados en la cocina'),
('2023-11-04', 19, 'Medio', 'Pasa con condiciones', 3, 'Almacenamiento incorrecto de alimentos'),
('2024-02-08', 19, 'Alto', 'Falla', 4, 'Manipulación inadecuada de alimentos');

-- Establecimiento 20
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-08-05', 20, 'Bajo', 'Pasa con condiciones', 5, 'Equipo de cocina en buen estado'),
('2023-11-10', 20, 'Medio', 'Pasa con condiciones', 6, 'Temperatura adecuada en la cocina'),
('2024-02-15', 20, 'Alto', 'Falla', 7, 'Áreas de almacenamiento sucias');

-- Establecimiento 21
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-09-10', 21, 'Bajo', 'Pasa con condiciones', 8, 'Personal con higiene adecuada'),
('2023-12-15', 21, 'Medio', 'Pasa con condiciones', 9, 'Limpieza adecuada de las instalaciones'),
('2024-03-20', 21, 'Alto', 'Falla', 10, 'Contaminación cruzada en la preparación de alimentos');

-- Establecimiento 22
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-10-15', 22, 'Bajo', 'Pasa con condiciones', 11, 'Almacenamiento incorrecto de alimentos'),
('2024-01-20', 22, 'Medio', 'Pasa con condiciones', 12, 'Etiquetado correcto de alimentos'),
('2024-04-25', 22, 'Alto', 'Falla', 13, 'Personal no certificado');

-- Establecimiento 23
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-11-20', 23, 'Bajo', 'Pasa con condiciones', 14, 'Mala calidad de los alimentos'),
('2024-02-25', 23, 'Medio', 'Pasa con condiciones', 1, 'No se encontraron violaciones'),
('2024-06-30', 23, 'Alto', 'Falla', 2, 'Insectos encontrados en la cocina');

-- Establecimiento 24
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-12-25', 24, 'Bajo', 'Pasa con condiciones', 3, 'Almacenamiento incorrecto de alimentos'),
('2024-03-30', 24, 'Medio', 'Pasa con condiciones', 4, 'Manipulación inadecuada de alimentos'),
('2024-07-05', 24, 'Alto', 'Falla', 5, 'Equipo de cocina defectuoso');

-- Establecimiento 25
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-01-05', 25, 'Bajo', 'Pasa con condiciones', 6, 'Temperatura adecuada en la cocina'),
('2024-04-10', 25, 'Medio', 'Pasa con condiciones', 7, 'Áreas de almacenamiento limpias'),
('2024-07-15', 25, 'Alto', 'Falla', 8, 'Personal con higiene inadecuada');

-- Establecimiento 26
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-02-10', 26, 'Bajo', 'Pasa con condiciones', 9, 'Limpieza adecuada de las instalaciones'),
('2024-05-15', 26, 'Medio', 'Pasa con condiciones', 10, 'Contaminación cruzada en la cocina'),
('2024-08-20', 26, 'Alto', 'Falla', 11, 'Almacenamiento incorrecto de alimentos');

-- Establecimiento 27
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-03-15', 27, 'Bajo', 'Pasa con condiciones', 12, 'Etiquetado correcto de alimentos'),
('2024-06-20', 27, 'Medio', 'Pasa con condiciones', 13, 'Personal certificado'),
('2024-09-25', 27, 'Alto', 'Falla', 14, 'Mala calidad de los alimentos');

-- Establecimiento 28
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-04-20', 28, 'Bajo', 'Pasa con condiciones', 1, 'No se encontraron violaciones'),
('2024-07-25', 28, 'Medio', 'Pasa con condiciones', 2, 'Insectos encontrados en la cocina'),
('2024-10-30', 28, 'Alto', 'Falla', 3, 'Almacenamiento incorrecto de alimentos');

-- Establecimiento 29
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-05-25', 29, 'Bajo', 'Pasa con condiciones', 4, 'Manipulación inadecuada de alimentos'),
('2024-08-30', 29, 'Medio', 'Pasa con condiciones', 5, 'Equipo de cocina en buen estado'),
('2024-12-05', 29, 'Alto', 'Falla', 6, 'Temperatura inadecuada en la cocina');

