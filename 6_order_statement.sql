
SELECT cars.brand,
       cars.model,
       cars.price
FROM registered_cars AS cars
ORDER BY cars.price, cars.brand DESC