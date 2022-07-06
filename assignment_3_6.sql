-- SQLite
SELECT cars.brand,
       SUBSTR(cars.model, 1, 1) || "-class"
FROM registered_cars AS cars
WHERE cars.brand = "MERCEDES-BENZ"

