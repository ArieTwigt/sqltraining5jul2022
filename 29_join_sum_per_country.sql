-- SQLite
SELECT brands.country,
       ROUND(AVG(cars.price), 2) AS avg_price 
FROM registered_cars AS cars
JOIN car_brands AS brands
  ON cars.brand = brands.brand
GROUP BY 1
ORDER BY avg_price