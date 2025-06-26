USE CarSwipeDB;

GO
-- ===============================================================
--  En los siguientes bloques definimos triggers orientados a 
--  mantener la integridad de negocio y automatizar tareas.
-- ===============================================================

-- VALIDAR EL LIMITE DE PUBLICACIONES SEGÚN EL PLAN DEL USUARIO

CREATE TRIGGER trg_LimitePublicacionesPorPlan
ON Publicacion
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @UsuarioID INT, @TipoPlanID INT, @CantMax INT, @CantActual INT, @VehiculoID INT;

    SELECT @VehiculoID = VehiculoID FROM inserted;
    SELECT @UsuarioID = UsuarioID FROM Vehiculo WHERE VehiculoID = @VehiculoID;
    SELECT @TipoPlanID = TipoPlanID FROM Usuario WHERE UsuarioID = @UsuarioID;
    SELECT @CantMax = CantPublicacionesMax FROM TipoPlan WHERE TipoPlanID = @TipoPlanID;

    SELECT @CantActual = COUNT(*)
    FROM Publicacion P
    INNER JOIN Vehiculo V ON P.VehiculoID = V.VehiculoID
    WHERE V.UsuarioID = @UsuarioID AND P.Estado IN ('Activa', 'Pausada');

    IF @CantActual >= @CantMax
    BEGIN
        RAISERROR('Se alcanzaron el límite de publicaciones permitido por tu plan.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Si no excede, se permite la inserción
    INSERT INTO Publicacion (Descripcion, Precio, Fecha, Estado, VehiculoID)
    SELECT Descripcion, Precio, Fecha, Estado, VehiculoID FROM inserted;
END
GO


-- CONTEO Y LIMITE DE LIKES SEGÚN EL PLAN DEL USUARIO

CREATE TRIGGER trg_LimiteLikesPorPlan
ON Swipe
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @UsuarioID INT, @TipoPlanID INT, @CantMax INT, @CantActual INT, @Accion VARCHAR(50), @Fecha DATE;
    SELECT @UsuarioID = UsuarioID, @Accion = Accion, @Fecha = Fecha FROM inserted;

    IF @Accion != 'Superlike'
    BEGIN
        -- Si no es un Like, inserta directamente
        INSERT INTO Swipe (Accion, Fecha, PublicacionID, UsuarioID)
        SELECT Accion, Fecha, PublicacionID, UsuarioID FROM inserted;
        RETURN;
    END

    SELECT @TipoPlanID = TipoPlanID FROM Usuario WHERE UsuarioID = @UsuarioID;
    SELECT @CantMax = CantSuperLikesMax FROM TipoPlan WHERE TipoPlanID = @TipoPlanID;

    SELECT @CantActual = COUNT(*)
    FROM Swipe
    WHERE UsuarioID = @UsuarioID AND Accion = 'Superlike' AND Fecha = CAST(GETDATE() AS DATE);

    IF @CantActual >= @CantMax
    BEGIN
        RAISERROR('Se alcanzaron el límite de Superlikes diarios permitidos por tu plan.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- Si no excede, se permite la inserción
    INSERT INTO Swipe (Accion, Fecha, PublicacionID, UsuarioID)
    SELECT Accion, Fecha, PublicacionID, UsuarioID FROM inserted;
END
GO


-- ACTUALIZACION DE FECHA AUTOMATICA AL CAMBIAR DE PLAN

CREATE TRIGGER trg_ActualizarFechaRegistroPlan
ON Usuario
AFTER UPDATE
AS
BEGIN
    -- Solo actualiza si se cambió el TipoPlanID
    UPDATE u
    SET FechaRegistroPlan = CAST(GETDATE() AS DATE)
    FROM Usuario u
    INNER JOIN inserted i ON u.UsuarioID = i.UsuarioID
    INNER JOIN deleted d ON i.UsuarioID = d.UsuarioID
    WHERE i.TipoPlanID != d.TipoPlanID;
END
GO
