USE CarSwipeDB;

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