
USE Cars
GO

WITH top_50_cars AS (
    SELECT 
       TOP 50
       cars.brand AS brand,
       cars.model AS model,
       COUNT(cars.model) AS amount
    FROM registered_cars AS cars
    GROUP BY brand, model
)

SELECT cars.plate,
       cars.brand, 
       cars.model, 
       top_50_cars.amount
FROM registered_cars as cars
LEFT OUTER JOIN top_50_cars
  ON cars.brand = top_50_cars.brand
     AND cars.model = top_50_cars.model

WHERE amount is NOT NULL

