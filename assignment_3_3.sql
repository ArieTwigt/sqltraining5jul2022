-- SQLite
SELECT COUNT(cars.seats) AS cars
FROM registered_cars AS cars
WHERE cars.seats BETWEEN 3 AND 5