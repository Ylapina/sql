select * from customer;

select state, avg(creditLimit) as 'AvgLimit' from customer
group by state
order by avglimit desc;

select state, max(creditLimit) as 'Maxlimit' from customer
group by state
order by Maxlimit;

-- use concat function to render credilimit as dollar sign
select name, concat( '$', format (creditlimit, 2))
  from customer;