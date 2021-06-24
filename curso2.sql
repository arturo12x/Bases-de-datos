-- Volcando estructura para tabla curso.clientes

drop table clientes

CREATE TABLE clientes (
  Cli_Id integer NOT NULL Identity (1,1)primary key,
  Cli_RazonSocial varchar(80) NOT NULL DEFAULT '');

  
INSERT INTO clientes (Cli_RazonSocial) VALUES
	('CONSUMIDOR FINAL'),
	('VORENO PABLA'),
	('POMEZ FABIAN'),
	('VELLA JUAN JOSG'),
	('ALFARO MARIA Y ALFARO MARCELA'),
	('PUIÑAZU CARLOL'),
	('ROLA DANIEL HUGA'),
	('VAVA NESTOR SEBASTIAN'),
	('ARQUIZA SERGIA'),
	('ZANETTI LUCAL'),
	('PORDOBA ARIEL'),
	('POLOMBO DOMENICA'),
	('PALESTINI MARTIN'),
	('PABAÑAS EL MAITEN'),
	('POMES GABRIEL'),
	('Pustavo - Cristina'),
	('Irigoyen Mario TorreL'),
	('RARRIONUEVO JOSG'),
	('LECUONA ROBERTA'),
	('VUNICIPALIDAD DE LOS MOLLEL'),
	('VUNICIPALIDAD DE MERLA'),
	('ALANIZ DANIEL'),
	('ARGUELLO GUILLERMA'),
	('RADRA GONZALA'),
	('LOYOLA  ALEJANDRA'),
	('PALLEGARI JULIAN'),
	('PORIA RICARDA'),
	('PURA SERGIA'),
	('PONSORCIO CHUMA'),
	('CORRES DEL SOL S.R.L'),
	('HELADERIA MORANGA'),
	('VERON ANA MARIA'),
	('RANCO NACION ARGENTINA'),
	('LEON ESTELA'),
	('PALACIO ROBERTA'),
	('DON RAFAEL - JUANCITA'),
	('DANGELO FLAVIO MARIA'),
	('DAL DOSSO SANTIEGA'),
	('ZENI SALVADOR'),
	('ARQUIZA JORGG'),
	('EL CORTIJA'),
	('EGUADAS DEL ZORRO DE ANGELI Y SEOANE S.H.'),
	('Recerra FlaviA'),
	('LOPEZ EDGARDO DEL ROSARIA'),
	('RAROFFIO  ANIBAL'),
	('Asociacion Vecinal Siempre VerdG'),
	('Sucesion de Ratto Ruben Omar'),
	('EME CONSTRUCCIONES S.R.L.'),
	('Villalba Juan JosG'),
	('ORG. GUTIERREZ SOCIEDAD EN FORMACION'),
	('RUTA UNO SRL'),
	('Vonteleone RobertA'),
	('PEREYRA NUÑEZ RUBEN MARTIN'),
	('PORRALES MARIANA'),
	('EMPRES DISTRIB. SAN LUIS EDESAL S.A.'),
	('VAIRAL S.R.L.'),
	('PESANELLI ENZO MARCELA'),
	('LETTIERI JUAN EDUARDA'),
	('PRASSO JORGE EDUARDA'),
	('LEGe LeopoldA'),
	('VORAN RAMON - HACIENDA PROPIEDADEL'),
	('Diaz Alejandro Adrian'),
	('VALLE DEL SOL'),
	('PACK ANDREL'),
	('Picos Julian'),
	('FERRARO PASCUAL'),
	('SLOTS MACHINES S.A.'),
	('FALCO PABLA'),
	('OSDE FILIAL SAN LUIL'),
	('Leliveld Gustavo TomaL'),
	('POMIS ALFREDA'),
	('Andreoli Juan Ignacio '),
	('POMETTO MATIAL'),
	('RORDA GUSTAVA'),
	('PIORDANO JORGG'),
	('PICCININI EZEQUIEL ESTEBAN'),
	('VALANO RAUL'),
	('ORTIZ ROBERTA'),
	('PARAVATI SRL'),
	('POOP. EGUA POTABLE DE MERLA'),
	('ATENCIA ALBERTA'),
	('CRANSPORTE ALTAMIRANA'),
	('SOLIGO JAVIER'),
	('RIPKE NATALIA SILVINA'),
	('PHIARAVALLOTI GUILLERMA'),
	('HARARI DIEGA'),
	('VIRANDA  FABIANA'),
	('VINI JOSE EGUSTIN'),
	('RECERRA ALCIDEL'),
	('ABALLAY ROBERTA'),
	('LAS 2 ERREL'),
	('Prappi   CarloL'),
	('ROMBEROS VOLUNTARIOS DE MERLA'),
	('SIERRAS Y LEGOS S.A.'),
	('RAMACCIOTTI NATALIA'),
	('EGUERO BETTY'),
	('ROLANDO MATEA'),
	('POOP TELEFONICA DE MERLO LTDA.'),
	('POELHO JUAN PABLA'),
	('Resso Marcelo ( Montecor )')
	
	Drop Table productos
CREATE TABLE productos (
  Prod_Id integer NOT NULL identity(1,1)PRIMARY KEY,
  Prod_Descripcion varchar(80) NOT NULL DEFAULT '' ,
  Prod_Color varchar(20) NOT NULL DEFAULT '' ,
  Prod_Status integer NOT NULL DEFAULT '1' ,
  Prod_Precio decimal(10,2) NOT NULL DEFAULT '0.00' ,
  Prod_ProvId int)
  
  INSERT INTO productos (Prod_Descripcion, Prod_Color, Prod_Status, Prod_Precio, Prod_ProvId) VALUES
	('TIPO TALLER CABLEDROP 2X1.5', '', 1, 0.00, 14),
	('PALA GRIS', '', 1, 0.00, 62),
	('ARGOS GRIS', '', 1, 0.00, 62),
	('BACO NEGRO', '', 1, 0.00, 62),
	('IVIX NEGRO', '', 1, 0.00, 62),
	('LAYO NEGRO', '', 1, 0.00, 62),
	('ZEUS NEGRO', '', 1, 0.00, 62),
	('DIANA NEGRO', '', 1, 0.00, 62),
	('FASTIX 300G', '', 1, 0.00, 29),
	('FILIO NEGRO', '', 1, 0.00, 62),
	('GOLGO NEGRO', '', 1, 0.00, 62),
	('IVIX/2NEGRO EX-3037N', '', 1, 0.00, 62),
	('LAYO BLANCO', '', 1, 0.00, 62),
	('MIDAS TORTUGA  EX 3035', 'NEGRA', 1, 0.00, 62),
	('NEON CIOCCA', '', 1, 0.00, 23),
	('PALAS NEGRO', '', 1, 0.00, 62),
	('VESTA NEGRO', '', 1, 0.00, 62),
	('APOLOS NEGRO', '', 1, 0.00, 62),
	('CLIO/1 NEGRO EX 3032/N', '', 1, 0.00, 62),
	('CLIO/2 NEGRO 3034/N', '', 1, 0.00, 62),
	('CRONOS NEGRO', '', 1, 0.00, 62),
	('CUADRA NEGRO', '', 1, 0.00, 62),
	('DIANA BLANCO', '', 1, 0.00, 62),
	('ENERGIZER AA', '', 1, 0.00, 72),
	('FEBO/L NEGRO', '', 1, 0.00, 62),
	('FEBO/S NEGRO', '', 1, 0.00, 62),
	('IVIX/F NEGRO', '', 1, 0.00, 62),
	('IVIX/J NEGRO', '', 1, 0.00, 62),
	('MAYA/1 NEGRO', '', 1, 0.00, 62),
	('MAYA/2 NEGRO', '', 1, 0.00, 62),
	('PALAS BLANCO', '', 1, 0.00, 62),
	('PETRA/2 GRIS', '', 1, 0.00, 62),
	('PISCIS NEGRO', '', 1, 0.00, 62),
	('POXITAS 12 U', '', 1, 0.00, 29),
	('TARUGOS Nº 5', '', 1, 0.00, 34),
	('TARUGOS Nº 6 COMUN S/ TOPE', '', 1, 18.02, 116),
	('TARUGOS Nº 8 COMUN S/TOPE', '', 1, 0.00, 116),
	('APOLO/L NEGRO', '', 1, 0.00, 62),
	('CIRCE/1 NEGRO EX 3031', '', 1, 0.00, 62),
	('CIRCE/2 NEGRO EX 3033', '', 1, 0.00, 62),
	('ENERGIZER A27', '', 1, 439.23, 72),
	('ENERGIZER AAA', '', 1, 0.00, 72),
	('MIDAS/D NEGRO', '', 1, 0.00, 62),
	('MIDAS/REJAS NEGRO', '', 1, 0.00, 62),
	('ORION/2 NEGRO 3039/N-LG', '', 1, 0.00, 62),
	('ORION/A NEGRO 3038/N-LG', '', 1, 0.00, 62),
	('ORION/F NEGRO', '', 1, 0.00, 62),
	('ORION/J NEGRO', '', 1, 0.00, 62),
	('TARUGOS Nº 10', '', 1, 0.30, 34),
	('TARUGOS Nº 12', '', 1, 0.60, 34),
	('TAURO/L NEGRO', '', 1, 0.00, 62),
	('TAURO/S NEGRO', '', 1, 0.00, 62),
	('TITAN/A NEGRO', '', 1, 0.00, 62),
	('TITAN/F NEGRO CON PIE', '', 1, 0.00, 62),
	('APOLO/L BLANCO', '', 1, 30.58, 62),
	('APOLO/S BLANCO', '', 1, 21.03, 62),
	('EL PULPITO 50G', '', 1, 0.00, 29),
	('FEBOS/L NEGRO', '', 1, 0.00, 62),
	('FEBOS/S BLANCO', '', 1, 0.00, 62),
	('FUENTE 12V 1MA', '', 1, 0.00, 52),
	('HIDROFUGO 2 KG', '', 1, 0.00, 64),
	('HIDROFUGO 5 KG', '', 1, 0.00, 64),
	('RIEL DIN 35X15', '', 1, 0.66, 40),
	('TAURO/L BLANCO', '', 1, 0.00, 62),
	('TAURO/S BLANCO', '', 1, 0.00, 62),
	('BUSCAPOLO CHICO', '', 1, 0.00, 52),
	('CRUCETA ZINCADA', '', 1, 0.00, 63),
	('EL PULPITO 120G', '', 1, 0.00, 29),
	('EL PULPITO 240G', '', 1, 0.00, 29),
	('EL PULPITO 400G', '', 1, 0.00, 29),
	('HIDROFUGO 10 KG', '', 1, 0.00, 64),
	('HIDROFUGO 24 KG', '', 1, 0.00, 64),
	('MENSULA LIVIANA', '', 1, 0.00, 16),
	('MIGNON DE CHAPA', '', 1, 0.00, 214),
	('TORNILLO CHICOS', '', 1, 451.52, 34),
	('TORNILLO GRANDE', '', 1, 0.00, 34),
	('WD-40 APLICADOR', '', 1, 0.00, 29),
	('AGUARRAS 1 LITRO', '', 1, 0.00, 64),
	('BASE AR111 NEGRO', '', 1, 0.00, 1),
	('BUSCAPOLO GRANDE', '', 1, 0.00, 52),
	('CLAVO CANAL 6 MM', '', 1, 0.00, 86),
	('CLAVO CANAL 8 MM', '', 1, 0.00, 86),
	('COLG 3 PZAS BCO*', '', 1, 0.00, 63),
	('COLG 3 PZAS NEG*', '', 1, 0.00, 63),
	('FASTIX NEGRO 25G', '', 1, 0.00, 29),
	('FRIDA BASE', 'PLATIL', 1, 0.00, 18),
	('TORNILLO MEDIANO', '', 1, 0.00, 34),
	('BAFLE 2 X', 'NEGRO-ROJO', 0, 52.29, 97),
	('BAFLE 2 X', 'NEGRO-ROJO', 1, 10.75, 115),
	('BAFLE 2 X', 'NEGRO-ROJO', 0, 0.00, 97),
	('BAFLE 2 X', 'NEGRO-ROJO', 1, 0.00, 115),
	('BAFLE 2 X', 'NEGRO-ROJO', 1, 222.50, 115),
	('BAFLE 2 X', 'NEGRO-ROJO', 1, 0.00, 115),
	('COMBINACION KALOP -  XD4F', '', 1, 0.00, 202),
	('EMBUTIDO FIJO E27', 'PINTADO', 1, 0.00, 1),
	('EXPANSOR MULTIUSO', '', 1, 55.94, 12),
	('FASTIX BLANCO 25G', '', 1, 2.91, 29),
	('PORTERO S/N', 'MARFIL', 1, 4.35, 14),
	('POXI-RAN POMO', '', 1, 0.00, 29),
	('POXI-RAN POMO', '', 1, 0.00, 29)
	
	select * from clientes
	select * from productos 
	 drop table provedores

	CREATE TABLE provedores (
  Prov_Id integer not null identity (1,1) primary  key,
  Prov_Nombre varchar(60) NOT NULL DEFAULT '0',
  ) ;
  
  INSERT INTO provedores (Prov_Nombre) VALUES
	('180º ILUMINACION - HLC SRL'),
	('180º ILUMINACION OFERTAS'),
	('ADM PRODUCTOS ELECTRICOS'),
	('AGRELO ILUMINACION'),
	('ANTHAY ELECTRONICA S.R.L.'),
	('ARGENJAB DE JUAN C. DESIMONE'),
	('ARTELUM S.A.'),
	('AUREA de Eduardo Rodriguez e Hijos'),
	('BAEL ILUMINACION S.A.'),
	('BEENE ELECTRICIDAD SRL'),
	('BIANCHILUZ DE NORBERTO FRANCISCO BIANCHI'),
	('BORNERAS'),
	('BRENGIS S.R.L.'),
	('CABLEDROP DE RODOLFO J. A. BADARACCO'),
	('CAMBRE I.C.Y F.S.A.'),
	('CAMIMPORT S.R.L.'),
	('CAMPBELL ILUMINACION'),
	('CANDIL ILUMINACION'),
	('CARILUX DE CARLOS JOSE BARTOLOTTA'),
	('CBA DISTRIBUICIONES S.R.L.'),
	('CECPLAS SUBTE'),
	('CENTILUX S.R.L.'),
	('CIOCCA PLAST SRL'),
	('CIOCCA PLAST SRL 1'),
	('CIVAL ILUMINACION DE MARIO CIVALLERO'),
	('CONECTAR SRL'),
	('DABOR ILUMINACION DE MYZ SRL'),
	('DANAK SRL'),
	('DISTRIBUIDORA DEL SUR S.R.L.'),
	('DOBLR GIRO'),
	('DON BELL ILUMINACION SRL'),
	('DOWEN PAGIO'),
	('DYL DE BETO MORESCHI'),
	('EICHLER S.A.'),
	('EKWAN S.A.'),
	('ELECTROMAR SRL'),
	('ELECTRONICA NICOM SA'),
	('EMDE S.A.'),
	('ERICCSON ROBERTO'),
	('ETA ELECTRO S.A.'),
	('FERROLUX DE JUAN CARLOS ERCOLI'),
	('FLEXITUB DE GIUSTINA RUBEN A.'),
	('FORLI DE PEDRO DANGELO E HIJOS S.R.L.'),
	('FW ILUMINACION'),
	('GB INGENIERIA ELECTRONICA'),
	('GC DE CARMELO GRECO'),
	('GENERAL ELECTRIC'),
	('ILUMINACION SAN NICOLAS SRL'),
	('ILUNOR '),
	('INDUSTRIAL LA SANTA MARIA S.R.L.'),
	('INDUSTRIAS MH S.R.L.'),
	('INDUSTRIAS SUR S.R.L.'),
	('INICIATIVAS NUEVAS'),
	('INTERLAMP S.A.'),
	('INTERELEC SA'),
	('IVANOV - CECILIA ANDREA CANTELORO'),
	('JELUZ S.A.C.I.F.I.A.'),
	('JOSE CAPOBIANCO S.R.L.'),
	('KELAND ESTABLECIMIENTO ELECTROTECNICO S.C.A.'),
	('L.M. SISTEMAS LUMINÍCOS S.A.'),
	('LA CASA DE LOS TERMINALES S.R.L.'),
	('LEDS GROUP DE CALABRESE GUSTAVO Y ENRIQUE S.H.'),
	('LUMIPACK SRL'),
	('MADERIN'),
	('MARCELO'),
	('MEGA PLAST S.R.L.'),
	('MELECTRIC S.A. - MOELLER'),
	('METALTUB S.A.I.C. Y F.'),
	('METALURGICA ALDO RODARO'),
	('METALURGICA SAN MIGUEL'),
	('MIG-MAVI'),
	('DIMAPE DISTRIBUIDORA'),
	('MONTELUZ S.R.L.'),
	('MONTERO S.A.'),
	('MP  LAMP'),
	('MRPLAST S.A.'),
	('MSB DE HUMBERTO MUSCIO'),
	('MUSI-KAL S.A.'),
	('NEVAR S.R.L.'),
	('NOLLMANN S.A.'),
	('NOVA ELECTRICITY S.A.'),
	('NOVALUCCE'),
	('NOVO-VENT'),
	('pantallas Artesanales'),
	('PINI GUILLERMO SRL'),
	('PLASTICOS CABRERA S.A.'),
	('PLASTIL S.R.L.'),
	('PROTEC ASOCIADOS SRL'),
	('RADIO NORTE'),
	('RODI´S'),
	('ROKER DE BARBURY COMPANY S.A.'),
	('SANTIAGO BERTONCELLO'),
	('SCHNEIDER ELECTRIC ARGENTINA SA.'),
	('SIEMENS'),
	('SINTECRIN'),
	('TECMYL S.A.'),
	('TELEMECANIQUE'),
	('TODO REDONDO'),
	('TOOL SHOP S.A.'),
	('TRANS LICH DE IOMMI SIMON EZEQUIEL')
	
	drop table ventas
	
	CREATE TABLE ventas (
  Ventas_Id integer NOT NULL identity (123560,1) PRIMARY KEY,
  Ventas_Fecha date NOT NULL,
  Ventas_CliId integer NOT NULL DEFAULT '0',
  Ventas_NroFactura integer NOT NULL DEFAULT '0',
  Ventas_Neto decimal(10,2) NOT NULL DEFAULT '0.00',
  Ventas_Iva decimal(10,2)  NOT NULL DEFAULT '0.00',
  Ventas_Total decimal(10,2)NOT NULL DEFAULT '0.00')
  
  INSERT INTO ventas (Ventas_Fecha, Ventas_CliId, Ventas_NroFactura, Ventas_Neto, Ventas_Iva, Ventas_Total) VALUES
	('2018-01-02', 1, 73290, 132.10, 27.74, 159.84),
	('2018-01-02', 1772, 73291, 3828.37, 803.96, 4632.33),
	('2018-01-02', 1, 73292, 37.18, 7.81, 44.99),
	('2018-01-02', 1, 73293, 52.04, 10.93, 62.97),
	('2018-01-02', 1, 73294, 158.30, 33.24, 191.54),
	('2018-01-02', 1, 21900, 95.37, 20.03, 115.40),
	('2018-01-02', 1, 21901, 198.30, 41.64, 239.94),
	('2018-01-02', 1, 73295, 37.02, 7.78, 44.80),
	('2018-01-02', 6464, 73296, 2855.45, 599.64, 3455.09),
	('2018-01-02', 6464, 21902, 8137.44, 1708.86, 9846.30),
	('2018-01-02', 1, 21904, 2229.02, 468.10, 2697.12),
	('2018-01-02', 1, 21905, 201.70, 42.36, 244.06),
	('2018-01-02', 265, 73297, 71.82, 15.08, 86.90),
	('2018-01-02', 136, 9673, 1223.72, 256.98, 1480.70),
	('2018-01-02', 1, 21906, 728.43, 152.97, 881.40),
	('2018-01-02', 1, 73298, 61.97, 13.01, 74.98),
	('2018-01-02', 1, 73299, 500.83, 105.17, 606.00),
	('2018-01-02', 1, 21907, 146.49, 30.76, 177.25),
	('2018-01-02', 1, 21908, 330.57, 69.42, 399.99),
	('2018-01-02', 270, 73300, 2457.26, 516.03, 2973.29),
	('2018-01-02', 1, 73301, 176.00, 36.96, 212.96),
	('2018-01-02', 1, 73302, 13.21, 2.78, 15.99),
	('2018-01-02', 1413, 9674, 316.00, 66.36, 382.36),
	('2018-01-02', 1, 21909, 433.42, 91.02, 524.44),
	('2018-01-02', 6490, 9675, 578.35, 121.45, 699.80),
	('2018-01-02', 6381, 73303, 76.56, 16.08, 92.64),
	('2018-01-02', 1, 21910, 931.07, 195.52, 1126.59),
	('2018-01-02', 74, 73304, 557.45, 117.06, 674.51),
	('2018-01-02', 6381, 73306, 9.05, 1.90, 10.95),
	('2018-01-02', 1772, 73307, 219.79, 46.15, 265.94),
	('2018-01-02', 1, 21911, 447.37, 93.95, 541.32),
	('2018-01-02', 1, 73308, 109.94, 23.09, 133.03),
	('2018-01-02', 1, 21912, 198.31, 41.65, 239.96),
	('2018-01-02', 1, 73309, 206.40, 43.34, 249.75),
	('2018-01-02', 1, 73310, 91.21, 19.15, 110.36),
	('2018-01-02', 1, 73311, 2231.88, 468.69, 2700.57),
	('2018-01-02', 1, 73312, 648.83, 136.25, 785.08),
	('2018-01-02', 52, 9676, 2183.86, 458.61, 2642.47),
	('2018-01-02', 6491, 73313, 269.45, 56.58, 326.03),
	('2018-01-02', 1, 73314, 122.10, 25.64, 147.74),
	('2018-01-02', 1, 73315, 49.57, 10.41, 59.98),
	('2018-01-02', 1, 73316, 491.60, 103.24, 594.83),
	('2018-01-02', 275, 9677, 384.41, 80.72, 465.13),
	('2018-01-02', 1, 21913, 491.59, 103.24, 594.83),
	('2018-01-02', 16, 73319, 6546.99, 1374.87, 7921.86),
	('2018-01-02', 6075, 73317, 705.26, 148.11, 853.37),
	('2018-01-02', 265, 73318, 296.87, 62.34, 359.21),
	('2018-01-02', 1, 21914, 48.68, 10.22, 58.90),
	('2018-01-02', 2008, 73320, 338.91, 71.17, 410.08),
	('2018-01-02', 1, 21915, 66.11, 13.88, 79.99),
	('2018-01-02', 1, 73323, 208.55, 43.80, 252.35),
	('2018-01-02', 16, 73321, 1027.70, 215.82, 1243.52),
	('2018-01-02', 1, 73324, 43.71, 9.18, 52.89),
	('2018-01-02', 16, 73325, 195.88, 41.14, 237.02),
	('2018-01-02', 1, 73327, 493.53, 103.64, 597.17),
	('2018-01-02', 6039, 73328, 168.65, 35.42, 204.07),
	('2018-01-02', 2317, 73329, 72.44, 15.21, 87.65),
	('2018-01-02', 1, 21916, 470.01, 98.70, 568.71),
	('2018-01-02', 6180, 73330, 165.25, 34.70, 199.95),
	('2018-01-02', 1772, 73331, 35.54, 7.46, 43.00),
	('2018-01-02', 1, 21917, 309.93, 65.09, 375.02),
	('2018-01-02', 608, 9678, 3170.79, 665.86, 3836.65),
	('2018-01-02', 1, 73332, 49.58, 10.41, 59.99),
	('2018-01-02', 1, 73333, 24.79, 5.20, 29.99),
	('2018-01-02', 1, 73334, 111.95, 23.51, 135.46),
	('2018-01-02', 1, 73335, 17.62, 3.70, 21.32),
	('2018-01-02', 1, 73336, 54.88, 11.52, 66.40),
	('2018-01-02', 455, 73337, 28.31, 5.94, 34.25),
	('2018-01-02', 1, 73338, 95.26, 20.00, 115.26),
	('2018-01-02', 1, 73339, 100.56, 21.12, 121.68),
	('2018-01-02', 1, 73340, 18.12, 3.81, 21.93),
	('2018-01-02', 561, 73342, 9713.10, 2039.75, 11752.85),
	('2018-01-02', 1, 73341, 153.76, 32.29, 186.05),
	('2018-01-02', 1661, 73343, 301.75, 63.37, 365.12),
	('2018-01-02', 561, 21918, 338.76, 71.14, 409.90),
	('2018-01-02', 1, 21919, 196.67, 41.30, 237.97),
	('2018-01-02', 687, 9679, 176.85, 37.14, 213.99),
	('2018-01-02', 1, 73344, 13.19, 2.77, 15.96),
	('2018-01-02', 52, 9680, 332.44, 69.81, 402.25),
	('2018-01-02', 1, 73345, 39.26, 8.24, 47.50),
	('2018-01-02', 1469, 73347, 254.55, 53.45, 308.00),
	('2018-01-02', 575, 73349, 22.71, 4.77, 27.48),
	('2018-01-02', 1, 73346, 1599.58, 335.91, 1935.49),
	('2018-01-02', 275, 73350, 588.02, 123.48, 711.50)
	drop table ventas_detalle

	CREATE TABLE ventas_detalle (
  VD_Id integer NOT NULL identity (123560,1) PRIMARY KEY,
  VD_VentasId integer NOT NULL DEFAULT '0',
  VD_ProdId integer NOT NULL DEFAULT '0',
  VD_Cantidad integer NOT NULL DEFAULT '0',
  VD_Precio decimal(10,2) NOT NULL DEFAULT '0.00',
  VD_Costo decimal(10,2)  NOT NULL DEFAULT '0.00',
  ) 
  
  INSERT INTO ventas_detalle (VD_VentasId, VD_ProdId, VD_Cantidad, VD_Precio, VD_Costo) VALUES
	(123752, 10502, 1, 39.99, 19.58),
	(123752, 10501, 1, 39.99, 19.58),
	(123752, 3222, 1, 186.16, 103.42),
	(123752, 9748, 1, 274.81, 152.67),
	(123752, 9753, 10, 0.86, 0.38),
	(123752, 49, 10, 0.30, 0.15),
	(123753, 2724, 2, 16.68, 9.53),
	(123753, 4150, 1, 70.62, 40.35),
	(123753, 1128, 1, 159.27, 91.01),
	(123754, 10979, 1, 200.52, 100.26),
	(123754, 1167, 3, 6.86, 4.16),
	(123755, 743, 60, 33.02, 20.01),
	(123755, 9882, 3, 70.50, 41.47),
	(123755, 1012, 1, 159.27, 91.01),
	(123755, 1128, 3, 159.27, 91.01),
	(123755, 1129, 1, 159.27, 91.01),
	(123755, 2045, 1, 623.39, 356.22),
	(123755, 4322, 1, 1325.09, 736.16),
	(123755, 10105, 1, 587.48, 345.58),
	(123755, 8575, 50, 0.78, 0.39),
	(123755, 49, 50, 0.30, 0.15),
	(123755, 8441, 2, 21.04, 10.52),
	(123755, 2169, 1, 226.66, 133.95),
	(123755, 2951, 2, 11.99, 6.85),
	(123755, 1633, 3, 17.01, 9.72),
	(123755, 656, 2, 2.27, 1.30),
	(123755, 2724, 1, 16.68, 9.53),
	(123755, 5312, 1, 36.13, 21.25),
	(123755, 10502, 1, 39.99, 19.58),
	(123756, 743, 60, 33.02, 20.01),
	(123756, 9882, 3, 70.50, 41.47),
	(123756, 1012, 1, 159.27, 91.01),
	(123756, 1128, 3, 159.27, 91.01),
	(123756, 1129, 1, 159.27, 91.01),
	(123756, 2045, 1, 623.39, 356.22),
	(123756, 4322, 1, 1325.09, 736.16),
	(123756, 10105, 1, 587.48, 345.58),
	(123756, 8575, 50, 0.78, 0.39),
	(123756, 49, 50, 0.30, 0.15),
	(123756, 8441, 2, 21.04, 10.52),
	(123756, 2169, 1, 226.66, 133.95),
	(123756, 2951, 2, 11.99, 6.85),
	(123756, 1633, 3, 17.01, 9.72),
	(123756, 656, 2, 2.27, 1.30),
	(123756, 2724, 1, 16.68, 9.53),
	(123756, 5312, 1, 36.13, 21.25),
	(123756, 10502, 1, 39.99, 19.58),
	(123756, 9454, 1, 61.88, 36.40),
	(123757, 4154, 2, 22.08, 11.56),
	(123758, 3997, 1, 9.80, 5.60),
	(123758, 3123, 1, 10.74, 6.14),
	(123758, 656, 2, 2.27, 1.30),
	(123758, 1633, 1, 17.01, 9.72),
	(123758, 11034, 1, 4.36, 2.18),
	(123759, 65535, 1, 4.64, 0.00),
	(123760, 6898, 6, 15.43, 9.35),
	(123760, 2419, 1, 45.02, 22.51),
	(123760, 3253, 1, 30.68, 15.34),
	(123761, 6921, 2, 31.04, 17.74),
	(123762, 3061, 1, 67.48, 38.56),
	(123762, 1633, 1, 17.01, 9.72),
	(123762, 656, 1, 2.27, 1.30),
	(123763, 10930, 1, 300.69, 137.30),
	(123763, 5063, 1, 756.35, 420.20),
	(123764, 65535, 1, 12.58, 0.00),
	(123765, 10304, 1, 193.28, 107.38),
	(123766, 2511, 1, 466.00, 186.40),
	(123767, 8042, 3, 15.68, 7.84),
	(123767, 11034, 1, 4.36, 2.18),
	(123767, 1489, 1, 6.15, 3.62),
	(123767, 3031, 1, 200.03, 111.13),
	(123768, 5900, 1, 230.66, 115.33),
	(123768, 706, 1, 81.29, 47.81),
	(123768, 4613, 1, 389.27, 228.98),
	(123768, 10506, 1, 79.99, 33.82),
	(123768, 10502, 1, 39.99, 19.58),
	(123769, 9269, 1, 183.48, 91.74),
	(123770, 10747, 4, 21.68, 7.08),
	(123771, 9454, 1, 61.88, 36.40),
	(123772, 974, 1, 52.89, 27.78),
	(123773, 6898, 10, 15.43, 9.35),
	(123773, 2419, 1, 45.02, 22.51),
	(123773, 3253, 1, 30.68, 15.34),
	(123773, 10720, 3, 7.48, 3.74),
	(123774, 8782, 2, 22.40, 11.09),
	(123774, 10506, 1, 79.99, 33.82),
	(123775, 706, 1, 81.29, 47.81),
	(123775, 4613, 1, 389.27, 228.98),
	(123776, 3713, 1, 477.46, 280.86),
	(123777, 2419, 1, 45.02, 22.51),
	(123777, 3253, 1, 30.68, 15.34),
	(123777, 760, 5, 24.90, 15.09),
	(123778, 2724, 4, 16.68, 9.53),
	(123778, 10368, 1, 387.80, 221.60),
	(123779, 5706, 1, 470.30, 261.28),
	(123779, 10506, 1, 79.99, 33.82),
	(123780, 10274, 1, 523.97, 279.45),
	(123780, 10273, 1, 394.98, 201.16),
	(123780, 897, 10, 9.88, 5.99),
	(123780, 6921, 3, 31.04, 17.74)
	
	select * from clientes
	select * from productos
	select * from proveedores
	select * from ventas
	select * from ventas_detalle

	update productos  set  Prod_Status = 0 
	update productos set Prod_Status=1 where Prod_Precio>0;

select * from productos where Prod_ProvId=1

select * from provedores where provedores.Prov_Nombre like'180%'
--precios de los procutos en 100 cuando los proveedores inicion en 180
update productos set productos.Prod_Precio=100 from productos,provedores where provedores.Prov_Nombre like'180%'

update productos set Prod_Precio=100 from productos inner join provedores on productos.Prod_Id= provedores.Prov_Id where provedores.Prov_Nombre like '180%'
 
update productos set Prod_Precio=100 from productos,provedores where productos.Prod_Id=provedores.Prov_Id and provedores.Prov_Nombre like '180%'



--viernes 15 nov
select * from productos where prod_status=1
select * from ventas_detalle

--los productos cuyo prod_id<50 =1

update productos set Prod_Status=1 where Prod_Id<50 
select * from ventas_detalle
--productos cuyo id<50
select * from ventas_detalle where VD_ProdId<50
--borrar productos ventas_detalle los cuales tengan status 1 en producto
delete ventas_detalle  from ventas_detalle,productos where ventas_detalle.VD_ProdId=productos.Prod_Id and productos.Prod_Status=1


select top 5 * from ventas_detalle
select top 5 * from ventas
select top 5 * from productos
select Ventas_Fecha,ventas_nrofactura,ventas_total from ventas

select vd_prodid,vd_cantidad,vd_precio from ventas_detalle where VD_Precio>0
--
select ventas_fecha,ventas_total from ventas group by Ventas_Total
select sum(ventas_total)as total_venta ,ventas_fecha from ventas group by Ventas_Fecha

--que separe como queda por mes y año
select year(ventas_fecha) as año ,MONTH(ventas_fecha) as mes,sum(ventas_total) as venta from ventas group by Year(Ventas_Fecha),MONTH(ventas_fecha)

select  top 5 * from ventas_detalle

select  top 5 * from ventas


select vd_prodid as producto, sum(vd_precio *vd_cantidad) as total  from ventas_detalle group by VD_ProdId

  INSERT INTO ventas (Ventas_Fecha, Ventas_CliId, Ventas_NroFactura, Ventas_Neto, Ventas_Iva, Ventas_Total) VALUES
  
	('2019-11-04', 1, 73290, 132.10, 27.74, 159.84)
	('2018-05-11', 1, 73290, 132.10, 27.74, 159.84),
	('2018-07-22', 1772, 73291, 3828.37, 803.96, 4632.33),
	('2017-09-08', 1, 73292, 37.18, 7.81, 44.99),
	('2018-03-04', 1, 73293, 52.04, 10.93, 62.97),
	('2019-06-19', 1, 73294, 158.30, 33.24, 191.54)

	--21 noviembre
	
select top 5 * from ventas
select top 5* from ventas_detalle
select top 1 * from productos

select top 1 * from provedores


select ventas.ventas_fecha as fecha,
ventas.ventas_nrofactura as numero_de_factura,
clientes.cli_id as cliente_id,
clientes.Cli_RazonSocial as cliente_razon_social,
ventas.Ventas_Total as ventas_total
 from ventas,clientes 
 where clientes.Cli_Id=ventas.Ventas_CliId


 select ventas.Ventas_Fecha as fecha,
 ventas.Ventas_NroFactura as numero_factura,
 ventas_detalle.VD_ProdId as id_producto,
 productos.Prod_Descripcion as descripcion_producto,
 ventas_detalle.VD_Cantidad as cantidad,
 ventas_detalle.VD_Precio as unitario,
 productos.Prod_ProvId as codigo_proveedor,
 provedores.prov_nombre as nombre_proveedor,
 (ventas_detalle.VD_Cantidad * ventas_detalle.VD_Precio) as parcial
 from ventas, productos,ventas_detalle,provedores
 where ventas_detalle.VD_VentasId=ventas.Ventas_Id and 
 ventas_detalle.VD_ProdId=productos.Prod_ProvId and
 productos.Prod_ProvId=provedores.Prov_Id

 select top 1 * from ventas
 select top 1 * from ventas_detalle
 select top 1 * from productos
 select top 1 * from provedores

 select * from ventas,ventas_detalle where  ventas.Ventas_Id=ventas_detalle.VD_Id
 select * from productos where Prod_Descripcion like 'energizer%' 

  select provedores.Prov_Nombre from productos,provedores where Prod_Descripcion like '%led%'
    or  provedores.Prov_Nombre like '%led%' and productos.Prod_ProvId = provedores.Prov_Id

 select provedores.Prov_Nombre,productos.Prod_Descripcion from productos,provedores whereProd_Descripcion like '%led%'
    or  provedores.Prov_Nombre like '%led%' and productos.Prod_ProvId = provedores.Prov_Id

	select provedores.Prov_Nombre,productos.Prod_Descripcion from productos,provedores where productos.Prod_Id = provedores.Prov_Id
	 and provedores.Prov_Nombre like '%led%' or productos.Prod_Descripcion like '%led%' 


	select prod_id as codigo,
prod_descripcion as descripcion
from productos 
where prod_id in (select vd_prodid from ventas_detalle)  and
prod_descripcion like '%tarugos%'