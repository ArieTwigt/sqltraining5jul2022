
SELECT car_counts.brand, 
       car_counts.model, 
       car_counts.amount, 
       car_counts.avg_price, 
       car_counts.amount * car_counts.avg_price AS avg_turnover  
FROM (
    SELECT cars.brand AS brand,
       cars.model AS model,
       COUNT(cars.brand) as amount,
       AVG(cars.price) as avg_price
    FROM registered_cars AS cars
    GROUP BY cars.brand, cars.model
    ORDER BY amount DESC
) AS car_counts

