USE TinDriveDB;

GO

CREATE PROCEDURE InsertarTipoPlan
	 @Nombre VARCHAR(50),
	 @CantPublicacionesMax INT,
	 @Precio DECIMAL(10,2),
	 @CantSuperLikesMax INT,
	 @Duracion INT

AS
BEGIN
  
    INSERT INTO TipoPlan (Nombre, CantPublicacionesMax, Precio, CantSuperLikesMax, Duracion)
	VALUES (@Nombre, @CantPublicacionesMax, @Precio, @CantSuperLikesMax, @Duracion);

	PRINT 'El Tipo de Plan fue insertado correctamente.';
END;

GO

CREATE PROCEDURE InsertarUsuario
	 @Nombre VARCHAR(50),
	 @Apellido VARCHAR(50),
	 @DNI INT,
	 @Email NVARCHAR(50),
	 @FechaRegistro DATE,
	 @FechaRegistroPlan DATE,
	 @TipoPlanID INT
AS
BEGIN
    -- Si no se nos proporciona la fecha, actualizamos con la fecha actual.
    IF @FechaRegistro IS NULL
	BEGIN
	   SET @FechaRegistro = GETDATE();
	END

	-- Si no se nos proporciona la fecha, actualizamos con la fecha actual.
    IF @FechaRegistroPlan IS NULL
	BEGIN
	   SET @FechaRegistroPlan = GETDATE();
	END
	-- Verificamos que el DNI debe ser mayor a 0.
	IF @DNI < 0
	BEGIN
	   PRINT 'Error: El DNI debe ser mayor o igual a 0.'
	   RETURN;
	END

    INSERT INTO Usuario (Nombre, Apellido, DNI, Email, FechaRegistro, FechaRegistroPlan, TipoPlanID)
	VALUES (@Nombre, @Apellido, @DNI, @Email, @FechaRegistro, @FechaRegistroPlan, @TipoPlanID);

	PRINT 'El usuario fue insertado correctamente.';
END;

GO

CREATE PROCEDURE InsertarTipoVehiculo
     @Nombre VARCHAR(50)
AS
BEGIN

     INSERT INTO TipoVehiculo (Nombre) VALUES (@Nombre);

	 PRINT 'El Tipo de vehiculo fue insertado correctamente.';

END;

GO

CREATE PROCEDURE InsertarVehiculo
     @Patente VARCHAR(50),
     @Marca VARCHAR(50),
	 @Modelo VARCHAR(50),
	 @Anio INT,
	 @Kilometros INT,
	 @Color VARCHAR(50),
	 @Detalles VARCHAR(300),
	 @TipoTransmicion VARCHAR(50),
	 @TipoCombustible VARCHAR(20),
	 @CantAsientos INT,
	 @AceptaPermuta BIT,
	 @UsuarioID INT,
	 @TipoVehiculoID INT
AS
BEGIN

	 IF @CantAsientos < 0
	 BEGIN
	    PRINT 'Error: La Cantidad de Asientos deben ser mayor o igual a 0';
		RETURN;
	 END

	 INSERT INTO Vehiculo (Patente, Marca, Modelo , Anio, Kilometros, Color, Detalles, TipoTransmicion, TipoCombustible, CantAsientos, AceptaPermuta, UsuarioID, TipoVehiculoID)
	 VALUES (@Patente, @Marca, @Modelo, @Anio, @Kilometros, @Color, @Detalles, @TipoTransmicion, @TipoCombustible, @CantAsientos, @AceptaPermuta, @UsuarioID, @TipoVehiculoID);

	 PRINT'El Vehiculo fue insertado correctamente.';

END;

GO

CREATE PROCEDURE InsertarPublicacion
     @Descripcion VARCHAR(100),
	 @Precio DECIMAL(10,2),
	 @Fecha DATE,
	 @Estado VARCHAR(50),
	 @VehiculoID INT
AS
BEGIN

     INSERT INTO Publicacion (Descripcion, Precio, Fecha, Estado, VehiculoID)
	 VALUES(@Descripcion, @Precio, @Fecha, @Estado, @VehiculoID);

	 PRINT 'La Publicación fue insertada correctamente.';
END;

GO

CREATE PROCEDURE InsertarSwipe
     @Accion VARCHAR(50),
	 @Fecha DATE,
	 @PublicacionID INT,
	 @UsuarioID INT
AS
BEGIN

     INSERT INTO Swipe (Accion, Fecha, PublicacionID, UsuarioID)
	 VALUES(@Accion, @Fecha, @PublicacionID, @UsuarioID);

	 PRINT 'El Swipe fue insertado correctamente.';
END;

GO

CREATE PROCEDURE InsertarPreferencia
     @Marca VARCHAR(50),
	 @Modelo VARCHAR(50),
	 @Anio INT,
	 @KilometrosMax INT,
	 @KilometrosMin INT,
	 @Color VARCHAR(50),
	 @AceptaPermuta BIT,
	 @UsuarioID INT
AS
BEGIN

     INSERT INTO Preferencia (Marca, Modelo, Anio, KilometrosMax, KilometrosMin, Color, AceptaPermuta, UsuarioID)
	 VALUES (@Marca, @Modelo, @Anio, @KilometrosMax, @KilometrosMin, @Color, @AceptaPermuta, @UsuarioID);

	 PRINT 'La Preferencia fue insertada correctamente.';

END;

GO


