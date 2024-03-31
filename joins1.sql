select * from country;
select * from city;
select * from address;


select c.city, a.address, a.district 
from city c join address a 
on c.city_id = a.city_id;

select c.city, a.address, a.district 
from city c join address a 
on c.city_id = a.city_id
where c.city='Baku';

select c.city, a.address, a.district, co.country
from city c join address a join country co
on (c.city_id = a.city_id and co.country_id = c.country_id)
where co.country = 'Brazil';

select co.country, ci.city
from city ci join country co
on ci.country_id = co.country_id 
where co.country ='india';

select co.country, ci.city
from city ci join country co
on ci.country_id = co.country_id 
and co.country like 'In%';


