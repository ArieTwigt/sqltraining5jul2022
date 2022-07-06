-- SQLite
SELECT cars.brand,
       cars.model,
       cars.price
FROM registered_cars AS cars
WHERE cars.seats = 7
ORDER BY cars.price 