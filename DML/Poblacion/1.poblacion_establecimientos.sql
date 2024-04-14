/*
  Prompt:
  Dada la siguiente definicion de tablas, crea un total e 30 inserts:
CREATE TABLE Establecimientos(
	estNumero int identity not null, 
  estNombre varchar(40) not null, 
	estDireccion varchar(60) not null, 
	estTelefono varchar(50), 
	estLatitud money, 
	estLongitud money,
	constraint pk_Estab primary key(estNumero))
GO

Los establecimientos deben tener nombras asociados a alimentos, por ejemplo :"Los pollos picantes","Ensaladas del pecado","Hamburguesas del otro mundo".
Las direcciones tienen que ser dentro de la ciudad de Montevideo, Uruguay;Buenos Aires, Argentina y Medellin,Colombia. Las Latitudes y longitudes deben coincidir con estas direcciones.
Los telefonos deben contener el codigo de pais, y la cantiad de caracteres correspondientes a cada pais. Por ejemplo (+598) 97556778 o (+598)2914 7117 para Uruguay
*/

-- Montevideo, Uruguay
INSERT INTO Establecimientos (estNombre, estDireccion, estTelefono, estLatitud, estLongitud)
VALUES ('Los Pollos Picantes', 'Av. 18 de Julio 1234', '(+598) 99776655', -34.9011, -56.1645),
       ('Ensaladas del Pecado', 'Rambla Francia 5678', '(+598) 2914 7117', -34.9132, -56.1694),
       ('Hamburguesas del Otro Mundo', 'Bv. Artigas 9876', '(+598) 91234567', -34.9206, -56.1503),
       ('La Pizzería Italiana', 'Av. Italia 4321', '(+598) 94567890', -34.8954, -56.1467),
       ('Sushi Roll', 'Av. Dr. Luis A. de Herrera 8765', '(+598) 91231234', -34.8712, -56.1402),
       ('Café El Dorado', 'Bv. España 3456', '(+598) 97776655', -34.9065, -56.1887),
       ('Parrilla El Gaucho', 'Av. Rivera 2109', '(+598) 98887766', -34.8871, -56.1578),
       ('La Tacita de Plata', 'Av. Gral. Rivera 6543', '(+598) 94566778', -34.8743, -56.1359),
       ('El Rincón del Pancho', 'Av. Agraciada 7890', '(+598) 93337766', -34.9012, -56.2112),
       ('Don Chivito', 'Av. Italia 1456', '(+598) 97123456', -34.9011, -56.1789);

-- Buenos Aires, Argentina
INSERT INTO Establecimientos (estNombre, estDireccion, estTelefono, estLatitud, estLongitud)
VALUES ('Asado Argentino', 'Av. Corrientes 2345', '(+54) 91134567890', -34.6037, -58.3816),
       ('Empanadas de la Abuela', 'Av. de Mayo 6789', '(+54) 11 9999-8888', -34.6083, -58.3752),
       ('Café Porteño', 'Calle Florida 432', '(+54) 11 7777-6666', -34.6099, -58.3804),
       ('Pizzería Napolitana', 'Av. Libertador 5678', '(+54) 91123456789', -34.5783, -58.4103),
       ('Sushi House', 'Av. Santa Fe 987', '(+54) 11 8888-7777', -34.5913, -58.4099),
       ('La Parrilla del Gaucho', 'Av. Cabildo 789', '(+54) 91198765432', -34.5575, -58.4568),
       ('Barrio Chino', 'Belgrano 345', '(+54) 11 6666-5555', -34.5711, -58.4343),
       ('La Boca del Tango', 'San Telmo 210', '(+54) 91122223333', -34.6209, -58.3616),
       ('La Rosa Negra', 'Recoleta 876', '(+54) 11 3333-4444', -34.5899, -58.3936),
       ('El Café de los Poetas', 'Palermo 123', '(+54) 91112345678', -34.5885, -58.4258);

-- Medellín, Colombia
INSERT INTO Establecimientos (estNombre, estDireccion, estTelefono, estLatitud, estLongitud)
VALUES ('La Arepa Paisa', 'Carrera 70 1234', '(+57) 3001234567', 6.2359, -75.5751),
       ('Bandeja Paisa Express', 'Calle 33 987', '(+57) 4 4445555', 6.2530, -75.5646),
       ('Café Antioqueño', 'Carrera 80 456', '(+57) 3109876543', 6.2654, -75.5894),
       ('Sushi Fusion', 'Carrera 65 7890', '(+57) 3208765432', 6.2452, -75.5980),
       ('Parrilla Paisa', 'Calle 10 210', '(+57) 4 7778888', 6.2479, -75.5684),
       ('El Arepazo', 'Carrera 35 543', '(+57) 3006543210', 6.2658, -75.5785),
       ('La Cevichería Costeña', 'Calle 70 876', '(+57) 3101112233', 6.2387, -75.5821),
       ('Café Tinto', 'Carrera 45 321', '(+57) 4 6667777', 6.2365, -75.6053),
       ('Carnes al Carbón', 'Calle 50 654', '(+57) 3009876543', 6.2485, -75.5971),
       ('Frutos del Mar', 'Carrera 25 987', '(+57) 3108889999', 6.2503, -75.5763);


