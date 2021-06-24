
CREATE TABLE i_clientes (
  Cli_Id integer NOT NULL ,
  Cli_RazonSocial varchar(80) NOT NULL DEFAULT '',
  constraint cli_id_rest primary key (cli_id));


  INSERT INTO i_clientes  VALUES
	(1,'CONSUMIDOR FINAL')
	  INSERT INTO i_clientes  VALUES
	(2,'VORENO PABLA'),
	(3,'POMEZ FABIAN'),
	(4,'VELLA JUAN JOSG'),
	(5,'ALFARO MARIA Y ALFARO MARCELA'),
	(6,'PUIÑAZU CARLOL'),
	(7,'ROLA DANIEL HUGA'),
	(8,'VAVA NESTOR SEBASTIAN'),
	(9,'ARQUIZA SERGIA'),
	(10,'ZANETTI LUCAL')

	CREATE TABLE i_provedores (
  Prov_Id integer ,
  Prov_Nombre varchar(60) NOT NULL DEFAULT '0',
  constraint prov_id primary key(Prov_id)) ;

    
  INSERT INTO i_provedores VALUES
	(1,'180º ILUMINACION - HLC SRL')
	  INSERT INTO i_provedores VALUES
	(2,'180º ILUMINACION OFERTAS'),
	(3,'ADM PRODUCTOS ELECTRICOS'),
	(4,'AGRELO ILUMINACION'),
	(5,'ANTHAY ELECTRONICA S.R.L.'),
	(6,'ARGENJAB DE JUAN C. DESIMONE'),
	(7,'ARTELUM S.A.'),
	(8,'AUREA de Eduardo Rodriguez e Hijos'),
	(9,'BAEL ILUMINACION S.A.'),
	(10,'BEENE ELECTRICIDAD SRL')

	CREATE TABLE i_productos (
  Prod_Id integer NOT NULL,
  Prod_Descripcion varchar(80) NOT NULL DEFAULT '' ,
  Prod_Color varchar(20) NOT NULL DEFAULT '' ,
  Prod_Status integer NOT NULL DEFAULT '1' ,
  Prod_Precio decimal(10,2) NOT NULL DEFAULT '0.00' ,
  Prod_ProvId int constraint prod_provid_rest references i_provedores(Prov_id),
  constraint prod_id_rest primary key(prod_id) )

  INSERT INTO i_productos  VALUES
	(1,'TIPO TALLER CABLEDROP 2X1.5', '', 1, 0.00, 1)
	  INSERT INTO i_productos  VALUES
	(2,'PALA GRIS', '', 1, 0.00, 2),
	(3,'ARGOS GRIS', '', 1, 0.00, 3),
	(4,'BACO NEGRO', '', 1, 0.00, 4),
	(5,'IVIX NEGRO', '', 1, 0.00, 5),
	(6,'LAYO NEGRO', '', 1, 0.00, 6),
	(7,'ZEUS NEGRO', '', 1, 0.00, 7),
	(8,'DIANA NEGRO', '', 1, 0.00, 8),
	(9,'FASTIX 300G', '', 1, 0.00, 9),
	(10,'FILIO NEGRO', '', 1, 0.00, 10)

  CREATE TABLE i_ventas (
  Ventas_Id integer NOT NULL ,
  Ventas_Fecha date NOT NULL,
  Ventas_CliId integer  constraint ventas_cliid_rest references i_clientes(Cli_id) DEFAULT '0',
  Ventas_NroFactura integer NOT NULL DEFAULT '0',
  Ventas_Neto decimal(10,2) NOT NULL DEFAULT '0.00',
  Ventas_Iva decimal(10,2)  NOT NULL DEFAULT '0.00',
  Ventas_Total decimal(10,2)NOT NULL DEFAULT '0.00',
   constraint ventas_id_rest primary key(ventas_id))


    INSERT INTO i_ventas  VALUES
   	(1,'2018-01-02', 1, 73290, 132.10, 27.74, 159.84)
	    INSERT INTO i_ventas  VALUES
	(2,'2018-01-02', 2, 73291, 3828.37, 803.96, 4632.33),
	(3,'2018-01-02', 3, 73292, 37.18, 7.81, 44.99),
	(4,'2018-01-02', 4, 73293, 52.04, 10.93, 62.97),
	(5,'2018-01-02', 5, 73294, 158.30, 33.24, 191.54),
	(6,'2018-01-02', 6, 21900, 95.37, 20.03, 115.40),
	(7,'2018-01-02', 7, 21901, 198.30, 41.64, 239.94),
	(8,'2018-01-02', 8, 73295, 37.02, 7.78, 44.80),
	(9,'2018-01-02', 9, 73296, 2855.45, 599.64, 3455.09),
	(10,'2018-01-02',10, 21902, 8137.44, 1708.86, 9846.30)


   CREATE TABLE i_ventas_detalle (
  VD_Id integer NOT NULL identity (1,1) PRIMARY KEY,
  VD_VentasId integer constraint vd_ventasid references i_ventas(ventas_id)NOT NULL DEFAULT '0',
  VD_ProdId integer constraint vd_prodid_rest references i_productos(prod_id) NOT NULL DEFAULT '0',
  VD_Cantidad integer NOT NULL DEFAULT '0',
  VD_Precio decimal(10,2) NOT NULL DEFAULT '0.00',
  VD_Costo decimal(10,2)  NOT NULL DEFAULT '0.00',
  ) 

    INSERT INTO ventas_detalle VALUES
	(1, 1, 1, 39.99, 19.58)
	    INSERT INTO ventas_detalle VALUES
	(2, 3 ,1, 39.99, 19.58),
	(3, 5, 1, 186.16, 103.42),
	(4, 9, 1, 274.81, 152.67),
	(5, 3, 10, 0.86, 0.38),
	(6, 2, 10, 0.30, 0.15),
	(7, 1, 2, 16.68, 9.53),
	(8, 5, 1, 70.62, 40.35),
	(9, 6, 1, 159.27, 91.01),
	(10, 7, 1, 200.52, 100.26)