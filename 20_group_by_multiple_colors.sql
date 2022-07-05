-- SQLite
SELECT cars.brand,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars
GROUP BY cars.brand
HAVING average_price > 100000