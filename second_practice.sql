/*
Practica 2: valor 10 puntos (modelo sakila).
1) Presente todas las ciudades por país, sujeto a que en el país (nombre) exista “eri” o “lan”.
Presentar ascendentemente por país y ciudad.
2) Presente todos los clientes que viven en Alemania y las ciudades inician con “b” o terminan con
“n”.
3) De la tabla film presentar las películas que son PG-13, PG, PG-17 y el rental_duration está entre
4 y 7. Presentar la categoría de la película y ordenar por esta.
4) Presentar los clientes con su dirección, indicando país y ciudad. Ordenar por país, ciudad y
nombre de cliente.
5) Presentar todas las categorías (únicas) de film que tienen películas PG-13.
****** Entregar en un pdf.
*/

Use sakila;

/*1) Presente todas las ciudades por país, sujeto a que en el país (nombre) exista “eri” o “lan”.
Presentar ascendentemente por país y ciudad.*/

SELECT city.city,country.country
FROM country
inner join city on country.country_id = city.country_id 
where (country.country LIKE '%lan%' or '%eri%') 
ORDER BY country.country asc;

/*2) Presente todos los clientes que viven en Alemania y las ciudades inician con “b” o terminan con
“n”.*/

SELECT customer.first_name, customer.last_name, city.city, country.country
FROM country
inner join city on country.country_id = city.country_id
inner join address on city.city_id = address.city_id
inner join customer on  address.address_id = customer.address_id 
WHERE (country.country_id = 38) and (city.city  LIKE '%n' or 'b%') 
order by country.country;



/*3) De la tabla film presentar las películas que son PG-13, PG, PG-17 y el rental_duration está entre 4 y 7.
Presentar la categoría de la película y ordenar por esta.
*/

SELECT film.title, film.rating,rental_duration, film.special_features
FROM film
WHERE (film.rental_duration between 4 and 7) and (film.rating in ('PG-17','PG','PG-13'))  
order by special_features;

/*4) Presentar los clientes con su dirección, indicando país y ciudad. Ordenar por país, ciudad y
nombre de cliente.*/

SELECT customer.first_name,customer.last_name, address.address,city.city,country.country
FROM country
inner Join city on country.country_id = city.city_id
inner join address on city.city_id = address.city_id
inner join customer on address.address_id = customer.address_id
order by country.country, city.city, customer.first_name;

/*5) Presentar todas las categorías (únicas) de film que tienen películas PG-13.*/

SELECT title, description, release_year, rental_duration , rating
from film
where film.rating = 'PG-13';	

