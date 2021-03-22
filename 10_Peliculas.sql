/*Cree 10 peliculas (inventario, store, actores), y creee unos 50 pagos y rentas de las mismas. */

select * from film;
select * from language;
select * from category;
Select * from film where film_id > 1000;

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




