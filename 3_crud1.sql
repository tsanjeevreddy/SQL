select * from film;
select distinct(original_language_id) from film;


insert into sakila.film 
(film_id, title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features, last_update)
values (1001, "athadu", "telugu movie", 2004,1, NULL, 3, 1.11, 1001, 13.99, "NC-17", "Deleted Scenes", "2006-02-15 05:03:42");
commit;


select * from film;
select * from film where film_id=1001;
select film_id as Movie_Id, title as Movie_Name, description, release_year from film;
select count(*) from film;

select DISTINCT rating from sakila.film;




select title, 'Sanjeev' from film;

select title, length/60 as duration_in_hr from film;
select title, round(length/60) as duration_in_hr from film;

create table film_copy(
film_id int primary key,
title varchar(128),
release_year int,
rating varchar(10)
);

insert into film_copy (film_id, title, release_year, rating)
select film_id, title, release_year, rating from film;

select * from film_copy;

drop table film_copy;


select rating,title from sakila.film where rating ='PG-13';

select rating,title,length from sakila.film where length >= 180;
select rating,title,rental_rate from sakila.film where rental_rate > 2;

-- AND OR  NOT

select rating,title,rental_rate from sakila.film 
where (rental_rate > 2 AND rating ='PG-13');

select rating,title,rental_rate from sakila.film 
where (rental_rate > 2 OR rating ='PG-13');

select rating,title,rental_rate from sakila.film 
where rating !='PG-13';

select rating,title,rental_rate from sakila.film 
where rating <>'PG-13';

-- print movies are in G or NC-17

select * from film where rating = 'G' or rating = 'NC-17' or rating = 'PG-13'; 
select * from film where rating in ('G','NC-17','PG-13'); 

select rating,title,rental_rate from sakila.film 
where not rating = 'PG-13';


insert into actor values (default, 'Sanjeeva', 'Dantu', '2023-10-03');
select * from actor;