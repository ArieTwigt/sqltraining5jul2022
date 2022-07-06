-- find the car with 2 seats that has the most sales
SELECT cars.brand, cars.model, cars.color AS color, AVG(cars.price) AS average_price
FROM registered_cars AS cars
GROUP BY 1,2,3
HAVING cars.seats = 2 AND cars.brand = 'MAZDA'
 
