USE TinDriveDB;

GO

-- ===============================================================
--  En los siguientes bloques insertaremos data en las respectivas
--  tablas utilizando los procedimientos almacenados ya creados para cada una.
-- ===============================================================

-- INSERCIÓN DE DATOS PARA TIPOPLAN

EXEC InsertarTipoPlan @Nombre = 'Gratis', @CantPublicacionesMax = 1, @Precio = 0.00, @CantSuperLikesMax = 4, @Duracion = 1;
EXEC InsertarTipoPlan @Nombre = 'Básico', @CantPublicacionesMax = 5, @Precio = 2999.99, @CantSuperLikesMax = 20, @Duracion = 1;
EXEC InsertarTipoPlan @Nombre = 'Premium', @CantPublicacionesMax = 15, @Precio = 3999.99, @CantSuperLikesMax = 50, @Duracion = 1;
EXEC InsertarTipoPlan @Nombre = 'Ilimitado', @CantPublicacionesMax = 9999, @Precio = 9999.99, @CantSuperLikesMax = 9999, @Duracion = 6;

GO
-- INSERCIÓN DE DATOS PARA USUARIOS

EXEC InsertarUsuario @Nombre = 'Matias', @Apellido = 'Boher', @DNI = 1, @Email = 'matboher@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 1;
EXEC InsertarUsuario @Nombre = 'Facundo', @Apellido = 'Roller', @DNI = 2, @Email = 'facuroller@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 3;
EXEC InsertarUsuario @Nombre = 'Nicole', @Apellido = 'Soto', @DNI = 3, @Email = 'nicosoto@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 4;
EXEC InsertarUsuario @Nombre = 'Joel', @Apellido = 'Casas', @DNI = 4, @Email = 'joecasas@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 1;
EXEC InsertarUsuario @Nombre = 'Maria', @Apellido = 'Paz', @DNI = 5, @Email = 'maripaz@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 2;
EXEC InsertarUsuario @Nombre = 'Lucas', @Apellido = 'Raimondi', @DNI = 6, @Email = 'lucaraimondi@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 1;
EXEC InsertarUsuario @Nombre = 'Ken', @Apellido = 'Damon', @DNI = 7, @Email = 'kendamon@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 2;
EXEC InsertarUsuario @Nombre = 'Lena', @Apellido = 'Rojas', @DNI = 12345678, @Email = 'lenarojas@uade.edu.ar', @FechaRegistro = '2025-06-20', @FechaRegistroPlan = '2025-06-20', @TipoPlanID = 1;

EXEC InsertarUsuario @Nombre = 'Iván', @Apellido = 'Paredes', @DNI = 23456789, @Email = 'ivanparedes@uade.edu.ar', @FechaRegistro = '2025-06-21', @FechaRegistroPlan = '2025-06-21', @TipoPlanID = 2;

EXEC InsertarUsuario @Nombre = 'Sofía', @Apellido = 'Martínez', @DNI = 34567890, @Email = 'sofiamartinez@uade.edu.ar', @FechaRegistro = '2025-06-22', @FechaRegistroPlan = '2025-06-22', @TipoPlanID = 3;

EXEC InsertarUsuario @Nombre = 'Tomás', @Apellido = 'Gutiérrez', @DNI = 45678901, @Email = 'tomasgutierrez@uade.edu.ar', @FechaRegistro = '2025-06-23', @FechaRegistroPlan = '2025-06-23', @TipoPlanID = 4;

EXEC InsertarUsuario @Nombre = 'Valentina', @Apellido = 'Suárez', @DNI = 56789012, @Email = 'valensuarez@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 2;

EXEC InsertarUsuario @Nombre = 'Lucas', @Apellido = 'Cabrera', @DNI = 67890123, @Email = 'lucascabrera@uade.edu.ar', @FechaRegistro = '2025-06-25', @FechaRegistroPlan = '2025-06-25', @TipoPlanID = 1;

EXEC InsertarUsuario @Nombre = 'Camila', @Apellido = 'Moreno', @DNI = 78901234, @Email = 'camilamoreno@uade.edu.ar', @FechaRegistro = '2025-06-26', @FechaRegistroPlan = '2025-06-26', @TipoPlanID = 3;

EXEC InsertarUsuario @Nombre = 'Bruno', @Apellido = 'Delgado', @DNI = 89012345, @Email = 'brunodelgado@uade.edu.ar', @FechaRegistro = '2025-06-27', @FechaRegistroPlan = '2025-06-27', @TipoPlanID = 4;

EXEC InsertarUsuario @Nombre = 'Micaela', @Apellido = 'Vega', @DNI = 90123456, @Email = 'micavega@uade.edu.ar', @FechaRegistro = '2025-06-28', @FechaRegistroPlan = '2025-06-28', @TipoPlanID = 1;

EXEC InsertarUsuario @Nombre = 'Julián', @Apellido = 'Sosa', @DNI = 91234567, @Email = 'julisosa@uade.edu.ar', @FechaRegistro = '2025-06-28', @FechaRegistroPlan = '2025-06-28', @TipoPlanID = 2;
SELECT*FROM Usuario;
GO 
-- INSERCIÓN DE DATOS PARA TIPO DE VEHICULOS.

EXEC InsertarTipoVehiculo @Nombre = 'Furgon';
EXEC InsertarTipoVehiculo @Nombre = 'Moto';
EXEC InsertarTipoVehiculo @Nombre = 'Convertible';
EXEC InsertarTipoVehiculo @Nombre = 'Camion';
EXEC InsertarTipoVehiculo @Nombre = 'Camioneta';
EXEC InsertarTipoVehiculo @Nombre = 'SUV';
EXEC InsertarTipoVehiculo @Nombre = 'Pickup';

GO
-- INSERCIÓN DE DATOS PARA VEHICULOS.
EXEC InsertarVehiculo 
    @Patente = 'ABC123',
    @Marca = 'Mercedes-Benz', 
    @Modelo = 'Sprinter', 
    @Anio = 2017, 
    @Kilometros = 120000, 
    @Color = 'Blanco', 
    @Detalles = 'Ideal para reparto y carga', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'diesel', 
    @CantAsientos = 3, 
    @AceptaPermuta = 1, 
    @UsuarioID = 1, 
    @TipoVehiculoID = 1;

 EXEC InsertarVehiculo 
    @Patente = 'JTZ849',
    @Marca = 'Ford', 
    @Modelo = 'EcoSport', 
    @Anio = 2019, 
    @Kilometros = 45000, 
    @Color = 'Rojo', 
    @Detalles = 'Full equipo, cámara de retroceso',
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 2, 
    @TipoVehiculoID = 6;

EXEC InsertarVehiculo 
    @Patente = 'LQN506',
    @Marca = 'Honda', 
    @Modelo = 'CBR500R', 
    @Anio = 2020, 
    @Kilometros = 8000, 
    @Color = 'Rojo', 
    @Detalles = 'Mantenimiento al día, poco uso', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 2, 
    @AceptaPermuta = 0, 
    @UsuarioID = 2, 
    @TipoVehiculoID = 2;

EXEC InsertarVehiculo 
    @Patente = 'MKR771',
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2019, 
    @Kilometros = 23000, 
    @Color = 'Azul', 
    @Detalles = 'Techo retráctil, impecable', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 2, 
    @AceptaPermuta = 0, 
    @UsuarioID = 3, 
    @TipoVehiculoID = 3;

EXEC InsertarVehiculo 
    @Patente = 'ZXY304',
    @Marca = 'Toyota', 
    @Modelo = 'Hilux', 
    @Anio = 2018, 
    @Kilometros = 90000, 
    @Color = 'Negro', 
    @Detalles = 'Muy resistente, ideal para trabajo', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'diesel', 
    @CantAsientos = 5, 
    @AceptaPermuta = 1, 
    @UsuarioID = 5, 
    @TipoVehiculoID = 5;

EXEC InsertarVehiculo
	@Patente = 'RFD682',
    @Marca = 'Jeep', 
    @Modelo = 'Grand Cherokee', 
    @Anio = 2020, 
    @Kilometros = 35000, 
    @Color = 'Blanco', 
    @Detalles = 'Full equipo, ideal para familia', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 1, 
    @TipoVehiculoID = 6;

EXEC InsertarVehiculo 
    @Patente = 'VPM917',
    @Marca = 'Ford', 
    @Modelo = 'F-150', 
    @Anio = 2019, 
    @Kilometros = 60000, 
    @Color = 'Gris', 
    @Detalles = 'Potente y confiable', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 5, 
    @AceptaPermuta = 1, 
    @UsuarioID = 2, 
    @TipoVehiculoID = 7;

EXEC InsertarVehiculo 
    @Patente = 'CEK438',
    @Marca = 'Volvo', 
    @Modelo = 'FH16', 
    @Anio = 2015, 
    @Kilometros = 400000, 
    @Color = 'Gris', 
    @Detalles = 'Camión pesado para larga distancia', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'diesel', 
    @CantAsientos = 2, 
    @AceptaPermuta = 1, 
    @UsuarioID = 4, 
    @TipoVehiculoID = 4;

---------
EXEC InsertarVehiculo 
    @Patente = 'NYL211',
    @Marca = 'Peugeot', 
    @Modelo = '208', 
    @Anio = 2016, 
    @Kilometros = 177083, 
    @Color = 'Rojo', 
    @Detalles = 'Ideal para ciudad', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Electricidad', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 3, 
    @TipoVehiculoID = 4;

EXEC InsertarVehiculo 
    @Patente = 'NAW578',
    @Marca = 'Chevrolet', 
    @Modelo = 'Cruze', 
    @Anio = 2015, 
    @Kilometros = 179111, 
    @Color = 'Verde', 
    @Detalles = 'Sistema multimedia incluido', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Hibrido', 
    @CantAsientos = 5, 
    @AceptaPermuta = 1, 
    @UsuarioID = 4, 
    @TipoVehiculoID = 1;

EXEC InsertarVehiculo 
    @Patente = 'KTX792',
    @Marca = 'Toyota', 
    @Modelo = 'Corolla', 
    @Anio = 2016, 
    @Kilometros = 170105, 
    @Color = 'Gris', 
    @Detalles = 'Recién salido de service', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Electricidad', 
    @CantAsientos = 7, 
    @AceptaPermuta = 1, 
    @UsuarioID = 4, 
    @TipoVehiculoID = 1;

EXEC InsertarVehiculo 
    @Patente = 'HHK662',
    @Marca = 'Volkswagen', 
    @Modelo = 'Amarok', 
    @Anio = 2018, 
    @Kilometros = 156576, 
    @Color = 'Azul', 
    @Detalles = 'Recién salido de service', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Electricidad', 
    @CantAsientos = 4, 
    @AceptaPermuta = 0, 
    @UsuarioID = 4, 
    @TipoVehiculoID = 5;

EXEC InsertarVehiculo 
    @Patente = 'HWJ944',
    @Marca = 'Renault', 
    @Modelo = 'Kangoo', 
    @Anio = 2018, 
    @Kilometros = 22176, 
    @Color = 'Gris', 
    @Detalles = 'Con equipo de GNC', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 7, 
    @AceptaPermuta = 1, 
    @UsuarioID = 3, 
    @TipoVehiculoID = 6;

EXEC InsertarVehiculo 
    @Patente = 'VWW503',
    @Marca = 'Fiat', 
    @Modelo = 'Cronos', 
    @Anio = 2020, 
    @Kilometros = 115435, 
    @Color = 'Amarillo', 
    @Detalles = 'Con equipo de GNC', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Electricidad', 
    @CantAsientos = 2, 
    @AceptaPermuta = 0, 
    @UsuarioID = 1, 
    @TipoVehiculoID = 5;

EXEC InsertarVehiculo 
    @Patente = 'FCJ854',
    @Marca = 'Nissan', 
    @Modelo = 'Frontier', 
    @Anio = 2017, 
    @Kilometros = 156911, 
    @Color = 'Gris', 
    @Detalles = 'Recién salido de service', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 4, 
    @AceptaPermuta = 0, 
    @UsuarioID = 3, 
    @TipoVehiculoID = 7;

EXEC InsertarVehiculo 
    @Patente = 'BRL126',
    @Marca = 'Citroen', 
    @Modelo = 'C4 Cactus', 
    @Anio = 2021, 
    @Kilometros = 34259, 
    @Color = 'Azul', 
    @Detalles = 'Con llantas deportivas', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Hibrido', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 5, 
    @TipoVehiculoID = 1;

EXEC InsertarVehiculo 
    @Patente = 'PZQ689',
    @Marca = 'Hyundai', 
    @Modelo = 'Tucson', 
    @Anio = 2022, 
    @Kilometros = 47684, 
    @Color = 'Negro', 
    @Detalles = 'Interior de cuero', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 3, 
    @TipoVehiculoID = 2;

EXEC InsertarVehiculo 
    @Patente = 'JET200',
    @Marca = 'Kia', 
    @Modelo = 'Seltos', 
    @Anio = 2015, 
    @Kilometros = 71558, 
    @Color = 'Blanco', 
    @Detalles = 'Ideal para ciudad', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Hibrido', 
    @CantAsientos = 5, 
    @AceptaPermuta = 1, 
    @UsuarioID = 5, 
    @TipoVehiculoID = 3;

EXEC InsertarVehiculo 
    @Patente = 'EYH085',
    @Marca = 'Mazda', 
    @Modelo = 'CX-5', 
    @Anio = 2022, 
    @Kilometros = 146290, 
    @Color = 'Negro', 
    @Detalles = 'Con equipo de GNC', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'Electricidad', 
    @CantAsientos = 7, 
    @AceptaPermuta = 1, 
    @UsuarioID = 6, 
    @TipoVehiculoID = 3;

EXEC InsertarVehiculo 
    @Patente = 'OVG487',
    @Marca = 'Ford', 
    @Modelo = 'Focus', 
    @Anio = 2022, 
    @Kilometros = 145752, 
    @Color = 'Azul', 
    @Detalles = 'Sistema multimedia incluido', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Hibrido', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 1, 
    @TipoVehiculoID = 2;

EXEC InsertarVehiculo 
    @Patente = 'YGO999',
    @Marca = 'BMW', 
    @Modelo = 'Serie 3', 
    @Anio = 2022, 
    @Kilometros = 176841, 
    @Color = 'Negro', 
    @Detalles = 'Muy buen estado', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'Electricidad', 
    @CantAsientos = 2, 
    @AceptaPermuta = 0, 
    @UsuarioID = 3, 
    @TipoVehiculoID = 3;

EXEC InsertarVehiculo 
    @Patente = 'PKJ805',
    @Marca = 'Audi', 
    @Modelo = 'A3', 
    @Anio = 2017, 
    @Kilometros = 66771, 
    @Color = 'Negro', 
    @Detalles = 'Ideal para ciudad', 
    @TipoTransmicion = 'Automatica', 
    @TipoCombustible = 'Nafta', 
    @CantAsientos = 5, 
    @AceptaPermuta = 0, 
    @UsuarioID = 4, 
    @TipoVehiculoID = 7;

EXEC InsertarVehiculo 
    @Patente = 'HLR104',
    @Marca = 'Mercedes-Benz', 
    @Modelo = 'Clase A', 
    @Anio = 2016, 
    @Kilometros = 119894, 
    @Color = 'Gris', 
    @Detalles = 'Techo solar y sensores', 
    @TipoTransmicion = 'Manual', 
    @TipoCombustible = 'diesel', 
    @CantAsientos = 4, 
    @AceptaPermuta = 0, 
    @UsuarioID = 2, 
    @TipoVehiculoID = 7;
GO 
-- INSERCIÓN DE DATOS PARA PUBLICACIONES.

EXEC InsertarPublicacion 
    @Descripcion = 'Camioneta lista para el trabajo pesado. Impecable.',
    @Precio = 19500000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Activa',
    @VehiculoID = 5;


EXEC InsertarPublicacion 
    @Descripcion = 'Moto deportiva en excelente estado.Además posee los papeles correspondientes.',
    @Precio = 5240000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Activa',
    @VehiculoID = 3;

EXEC InsertarPublicacion 
    @Descripcion = 'Convertible de lujo.Primer dueño.',
    @Precio = 28500000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Eliminada',
    @VehiculoID = 4;
EXEC InsertarPublicacion 
    @Descripcion = 'Convertible de lujo.Primer dueño.',
    @Precio = 30000000.00,
    @Fecha = '2025-07-24',
    @Estado = 'Activa',
    @VehiculoID = 4;
EXEC InsertarPublicacion 
    @Descripcion = 'Camión Volvo preparado para transporte de carga pesada.Se encuentra en un estado perfecto, como nuevo.',
    @Precio = 60000000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Eliminada',
    @VehiculoID = 7;
EXEC InsertarPublicacion 
    @Descripcion = 'Camión Volvo preparado para transporte de carga pesada.Se encuentra en un estado perfecto, como nuevo.',
    @Precio = 58000000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Activa',
    @VehiculoID = 7;

EXEC InsertarPublicacion 
    @Descripcion = 'Camión Volvo preparado para transporte de carga pesada.Se encuentra en un estado perfecto, como nuevo.',
    @Precio = 58000000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Vendida',
    @VehiculoID = 7;
select*from Publicacion;
	------
EXEC InsertarPublicacion 
    @Descripcion = 'Furgón espacioso, ideal para reparto urbano. Buen estado general.',
    @Precio = 15800000.00,
    @Fecha = '2025-06-20',
    @Estado = 'Activa',
    @VehiculoID = 1;

EXEC InsertarPublicacion 
    @Descripcion = 'Moto ligera y económica, perfecta para moverse en ciudad.',
    @Precio = 7200000.00,
    @Fecha = '2025-06-21',
    @Estado = 'Pausada',
    @VehiculoID = 2;

EXEC InsertarPublicacion 
    @Descripcion = 'Convertible deportivo, interior de cuero, listo para disfrutar.',
    @Precio = 28750000.00,
    @Fecha = '2025-06-22',
    @Estado = 'Vendida',
    @VehiculoID = 3;

EXEC InsertarPublicacion 
    @Descripcion = 'Camión de carga en excelente estado mecánico. Ideal para empresas.',
    @Precio = 32400000.00,
    @Fecha = '2025-06-23',
    @Estado = 'Eliminada',
    @VehiculoID = 4;

EXEC InsertarPublicacion 
    @Descripcion = 'Camioneta robusta, doble cabina, ideal para uso mixto.',
    @Precio = 19800000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Activa',
    @VehiculoID = 5;

EXEC InsertarPublicacion 
    @Descripcion = 'SUV premium con todos los servicios al día y sin detalles.',
    @Precio = 23900000.00,
    @Fecha = '2025-06-25',
    @Estado = 'Vendida',
    @VehiculoID = 6;

EXEC InsertarPublicacion 
    @Descripcion = 'Pickup 4x4, motor potente y excelente suspensión para off-road.',
    @Precio = 25900000.00,
    @Fecha = '2025-06-26',
    @Estado = 'Pausada',
    @VehiculoID = 7;

------2
EXEC InsertarPublicacion 
    @Descripcion = 'Furgón compacto, ideal para distribución en zonas urbanas.',
    @Precio = 14900000.00,
    @Fecha = '2025-06-20',
    @Estado = 'Pausada',
    @VehiculoID = 5;

EXEC InsertarPublicacion 
    @Descripcion = 'Moto económica con excelente autonomía y mantenimiento bajo.',
    @Precio = 6800000.00,
    @Fecha = '2025-06-21',
    @Estado = 'Activa',
    @VehiculoID = 2;

EXEC InsertarPublicacion 
    @Descripcion = 'Convertible clásico en perfectas condiciones, ideal para coleccionistas.',
    @Precio = 30500000.00,
    @Fecha = '2025-06-22',
    @Estado = 'Eliminada',
    @VehiculoID = 3;

EXEC InsertarPublicacion 
    @Descripcion = 'Camión con carrocería reforzada y frenos nuevos. Apto para cargas pesadas.',
    @Precio = 33600000.00,
    @Fecha = '2025-06-23',
    @Estado = 'Vendida',
    @VehiculoID = 4;

EXEC InsertarPublicacion 
    @Descripcion = 'Camioneta seminueva con motor eficiente. Ideal para uso familiar o laboral.',
    @Precio = 18900000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Pausada',
    @VehiculoID = 5;

EXEC InsertarPublicacion 
    @Descripcion = 'SUV con sensores de estacionamiento y cámara trasera. Muy buen equipamiento.',
    @Precio = 24800000.00,
    @Fecha = '2025-06-25',
    @Estado = 'Eliminada',
    @VehiculoID = 3;

EXEC InsertarPublicacion 
    @Descripcion = 'Pickup full equipada, con solo 20.000 km. Mantenimiento oficial.',
    @Precio = 26800000.00,
    @Fecha = '2025-06-27',
    @Estado = 'Vendida',
    @VehiculoID = 7;
GO

-- INSERCION DE DATOS PARA PREFERENCIAS.
EXEC InsertarPreferencia 
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2022, 
    @KilometrosMin = 0, 
    @KilometrosMax = 30000, 
    @Color = 'Azul', 
    @AceptaPermuta = 0, 
    @UsuarioID = 17;
EXEC InsertarPreferencia 
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2022, 
    @KilometrosMin = 0, 
    @KilometrosMax = 30000, 
    @Color = 'Azul', 
    @AceptaPermuta = 0, 
    @UsuarioID = 16;
EXEC InsertarPreferencia 
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2022, 
    @KilometrosMin = 0, 
    @KilometrosMax = 30000, 
    @Color = 'Azul', 
    @AceptaPermuta = 0, 
    @UsuarioID = 2;
EXEC InsertarPreferencia 
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2022, 
    @KilometrosMin = 0, 
    @KilometrosMax = 30000, 
    @Color = 'Azul', 
    @AceptaPermuta = 0, 
    @UsuarioID = 15;
EXEC InsertarPreferencia 
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2022, 
    @KilometrosMin = 0, 
    @KilometrosMax = 30000, 
    @Color = 'Azul', 
    @AceptaPermuta = 0, 
    @UsuarioID = 3;
EXEC InsertarPreferencia 
    @Marca = 'Ford', 
    @Modelo = 'F-150', 
    @Anio = 2021, 
    @KilometrosMin = 0, 
    @KilometrosMax = 60000, 
    @Color = 'Blanco', 
    @AceptaPermuta = 1, 
    @UsuarioID = 4;
EXEC InsertarPreferencia 
    @Marca = 'Honda', 
    @Modelo = 'CBR500R', 
    @Anio = 2020, 
    @KilometrosMin = 0, 
    @KilometrosMax = 25000, 
    @Color = 'Rojo', 
    @AceptaPermuta = 0, 
    @UsuarioID = 10;
EXEC InsertarPreferencia 
    @Marca = 'Jeep', 
    @Modelo = 'Grand Cherokee', 
    @Anio = 2020, 
    @KilometrosMin = 0, 
    @KilometrosMax = 50000, 
    @Color = 'Blanco', 
    @AceptaPermuta = 0, 
    @UsuarioID = 5;
EXEC InsertarPreferencia 
    @Marca = 'Toyota', 
    @Modelo = 'Hilux', 
    @Anio = 2021, 
    @KilometrosMin = 0, 
    @KilometrosMax = 60000, 
    @Color = 'Negro', 
    @AceptaPermuta = 1, 
    @UsuarioID = 6;
EXEC InsertarPreferencia 
    @Marca = 'Fiat', 
    @Modelo = 'Cronos', 
    @Anio = 2019, 
    @KilometrosMin = 0, 
    @KilometrosMax = 70000, 
    @Color = 'Gris', 
    @AceptaPermuta = 1, 
    @UsuarioID = 13;
EXEC InsertarPreferencia 
    @Marca = 'Volvo', 
    @Modelo = 'FH16', 
    @Anio = 2016, 
    @KilometrosMin = 100000, 
    @KilometrosMax = 500000, 
    @Color = 'Gris', 
    @AceptaPermuta = 1, 
    @UsuarioID = 7;

EXEC InsertarPreferencia 
    @Marca = 'BMW', 
    @Modelo = 'Z4', 
    @Anio = 2022, 
    @KilometrosMin = 0, 
    @KilometrosMax = 30000, 
    @Color = 'Azul', 
    @AceptaPermuta = 0, 
    @UsuarioID = 8;
EXEC InsertarPreferencia 
    @Marca = 'Ford', 
    @Modelo = 'F-150', 
    @Anio = 2021, 
    @KilometrosMin = 0, 
    @KilometrosMax = 60000, 
    @Color = 'Blanco', 
    @AceptaPermuta = 1, 
    @UsuarioID = 9;
EXEC InsertarPreferencia 
    @Marca = 'Honda', 
    @Modelo = 'CBR500R', 
    @Anio = 2020, 
    @KilometrosMin = 0, 
    @KilometrosMax = 25000, 
    @Color = 'Rojo', 
    @AceptaPermuta = 0, 
    @UsuarioID = 10;
EXEC InsertarPreferencia 
    @Marca = 'Jeep', 
    @Modelo = 'Grand Cherokee', 
    @Anio = 2020, 
    @KilometrosMin = 0, 
    @KilometrosMax = 50000, 
    @Color = 'Blanco', 
    @AceptaPermuta = 0, 
    @UsuarioID = 11;
EXEC InsertarPreferencia 
    @Marca = 'Toyota', 
    @Modelo = 'Hilux', 
    @Anio = 2021, 
    @KilometrosMin = 0, 
    @KilometrosMax = 60000, 
    @Color = 'Negro', 
    @AceptaPermuta = 1, 
    @UsuarioID = 12;
EXEC InsertarPreferencia 
    @Marca = 'Fiat', 
    @Modelo = 'Cronos', 
    @Anio = 2019, 
    @KilometrosMin = 0, 
    @KilometrosMax = 70000, 
    @Color = 'Gris', 
    @AceptaPermuta = 1, 
    @UsuarioID = 13;
EXEC InsertarPreferencia 
    @Marca = 'Volvo', 
    @Modelo = 'FH16', 
    @Anio = 2016, 
    @KilometrosMin = 100000, 
    @KilometrosMax = 500000, 
    @Color = 'Gris', 
    @AceptaPermuta = 1, 
    @UsuarioID = 14;

GO

-- INSERCIÓN DE DATOS PARA SWIPES VALIDOS.

-- Usuario 1
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 2, @UsuarioID = 1;
EXEC InsertarSwipe @Accion = 'Superlike', @Fecha = '2025-06-25', @PublicacionID = 3, @UsuarioID = 1;

-- Usuario 2 (no puede interactuar con publicación 2)
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 1, @UsuarioID = 2;
EXEC InsertarSwipe @Accion = 'Dislike', @Fecha = '2025-06-25', @PublicacionID = 4, @UsuarioID = 2;

-- Usuario 3 (no puede interactuar con publicaciones 3 y 4)
EXEC InsertarSwipe @Accion = 'Superlike', @Fecha = '2025-06-25', @PublicacionID = 1, @UsuarioID = 3;
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 5, @UsuarioID = 3;

-- Usuario 4 (no puede interactuar con publicaciones 5 y 6)
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 1, @UsuarioID = 4;
EXEC InsertarSwipe @Accion = 'Superlike', @Fecha = '2025-06-25', @PublicacionID = 2, @UsuarioID = 4;

-- Usuario 5 (no puede interactuar con publicación 1)
EXEC InsertarSwipe @Accion = 'Dislike', @Fecha = '2025-06-25', @PublicacionID = 3, @UsuarioID = 5;
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 6, @UsuarioID = 5;

-- Usuario 6
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 2, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'Superlike', @Fecha = '2025-06-25', @PublicacionID = 5, @UsuarioID = 6;

-- Usuario 7
EXEC InsertarSwipe @Accion = 'Dislike', @Fecha = '2025-06-25', @PublicacionID = 4, @UsuarioID = 7;
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 6, @UsuarioID = 7;

