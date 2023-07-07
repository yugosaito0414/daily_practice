select 
    c.first_name,
    o.order_date,
    o.order_details,
    o.total_order_cost
from customers as c
inner join orders as o
on c.id = o.cust_id
where first_name in ('Eva', 'Jill')
order by c.id
