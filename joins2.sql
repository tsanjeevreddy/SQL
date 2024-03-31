use sql_store;

select * from customers;


select * from orders;

-- innner join 

select c.first_name, c.last_name, o.order_date
from customers c join orders o
on c.customer_id = o.customer_id;

select c.first_name, c.last_name, o.order_date
from customers c left join orders o
on c.customer_id = o.customer_id;

select c.first_name, c.last_name, o.order_date
from orders o right join customers c
on c.customer_id = o.customer_id;


select c.first_name, c.last_name, o.order_date
from orders o cross join customers c
on c.customer_id = o.customer_id;


select c.first_name, c.last_name, o.order_date
from customers c left join orders o
using (customer_id) ;

select c.first_name, c.last_name, o.order_date
from customers c natural join orders o;


select c.first_name, c.last_name, o.order_date
from orders o, customers c;


use sakila;

select c.first_Name, c.last_name from customer c
union 
select a.first_Name, a.last_name from actor a;

select c.first_Name, c.last_name from customer c
union all
select a.first_Name, a.last_name from actor a;