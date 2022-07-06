-- SQLite
SELECT cars.brand || "-" || cars.model AS car,
       ROUND(AVG(cars.price), 2) AS avg_price
FROM registered_cars AS cars
GROUP BY cars.brand
