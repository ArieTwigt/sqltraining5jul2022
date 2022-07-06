-- SQLite
SELECT COUNT(DISTINCT(cars.car_type)) AS amount_distinct_car_types
FROM registered_cars AS cars
