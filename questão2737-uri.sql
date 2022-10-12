select lawyer.name,
       lawyer.customers_number
  from lawyers lawyer, 
       (select max(customers_number) c_max,
               min(customers_number) c_min
          from lawyers) as maxmin
 where lawyer.customers_number = maxmin.c_max or lawyer.customers_number = maxmin.c_min;
 union
select 'Average', avg(customers_number)
  from lawyers;