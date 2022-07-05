-- SQLite
WITH average_tax_percentage AS (
    SELECT cars.car_type AS car_type,
       cars.tax / cars.price * 100 AS tax_percentage
    FROM registered_cars AS cars
)

SELECT average_tax_percentage.car_type,
       AVG(average_tax_percentage.tax_percentage) AS tax_percentage
FROM average_tax_percentage 
GROUP BY 1
ORDER BY tax_percentage DESC