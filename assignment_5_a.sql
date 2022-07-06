-- SQLite

WITH cars_color AS (
    SELECT 
      car_brands.country,
      cars.color,
      COUNT(car_brands.country) AS amount
    FROM registered_cars AS cars
    JOIN car_brands
      ON cars.brand = car_brands.brand
    GROUP BY 1,2
    ORDER BY car_brands.country
)

SELECT cars_color.country,
       cars_color.color,
       MAX(cars_color.amount) as max_amount
FROM cars_color
GROUP BY cars_color.country


