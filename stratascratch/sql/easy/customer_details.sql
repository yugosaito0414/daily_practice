--https://platform.stratascratch.com/coding/9891-customer-details?code_type=3
--Customer Details

select 
    first_name
    ,last_name
    ,city
    ,order_details
from 
    customers
left join orders
on customers.id = orders.cust_id
order by 
    first_name, order_details
