# Obligatorio Base de datos 2 

## Se pide

- [ ] 1.	Creación de índices que considere puedan ser útiles para optimizar las consultas (según criterio establecido en el curso). 


- [ ] 2.	Ingreso de un juego completo de datos de prueba (será más valorada la calidad de los datos que la cantidad). 


- [ ] 3.	Utilizando SQL implementar las siguientes consultas:

- [ ] a.	Mostrar nombre, dirección y teléfono de los establecimientos que tuvieron la inspección fallida más reciente.
- [ ] b.	Mostrar los 5 tipos de violaciones mas comunes, el informe debe mostrar código y descripción de la violación y cantidad de inspecciones en el año presente.
- [ ] c.	Mostrar número y nombre de los establecimientos que cometieron todos los tipos de violación que existen.
- [ ] d.	Mostrar el porcentaje de inspecciones reprobadas por cada establecimiento, incluir dentro de la reprobación las categorías 'Falla', 'Pasa con condiciones'.
- [ ] e.	Mostrar el ranking de inspecciones de establecimientos, dicho ranking debe mostrar número y nombre del establecimiento, total de inspecciones, total de inspecciones aprobadas ('Pasa'), porcentaje de dichas inspecciones aprobadas, total de inspecciones reprobadas ('Falla', 'Pasa con condiciones') y porcentaje de dichas inspecciones reprobadas, solo tener en cuenta establecimientos cuyo status de licencia es APR.
- [ ] f.	Mostrar la diferencia de días en que cada establecimiento renovó su licencia


- [ ] 4.	Utilizando T-SQL realizar los siguientes ejercicios: 

- [ ] a.	Escribir un procedimiento almacenado que dado un tipo de riesgo ('Bajo','Medio','Alto'), muestre los datos de las violaciones (violCodigo, violDescrip) para dicho tipo, no devolver datos repetidos.
- [ ] b.	Mediante una función que reciba un código de violación, devolver cuantos establecimientos con licencia vencida y nunca renovada tuvieron dicha violación.
- [ ] c.	Escribir un procedimiento almacenado que dado un rango de fechas, retorne por parámetros de salida la cantidad de inspecciones que tuvieron un resultado 'Oficina no encontrada' y la cantidad de inspecciones que no tienen comentarios.

- [ ] 5.	Escribir los siguientes disparadores	:

- [ ] a.	Cada vez que se crea un nuevo establecimiento, se debe crear una licencia de aprobación con vencimiento 90 días, el disparador debe ser escrito teniendo en cuenta la posibilidad de ingresos múltiples.
- [ ] b.	No permitir que se ingresen inspecciones de establecimientos cuya licencia está próxima a vencer, se entiende por próxima a vencer a todas aquellas cuyo vencimiento esté dentro de los siguientes 5 días, el disparador debe tener en cuenta la posibilidad de registros múltiples.





6.	Escribir una vista que muestre todos los datos de las licencias vigentes y los días que faltan para el vencimiento de cada una de ellas.
