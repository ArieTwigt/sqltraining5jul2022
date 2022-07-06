
WITH hybrid_cars AS (

   SELECT cars.brand,
          cars.model,
          SUM(cars_motor.net_power_fuel) AS power_fuel,
          SUM(cars_motor.net_power_electric) AS power_electric
          
   FROM registered_cars AS cars
   JOIN cars_motor
     ON  cars_motor.plate = cars.plate
   GROUP BY 1,2
   HAVING cars_motor.net_power_electric > 0

), hybrid_cars_prop AS (
    SELECT 
       hybrid_cars.brand,
       hybrid_cars.model,
       hybrid_cars.power_fuel / 
          (hybrid_cars.power_fuel + hybrid_cars.power_electric) 
          AS fuel_prop,

       hybrid_cars.power_electric / 
          (hybrid_cars.power_fuel + hybrid_cars.power_electric) 
          AS electric_prop

   FROM hybrid_cars
   GROUP BY 1,2
)

SELECT 
       hybrid_cars_prop.brand,
       hybrid_cars_prop.model,
       ABS(fuel_prop - electric_prop) AS difference
FROM hybrid_cars_prop
ORDER BY difference ASC
