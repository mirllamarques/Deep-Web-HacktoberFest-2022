select movie.id,
       movie.name 
  from movies movie
  join prices price
    on movie.id_prices = price.id
 where price.value < 2.0