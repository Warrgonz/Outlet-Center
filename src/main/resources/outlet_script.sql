drop schema if exists outlet_center;
drop user if exists OUTLET_ADMIN;
CREATE SCHEMA outlet_center;
USE outlet_center;

create user 'OUTLET_ADMIN'@'%' identified by 'K7$9P#xY&2@zR!sW';

grant all privileges on outlet_center.* to 'OUTLET_ADMIN'@'%';
flush privileges;

CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `ruta_imagen` varchar(1024) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `detalle` varchar(1600) NOT NULL,
  `precio` double DEFAULT NULL,
  `existencias` int DEFAULT NULL,
  `ruta_imagen` varchar(1024) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE outlet_center.deseo (
  id_deseo INT NOT NULL AUTO_INCREMENT,
  descripcion VARCHAR(30) NOT NULL,    
  existencias INT,  
  ruta_imagen VARCHAR(1024),
  id_producto INT NOT NULL,
  PRIMARY KEY (id_deseo),
  FOREIGN KEY fk_producto (id_producto) REFERENCES categoria(id_categoria)
) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE outlet_center.usuario (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(512) NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  apellidos VARCHAR(30) NOT NULL,
  direccion VARCHAR(25) NULL,
  telefono VARCHAR(15) NULL,
  ruta_imagen varchar(1024),
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table outlet_center.factura (
  id_factura INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  fecha date,  
  total double,
  estado int,
  PRIMARY KEY (id_factura),
  foreign key fk_factura_usuario (id_usuario) references usuario(id_usuario)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table outlet_center.venta (
  id_venta INT NOT NULL AUTO_INCREMENT,
  num_orden VARCHAR(20) NOT NULL, # 111-11111-11111
  id_factura INT NOT NULL,
  id_producto INT NOT NULL,
  precio double, 
  cantidad int,
  PRIMARY KEY (id_venta),
  foreign key fk_ventas_factura (id_factura) references factura(id_factura),
  foreign key fk_ventas_producto (id_producto) references producto(id_producto) 
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table outlet_center.rol (
  id_rol INT NOT NULL AUTO_INCREMENT,
  nombre varchar(20),
  id_usuario int,
  PRIMARY KEY (id_rol),
  foreign key fk_rol_usuario (id_usuario) references usuario(id_usuario)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- Inserts
 
LOCK TABLES `categoria` WRITE;
INSERT INTO `categoria` VALUES (1,'Ropa y vestimenta',NULL,1),(2,'Articulos Electronicos',NULL,1),(3,'Muebles y decoracion',NULL,1),(4,'Otros',NULL,1);
UNLOCK TABLES;

LOCK TABLES `producto` WRITE;
INSERT INTO `producto` VALUES (1,1,'Camisa naranja Basics','Camisa Deportiva',12000,7,'https://workima.com/wp-content/uploads/2020/02/camiseta-clique-basic-t-029030-naranja-rojizo.jpg',1),(2,1,'Pantalon','Pantalon  Beige',10000,9,'https://www.poloclub.com/cdn/shop/products/37169_01.jpg?v=1691492234',1),(3,1,'Vestido Rojo','Vestido de Flores',7000,12,'https://julio.com/media/catalog/product/3/0/300009_2_hkw8szwlh88phu3y.jpg?optimize=high&bg-color=255,255,255&height=638&width=508&canvas=508:638',1),(4,1,'Zapatos Deportivos','Zapatos Negros',11000,19,'https://d1cft8rz0k7w99.cloudfront.net/n/9/c/2/3/9c23e93e2dd342f8745c7fb1b0fb5ca83ced2c81_LadiesShoeBlack_4456329_01.jpg',1),(5,1,'Buzo Deportivo','Buzo Addidas Negro',8000,20,'https://www.aostores.com/media/catalog/product/s/r/srjhsrejhser.png',1),(6,1,'Camisa casual','Camisa de blanco y negro',9000,16,'https://http2.mlstatic.com/D_NQ_NP_978666-MLA53353977033_012023-O.webp',1),(7,1,'Jeans','Jeans Azul Claro',7500,18,'https://lukshop.vtexassets.com/arquivos/ids/768311-800-auto?v=638285856115030000&width=800&height=auto&aspect=true',1),(8,1,'Vestido','Vestido de lentejuelas',9900,20,'https://m.media-amazon.com/images/I/711HJHjhjCL._AC_SX569_.jpg',1),(9,1,'Zapatos','Zapatos Beige',8500,22,'https://calzarte.cr/image/cache/catalog/productos/4241200%20Beige%205-700x847.jpg',1),(10,1,'Jeans','Jeans Azul Oscuro',7900,14,'https://stagejeans.com.co/cdn/shop/products/22121325D_900X1_47e86dd6-99f1-43cf-8575-91a2caf32808.jpg?v=1650847161',1),(11,1,'Traje de Baño','Traje de Baño Verde',8800,24,'https://us.123rf.com/450wm/evaletova/evaletova1408/evaletova140800103/31152566-traje-de-ba%C3%B1o-verde.jpg',1),(12,1,'Botas de mujer','Botas de mujer de cuero',9000,20,'https://www.delrio.cr/image/cache/data/586101-500x500.jpg',1),(13,1,'Vestido','Vestido Naranja',10000,13,'https://cdn.fashiola.mx/L571685882/highstreet-vestido-ajustado-con-tirantes-lazado-espalda.jpg',1),(14,1,'Vestido','Vestido Rosado',99000,15,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtVOJEBkFpOCoeRurqb3J3lQaB1qrH_2BjBw&usqp=CAU',1),(15,1,'Pantaloon','Pantalon Negro de vestir',6900,25,'https://img.macson.es/fotos/617634_1_l.jpg',1),(16,1,'Pijama Verde Agua','Pijama de flores',8000,21,'https://siman.vtexassets.com/arquivos/ids/4795557-800-800?v=638327440967700000&width=800&height=800&aspect=true',1),(17,1,'Camisa Verde','Camisa de minnie mouse',5500,23,'https://static.kiabi.es/images/camiseta-de-canale-minnie-mouse-blanco-zk678_2_frb1.jpg',1),(18,1,'Sueta   Gris','Sueta Gris manga larga',6000,16,'https://www.pixelmedia.com.pa/images/promocionales/U_Fit_Microfiber_562ff088c7f26.jpg',1),(19,1,'Vestido Azul','Vestido Azul',13000,7,'https://acdn.mitiendanube.com/stores/083/469/products/621-be902a0b168466a58e16734660954037-640-0.jpg',1),(20,1,'Pantalon Negro','Pantalon Negro estampado',11000,11,'https://shop.lineuprewards.com/cdn/shop/products/47067138_99.jpg?v=1684180224',1),(21,1,'Pantalon Beige','Pantalon Cargo Beige',14000,24,'https://img01.ztat.net/article/spp-media-p1/5453430420b7474c9b0eee0ddd96c209/0325c0af4aea42fa80f69134357612a0.jpg?imwidth=1800',1),(22,1,'Sueta Morada','Sueta Morada Lakers',16000,12,'https://basketworld.com/21618-large_default/sudadera-los-angeles-lakers-essential-hoodie-22-23-morada.jpg',1),(23,1,'Falda ','Falda Jeans de bolados',7000,18,'https://http2.mlstatic.com/D_NQ_NP_649659-CBT54503627497_032023-O.webp',1),(24,1,'Sombrero','Sombrero Naranja y Blanco',6000,16,'https://m.media-amazon.com/images/I/61ixIFFallL._AC_UY1000_.jpg',1),(25,2,'Audifonos Negros','Audifonos heyday',7600,11,'https://target.scene7.com/is/image/Target/GUEST_9e9b763f-0c13-4bf1-aaff-2984a4cea6fb?wid=488&hei=488&fmt=pjpeg',1),(26,2,'Teclado Blanco','Teclado Inalambrico OMOTON',6000,30,'https://i5.walmartimages.com.mx/mg/gm/3pp/asr/2dc2e50c-0048-43e4-a777-1c795da08baa.f06fa1b3d34876406d97e19df6fdf20f.jpeg?odnHeight=2000&odnWidth=2000&odnBg=ffffff',1),(27,2,'Cargador de control ','Cargador para control de ps5',15000,25,'https://soporteconsolascr.com/cdn/shop/products/611adWvPEgL._SX522_600x600.jpg?v=1679013104',1),(28,2,'Masajeador','Masajeador Muscular',12000,15,'https://www.aostores.com/media/catalog/product/cache/7feeb55cf393e20da106452982bfe98b/6/1/61-2dcga70l._ac_sl1280_.jpg',1),(29,2,'Audifonos Azules con Microfono','Audifonos Gamer',16000,12,'https://http2.mlstatic.com/D_NQ_NP_753707-MLV53430866383_012023-O.webp',1),(30,2,'Camara Seeutek','Camara Wifi',19000,17,'https://www.ellagar.com/SERV_ADMIN_FILES/Archivos/Imagenes/Articulos_MED/7871898--11283_MED.png',1),(31,2,'Sensor','Sensor Inteligente',10500,10,'https://suministrosenmetrologia.com/wp-content/uploads/2020/03/HOBO-s-wcg-m003.jpg',1),(32,2,'Control Negro','Control de Nintendo Switch',35000,29,'https://soporteconsolascr.com/cdn/shop/products/7_a88cdb0b-d1d2-4452-9ade-9d215dd2f7a2_1200x1200.png?v=1619131359',1),(33,2,'Roku','Roku Express',18000,6,'https://www.officedepot.co.cr/medias/34680.jpg-1200ftw?context=bWFzdGVyfHJvb3R8MjU1Mzg4fGltYWdlL2pwZWd8aGRmL2g1YS8xMTkyMzc0MzE3ODc4Mi8zNDY4MC5qcGdfMTIwMGZ0d3xiNTVlNTIxY2M5N2EyMTAzNmQwYTVmMmJkMGQzZDdhNjhiY2QwMzhhYzVmYTc4OGFlNzg1NDQ1ZWU2ODEyZTQ0',1),(34,2,'Audifonos Negros','Audifonos Negros Inalambricos',8500,12,'https://www.aostores.com/media/catalog/product/cache/7feeb55cf393e20da106452982bfe98b/m/y/my582_2_.jpg',1),(35,2,'Audifonos Rojos con Microfono','Audifonos Gamer ',9000,24,'https://m.media-amazon.com/images/I/61nUCxqxxGL._AC_UF1000,1000_QL80_.jpg',1),(36,2,'Wafflera','Wafflera Negra',11000,15,'https://www.unimart.com/cdn/shop/files/power-xl-waflera-antiadherente-negra-hrw6107-la1.jpg?v=1698683704',1),(37,2,'Maquinas de cortar pelo','Maquinas de Cortar Pelo con guardias',23000,10,'https://oechsle.vteximg.com.br/arquivos/ids/3418925-1000-1000/image-06e8f3679e6c475fb14e337f5b5d625a.jpg?v=637533762226730000',1),(38,2,'Filtrador de Agua','Filtrador de agua BRITA',20000,25,'https://m.media-amazon.com/images/I/711D-b4K7hL.jpg',1),(39,2,'Secadora Naranja','Secadora Conair Naranja',21000,30,'https://www.aostores.com/media/catalog/product/cache/7feeb55cf393e20da106452982bfe98b/c/a/captura_de_pantalla_2023-07-26_110950.png',1),(40,2,'Plancha de Vapor','Plancha de Vapor aowenta',20000,23,'https://www.rowenta.com.mx/wp-content/uploads/2020/06/5-1.jpg',1),(41,2,'Plancha de pelo ','Plancha de pelo inalambrica',22000,26,'https://e00-telva.uecdn.es/assets/multimedia/imagenes/2022/02/26/16458331151085.jpg',1),(42,2,'Robot Aspiradora ','Robot Aspiradora IROBOT',30000,20,'https://siman.vtexassets.com/arquivos/ids/2504509-800-800?v=637757181556470000&width=800&height=800&aspect=true',1),(43,2,'Taza Inteligente Blanca','Taza Inteligente Ember',8000,27,'https://www.aostores.com/media/catalog/product/cache/7feeb55cf393e20da106452982bfe98b/6/3/6367431_rd.jpg',1),(44,2,'Procesador de Alimentos','Procesador de Alimentos CUISINART',13000,20,'https://http2.mlstatic.com/D_NQ_NP_690241-MCR50196038218_062022-O.webp',1),(45,2,'Licuadora','Licuadora Vitamix',15000,39,'https://tipscr.com/11163-large_default/licuadora-touch-go-advance-con-cobertor-32-onzas-vitamix-068255abab.jpg',0),(46,2,'Coffe Maker','Coffe Maker Programable',18000,40,'https://i5.walmartimages.com/asr/30b66683-a792-4ccf-b4a7-913e5245fbab_1.3f5765893d91a021eaa21554b7e714af.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',1),(47,2,'Control PowerA','Control Soporte para Xbox',21000,29,'https://ae01.alicdn.com/kf/He9e7fe2e9c834d44b6234ccbb3bb113aa/Soporte-de-escritorio-para-controlador-de-juegos-base-para-Xbox-Series-S-X-ONE-ONE-SLIM.jpg',0),(48,2,'Astronaut Sky Projector','Astronaut Sky Projector Smart Home',27000,19,'https://i5.walmartimages.com/asr/ef724d15-4b7f-4771-8e4f-25b70eb7f85a.5a57b5e3112fc081673717c1527ee7b9.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',1),(49,3,'Decoracion','Decoracion de Granito',4000,15,'https://marmoleseverstone.com.mx/wp-content/uploads/2020/10/mesas-marmol-3.jpg',0),(50,3,'Lampara Blanca','Lampara de Mesa',3900,37,'https://ferreteriabrenes.com/imagenes/012400287.jpg',1),(51,3,'decoracion navideña','Bolas navideñas',2500,40,'https://img.freepik.com/vector-gratis/surtido-bolas-colores-navidenas_23-2147712119.jpg',0),(52,3,'Decoracion navideña','Decoracion Casca nueces y Duende Barbudo',4500,25,'https://img.freepik.com/vector-gratis/coleccion-cascanueces-navidenos-dibujados-mano_52683-75794.jpg?size=626&ext=jpg&ga=GA1.1.44546679.1699660800&semt=ais',0),(53,3,'Decoracion navideña','Ramas navideñas ',3000,32,'https://previews.123rf.com/images/lilystudio1/lilystudio11611/lilystudio1161100390/68605306-decoraci%C3%B3n-navide%C3%B1a-ramas-verdes-de-un-%C3%A1rbol-de-navidad-con-bolas-rojas-y-copos-de-nieve-en-un.jpg',0),(54,3,'Decoracion navideña','Decoracion navideña Estrellas y  lazos ',5000,30,'https://sm2.kivole.com/630094-superlarge_default/estrella-navidena-con-lazo-star.webp',1),(55,3,'Globo Terraqueo','Decoracion Globo Terraqueo ',4500,22,'https://phantom-telva.unidadeditorial.es/e0962db6a5a2f0e176cd0180fd5aff7a/resize/640/assets/multimedia/imagenes/2018/12/10/15444354884043.jpg',0),(56,3,'Decoracion  Hallowen','Decoracion Calabaza',2800,13,'https://img.freepik.com/fotos-premium/decoracion-calabaza-halloween-fondo-blanco-espacio-copia-generado-ai_386815-1622.jpg?w=2000',1),(57,3,'Decoracion Hallowen','Luces de Hallowen',2500,12,'https://c8.alamy.com/compes/2cy66be/jack-o-linterna-sobre-fondo-blanco-con-luces-feliz-fiesta-de-halloween-invitacion-celebracion-concepto-de-decoracion-de-halloween-espacio-de-copia-2cy66be.jpg',1),(58,3,'Cortina','Cortina Azul',4600,25,'https://vianney.cr/cdn/shop/products/64000_1200x.jpg?v=1613375567',1),(59,3,'Mueble blanco con dorado','mueble con dos gabetas',5000,17,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQshgPeuhqJ49M8Tup5VzbHp-4d1rDmtOA91zKN8EwSM0j2srijZF-UNjWXxRRB7FlENSw&usqp=CAU',1),(60,3,'Almohada gris','Almohada para perro',3000,15,'https://c8.alamy.com/compes/hxgg6a/chihuahua-perro-rojo-almohada-aislado-sobre-fondo-blanco-retrato-de-un-lindo-cachorro-de-pura-raza-chihuahua-hxgg6a.jpg',1),(61,3,'Mueble metalico','Mueble metalico para ropa',4000,29,'https://images.ecestaticos.com/2YjiWi9M1jFy3v9aRjSpcyrEQGU=/0x71:1000x703/1440x810/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2Fcef%2F099%2Fd10%2Fcef099d1058dcab61624f98590b19974.jpg',1),(62,3,'Cabina','Cabina para puerta almacenador',2800,23,'https://assets.fishersci.com/TFS-Assets/CCG/product-images/12979968_A.JPG-650.jpg',1),(63,3,'Mesa de cuarzo','Mesa de madera y cuarzo',4000,25,'https://i.pinimg.com/736x/eb/f5/2c/ebf52c1018a131a18ae0330acb3b3879.jpg',1),(64,3,'mueble de madera oscura ','Mueble multi gaveta',5000,29,'https://muguisa.com/cdn/shop/products/MicrosoftTeams-image_3_efc0664a-916c-4eab-86fc-81dc526a46c9_700x700.jpg?v=1685119724',1),(65,3,'Lampara Beige con Negro','Lampara cuadrada ',3700,30,'https://dpbfouxy1lg2q.cloudfront.net/24342/24342-1.webp',1),(66,3,'Decoracion navideña','Acesorios Blancos y negros',4000,25,'https://previews.123rf.com/images/pandavector/pandavector1712/pandavector171201529/92329376-atributos-y-accesorios-de-la-navidad-en-iconos-negros-de-la-silueta-en-la-colecci%C3%B3n-determinada-para.jpg',1),(67,4,'Juguete avion','Juguete Avion Lego',3560,15,'https://aliss.cr/media/catalog/product/a/9/a9cf62194d79646d74892848d5cc84d1fb130c05_file.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700',1),(68,4,'Figura Anime','Figura Zenitsu Demon Slayer',4000,7,'https://eoqxktueros.exactdn.com/wp-content/uploads/2022/02/FIG003_2.jpg?strip=all&lossy=1&ssl=1',1),(69,4,'Figura anime','Figura de Endevor',17000,24,'https://production-tailoy-repo-magento-statics.s3.amazonaws.com/imagenes/872x872/productos/i/m/y/my-hero-academia-figura-coleccionable-endeavor-17cm-56241002-default-1.jpg',0),(70,4,'Maleta it','Maleta negra con detalles de cuero ',12000,10,'https://c8.alamy.com/compes/fa7x5x/vieja-maleta-negra-aislado-sobre-fondo-blanco-fa7x5x.jpg',0),(71,4,'Pintura','Galon de pintura',8900,11,'https://www.colonoconstruccion.com/ec-colono/images/catalog/products/8520264.jpg',1),(72,4,'Primeros Auxilios','Kit de Primeros Auxilios +',7900,17,'https://www.reecosa.com/files/products/images/thumb/1648858521_rb108.jpg',0),(73,4,'Reloj negro','Reloj despertador',6790,15,'https://www.gollo.com/media/catalog/product/3/7/3713110003_bqo0cp1fbtfqqqmf.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=&width=&canvas=:',0),(74,4,'Bolso azul','Bolso azul con detalles de cuero',7800,18,'https://images1.novica.net/pictures/27/p422870_2b_400.jpg',1),(75,4,'Peluche de vaca','Peluche de vaca blanca con rosa',6700,16,'https://m.media-amazon.com/images/I/710JQuV-RwL.jpg',1),(76,4,'Juguete dinosaurio','Juguete dinosaurio verde ',7000,26,'https://previews.123rf.com/images/nicescene/nicescene1503/nicescene150300015/37902592-bangkok-tailandia-12-de-diciembre-2014-rex-el-car%C3%A1cter-de-juguete-dinosaurio-verde-de-las.jpg',1),(77,4,'Casco ','Casco negro de bicicleta',5600,28,'https://www.namasiacr.com/wp-content/uploads/2020/03/Casco-negro-con-ajustador.jpg',1),(78,4,'Bolso de cuero','Bolso de cuero detalles dorados',8000,16,'https://previews.123rf.com/images/zhekos/zhekos1909/zhekos190900006/130835287-elegante-malet%C3%ADn-de-cuero-negro-con-detalles-dorados-aislado-sobre-fondo-blanco.jpg',1),(79,4,'Peluche','Peluche Elmo',10000,25,'https://ripleype.imgix.net/https%3A%2F%2Fdpq25p1ucac70.cloudfront.net%2Fseller-place-files%2Fmrkl-files%2F1386%2FINFANTIL%2FP079_014903669298_4.jpeg?w=750&h=555&ch=Width&auto=format&cs=strip&bg=FFFFFF&q=60&trimcolor=FFFFFF&trim=color&fit=fillmax&ixlib=js-1.1.0&s=d0c43496545f955a45c54a13ce917eae',0),(80,4,'Figura Animada','Figura de All Might',15600,4,'https://correos-marketplace.ams3.cdn.digitaloceanspaces.com/prod-new/uploads/correos-marketplace-shop/1/product/66701-xeciwvqe-first-4-figures-my-hero-academia-figura-all-might-silver-age-4.jpg',0);
UNLOCK TABLES;

-- usuarios

INSERT INTO outlet_center.usuario (username,password,nombre, apellidos, telefono,ruta_imagen) VALUES 
('juan','$2a$10$P1.w58XvnaYQUQgZUCk4aO/RTRl8EValluCqB3S2VMLTbRt.tlre.','Juan', 'Castro Mora',    '4556-8978', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Juan_Diego_Madrigal.jpg/250px-Juan_Diego_Madrigal.jpg'),
('rebeca','$2a$10$GkEj.ZzmQa/aEfDmtLIh3udIH5fMphx/35d0EYeqZL5uzgCJ0lQRi','Rebeca',  'Contreras Mora', '5456-8789','https://upload.wikimedia.org/wikipedia/commons/0/06/Photo_of_Rebeca_Arthur.jpg'),
('pedro','$2a$10$koGR7eS22Pv5KdaVJKDcge04ZB53iMiw76.UjHPY.XyVYlYqXnPbO','Pedro', 'Mena Loria',      '7898-8936','https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Eduardo_de_Pedro_2019.jpg/480px-Eduardo_de_Pedro_2019.jpg?20200109230854');

insert into outlet_center.rol (id_rol, nombre, id_usuario) values
 (1,'ROLE_ADMIN',1), (2,'ROLE_VENDEDOR',1), (3,'ROLE_USER',1),
 (4,'ROLE_VENDEDOR',2), (5,'ROLE_USER',2),
 (6,'ROLE_USER',3);