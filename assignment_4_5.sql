SELECT COUNT(cars.price) as amount
FROM registered_cars as cars
WHERE cars.price > 40000 AND cars.car_type = 'hatchback'