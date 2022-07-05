SELECT DISTINCT cars.brand || " " ||  cars.model AS car
FROM registered_cars AS cars
ORDER BY cars.brand