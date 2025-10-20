-- Tabla Departamento
INSERT INTO Departamento (departamento_id, nombre) VALUES
(1, 'Ventas'),
(2, 'Recursos Humanos'),
(3, 'Finanzas'),
(4, 'Marketing'),
(5, 'Operaciones'),
(6, 'Tecnología'),
(7, 'Legal'),
(8, 'Logística'),
(9, 'Compras'),
(10, 'Atención al Cliente');

-- Tabla Cargo
INSERT INTO Cargo (cargo_id, cargo) VALUES
(1, 'Gerente'),
(2, 'Asistente'),
(3, 'Analista'),
(4, 'Supervisor'),
(5, 'Coordinador'),
(6, 'Director'),
(7, 'Auxiliar'),
(8, 'Técnico'),
(9, 'Especialista'),
(10, 'Consultor');

-- Tabla Ciudad
INSERT INTO Ciudad (ciudad_id, nombre, codigo_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050021'),
(3, 'Cali', '760001'),
(4, 'Barranquilla', '080001'),
(5, 'Cartagena', '130001'),
(6, 'Bucaramanga', '680001'),
(7, 'Manizales', '170001'),
(8, 'Pereira', '660001'),
(9, 'Cúcuta', '540001'),
(10, 'Santa Marta', '470001');

-- Tabla Usuario
INSERT INTO Usuario (usuario_id, nombre, apellido, ciudad_id) VALUES
(1, 'Carlos', 'Gómez', 1),
(2, 'Ana', 'Pérez', 2),
(3, 'Luis', 'Rodríguez', 3),
(4, 'María', 'López', 4),
(5, 'Sofía', 'Martínez', 5),
(6, 'Jorge', 'Sánchez', 6),
(7, 'Laura', 'Castro', 7),
(8, 'Andrés', 'Jiménez', 8),
(9, 'Camila', 'Torres', 9),
(10, 'Felipe', 'Ramírez', 10);

-- Tabla Empleado
INSERT INTO Empleado (empleado_id, usuario_id, departamento_id, cargo_id) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5),
(6, 6, 6, 6),
(7, 7, 7, 7),
(8, 8, 8, 8),
(9, 9, 9, 9),
(10, 10, 10, 10);

-- Tabla Condicion
INSERT INTO Condicion (condicion_id, nombre, usuario_id) VALUES
(1, 'Activo', 1),
(2, 'Suspendido', 2),
(3, 'Incapacitado', 3),
(4, 'Vacaciones', 4),
(5, 'Retirado', 5),
(6, 'Activo', 6),
(7, 'Capacitación', 7),
(8, 'Permiso especial', 8),
(9, 'En proceso', 9),
(10, 'Activo', 10);

-- Tabla CondicionUsuario
INSERT INTO CondicionUsuario (condicion_id, usuario_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Tabla Servicio
INSERT INTO Servicio (servicio_id, descripcion) VALUES
(1, 'Limpieza general'),
(2, 'Mantenimiento eléctrico'),
(3, 'Soporte técnico'),
(4, 'Atención al cliente'),
(5, 'Transporte interno'),
(6, 'Capacitación'),
(7, 'Supervisión'),
(8, 'Revisión financiera'),
(9, 'Auditoría interna'),
(10, 'Desarrollo web');

-- Tabla Turno
INSERT INTO Turno (empleado_id, usuario_id, servicio_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, '2025-10-10', '08:00:00', '16:00:00', 'Completado'),
(2, 2, 2, '2025-10-11', '09:00:00', '17:00:00', 'Pendiente'),
(3, 3, 3, '2025-10-12', '07:00:00', '15:00:00', 'Completado'),
(4, 4, 4, '2025-10-13', '08:00:00', '16:00:00', 'Cancelado'),
(5, 5, 5, '2025-10-14', '10:00:00', '18:00:00', 'Completado'),
(6, 6, 6, '2025-10-15', '08:30:00', '16:30:00', 'Pendiente'),
(7, 7, 7, '2025-10-16', '07:00:00', '15:00:00', 'Completado'),
(8, 8, 8, '2025-10-17', '09:00:00', '17:00:00', 'Pendiente'),
(9, 9, 9, '2025-10-18', '08:00:00', '16:00:00', 'Completado'),
(10, 10, 10, '2025-10-19', '08:00:00', '16:00:00', 'Completado');

-- Tabla Medio
INSERT INTO Medio (medio_id, nombre) VALUES
(1, 'Correo electrónico'),
(2, 'SMS'),
(3, 'WhatsApp'),
(4, 'Notificación App'),
(5, 'Llamada telefónica'),
(6, 'Telegram'),
(7, 'Teams'),
(8, 'Slack'),
(9, 'Discord'),
(10, 'Messenger');

-- Tabla Notificacion
INSERT INTO Notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Su turno ha sido confirmado', '2025-10-10 08:00:00', 'Enviado'),
(2, 2, 2, 'Recordatorio de reunión', '2025-10-11 09:00:00', 'Pendiente'),
(3, 3, 3, 'Actualización de servicio', '2025-10-12 07:30:00', 'Enviado'),
(4, 4, 4, 'Turno cancelado', '2025-10-13 08:15:00', 'Enviado'),
(5, 5, 5, 'Nuevo mensaje del supervisor', '2025-10-14 10:05:00', 'Enviado'),
(6, 6, 6, 'Capacitación programada', '2025-10-15 08:30:00', 'Pendiente'),
(7, 7, 7, 'Cambio de horario', '2025-10-16 07:00:00', 'Enviado'),
(8, 8, 8, 'Actualización del sistema', '2025-10-17 09:00:00', 'Enviado'),
(9, 9, 9, 'Revisión de datos', '2025-10-18 08:00:00', 'Pendiente'),
(10, 10, 10, 'Nuevo servicio asignado', '2025-10-19 08:00:00', 'Enviado');