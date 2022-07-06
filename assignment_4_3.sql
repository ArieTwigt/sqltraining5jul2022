SELECT cars.brand,
       cars.model,
       cars.price / cars.seats  AS price_per_seat
FROM registered_cars as cars
ORDER BY price_per_seat DESC