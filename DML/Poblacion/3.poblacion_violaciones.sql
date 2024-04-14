/*
Prompt:

Ahora necesito 13 inserts para la siguiente tabla de violaciones en establecimientos de cocina:

CREATE TABLE TipoViolacion(
	violCodigo int identity not null, 
  violDescrip varchar(30) not null,
	constraint pk_TipoViol primary key(violCodigo))
GO

Son los diferentes tipos de violación a la normativa, poseen un código auto incremental y una descripción.

Las descripciones de violaciones no pueden tener mas de 30 caracteres. La primer violacion debe tener descripcion ('No aplica'), y representa los casos donde no se incurre en ninguna violacion

*/

-- Inserción de la violación "No aplica"
INSERT INTO TipoViolacion (violDescrip) VALUES
  ('No aplica');

-- Otras violaciones
INSERT INTO TipoViolacion (violDescrip) VALUES 
  ('Presencia de insectos'),
  ('Manipulación inadecuada de alimentos'),
  ('Almacenamiento incorrecto de alimentos'),
  ('Falta de higiene en el personal'),
  ('Equipo de cocina defectuoso'),
  ('Temperatura inadecuada de almacenamiento'),
  ('Contaminación cruzada'),
  ('Falta de control de plagas'),
  ('Higiene inadecuada de las instalaciones'),
  ('Uso incorrecto de químicos de limpieza'),
  ('Mala calidad de los alimentos'),
  ('Incumplimiento de normas de etiquetado'),
  ('Falta de certificación de manipuladores de alimentos');
