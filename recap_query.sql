-- SQLite
SELECT cars_avg.brand,
       cars_avg.model,
       cars_avg.color,
       cars_avg.avg_price / cars_avg.avg_seats AS price_per_seat
FROM (
    SELECT cars.brand, 
       cars.model,
       cars.color,
       AVG(cars.price) AS avg_price,
       AVG(cars.seats) AS avg_seats
    FROM registered_cars AS cars
    GROUP BY 1,2,3
    ORDER BY avg_price DESC
) as cars_avg

