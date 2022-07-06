
WITH cars_hybrid AS (
      SELECT cars.brand,
             cars.model,
             cars.price,
             SUM(cars_motor.net_power_fuel) AS power_fuel,
             SUM(cars_motor.net_power_electric) AS power_electric
             
      FROM registered_cars AS cars
      JOIN cars_motor
        ON  cars_motor.plate = cars.plate
      WHERE cars.plate = 'N710NN' --cars.brand IN ('VOLVO', 'LEXUS')
      GROUP BY 1,2,3
      HAVING cars_motor.net_power_electric > 0
)

SELECT 
     cars_hybrid.brand,
     ROUND(AVG(cars_hybrid.price), 2) AS avg_price
FROM cars_hybrid
GROUP BY 1
ORDER BY avg_price DESC