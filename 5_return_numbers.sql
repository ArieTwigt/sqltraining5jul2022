SELECT cars.brand,
       cars.model, 
       cars.tax,
       cars.price - cars.tax AS price_without_tax,
       (cars.price - cars.tax) * 0.21 as vat
FROM registered_cars AS cars
