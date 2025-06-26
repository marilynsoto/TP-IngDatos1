USE TinDriveDB;

GO

-- 21 de junio
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-21', @PublicacionID = 1, @UsuarioID = 3;
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-21', @PublicacionID = 2, @UsuarioID = 4;

-- 22 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-22', @PublicacionID = 3, @UsuarioID = 5;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-22', @PublicacionID = 4, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-22', @PublicacionID = 5, @UsuarioID = 7;

-- 23 de junio
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-23', @PublicacionID = 6, @UsuarioID = 1;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-23', @PublicacionID = 1, @UsuarioID = 5;

-- 24 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-24', @PublicacionID = 2, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-24', @PublicacionID = 3, @UsuarioID = 7;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-24', @PublicacionID = 4, @UsuarioID = 2;

-- 25 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-25', @PublicacionID = 5, @UsuarioID = 3;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-25', @PublicacionID = 6, @UsuarioID = 4;

-- 26 de junio
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-26', @PublicacionID = 1, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-26', @PublicacionID = 2, @UsuarioID = 7;

-- 27 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-27', @PublicacionID = 3, @UsuarioID = 1;
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-27', @PublicacionID = 4, @UsuarioID = 5;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-27', @PublicacionID = 5, @UsuarioID = 2;
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-27', @PublicacionID = 6, @UsuarioID = 3;

-- 20 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-20', @PublicacionID = 1, @UsuarioID = 2;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-20', @PublicacionID = 2, @UsuarioID = 5;

-- 21 de junio
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-21', @PublicacionID = 3, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-21', @PublicacionID = 4, @UsuarioID = 7;

-- 22 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-22', @PublicacionID = 5, @UsuarioID = 1;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-22', @PublicacionID = 6, @UsuarioID = 2;

-- 23 de junio
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-23', @PublicacionID = 1, @UsuarioID = 7;
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-23', @PublicacionID = 2, @UsuarioID = 3;

-- 24 de junio
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-24', @PublicacionID = 3, @UsuarioID = 4;
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-24', @PublicacionID = 4, @UsuarioID = 5;

-- 25 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-25', @PublicacionID = 5, @UsuarioID = 6;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-25', @PublicacionID = 6, @UsuarioID = 7;

-- 26 de junio
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-26', @PublicacionID = 1, @UsuarioID = 4;
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-26', @PublicacionID = 2, @UsuarioID = 5;

-- 27 de junio
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-27', @PublicacionID = 3, @UsuarioID = 1;
EXEC InsertarSwipe @Accion = 'Superlike',  @Fecha = '2025-06-27', @PublicacionID = 4, @UsuarioID = 2;

-- 28 de junio
EXEC InsertarSwipe @Accion = 'Dislike',    @Fecha = '2025-06-28', @PublicacionID = 5, @UsuarioID = 3;
EXEC InsertarSwipe @Accion = 'Like',       @Fecha = '2025-06-28', @PublicacionID = 6, @UsuarioID = 4;