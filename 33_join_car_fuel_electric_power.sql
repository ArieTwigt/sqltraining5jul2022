-- SQLite
WITH brands_motors AS (
    SELECT cars_motor.plate AS plate,
       cars.brand AS brand,
       cars.model AS model,
       cars_motor.fuel_type_number AS type_number,
       cars_motor.net_power_fuel AS power_fuel,
       cars_motor.net_power_electric AS power_electric
    FROM cars_motor 
    JOIN registered_cars AS cars
      ON cars_motor.plate = cars.plate
), brands_motors_grouped AS (

    SELECT brands_motors.plate AS plate,
           brands_motors.brand AS brand,
           brands_motors.model AS model,
           SUM(brands_motors.power_fuel) AS power_fuel,
           SUM(brands_motors.power_electric) AS power_electric
    FROM brands_motors
    GROUP BY 1,2,3
    HAVING power_electric > 0 
), cars_power_pct AS (SELECT brands_motors_grouped.plate AS plate,
       brands_motors_grouped.brand AS brand,
       brands_motors_grouped.model AS model,
       brands_motors_grouped.power_fuel,
       brands_motors_grouped.power_electric,
       ROUND((brands_motors_grouped.power_electric / (
          brands_motors_grouped.power_electric + 
          brands_motors_grouped.power_fuel)) * 100, 2) AS power_pct_electric

    FROM brands_motors_grouped
)

SELECT * 
FROM cars_power_pct
ORDER BY cars_power_pct.power_pct_electric DESC
