/*Creamos el database TinderVehiculosDB para almacenar 
la información de nuestro proyecto y poder trabajar sobre ello.
*/
CREATE DATABASE TinderVehiculosDB;

GO

USE TinderVehiculosDB;

GO

-- ===============================================================
--  En los siguientes bloques crearemos las tablas necesarias 
--  para poder comenzar con el proyecto.
-- ===============================================================

/* En este bloque creamos 
   la tabla Vehiculos
   con ID, modelo, anio, kilometros, color, detalles, precio,
   tipoTransmision, cantAsientos, aceptaPermuta, UsuarioID,
   tipoCombustibleID.
*/
CREATE TABLE Planes (
       PlanID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50) NOT NULL,
	   CantPublicacionesMax INT NOT NULL,
	   FechaInicio DATE,
	   FechaFin DATE,
	   Precio DECIMAL(10,2) NOT NULL,
	   CantLikesMax INT NOT NULL,
);

CREATE TABLE Usuarios (
       UsuarioID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50) NOT NULL,
	   Apellido VARCHAR(50) NOT NULL,
	   DNI INT NOT NULL,
	   Email NVARCHAR(50) NOT NULL,
	   FechaRegistro DATE,
	   PlanID INT,
	   FOREIGN KEY (PlanID) REFERENCES Planes(PlanID),
);

CREATE TABLE TipoCombustibles (
       TipoCombustibleID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50),
);

CREATE TABLE Vehiculos (
       VehiculoID INT PRIMARY KEY IDENTITY(1,1),
	   Modelo VARCHAR(50) NOT NULL,
	   Anio INT NOT NULL,
	   Kilometros INT NOT NULL,
	   Color VARCHAR(50) NOT NULL,
	   Detalles VARCHAR(300),
	   TipoTransmicion VARCHAR(50) NOT NULL,
	   CantAsientos INT,
	   AceptaPermuta BIT,
	   UsuarioID INT, 
	   TipoCombustibleID INT,
	   FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	   FOREIGN KEY (TipoCombustibleID) REFERENCES TipoCombustibles(TipoCombustibleID),
	   CONSTRAINT chk_Transmicion CHECK (TipoTransmicion IN ('Manual', 'Automatica')),
	   CONSTRAINT chk_Kilometros CHECK (Kilometros >= 0),

);
CREATE TABLE Publicacion (
       PublicacionID INT PRIMARY KEY IDENTITY(1,1),
	   Titulo VARCHAR(50) NOT NULL,
	   Descripcion VARCHAR(100),
	   Precio DECIMAL(10,2),
	   Fecha DATE,
	   Estado VARCHAR(50),
	   UsuarioID INT,
	   VehiculoID INT,
	   FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	   FOREIGN KEY (VehiculoID) REFERENCES Vehiculos(VehiculoID),
	   CONSTRAINT chk_Precio CHECK (Precio >= 0),
	   CONSTRAINT chk_Estado CHECK (Estado IN ('Activo', 'Pausado', 'Vendida', 'Eliminada')),
);

EXEC sp_rename 'Publicacion', 'Publicaciones';

CREATE TABLE Swipe (
       SwipeID INT PRIMARY KEY IDENTITY(1,1),
	   Accion VARCHAR(50),
	   Fecha DATE,
	   PublicacionID INT,
	   UsuarioID INT, --quien interactua con la publicación
	   FOREIGN KEY (PublicacionID) REFERENCES Publicaciones(PublicacionID),
	   FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	   CONSTRAINT chk_Accion CHECK (Accion IN ('Like', 'Dislike', 'SuperLike'))

);

CREATE TABLE Preferencias (
	   PreferenciaID INT PRIMARY KEY IDENTITY(1,1),
	   Modelo VARCHAR(50),
	   Anio INT,
	   KilometrosMax INT NOT NULL,
	   KilometrosMin INT NOT NULL,
	   Color VARCHAR(50),
	   AceptaPermuta BIT DEFAULT 1,
	   UsuarioID INT,
	   FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	   CONSTRAINT chk_KilometrosPreferencias CHECK (KilometrosMin >= 0 AND KilometrosMax >= 0)
);

CREATE TABLE Notificaciones (
       NotificacionID INT PRIMARY KEY IDENTITY(1,1),
	   Consulta VARCHAR(100),
	   Fecha DATE,
	   UsuarioID INT, --quien recibe el mensaje
	   UsuarioEmisorID INT, -- quien emite el mensaje
	   FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
	   FOREIGN KEY (UsuarioEmisorID) REFERENCES Usuarios(UsuarioID),
);

GO

ALTER TABLE Vehiculos 
ADD TipoVehiculoID INT;

GO

CREATE TABLE TipoVehiculos (
       TipoVehiculoID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50),
);

GO

ALTER TABLE Vehiculos
ADD CONSTRAINT fk_Vehiculo_TipoVehiculo FOREIGN KEY (TipoVehiculoID) REFERENCES TipoVehiculos(TipoVehiculoID);


