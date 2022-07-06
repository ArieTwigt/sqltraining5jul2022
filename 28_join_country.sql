-- SQLite
SELECT cars.brand, 
       cars.model,
       brands.country
FROM registered_cars AS cars
JOIN car_brands AS brands
  ON cars.brand = brands.brand