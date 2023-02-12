/***********************************************************************************************/
/******************************Tablas que tengas que ver con el menu****************************/
create table tmenu
(
id_menu int identity (1,1) not null unique,
descripcion varchar(100) not null,
precio_v numeric(10,2) not null,
sn_activo bit not null,
id_categoria int not null,
fec_proceso smalldatetime not null
)

create table tcategorias_menu
(
id_categoria int identity (1,1) not null unique,
descripcion varchar(100) not null
)

create table tadicionales
(
id_adicionales int identity(1,1) not null unique,
descripcion varchar(100) not null,
precio_v numeric(10,2)
)

create table tbebidas
(
id_bebidas int identity (1,1) not null unique,
descripcion varchar(100) not null,
precio_v numeric(10,2)
)

CREATE table tclientes
(
id_clientes int identity (1,1) not null,
txt_nombre_completo varchar(100) not null,
txt_dir varchar(100) null,
txt_tel varchar(20),
txt_desc varchar(max),
fecha_ingreso smalldatetime not null
)

create table dbo.tusuarios
(
id_usuario int identity (1,1) not null unique,
cod_usuario varchar(30) not null unique,
txt_nombre varchar(30) not null,
contrasenia varchar(30) not null,
sn_activo bit not null --0/1
)

create table tforma_pago
(
id_pago int identity(1,1) not null unique,
txt_pago varchar(50) not null
)

create table venta_x_clientes
(
id_cliente int not null,
nro_factura int not null unique
)

create table ventas
(
id_ventas int identity(1,1) not null unique,
nro_factura int not null,
menu int null,
adicional int null,
adicionalP int NULL,
bebidas int null,
cant int null,
fec_emision date
)

create table cerrar_venta
(
nro_factura int not null unique,
envio numeric(10,2),
total numeric(10,2),
formaPagoA int,
PPagoA numeric(10,2),
formaPagoB int null,
PPagoB numeric(10,2) null
)

create table pago_venta
(
nro_factura int not null unique,
total numeric(10,2) NOT NULl,
pagaCon numeric(10,2) null,
horarioEP time(0),
comentario varchar(100) null,
pedidos bit NOT NULL,
cierre bit NOT NULL,
movimiento VARCHAR(60) NULL
)

create table nro_factura
(factura integer unique not null)

create table cierre_caja
(
id_cierre int identity (1,1) not null unique, 
imp_total numeric(10,2),
imp_total_EF numeric(10,2),
imp_total_MP numeric(10,2),
fec_emi date 
)

create table sp_err
(
spid int not null,
id_err int,
txt_desc varchar(60),
fec_err date
) 

create table comprobantes 
(
texto varchar(100),
txt_adicionales varchar(100),
txt_adicionalesP varchar(80),
txt_bebidas varchar(80)
)

create table comprobante_CIERRE_MENU
(
id int,
productos varchar(60)
)
create table comprobante_CIERRE_ADICIONALES
(
id int,
productos varchar(60)
)
create table comprobante_CIERRE_ADICIONALESP
(
id int,
productos varchar(60)
)
create table comprobante_CIERRE_BEBIDAS
(
id int,
productos varchar(60)
)
create table comprobante_CIERRE
(
id int,
productos varchar(60)
)
----------------TEMPORALES PARA LA VENTAS----------------

create table TMPventas
(
id_ventas int identity(1,1) not null,
nro_factura int not null,
menu int,
adicional int,
adicionalP int,
bebidas int,
cant int, 
fec_emision smalldatetime
)

create table TMPSaldo
(
nro_factura int not null,
id_cliente int,
envio numeric(10,2),
total numeric(10,2)
)

create table TMP_errores_carga
(
spid int not null,
nro_factura int not null,
txt_desc varchar(60),
id_err int
)

CREATE TABLE TMP_MENU (id_menu INT,txt_desc VARCHAR(60),cantidad INT,total NUMERIC(10,2))
CREATE TABLE TMP_ADICIONALES (id_adicionales INT,txt_desc VARCHAR(60),cantidad INT,total NUMERIC(10,2))
CREATE TABLE TMP_ADICIONALESP (id_adicionalesP INT,txt_desc VARCHAR(60),cantidad INT,total NUMERIC(10,2))
CREATE TABLE TMP_BEBIDAS (id_bebidas INT,txt_desc VARCHAR(60),cantidad INT,total NUMERIC(10,2))


/* 
----INSERT DE DATOS POR DEFAULT----
insert into tforma_pago select 'Efectivo'
insert into tforma_pago select 'Mercado Pago'
insert into nro_factura select 1
*/