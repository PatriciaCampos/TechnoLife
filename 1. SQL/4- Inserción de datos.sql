EXEC NEGTipoUsuarioInsertar 'VENDEDOR';
EXEC NEGTipoUsuarioInsertar 'CAJERO';
EXEC NEGTipoUsuarioInsertar 'ADMINISTRADOR';
EXEC NEGTipoUsuarioInsertar 'DESPACHO';

EXEC NEGFormaPagoInsertar '';
EXEC NEGFormaPagoInsertar 'EFECTIVO';
EXEC NEGFormaPagoInsertar 'TARJETA';

EXEC NEGFormaEnvioInsertar 'A DOMICILIO';
EXEC NEGFormaEnvioInsertar 'ENTREGA LOCAL';

EXEC NEGSucursalInsertar 'TECHNOLIFE', 1;

EXEC NEGComunaInsertar 'Santiago';
EXEC NEGComunaInsertar 'Independecia';
EXEC NEGComunaInsertar 'Conchal�';
EXEC NEGComunaInsertar 'Huachuraba';
EXEC NEGComunaInsertar 'Recoleta';
EXEC NEGComunaInsertar 'Providencia';
EXEC NEGComunaInsertar 'Vitacura';
EXEC NEGComunaInsertar 'Lo Barnechea';
EXEC NEGComunaInsertar 'Las Condes';
EXEC NEGComunaInsertar '�u�oa';
EXEC NEGComunaInsertar 'La Reina';
EXEC NEGComunaInsertar 'Macul';
EXEC NEGComunaInsertar 'Pe�alol�n';
EXEC NEGComunaInsertar 'La Florida';
EXEC NEGComunaInsertar 'San Joaqu�n';
EXEC NEGComunaInsertar 'La Granja';
EXEC NEGComunaInsertar 'La Pintana';
EXEC NEGComunaInsertar 'San Ram�n';
EXEC NEGComunaInsertar 'San Miguel';
EXEC NEGComunaInsertar 'La Cisterna';
EXEC NEGComunaInsertar 'El Bosque';
EXEC NEGComunaInsertar 'Pedro Aguirre Cerda';
EXEC NEGComunaInsertar 'Lo Espejo';
EXEC NEGComunaInsertar 'Estacion Central';
EXEC NEGComunaInsertar 'Cerrillos';
EXEC NEGComunaInsertar 'Maip�';
EXEC NEGComunaInsertar 'Quinta Normal';
EXEC NEGComunaInsertar 'Lo Prado';
EXEC NEGComunaInsertar 'Pudahuel';
EXEC NEGComunaInsertar 'Cerro Navia';
EXEC NEGComunaInsertar 'Renca';
EXEC NEGComunaInsertar 'Quilicura';
EXEC NEGComunaInsertar 'Colina';
EXEC NEGComunaInsertar 'Lampa';
EXEC NEGComunaInsertar 'Tiltil';
EXEC NEGComunaInsertar 'Puente Alto';
EXEC NEGComunaInsertar 'San Jose de Maipo';
EXEC NEGComunaInsertar 'Pirque';
EXEC NEGComunaInsertar 'San Bernardo';
EXEC NEGComunaInsertar 'Buin';
EXEC NEGComunaInsertar 'Paine';
EXEC NEGComunaInsertar 'Calera de Tango';
EXEC NEGComunaInsertar 'Melipilla';
EXEC NEGComunaInsertar 'Mar�a Pinto';
EXEC NEGComunaInsertar 'Curacav�';
EXEC NEGComunaInsertar 'Alhu�';
EXEC NEGComunaInsertar 'San Pedro';
EXEC NEGComunaInsertar 'Talagante';
EXEC NEGComunaInsertar 'Pe�aflor';
EXEC NEGComunaInsertar 'Isla de Maipo';
EXEC NEGComunaInsertar 'El Monte';
EXEC NEGComunaInsertar 'Padre Hurtado';

EXEC NEGEmpleadoInsertar '19631250-1','Sebastian','Ravelo','1997-01-16',74033091,41,'seba@gmail.com',1;
EXEC NEGControlEmpleadoInsertar 'seba','seba',1,1,1;

EXEC NEGEmpleadoInsertar '19720601-2','Juan','Pe�a','1997-09-05',82384587,43,'juan@gmail.com',1;
EXEC NEGControlEmpleadoInsertar 'juanpenita','juanpenita1997',2,2,1;

EXEC NEGEmpleadoInsertar '13','Patricia','Campos','2018-06-30',9999,3,'pati@gmail.com',1;
EXEC NEGControlEmpleadoInsertar 'patricia','patricia',3,3,1;

EXEC NEGEmpleadoInsertar '14','Rodrigito','Aranguiz','2018-06-30',9999,3,'rori_69@brazzers.cl',1;
EXEC NEGControlEmpleadoInsertar 'rodrigo','rodrigo',4,4,1;

EXEC NEGEmpleadoInsertar '15','Carlos','Calvuen','1998-06-21',67863762,3,'carlos@gmail.cl',1;
EXEC NEGControlEmpleadoInsertar 'carlos','carlos',4,5,1;

EXEC NEGCategoriaInsertar 'Consolas',1;
EXEC NEGCategoriaInsertar 'Teclados',1;
EXEC NEGCategoriaInsertar 'Mouse',1;
EXEC NEGCategoriaInsertar 'Accesorios',1;
EXEC NEGCategoriaInsertar 'Otros',1;

EXEC NEGProductoInsertar '100','PlayStation 3','Consolas/play3.jpg','',1,1;
EXEC NEGProductoInsertar '101','PlayStation 4 Slim','Consolas/play4.jpg','',1,1;
EXEC NEGProductoInsertar '102','Nintento Switch','Consolas/nintendo.jpg','',1,1;
EXEC NEGProductoInsertar '103','Xbox 360','Consolas/xbox.jpg','',1,1;
EXEC NEGProductoInsertar '104','Xbox One','Consolas/xboxone.jpg','',1,1;
EXEC NEGProductoInsertar '105','PlayStation 4 Pro','Consolas/ps4Pro.jpg','',1,1;

EXEC NEGProductoPrecioInsertar 1,'Consola de juegos Sony PLayStation 3',100000;
EXEC NEGProductoPrecioInsertar 2,'Consola de juegos Sony PlayStation 4 Slim.',250000;
EXEC NEGProductoPrecioInsertar 3,'Consola de juegos Nintendo Switch',250000;
EXEC NEGProductoPrecioInsertar 4,'Consola de juegos Xbox 360',100000;
EXEC NEGProductoPrecioInsertar 5,'Consola de juegos Xbox One',250000;
EXEC NEGProductoPrecioInsertar 6,'Consola de juegos PlayStation 4 Pro',300000;
