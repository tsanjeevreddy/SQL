select * from film 
where release_year >= 2005 and release_year <=2008;

select * from film 
where release_year between 2005 and 2008;

select title from film where title like '%LOVE%';

select title from film where title like '_D%';

select title from film where title like '__A%';

select * from film where description IS NOT NULL;
select * from film where original_language_id IS NULL;

select * from film order by title asc, 'length' desc, rental_rate desc ;

select f.length, f.rental_rate, f.title 
from film f 
order by f.length desc, rental_rate asc, title desc;


select f.title, f.length from film f 
where f.title like 'LOVE%' order by f.length;

select * from film limit 5;

select * from film limit 5 offset 20;

select * from film f where f.title like '%LOVE%' 
order by f.length desc limit 2 offset 2;


-- update table_name set column1 = value1, col2 = value2 where condition;


select * from film where film_id =1;
update film set release_year = 2023 where film_id=1;
update film set release_year = 2024,language_id= 2 where film_id=1;
-- update film set release_year = 2023;


select * from actor where actor_id=1;
select * from film_actor where actor_id=1;
select * from film where film_id=1;

delete from film where film_id=1;
delete from film_actor where actor_id=1;
delete from actor where actor_id=1;
delete from film_actor where film_id=1;
delete from film_category where film_id=1;
delete from inventory where film_id=1;
delete from rental where inventory_id in (select inventory_id from inventory where film_id=1);


truncate payment;
select * from payment;
drop table payment;