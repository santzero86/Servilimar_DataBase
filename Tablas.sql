CREATE TABLE Departamento (
    departamento_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Cargo (
    cargo_id INT PRIMARY KEY,
    cargo VARCHAR(100) NOT NULL
);

CREATE TABLE Ciudad (
    ciudad_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(100) NOT NULL
);

CREATE TABLE Usuario (
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    ciudad_id INT,
    FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id)
);

CREATE TABLE Empleado (
    empleado_id INT PRIMARY KEY,
    usuario_id INT,
    departamento_id INT,
    cargo_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (departamento_id) REFERENCES Departamento(departamento_id),
    FOREIGN KEY (cargo_id) REFERENCES Cargo(cargo_id)
);

CREATE TABLE Condicion (
    condicion_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

CREATE TABLE CondicionUsuario (
    condicion_id INT,
    usuario_id INT,
    PRIMARY KEY (condicion_id, usuario_id),
    FOREIGN KEY (condicion_id) REFERENCES Condicion(condicion_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id)
);

CREATE TABLE Servicio (
    servicio_id INT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE Turno (
    empleado_id INT,
    usuario_id INT,
    servicio_id INT,
    fecha VARCHAR(100),
    hora_inicio VARCHAR(100),
    hora_fin VARCHAR(100),
    estado VARCHAR(100),
    PRIMARY KEY (empleado_id, usuario_id, servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(empleado_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicio(servicio_id)
);

CREATE TABLE Medio (
    medio_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Notificacion (
    notificacion_id INT PRIMARY KEY,
    usuario_id INT,
    medio_id INT,
    mensaje VARCHAR(100),
    fecha_envio VARCHAR(100),
    estado VARCHAR(100),
    FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES Medio(medio_id)
);
