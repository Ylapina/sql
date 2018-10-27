SELECT * FROM customer;
select *from customer where state = 'CA';
select * from customer
where state = 'CA'
order by name desc;

select Name, state, sales, active customer
from customer
where state = 'CA'
order by name desc;

select * from customer
where state = 'CA'
and city = 'Fresno'
order by name desc;