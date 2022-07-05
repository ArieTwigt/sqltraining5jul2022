-- SQLite
SELECT cars.brand,
       cars.car_type,
       cars.color,
       COUNT(cars.brand) AS amount,
       ROUND(AVG(cars.price), 2) AS average_price
FROM registered_cars AS cars
GROUP BY cars.brand, cars.car_type, cars.color
HAVING cars.brand IN ('BMW', 'AUDI', 'MERCEDES-BENZ')
ORDER BY amount DESC, average_price DESC