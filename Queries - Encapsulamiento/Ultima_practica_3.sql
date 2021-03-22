USE sakila;
/*3) Cree las ciudades de sus abuelos y familiares en el interior en city.
Cree 20 de su familiares en customer (incluye direccion).
Cree 10 peliculas (inventario, store, actores), y creee unos 50 pagos y rentas de las mismas. 
Ultice peliculas recientes y que le gusten a usted y su familia. 
Muestre en un view toda la data insertada en el contexto de la renta.*/ 

/*CIUDADES INSERTADAS*/ 
INSERT INTO city
VALUES
(601, 'Mao',27,'2020-10-04 17:52:39'),
(603, 'Santo Domingo',27,'2020-10-04 17:52:39'),
(602, 'Puerto Plata',27,'2020-10-04 17:52:39');

SELECT * FROM city where country_id = 27;


/*TOTAL DE DIRECCIONES INSERTADAS*/
 
INSERT INTO address
(`address_id`,`address`,`address2`,`district`,`city_id`,`postal_code`,`phone`,`location`,`last_update`)
VALUES
(606,'Calle G',null,'Nacional',603,62558,809-999-9999,GeomFromText('POINT(18.517717 -69.876990)'),'2020-10-04 15:15:15.59'),
(607,'Calle F',null,'Nacional',603,62558,809-111-9999,GeomFromText( ' POINT(23.5 44.8) ' ),'2020-10-04 15:15:15.59'),
(608,'Quisquella',null,'Valverde',601,62558,809-111-9999,GeomFromText( ' POINT(255 44.8) ' ),'2020-10-04 15:15:15.59'),
(609,'Calle Musaenda',null,'San Felipe',602,62558,809-111-9999,GeomFromText( ' POINT(900 44.8) ' ),'2020-10-04 15:15:15.59'),
(610,'Calle del Sol',null,'Caballeros',460,62558,809-111-9999,GeomFromText( ' POINT(540 55.8) ' ),'2020-10-04 15:15:15.59');

SELECT * FROM address where address_id > 605;


/*TOTAL (20) CUSTOMERS*/
INSERT INTO customer 
(customer_id, store_id, first_name, last_name, email, address_id, active, create_date, last_update)
values 
(600, 1, 'Edwin', 'Roman', 'Romanseberino@gmail.com', 606, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(601, 1, 'Alberto', 'Roman', 'Romans0001@gmail.com', 609, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(602, 1, 'Bryan', 'Valdez', 'Bryes@gmail.com', 606, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(603, 1, 'Nadia', 'Francisco', 'Nadi@gmail.com', 601, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(604, 1, 'Andrea', 'Seberino', 'Andra21@gmail.com', 601, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(605, 1, 'Jerli', 'Seberino', 'NGKJ21@gmail.com', 601, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(606, 1, 'Merlyn', 'Gonzalez', 'Merla@gmail.com', 601, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(607, 1, 'Joan', 'Roman', 'Joan36@gmail.com', 601, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(608, 1, 'Susan', 'Gill', 'Gill@gmail.com', 607, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(609, 1, 'Elena', 'Gonzalez', 'Elena@gmail.com', 609, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(610, 1, 'Adolfo', 'Roman', 'Adold@gmail.com', 609, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(611, 2, 'Yamis', 'Roman', 'Yamirus@gmail.com', 610, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(612, 2, 'Jose', 'Roman', 'Dolfito@gmail.com', 610, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(613, 2, 'Gabis', 'Santana', 'Gbi@gmail.com', 606, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(614, 2, 'Denias', 'Perez', 'Deania@gmail.com', 606, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(615, 2, 'Maria', 'Santana', 'Maraitiktok@gmail.com', 606, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(616, 2, 'Fleysi', 'Roa', 'Fly@gmail.com', 607, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(617, 2, 'Jonny', 'Roman', 'RomJon@gmail.com', 609, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(618, 2, 'Yetty', 'Peña', 'Yww2@gmail.com', 609, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(619, 2, 'Dionisio', 'Castillo', 'CaDiony@gmail.com', 609, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59'),
(620, 2, 'Ramona', 'Del Orbe', 'Dorbe@gmail.com', 606, 1, '2020-10-04 15:15:15.59', '2020-10-05 00:00:00.59');

SELECT * FROM customer WHERE customer_id > 599;



/*TOTAL 10 PELICULAS*/

INSERT INTO film (film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update)
VALUES
(1001,'El Lobo De Wall Street','Jordan Belfort es un ambicioso corredor de bolsa que asciende a niveles enormes de riqueza, pero sus métodos no son del todo legales.',
2013,7,1,8,8.02,259,19.99,'PG','Commentaries,Behind the Scenes','2020-10-04 15:20:31'),
(1002,'El Club de la Pelea','Un insomne hombre y un resbaladizo vendedor de jabones canalizan sus instintos de agresión masculina',
1999,7,2,8,8.88,259,13.99,'NC-17','Deleted Scenes','2020-10-04 15:20:31'),
(1003,'Matrix','Keanu Reeves protagoniza una aventura de ciencia-ficción explosiva sobre un hombre que llega a creer que su mundo cotidiano es el producto de una matriz digital dirigido por ordenador.',
1999,7,1,8,9.00,259,15.00,'G','Trailers','2020-10-04 15:20:31'),
(1004,'Terminator 2: El Juicio Final','La odisea de Sarah Connor por proteger a su hijo John, futuro líder de la resistencia de los humanos',
1991,7,1,8,10.00,259,18.07,'PG','Trailers,Behind the Scenes','2020-10-04 15:20:31'),
(1005,'Kickboxer','Cuando el campeón americano de kickboxing queda inválido al enfrentarse a un despiadado campeón tailandés, su hermano jura vengarse.',
1989,7,2,8,6.88,259,10.00,'PG-13','Trailers,Behind the Scenes','2020-10-04 15:20:31'),
(1006,'Rambo 4: Regreso al Infierno','John Rambo lleva una solitaria y apacible vida en la selva. Todo cambia cuando un grupo de misioneros católicos le pide que les sirva de guía hasta la frontera con Birmania para suministrar ',
2008,7,2,8,9.88,259,13.99,'PG-13','Trailers,Behind the Scenes','2020-10-04 15:20:31'),
(1007,'Daño colateral','Arnold Schwarzenegger interpreta a un hombre en una imparable misión de venganza, sin nada que perder, después de que su familia se convierte en daño colateral.',
2002,7,2,8,5.55,259,05.99,'PG','Trailers,Behind the Scenes','2020-10-04 15:20:31'),
(1008,'China Salesman','Yan Jian un joven ingeniero chino se ofrece para ir al norte de Africa y ayudar a la compañia para la que trabaja a ganar una competencia. El espía francés Michael tambien intenta ganarla para controlar los grandes recursos minerales de Africa. Michael contrato al mejor mercenario, Lauder y un ex general Kabbah para ayudarlo. Yan ha descubierto su conspiracion y es el unico que puede detenerlosa',
2017,7,null,8,8.88,259,13.99,'NC-17','Trailers,Behind the Scenes','2020-10-04 15:20:31'),
(1009,'Máxima condena','Un insomne hombre canalizan sus instintos de agresión masculina',
2012,7,2,8,8.88,259,13.99,'G','Commentaries,Deleted Scenes','2020-10-04 15:20:31'),
(1010,'Hombre Peligroso','Tras cumplir seis años en prisión por un crimen que no había cometido, Shane Daniels es absuelto con una disculpa del Estado de Arizona, Shane es testigo del asesinato de un policía. Miembros de la mafia rusa y policías del Estado son asesinados, quedando una chica y una maleta de dinero, Shane debe luchar a su manera en un país corrupto y asegurarse de que la chica salga con vida',
2010,7,2,8,7.60,259,13.99,'PG','Trailers','2020-10-04 15:20:31')
;

Select * from film where film_id > 1000;


/*INVENTARIOS INSERTADOS 50*/


INSERT INTO inventory
(`inventory_id`,`film_id`,`store_id`,`last_update`)
VALUES

(4582,1001,3,'2020-10-08 09:43:00'),
(4583,1002,3,'2020-10-08 09:43:00'),
(4584,1003,3,'2020-10-08 09:43:00'),
(4585,1004,4,'2020-10-08 09:43:00'),
(4586,1005,3,'2020-10-08 09:43:00'),
(4587,1006,4,'2020-10-08 09:43:00'),
(4588,1007,4,'2020-10-08 09:43:00'),
(4589,1008,3,'2020-10-08 09:43:00'),
(4590,1009,4,'2020-10-08 09:43:00'),
(4591,1010,4,'2020-10-08 09:43:00'), 


(4592,1001,4,'2020-10-08 09:43:00'),
(4593,1002,4,'2020-10-08 09:43:00'),
(4594,1003,4,'2020-10-08 09:43:00'),
(4595,1004,3,'2020-10-08 09:43:00'),
(4596,1005,3,'2020-10-08 09:43:00'),
(4597,1006,4,'2020-10-08 09:43:00'),
(4598,1007,3,'2020-10-08 09:43:00'),
(4599,1008,4,'2020-10-08 09:43:00'),
(4600,1009,3,'2020-10-08 09:43:00'),
(4601,1010,3,'2020-10-08 09:43:00'),

(4602,1001,3,'2020-10-08 09:43:00'),
(4603,1002,4,'2020-10-08 09:43:00'),
(4604,1003,3,'2020-10-08 09:43:00'),
(4605,1004,4,'2020-10-08 09:43:00'),
(4606,1005,3,'2020-10-08 09:43:00'),
(4607,1006,4,'2020-10-08 09:43:00'),
(4608,1007,3,'2020-10-08 09:43:00'),
(4609,1008,4,'2020-10-08 09:43:00'),
(4610,1009,3,'2020-10-08 09:43:00'),
(4611,1010,4,'2020-10-08 09:43:00'),

(4612,1001,4,'2020-10-08 09:43:00'),
(4613,1002,4,'2020-10-08 09:43:00'),
(4614,1003,4,'2020-10-08 09:43:00'),
(4615,1004,3,'2020-10-08 09:43:00'),
(4616,1005,3,'2020-10-08 09:43:00'),
(4617,1006,3,'2020-10-08 09:43:00'),
(4618,1007,4,'2020-10-08 09:43:00'),
(4619,1008,4,'2020-10-08 09:43:00'),
(4620,1009,4,'2020-10-08 09:43:00'),
(4621,1010,3,'2020-10-08 09:43:00'),

(4622,1001,3,'2020-10-08 09:43:00'),
(4623,1002,3,'2020-10-08 09:43:00'),
(4624,1003,3,'2020-10-08 09:43:00'),
(4625,1004,3,'2020-10-08 09:43:00'),
(4626,1005,4,'2020-10-08 09:43:00'),
(4627,1006,4,'2020-10-08 09:43:00'),
(4628,1007,4,'2020-10-08 09:43:00'),
(4629,1008,4,'2020-10-08 09:43:00'),
(4630,1009,3,'2020-10-08 09:43:00'),
(4631,1010,4,'2020-10-08 09:43:00');

SELECT * 
FROM inventory 
WHERE inventory_id > 4581;




/*Actores de las Peliculas*/    
    
INSERT INTO actor
VALUES 
(201,'Leonardo','DiCaprio','2020-10-04 19:48:00'),
(202,'Jonah','Hill','2020-10-04 19:48:00'),
(203,'Matthew','McConaughey','2020-10-04 19:48:00'),
(204,'Andi','Carnick','2020-10-04 19:48:00'),
(205,'Lou','Beatty Jr.','2020-10-04 19:48:00'),
(206,'Hugo','Weaving','2020-10-04 19:48:00'),
(207,'Arnold','Schwarzenegger','2020-10-04 19:48:00'),
(208,'Jean-Claude','Van Damme','2020-10-04 19:48:00'),
(209,'Matthew ','Marsden','2020-10-04 19:48:00'),
(210,'Matthew ','Marsden','2020-10-04 19:48:00')	 	
;

/*Relación de Actores de las Peliculas*/      
INSERT INTO film_actor
VALUES
(201,1001,'2020-10-04 19:48:00'),
(202,1001,'2020-10-04 19:48:00'),
(203,1002,'2020-10-04 19:48:00'),
(204,1002,'2020-10-04 19:48:00'),
(205,1003,'2020-10-04 19:48:00'),
(206,1004,'2020-10-04 19:48:00'),
(207,1004,'2020-10-04 19:48:00'),
(207,1005,'2020-10-04 19:48:00'),
(208,1006,'2020-10-04 19:48:00'),
(209,1007,'2020-10-04 19:48:00'),
(210,1008,'2020-10-04 19:48:00'),
(207,1009,'2020-10-04 19:48:00'),
(201,1010,'2020-10-04 19:48:00')
;

 
/* TOTAL (50) Insertar rentas*/
INSERT INTO rental
(`rental_id`,`rental_date`,`inventory_id`,`customer_id`,`return_date`,`staff_id`,`last_update`)
VALUES
(16050,'2020-10-08 09:43:00',4582,600,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16051,'2020-10-08 09:43:00',4583,601,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16052,'2020-10-08 09:43:00',4584,602,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16053,'2020-10-08 09:43:00',4585,603,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16054,'2020-10-08 09:43:00',4586,604,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16055,'2020-10-08 09:43:00',4588,605,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16056,'2020-10-08 09:43:00',4587,606,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16057,'2020-10-08 09:43:00',4589,607,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16058,'2020-10-08 09:43:00',4590,608,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16059,'2020-10-08 09:43:00',4591,609,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),

(16060,'2020-10-08 09:43:00',4592,600,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16061,'2020-10-08 09:43:00',4593,601,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16062,'2020-10-08 09:43:00',4594,602,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16063,'2020-10-08 09:43:00',4595,603,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16064,'2020-10-08 09:43:00',4596,604,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16065,'2020-10-08 09:43:00',4597,605,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16066,'2020-10-08 09:43:00',4598,606,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16067,'2020-10-08 09:43:00',4599,607,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16068,'2020-10-08 09:43:00',4600,608,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16069,'2020-10-08 09:43:00',4601,609,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),

(16070,'2020-10-08 09:43:00',4602,600,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16071,'2020-10-08 09:43:00',4603,601,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16072,'2020-10-08 09:43:00',4604,602,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16073,'2020-10-08 09:43:00',4605,603,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16074,'2020-10-08 09:43:00',4606,604,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16075,'2020-10-08 09:43:00',4607,605,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16076,'2020-10-08 09:43:00',4608,606,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16077,'2020-10-08 09:43:00',4609,607,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16078,'2020-10-08 09:43:00',4610,608,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16079,'2020-10-08 09:43:00',4611,609,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),


(16080,'2020-10-08 09:43:00',4612,600,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16081,'2020-10-08 09:43:00',4613,601,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16082,'2020-10-08 09:43:00',4614,602,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16083,'2020-10-08 09:43:00',4615,603,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16084,'2020-10-08 09:43:00',4616,604,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16085,'2020-10-08 09:43:00',4617,605,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16086,'2020-10-08 09:43:00',4618,606,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16087,'2020-10-08 09:43:00',4619,607,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16088,'2020-10-08 09:43:00',4620,608,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16089,'2020-10-08 09:43:00',4621,609,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),


(16090,'2020-10-08 09:43:00',4622,600,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16091,'2020-10-08 09:43:00',4623,601,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16092,'2020-10-08 09:43:00',4624,602,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16093,'2020-10-08 09:43:00',4625,603,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16094,'2020-10-08 09:43:00',4626,604,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16095,'2020-10-08 09:43:00',4627,605,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16096,'2020-10-08 09:43:00',4628,606,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16097,'2020-10-08 09:43:00',4629,607,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30'),
(16098,'2020-10-08 09:43:00',4630,608,'2020-10-10 10:00:30',3,'2020-10-10 10:00:30'),
(16099,'2020-10-08 09:43:00',4631,609,'2020-10-10 10:00:30',4,'2020-10-10 10:00:30');

 SELECT *
 FROM rental
 where rental_id > (16050 - 1);
 
 
 
 
/* TOTAL (50) Insertar pagos*/

INSERT INTO payment
(`payment_id`,`customer_id`,`staff_id`,`rental_id`,`amount`,`payment_date`,`last_update`)
VALUES
(16050, 600,3,16050,9.00,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16051,601,3,16052,9.00,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16052,602,4,16053,9.00,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16053,603,3,16053,9.00,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16054,604,4,16054,4.77,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16055,605,3,16055,4.77,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16056,606,4,16056,9.00,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16057,607,3,16057,4.77,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16058,608,4,16058,4.77,'2020-10-08 09:43:00','2020-10-10 10:00:30'),
(16059,609,4,16059,9.00,'2020-10-08 09:43:00','2020-10-10 10:00:30'),

(16060,600,4,16060,4.22,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16061,601,4,16061,19.22,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16062,602,3,16062,7.32,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16063,603,4,16063,7.32,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16064,604,3,16064,19.22,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16065,605,4,16065,7.32,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16066,606,3,16066,7.32,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16067,607,4,16067,19.22,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16068,608,3,16068,19.22,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16069,609,3,16069,19.22,'2020-10-10 10:00:30','2020-10-10 10:00:30'),

(16070,600,4,16070,6.46,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16071,601,4,16071,6.46,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16072,602,3,16072,6.46,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16073,603,4,16073,4.46,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16074,604,3,16074,6.46,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16075,605,4,16075,2.46,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16076,606,3,16076,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16077,607,4,16077,4.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16078,608,3,16078,5.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16079,609,3,16079,8.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),


(16080,600,4,16080,3.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16081,601,4,16081,9.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16082,602,3,16082,3.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16083,603,4,16083,3.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16084,604,3,16084,4.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16085,605,4,16085,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16086,606,3,16086,4.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16087,607,4,16087,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16088,608,3,16088,4.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16089,609,3,16089,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),


(16090,600,3,16090,5.84,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16091,601,3,16091,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16092,602,3,16092,5.84,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16093,603,3,16093,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16094,604,4,16094,5.84,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16095,605,4,16095,7.59,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16096,606,4,16096,9.66,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16097,607,4,16097,7.59,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16098,608,3,16098,3.99,'2020-10-10 10:00:30','2020-10-10 10:00:30'),
(16099,609,4,16099,7.59,'2020-10-10 10:00:30','2020-10-10 10:00:30');


 SELECT *
 FROM payment
 where payment_id > (16050 - 1);



/*ULTIMA VISTA	*/
CREATE VIEW All_last_data
AS (
	SELECT *,'All last data inserted' as 'Message'
    FROM rental 
    where rental_id > 16049
);

