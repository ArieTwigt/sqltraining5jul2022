-- SQLite
SELECT SUM(cars.price) AS total_sum_price,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars