-- find the car with 2 seats that has the most sales
SELECT cars.brand, cars.model, COUNT(*) as amount
FROM registered_cars as cars
GROUP BY 1,2
HAVING cars.seats = 2
ORDER BY amount DESC