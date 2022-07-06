
SELECT 
       cars.brand,
       cars.model,
       COUNT(cars.model) AS amount
FROM registered_cars AS cars
GROUP BY 1,2
ORDER BY amount DESC
LIMIT 10