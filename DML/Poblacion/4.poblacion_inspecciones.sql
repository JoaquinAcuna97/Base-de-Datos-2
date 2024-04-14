/*
Prompt

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
La cantidad de inspecciones debe variar para cada local, no puede ser la misma cantidad para todos los locales. Las fechas deber tener una diferencia de al menos 3 meses. Para los riesgos Bajo, y Medio el resultado es pasa con condiciones. Para el riesgo Alto, el resultado es Falla. Cuando es Oficina no encontrada, la violacion deberia ser no aplica.

El local 13, debe tener todas las violaciones en una inspeccion, a excepcion de 'No aplica'

No se pueden usar variables ni formulas.

*/

-- Establecimiento 1
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-02-10', 1, 'Bajo', 'Pasa', NULL, NULL),
('2021-07-20', 1, 'Medio', 'Pasa', NULL, NULL),
('2022-11-05', 1, 'Alto', 'Falla', 1, 'Falta de higiene en manipulación de alimentos'),
('2020-12-15', 1, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Mejorar la limpieza en áreas de preparación');

-- Establecimiento 2
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-03-18', 2, 'Bajo', 'Pasa', NULL, NULL),
('2021-09-25', 2, 'Medio', 'Pasa', NULL, NULL),
('2022-10-10', 2, 'Alto', 'Falla', 2, 'Incumplimiento de normas de seguridad alimentaria'),
('2020-11-20', 2, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar mantenimiento en áreas de almacenamiento');

-- Establecimiento 3
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-04-25', 3, 'Bajo', 'Pasa', NULL, NULL),
('2021-10-15', 3, 'Medio', 'Pasa', NULL, NULL),
('2022-09-05', 3, 'Alto', 'Falla', 3, 'Presencia de plagas'),
('2020-12-30', 3, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Mejorar el etiquetado de los productos');

-- Establecimiento 4
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-05-12', 4, 'Bajo', 'Pasa', NULL, NULL),
('2021-11-30', 4, 'Medio', 'Pasa', NULL, NULL),
('2022-08-15', 4, 'Alto', 'Falla', 4, 'Uso de productos no aptos para consumo'),
('2021-01-10', 4, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza exhaustiva en áreas de cocina');

-- Establecimiento 5
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-06-30', 5, 'Bajo', 'Pasa', NULL, NULL),
('2022-01-25', 5, 'Medio', 'Pasa', NULL, NULL),
('2021-12-10', 5, 'Alto', 'Falla', 5, 'Falta de documentación sanitaria'),
('2021-02-20', 5, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Mejorar el almacenamiento de productos');

-- Establecimiento 6
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-07-15', 6, 'Bajo', 'Pasa', NULL, NULL),
('2022-02-20', 6, 'Medio', 'Pasa', NULL, NULL),
('2021-11-05', 6, 'Alto', 'Falla', 6, 'Almacenamiento inadecuado de alimentos'),
('2021-03-30', 6, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar mantenimiento en áreas de preparación');

-- Establecimiento 7
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-08-20', 7, 'Bajo', 'Pasa', NULL, NULL),
('2022-03-12', 7, 'Medio', 'Pasa', NULL, NULL),
('2022-10-25', 7, 'Alto', 'Falla', 7, 'Incumplimiento de normas de limpieza y desinfección'),
('2021-04-15', 7, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Mejorar la higiene en áreas de almacenamiento');

-- Establecimiento 8
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-09-05', 8, 'Bajo', 'Pasa', NULL, NULL),
('2022-04-18', 8, 'Medio', 'Pasa', NULL, NULL),
('2022-09-10', 8, 'Alto', 'Falla', 8, 'Falta de mantenimiento de instalaciones'),
('2021-05-20', 8, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza profunda en áreas de cocina');

-- Establecimiento 9
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-10-10', 9, 'Bajo', 'Pasa', NULL, NULL),
('2022-05-30', 9, 'Medio', 'Pasa', NULL, NULL),
('2022-08-28', 9, 'Alto', 'Falla', 9, 'Contaminación cruzada de alimentos'),
('2021-06-15', 9, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar mantenimiento en áreas de almacenamiento');

-- Establecimiento 10
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-11-15', 10, 'Bajo', 'Pasa', NULL, NULL),
('2022-06-22', 10, 'Medio', 'Pasa', NULL, NULL),
('2022-08-18', 10,'Alto', 'Falla', 10, 'Uso de utensilios no adecuados'),
('2021-07-30', 10, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Mejorar la higiene en áreas de preparación');

-- Establecimiento 11
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-12-20', 11, 'Bajo', 'Pasa', NULL, NULL),
('2022-07-10', 11, 'Medio', 'Pasa', NULL, NULL),
('2022-09-22', 11, 'Alto', 'Falla', 11, 'Malas condiciones de almacenamiento'),
('2021-08-05', 11, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de almacenamiento');

-- Establecimiento 12
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-01-10', 12, 'Bajo', 'Pasa', NULL, NULL),
('2022-08-30', 12, 'Medio', 'Pasa', NULL, NULL),
('2022-09-28', 12, 'Alto', 'Falla', 12, 'Falta de capacitación del personal'),
('2021-09-15', 12, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar mantenimiento en áreas de preparación');

-- Establecimiento 13 (todas las violaciones)
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-02-05', 13, 'Bajo', 'Falla', 1, 'Falta de higiene en manipulación de alimentos'),
('2024-02-05', 13, 'Medio', 'Falla', 2, 'Incumplimiento de normas de seguridad alimentaria'),
('2024-02-05', 13, 'Alto', 'Falla', 3, 'Presencia de plagas'),
('2024-02-05', 13, 'Bajo', 'Falla', 4, 'Uso de productos no aptos para consumo'),
('2024-02-05', 13, 'Medio', 'Falla', 5, 'Falta de documentación sanitaria'),
('2024-02-05', 13, 'Alto', 'Falla', 6, 'Almacenamiento inadecuado de alimentos'),
('2024-02-05', 13, 'Bajo', 'Falla', 7, 'Incumplimiento de normas de limpieza y desinfección'),
('2024-02-05', 13, 'Medio', 'Falla', 8, 'Falta de mantenimiento de instalaciones'),
('2024-02-05', 13, 'Alto', 'Falla', 9, 'Contaminación cruzada de alimentos'),
('2024-02-05', 13, 'Bajo', 'Falla', 10, 'Uso de utensilios no adecuados'),
('2024-02-05', 13, 'Medio', 'Falla', 11, 'Malas condiciones de almacenamiento'),
('2024-02-05', 13, 'Alto', 'Falla', 12, 'Falta de capacitación del personal'),
('2024-02-05', 13, 'Bajo', 'Falla', 13, 'Incumplimiento de normas de etiquetado');

-- Establecimiento 14
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-05', 14, 'Medio', 'Pasa', NULL, NULL),
('2022-08-18', 14, 'Alto', 'Falla', 2, 'Incumplimiento de normas de seguridad alimentaria'),
('2021-07-15', 14, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza profunda en áreas de cocina');

-- Establecimiento 15
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-10', 15, 'Alto', 'Falla', 3, 'Presencia de plagas'),
('2021-08-25', 15, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de almacenamiento');

-- Establecimiento 16
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-08-05', 16, 'Alto', 'Falla', 4, 'Uso de productos no aptos para consumo'),
('2021-09-10', 16, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de cocina');

-- Establecimiento 17
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-02-10', 17, 'Alto', 'Falla', 4, 'Uso de productos no aptos para consumo'),
('2022-09-15', 17, 'Alto', 'Falla', 5, 'Falta de documentación sanitaria'),
('2021-10-30', 17, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 18
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-28', 18, 'Alto', 'Falla', 6, 'Almacenamiento inadecuado de alimentos'),
('2021-12-15', 18, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de almacenamiento');

-- Establecimiento 19
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-22', 19, 'Alto', 'Falla', 7, 'Incumplimiento de normas de limpieza y desinfección'),
('2022-01-10', 19, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 20
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-05-20', 20, 'Medio', 'Pasa', NULL, NULL),
('2022-09-10', 20, 'Alto', 'Falla', 8, 'Falta de mantenimiento de instalaciones'),
('2022-02-28', 20, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 21
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-06-15', 21, 'Medio', 'Pasa', NULL, NULL),
('2022-09-15', 21, 'Alto', 'Falla', 9, 'Contaminación cruzada de alimentos'),
('2022-03-10', 21, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 22
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-07-20', 22, 'Medio', 'Pasa', NULL, NULL),
('2022-09-20', 22, 'Alto', 'Falla', 10, 'Uso de utensilios no adecuados'),
('2022-04-05', 22, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de cocina');

-- Establecimiento 23
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-08-25', 23, 'Medio', 'Pasa', NULL, NULL),
('2022-09-25', 23, 'Alto', 'Falla', 11, 'Malas condiciones de almacenamiento'),
('2022-05-15', 23, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 24
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-09-10', 24, 'Alto', 'Falla', 12, 'Falta de capacitación del personal'),
('2022-09-28', 24, 'Alto', 'Falla', 12, 'Falta de capacitación del personal'),
('2022-06-20', 24, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 25
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-20', 25, 'Alto', 'Falla', 13, 'Incumplimiento de normas de etiquetado'),
('2022-07-05', 25, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 26
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-11-05', 26, 'Medio', 'Pasa', NULL, NULL),
('2022-09-10', 26, 'Alto', 'Falla', 1, 'Falta de higiene en manipulación de alimentos'),
('2022-08-15', 26, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 27
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2023-12-10', 27, 'Medio', 'Pasa', NULL, NULL),
('2022-09-15', 27, 'Alto', 'Falla', 2, 'Incumplimiento de normas de seguridad alimentaria'),
('2022-09-20', 27, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 28
INSERT INTO Inspecciones (inspFecha,estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2024-01-05', 28, 'Medio', 'Pasa', NULL, NULL),
('2022-09-18', 28, 'Alto', 'Falla', 3, 'Presencia de plagas'),
('2022-10-10', 28, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 29
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-20', 29, 'Alto', 'Falla', 4, 'Uso de productos no aptos para consumo'),
('2022-11-15', 29, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');

-- Establecimiento 30
INSERT INTO Inspecciones (inspFecha, estNumero, inspRiesgo, inspResultado, violCodigo, inspComents) VALUES 
('2022-09-28', 30, 'Alto', 'Falla', 5, 'Falta de documentación sanitaria'),
('2022-12-20', 30, 'Medio', 'Pasa con condiciones', NULL, 'Condición: Realizar limpieza en áreas de preparación');