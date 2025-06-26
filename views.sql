USE TinDriveDB;

GO

CREATE VIEW VistaVehiculosSuperlikeados AS
SELECT 
    v.Marca + ' ' + v.Modelo AS Vehiculo,
    COUNT(*) AS CantSuperLikes
FROM Swipe s
JOIN Publicacion p ON s.PublicacionID = p.PublicacionID
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
WHERE s.Accion = 'Superlike'
GROUP BY v.Marca, v.Modelo;

SELECT TOP 5 * FROM VistaVehiculosSuperlikeados ORDER BY CantSuperLikes DESC;

CREATE VIEW VistaVehiculosVendidosPorMes AS
SELECT 
    DATENAME(MONTH, p.Fecha) AS Mes,
    tv.Nombre AS TipoVehiculo,
    COUNT(*) AS VehiculosVendidos
FROM Publicacion p
JOIN Vehiculo v ON p.VehiculoID = v.VehiculoID
JOIN TipoVehiculo tv ON v.TipoVehiculoID = tv.TipoVehiculoID
WHERE p.Estado = 'Vendida'
GROUP BY DATENAME(MONTH, p.Fecha), MONTH(p.Fecha), tv.Nombre;

SELECT * 
FROM VistaVehiculosVendidosPorMes
ORDER BY Mes, VehiculosVendidos DESC;

SELECT*FROM Vehiculo;
Select * from 