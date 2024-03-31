use sql_store;

select * from customers c;
select count(*) from customers;
select count(c.phone) from customers c;

select min(c.points) from customers c;

select max(c.points) from customers c;

select avg(c.points) from customers c;

select sum(c.points) from customers c;


select * from customers c where c.state='FL';
select sum(c.points) from customers c where c.state='FL';

select c.state, sum(c.points) as points_sum
from customers c 
group by c.state;

select c.city, c.state, sum(c.points) as points_sum
from customers c 
group by c.state,c.city
order by c.state asc;

select c.state,c.city,avg(c.points) as avg_points
from customers c 
group by c.city,c.state
order by c.state,c.city asc;

-- average point vr state and city, where we need count of people as well
select c.state,c.city,avg(c.points) as avg_points, count(*) as noOfPeople
from customers c 
group by c.city,c.state
order by c.state,c.city asc;

-- using having to consider only of state FL

select c.state,c.city,avg(c.points) as avg_points, count(*) as noOfPeople
from customers c 
where c.state like 'FL'
group by c.city,c.state
order by c.state,c.city asc;


select c.state,c.city,avg(c.points) as avg_points, count(*) as noOfPeople
from customers c 
group by c.city,c.state having (c.state like 'FL' and c.city like 'Orlando')
order by c.state,c.city asc;

select c.state,c.city,avg(c.points) as avg_points, count(*) as noOfPeople
from customers c 
group by c.city,c.state having avg(c.points) > 1500
order by c.state,c.city asc;

select c.state,c.city,avg(c.points) as avg_points, count(*) as noOfPeople
from customers c 
group by c.city,c.state having (avg(c.points) > 1500 and c.state like 'C%')
order by c.state,c.city asc;