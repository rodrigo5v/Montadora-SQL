INSERT INTO package(line)
VALUES
	('Basic'),
	('Confort'),
	('High'),
	('Sport'),
	('Family');

INSERT INTO car(model,year_model,line_id)
VALUES
	('Civic Super','2021-01-01',4),('Celta','2021-01-01',1),
	('Saveiro Cross','2017-01-01',2),('Hilux','2020-01-01',2),
	('Corsa','1996-01-01',4),('Fiat Strada','2019-01-01',3),
	('Fiat Mobi','2015-01-01',5),('Porsche 718 Cayman S','2017-01-01',5),
	('Voyage','2020-01-01',2),('Fusca','1990-01-01',1),
	('Jeep Compass','2018-01-01',3),('HB20','2018-01-01',3),
	('Porsche Macan','2017-01-01',5),('Porsche Panamera 4 Executive','2020-01-01',2),	
	('Fiat Toro','2016-01-01',3),('Onix','2013-01-01',5),
	('Opala SS','1977-01-01',4),('Amarok','2019-01-01',3),
	('T-Cross','2017-01-01',1),('Honda Civic','2015-01-01',2),
	('Renault Kwid','2014-01-01',2),('Zafira','2012-01-01',5),
	('Polo','2020-01-01',4),('Gol G4','2005-01-01',5),
	('Jeep Compass','2018-01-01',3),('HB20','2018-01-01',3),
	('Virtus','2016-01-01',5),('Opala Diplomata','1984-01-01',1),
	('Fox','2014-01-01',1),('Tiguan','2013-01-01',2),
	('Fiat Argo','2021-01-01',3),('Hyundai Tucson','2018-01-01',5),
	('Fiat Doblô','2019-01-01',5),('Ford Ecosport','2020-01-01',5);

INSERT INTO component(name)
VALUES
	('Central multimída'),('Media Receiver'),
	('Sensor de Ré'),('Camêra de Ré'),
	('Vidro elétrico');
	
INSERT INTO sub_component(name,qty)
VALUES
	('Amplificador de Som',100),('Modulo Stetsom',350),
	('Alto falante',500),('Display LCD',1000),
	('Processador', 211),('Entrada de CD',12),
	('Receptor de rádio', 37), ('Receptor Bluetooth',6),
	('Visor LCD', 69), ('Sensor de distância', 72),
	('Câmera',928), ('Entrada USB',45),
	('Motor elétrico',234),('Engrenagens',56),
	('Módulo',333);

INSERT INTO provider(name,sub_id)
VALUES
	('JOSÉ LTDA',5),('JOSÉ LTDA',15),('JOSÉ LTDA',13),
	('Engreplus',14),('Observe',11),('Irmão das câmeras SA',11),
	('Stetsom SA',2),('Pioneer',3),('Taramps',1),
	('Filipop',4),('Filipop',9),('Dell',6),
	('Sensitive CORP ',10),('BASE SA',8),('BASE SA',7),
	('BASE SA',12);
	
INSERT INTO component_assembly(sub_id,component_id,qty_sub)
VALUES
	(1,1,1),(2,1,1),(4,1,1),(3,1,4),(5,1,1),(6,1,1),(7,1,1),(8,1,1),(12,1,1),
	(1,2,1),(2,2,1),(3,2,4),(9,2,1),(6,2,1),(7,2,1),(5,2,1),
	(9,3,1),(10,3,3),(5,3,1),
	(11,4,1),
	(15,5,7),(14,5,4),(13,5,1);

