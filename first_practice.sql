
/*
Hacer varias consultas de City, Country, Customers,
film, address, store.
*/

use sakila;

/*Query que retorna el pais filtrado por la iniciar del mismo.*/
select * 
from country
where country like 'Do%';

/*Query que retorna el pais junto a sus ciudades.*/
select * 
from city 
inner join country on city.country_id = country.country_id
where country like 'Do%';

/*Retona los customer (clientes / usarios) que estan activos*/
select * 
from customer
where active = true
order by first_name;


/*Peliculas con los rating mas altos*/
select  title, max(rental_rate) as 'Pelicula con Mayor Rating'
from film
group by title
order by 2 desc;

/*Las tiendas que no pertenecen al distrito 'QLD' y su direccion*/
select *
from store
inner join address on store.address_id = address.address_id
where district != 'QLD';


/*Las direcciones cuyo disctricto son 'QLD'*/
select *
from address
where district = 'QLD';



