select customer.name, 
       rental.rentals_date
  from customers customer
  join rentals rental
    on customer.id = rental.id_customers
 where extract(month from rental.rentals_date) = 9