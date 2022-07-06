-- SQLite
SELECT cars.brand,
       cars.model
FROM registered_cars AS cars
WHERE cars.model LIKE "%COROLLA%"
