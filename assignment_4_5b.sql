SELECT cars.brand,
       cars.model,
       cars.price
FROM registered_cars as cars
WHERE cars.price > 40000 AND cars.car_type = 'hatchback'
ORDER BY price