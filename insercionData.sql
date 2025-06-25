USE CarSwipeDB;

GO

-- ===============================================================
--  En los siguientes bloques insertaremos data en las respectivas
--  tablas utilizando los procedimientos almacenados ya creados para cada una.
-- ===============================================================

-- INSERCIÓN DE DATOS PARA TIPOPLAN

EXEC InsertarTipoPlan @Nombre = 'Gratis', @CantPublicacionesMax = 1, @Precio = 0.00, @CantLikesMax = 4, @Duracion = 1;
EXEC InsertarTipoPlan @Nombre = 'Básico', @CantPublicacionesMax = 5, @Precio = 2999.99, @CantLikesMax = 20, @Duracion = 1;
EXEC InsertarTipoPlan @Nombre = 'Premium', @CantPublicacionesMax = 15, @Precio = 3999.99, @CantLikesMax = 50, @Duracion = 1;
EXEC InsertarTipoPlan @Nombre = 'Ilimitado', @CantPublicacionesMax = 9999, @Precio = 9999.99, @CantLikesMax = 9999, @Duracion = 6;

GO
-- INSERCIÓN DE DATOS PARA USUARIOS

EXEC InsertarUsuario @Nombre = 'Matias', @Apellido = 'Boher', @DNI = 1, @Email = 'matboher@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 1;
EXEC InsertarUsuario @Nombre = 'Facundo', @Apellido = 'Roller', @DNI = 2, @Email = 'facuroller@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 3;
EXEC InsertarUsuario @Nombre = 'Nicole', @Apellido = 'Soto', @DNI = 3, @Email = 'nicosoto@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 4;
EXEC InsertarUsuario @Nombre = 'Joel', @Apellido = 'Casas', @DNI = 4, @Email = 'joecasas@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 1;
EXEC InsertarUsuario @Nombre = 'Maria', @Apellido = 'Paz', @DNI = 5, @Email = 'maripaz@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 2;
EXEC InsertarUsuario @Nombre = 'Lucas', @Apellido = 'Raimondi', @DNI = 6, @Email = 'lucaraimondi@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 1;
EXEC InsertarUsuario @Nombre = 'Ken', @Apellido = 'Damon', @DNI = 7, @Email = 'kendamon@uade.edu.ar', @FechaRegistro = '2025-06-24', @FechaRegistroPlan = '2025-06-24', @TipoPlanID = 2;

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

GO 
-- INSERCIÓN DE DATOS PARA PUBLICACIONES.

EXEC InsertarPublicacion 
    @Descripcion = 'Camioneta lista para el trabajo pesado. Impecable.',
    @Precio = 19500000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Activo',
    @VehiculoID = 5;
EXEC InsertarPublicacion 
    @Descripcion = 'Moto deportiva en excelente estado.Además posee los papeles correspondientes.',
    @Precio = 5240000.00,
    @Fecha = '2025-06-24',
    @Estado = 'Activo',
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
    @Estado = 'Activo',
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
    @Estado = 'Activo',
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
    @UsuarioID = 3;
EXEC InsertarPreferencia 
    @Marca = 'Ford', 
    @Modelo = 'F-150', 
    @Anio = 2021, 
    @KilometrosMin = 0, 
    @KilometrosMax = 60000, 
    @Color = 'Blanco', 
    @AceptaPermuta = 1, 
    @UsuarioID = 7;
EXEC InsertarPreferencia 
    @Marca = 'Honda', 
    @Modelo = 'CBR500R', 
    @Anio = 2020, 
    @KilometrosMin = 0, 
    @KilometrosMax = 25000, 
    @Color = 'Rojo', 
    @AceptaPermuta = 0, 
    @UsuarioID = 2;
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
    @UsuarioID = 1;
EXEC InsertarPreferencia 
    @Marca = 'Fiat', 
    @Modelo = 'Cronos', 
    @Anio = 2019, 
    @KilometrosMin = 0, 
    @KilometrosMax = 70000, 
    @Color = 'Gris', 
    @AceptaPermuta = 1, 
    @UsuarioID = 6;
EXEC InsertarPreferencia 
    @Marca = 'Volvo', 
    @Modelo = 'FH16', 
    @Anio = 2016, 
    @KilometrosMin = 100000, 
    @KilometrosMax = 500000, 
    @Color = 'Gris', 
    @AceptaPermuta = 1, 
    @UsuarioID = 4;


GO

-- INSERCIÓN DE DATOS PARA SWIPES VALIDOS.

-- Usuario 1
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 2, @UsuarioID = 1;
EXEC InsertarSwipe @Accion = 'SuperLike', @Fecha = '2025-06-25', @PublicacionID = 3, @UsuarioID = 1;

-- Usuario 2 (no puede interactuar con publicación 2)
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 1, @UsuarioID = 2;
EXEC InsertarSwipe @Accion = 'Dislike', @Fecha = '2025-06-25', @PublicacionID = 4, @UsuarioID = 2;

-- Usuario 3 (no puede interactuar con publicaciones 3 y 4)
EXEC InsertarSwipe @Accion = 'SuperLike', @Fecha = '2025-06-25', @PublicacionID = 1, @UsuarioID = 3;
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 5, @UsuarioID = 3;

-- Usuario 4 (no puede interactuar con publicaciones 5 y 6)
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 1, @UsuarioID = 4;
EXEC InsertarSwipe @Accion = 'SuperLike', @Fecha = '2025-06-25', @PublicacionID = 2, @UsuarioID = 4;

-- Usuario 5 (no puede interactuar con publicación 1)
EXEC InsertarSwipe @Accion = 'Dislike', @Fecha = '2025-06-25', @PublicacionID = 3, @UsuarioID = 5;
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 6, @UsuarioID = 5;

-- Usuario 6
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 2, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'SuperLike', @Fecha = '2025-06-25', @PublicacionID = 5, @UsuarioID = 6;

-- Usuario 7
EXEC InsertarSwipe @Accion = 'Dislike', @Fecha = '2025-06-25', @PublicacionID = 4, @UsuarioID = 7;
EXEC InsertarSwipe @Accion = 'Like', @Fecha = '2025-06-25', @PublicacionID = 6, @UsuarioID = 7;