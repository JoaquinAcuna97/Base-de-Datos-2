-- 1. Mostrar nombre, dirección y teléfono de los establecimientos que tuvieron la inspección fallida más reciente

SELECT
  Establecimientos.estNombre,
  Establecimientos.estDireccion,
  Establecimientos.estTelefono
FROM
  Inspecciones
INNER JOIN Establecimientos
  ON Establecimientos.estNumero = Inspecciones.estNumero
WHERE
  Inspecciones.inspFecha = (
    SELECT
      max(Inspecciones.inspFecha)
    FROM
      Inspecciones
    WHERE
      Inspecciones.inspResultado = 'Falla';
  )

-- 2. Mostrar los 5 tipos de violaciones mas comunes, el informe debe mostrar código y descripción de la violación y cantidad de inspecciones en el año presente.
SELECT
  TipoViolacion.violCodigo,
  TipoViolacion.violDescrip,
  [Violaciones_mas_comunes_del_ejercicio].[Cantidad_de_Violaciones]
FROM
  TipoViolacion
INNER JOIN (
  SELECT
    TOP 5
    Inspecciones.violCodigo AS [Codigo_Violacion],
    COUNT(Inspecciones.violCodigo) AS [Cantidad_de_Violaciones]
  FROM
    Inspecciones
  WHERE
    YEAR(Inspecciones.inspFecha) = YEAR(GETDATE())
  GROUP BY
    Inspecciones.violCodigo
  ORDER BY
    COUNT(Inspecciones.violCodigo) DESC 
  ) AS [Violaciones_mas_comunes_del_ejercicio]
    ON [Violaciones_mas_comunes_del_ejercicio].[Codigo_Violacion] = TipoViolacion.violCodigo

-- 3. Mostrar número y nombre de los establecimientos que cometieron todos los tipos de violación que existen.

-- 4. Mostrar el porcentaje de inspecciones reprobadas por cada establecimiento, incluir dentro de la reprobación las categorías 'Falla', 'Pasa con condiciones'.
SELECT
  Inspecciones.estNumero,
  COUNT(Inspecciones.inspID)
FROM
  Inspecciones
WHERE
  Inspecciones.inspResultado IN ('Falla','Pasa con condiciones')
GROUP BY
  Inspecciones.estNumero


-- 5 Mostrar el ranking de inspecciones de establecimientos, dicho ranking debe mostrar número y nombre del establecimiento, total de inspecciones, total de inspecciones aprobadas ('Pasa'), porcentaje de dichas inspecciones aprobadas, total de inspecciones reprobadas ('Falla', 'Pasa con condiciones') y porcentaje de dichas inspecciones reprobadas, solo tener en cuenta establecimientos cuyo status de licencia es APR.

-- 6 Mostrar el tiempo promedio que tarda cada establecimiento en renovar su licencia.