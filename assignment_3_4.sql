-- SQLite
SELECT COUNT(DISTINCT(cars.brand || " " || cars.model)) AS more_than_7_seats
FROM registered_cars AS cars
WHERE cars.seats > 7