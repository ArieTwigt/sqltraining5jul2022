-- SQLite
SELECT premium_german_cars.color,
       ROUND(AVG(premium_german_cars.average_price), 2) AS average_price
     
     FROM (
         SELECT cars.brand,
            cars.car_type,
            cars.color,
            COUNT(cars.brand) AS amount,
            ROUND(AVG(cars.price), 2) AS average_price
         FROM registered_cars AS cars
         GROUP BY cars.brand, cars.car_type, cars.color
         HAVING cars.brand IN ('BMW', 'AUDI', 'MERCEDES-BENZ')
         ORDER BY amount DESC, average_price DESC
     ) AS premium_german_cars

GROUP BY 1
ORDER BY 2 DESC