USE TinDriveDB;

GO

-- ====================================================
-- En los bloques siguientes realizaremos consultas
-- mas enriquecedoras sobre vehiculos.
-- ====================================================

-- Esta consulta busca obtener los 5 vehiculos mas 
-- likeados por otros usuarios.

SELECT TOP 5  v.Marca + ' ' + v.Modelo AS Vehiculo, COUNT(*) AS CantLikes
FROM Swipe s
JOIN Publicacion p ON s.PublicacionID = p.PublicacionID
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
WHERE s.Accion = 'Like'
GROUP BY v.Marca, v.Modelo
ORDER BY CantLikes DESC;

-- Esta consulta busca obtener los 5 vehiculos mas 
-- superlikeados por otros usuarios.Esta consulta es mucho
-- mas enriquecedora que los likes ya que cualquier
-- persona puede likear una publicación.

SELECT TOP 5  v.Marca + ' ' + v.Modelo AS Vehiculo, COUNT(*) AS CantSuperLikes
FROM Swipe s
JOIN Publicacion p ON s.PublicacionID = p.PublicacionID
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
WHERE s.Accion = 'Superlike'
GROUP BY v.Marca, v.Modelo
ORDER BY CantSuperLikes DESC;

-- Esta consulta busca obtener las marcas
-- mas likeadas.

SELECT v.Marca, COUNT(*) AS CantLikes
FROM Vehiculo v
JOIN Publicacion p ON v.VehiculoID = p.VehiculoID
JOIN Swipe s ON p.PublicacionID = s.PublicacionID
WHERE s.Accion = 'Like'
GROUP BY v.Marca
ORDER BY CantLikes DESC;

-- Esta consulta busca obtener los likes por dia.
SELECT Fecha, COUNT(*) AS CantLikes
FROM Swipe
WHERE Accion = 'Like'
GROUP BY Fecha
ORDER BY Fecha DESC;

--Esta consulta busca obtener laspublicaciones
-- efectuadas por dia.
SELECT Fecha, COUNT(*) AS CantPublicaciones
FROM Publicacion
GROUP BY Fecha
ORDER BY Fecha DESC;


--Esta consulta busca obtener los vehiculos que coincidan
--con algunas de las preferencias del usuario.
SELECT V.Marca + ' ' + V.Modelo as Vehiculo
FROM Vehiculo V
JOIN Preferencia P ON P.UsuarioID = 1
WHERE
  (P.Marca IS NULL OR V.Marca = P.Marca)

--
-- Esta consulta permite obtener los Vehiculos tipo 1 mas likeados
SELECT 
    V.Marca,
    V.Modelo,
    COUNT(S.SwipeID) AS CantLikes
FROM Vehiculo V
JOIN Publicacion P ON V.VehiculoID = P.VehiculoID
JOIN Swipe S ON P.PublicacionID = S.PublicacionID
WHERE V.TipoVehiculoID = 5
  AND S.Accion = 'Like'
GROUP BY V.VehiculoID, V.Marca, V.Modelo
ORDER BY CantLikes DESC;


--Esta consulta nos permite obtener los tipos de vehiculos mas likeados 
-- tanto con likes o superlikes.

SELECT 
    tv.Nombre AS TipoVehiculo,
    COUNT(*) AS CantLikes
FROM Swipe s
JOIN Publicacion p ON s.PublicacionID = p.PublicacionID
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
JOIN TipoVehiculo tv ON v.TipoVehiculoID = tv.TipoVehiculoID
WHERE s.Accion IN ('Like', 'SuperLike')
GROUP BY tv.Nombre
ORDER BY CantLikes DESC;

--En esta consulta podemos obtener los vehiculos mas vendidos 
--mensualmente.

SELECT 
    DATENAME(MONTH, p.Fecha) AS Mes,
    tv.Nombre AS TipoVehiculo,
    COUNT(*) AS VehiculosVendidos
FROM Publicacion p
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
JOIN TipoVehiculo tv ON v.TipoVehiculoID = tv.TipoVehiculoID
WHERE p.Estado = 'Vendida'
GROUP BY DATENAME(MONTH, p.Fecha), MONTH(p.Fecha), tv.Nombre
ORDER BY MONTH(p.Fecha), VehiculosVendidos DESC;


--En esta consulta podemos obtener los vehiculos mas dislikeados.

SELECT v.Marca + ' ' + v.Modelo AS Vehiculo, COUNT(*) AS CantDislikes
FROM Swipe s
JOIN Publicacion p ON s.PublicacionID = p.PublicacionID
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
WHERE s.Accion = 'Dislike'
GROUP BY v.Marca, v.Modelo
ORDER BY CantDislikes DESC;

