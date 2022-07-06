
-- Collect the hybrid cars
WITH hybrid_cars AS (
    SELECT cars.brand,
       cars_motor.net_power_electric

    FROM registered_cars AS cars
    JOIN cars_motor
      ON cars.plate = cars_motor.plate
    WHERE cars_motor.net_power_electric IS NOT NULL  
)

-- Join the table with countries and group by with a count
SELECT car_brands.country,
       COUNT(car_brands.country) AS amount
FROM hybrid_cars
JOIN car_brands
  ON car_brands.brand = hybrid_cars.brand
GROUP BY 1
ORDER BY 2 DESC