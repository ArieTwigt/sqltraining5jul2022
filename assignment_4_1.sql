SELECT cars.brand,
       cars.model,
       cars.seats,
       COUNT(cars.brand) AS amount
FROM registered_cars AS cars
WHERE cars.seats = 2
GROUP BY 1,2,3
HAVING amount > 100
ORDER BY amount DESC