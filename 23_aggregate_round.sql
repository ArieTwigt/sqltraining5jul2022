-- SQLite
SELECT cars.brand,
       COUNT(cars.brand) AS amount,
       ROUND(AVG(cars.price), 2) AS average_price
FROM registered_cars AS cars
GROUP BY cars.brand