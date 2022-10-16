select customer.id,
       customer.name
  from customers customer
  left join locations location on customer.id = location.id_customers
  where location.id is null
order by customer.id