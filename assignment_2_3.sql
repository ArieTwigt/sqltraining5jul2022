-- get an overview of the price per seat
WITH price_per_seat AS (
    SELECT cars.brand,
           cars.seats,
           cars.price,
           cars.price / cars.seats AS price_per_seat
    FROM registered_cars as cars
)

SELECT price_per_seat.brand,
       AVG(price_per_seat.price_per_seat) AS average_price_per_seat
FROM price_per_seat
GROUP BY 1
ORDER BY 2 DESC