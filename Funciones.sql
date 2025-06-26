USE TinDriveDB;

GO

CREATE FUNCTION dbo.fn_EstadoUsuario(@UsuarioID INT)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @Plan VARCHAR(50)
    SELECT @Plan = T.Nombre
    FROM Usuario U
    JOIN TipoPlan T ON U.TipoPlanID = T.TipoPlanID
    WHERE U.UsuarioID = @UsuarioID

    RETURN @Plan
END