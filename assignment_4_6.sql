SELECT 
       cars.brand,
       cars.model,
       cars.color,
       ROUND(AVG(cars.price), 2) AS avg_price,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price
FROM registered_cars AS cars
WHERE cars.brand = 'VOLKSWAGEN' 
  AND cars.model = 'GOLF'
GROUP BY 1,2,3