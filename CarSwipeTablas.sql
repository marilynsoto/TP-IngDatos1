/*Creamos el database TinderVehiculosDB para almacenar 
la información de nuestro proyecto y poder trabajar sobre ello.
*/
CREATE DATABASE CarSwipeDB;

GO

USE CarSwipeDB;

GO

-- ===============================================================
--  En los siguientes bloques crearemos las tablas necesarias 
--  para poder comenzar con el proyecto.
-- ===============================================================

/* En este bloque creamos 
   la tabla Vehiculo
   con ID, modelo, anio, kilometros, color, detalles, precio,
   tipoTransmision, cantAsientos, aceptaPermuta, UsuarioID,
   tipoCombustibleID.
*/
CREATE TABLE TipoPlan(
       TipoPlanID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50) NOT NULL,
	   CantPublicacionesMax INT NOT NULL,
	   Precio DECIMAL(10,2) NOT NULL,
	   CantLikesMax INT NOT NULL,
	   Duracion INT NOT NULL,
);

CREATE TABLE Usuario (
       UsuarioID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50) NOT NULL,
	   Apellido VARCHAR(50) NOT NULL,
	   DNI INT NOT NULL,
	   Email NVARCHAR(50) NOT NULL,
	   FechaRegistro DATE,
	   FechaRegistroPlan DATE,
	   TipoPlanID INT,
	   FOREIGN KEY (TipoPlanID) REFERENCES TipoPlan(TipoPlanID),
);



CREATE TABLE Vehiculo (
       VehiculoID INT PRIMARY KEY IDENTITY(1,1),
	   Marca VARCHAR(50) NOT NULL,
	   Modelo VARCHAR(50) NOT NULL,
	   Anio INT NOT NULL,
	   Kilometros INT NOT NULL,
	   Color VARCHAR(50) NOT NULL,
	   Detalles VARCHAR(300),
	   TipoTransmicion VARCHAR(50) NOT NULL,
	   TipoCombustible varchar(20) NOT NULL,
	   CantAsientos INT,
	   AceptaPermuta BIT,
	   UsuarioID INT, 
	   TipoCombustibleID INT,
	   FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
	   CONSTRAINT chk_Transmicion CHECK (TipoTransmicion IN ('Manual', 'Automatica')),
	   CONSTRAINT chK_Combustible CHECK (TipoCombustible in ('diesel', 'Nafta', 'Hibrido', 'Electricidad')),
	   CONSTRAINT chk_Kilometros CHECK (Kilometros >= 0),

);
CREATE TABLE Publicacion (
       PublicacionID INT PRIMARY KEY IDENTITY(1,1),
	   Descripcion VARCHAR(100),
	   Precio DECIMAL(10,2),
	   Fecha DATE,
	   Estado VARCHAR(50),
	   VehiculoID INT,
	   FOREIGN KEY (VehiculoID) REFERENCES Vehiculo(VehiculoID),
	   CONSTRAINT chk_Precio CHECK (Precio >= 0),
	   CONSTRAINT chk_Estado CHECK (Estado IN ('Activo', 'Pausado', 'Vendida', 'Eliminada')),
);

CREATE TABLE Swipe (
       SwipeID INT PRIMARY KEY IDENTITY(1,1),
	   Accion VARCHAR(50),
	   Fecha DATE,
	   PublicacionID INT,
	   UsuarioID INT, --quien interactua con la publicación
	   FOREIGN KEY (PublicacionID) REFERENCES Publicacion(PublicacionID),
	   FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
	   CONSTRAINT chk_Accion CHECK (Accion IN ('Like', 'Dislike', 'SuperLike'))

);

CREATE TABLE Preferencia (
	   PreferenciaID INT PRIMARY KEY IDENTITY(1,1),
	   Marca VARCHAR(50),
	   Modelo VARCHAR(50),
	   Anio INT,
	   KilometrosMax INT NOT NULL,
	   KilometrosMin INT NOT NULL,
	   Color VARCHAR(50),
	   AceptaPermuta BIT NOT NULL,
	   UsuarioID INT,
	   FOREIGN KEY (UsuarioID) REFERENCES Usuario(UsuarioID),
	   CONSTRAINT chk_KilometrosPreferencias CHECK (KilometrosMin >= 0 AND KilometrosMax >= 0)
);


GO

ALTER TABLE Vehiculo 
ADD TipoVehiculoID INT;

GO

CREATE TABLE TipoVehiculo (
       TipoVehiculoID INT PRIMARY KEY IDENTITY(1,1),
	   Nombre VARCHAR(50),
);

GO

ALTER TABLE Vehiculo
ADD CONSTRAINT fk_Vehiculo_TipoVehiculo FOREIGN KEY (TipoVehiculoID) REFERENCES TipoVehiculo(TipoVehiculoID);

