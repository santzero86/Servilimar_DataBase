-- CIUDADES 
INSERT INTO Ciudad (ciudad_id, nombre, codigo_postal)
VALUES 
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050021');

-- CARGOS
INSERT INTO Cargo (cargo_id, cargo)
VALUES
(1, 'Administrador'),
(2, 'Recepcionista'),
(3, 'Técnico de Servicio');

-- USUARIOS 
INSERT INTO Usuario (usuario_id, nombre, apellido, ciudad_id)
VALUES
(1, 'Laura', 'Martínez', 1),
(2, 'Carlos', 'Gómez', 2),
(3, 'Ana', 'Rodríguez', 1),
(4, 'Luis', 'Torres', 2),
(5, 'Sofía', 'López', 1);

-- Departamentos
INSERT INTO Departamento (departamento_id, nombre)
VALUES
(1, 'Recursos Humanos'),
(2, 'Atención al Cliente'),
(3, 'Mantenimiento');

-- Empleados
INSERT INTO Empleado (empleado_id, usuario_id, departamento_id, cargo_id)
VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 4, 3, 3);

--Condiciones
INSERT INTO Condicion (condicion_id, nombre, usuario_id)
VALUES
(1, 'Discapacidad visual', 3),
(2, 'Movilidad reducida', 5),
(3, 'Problema auditivo', 1);
--Condiciones de los Usuarios
INSERT INTO CondicionUsuario (condicion_id, usuario_id)
VALUES
(1, 3),
(2, 5),
(3, 1);

--Servicios
INSERT INTO Servicio (servicio_id, descripcion)
VALUES
(1, 'Asistencia general'),
(2, 'Mantenimiento técnico'),
(3, 'Atención prioritaria');

--Turnos
INSERT INTO Turno (empleado_id, usuario_id, servicio_id, fecha, hora_inicio, hora_fin, estado)
VALUES
(1, 3, 1, '2025-10-18', '08:00:00', '12:00:00', 'Completado'),
(2, 5, 3, '2025-10-18', '09:00:00', '13:00:00', 'Pendiente'),
(3, 1, 2, '2025-10-18', '10:00:00', '14:00:00', 'En proceso');

--Medios
INSERT INTO Medio (medio_id, nombre)
VALUES
(1, 'Correo electrónico'),
(2, 'SMS'),
(3, 'Notificación en app');

--Notificaciones
INSERT INTO Notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado)
VALUES
(1, 3, 1, 'Su turno ha sido confirmado', '2025-10-18 08:15:00', 'Enviado'),
(2, 5, 2, 'Recuerde su cita de hoy', '2025-10-18 10:35:00', 'Pendiente'),
(3, 1, 3, 'Gracias por usar Servilimar', '2025-10-18 11:10:00', 'Enviado');
