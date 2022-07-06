-- SQLite
WITH cars_tax AS (
    SELECT brands.country, 
           cars.tax / cars.price * 100 AS tax_percentage
    FROM registered_cars AS cars
    JOIN car_brands AS brands
      ON cars.brand = brands.brand
)    

SELECT cars_tax.country, 
       ROUND(AVG(cars_tax.tax_percentage), 2) AS avg_tax_pct
FROM cars_tax
GROUP BY 1
ORDER BY 2 DESC