USE Cars
GO

WITH cars_hybrid_grouped AS(

    SELECT cars_motor.plate,
           SUM(cars_motor.net_power_fuel) AS power_fuel,
           SUM(cars_motor.net_power_electric) AS power_electric
    FROM cars_motor
    GROUP BY cars_motor.plate
    HAVING SUM(cars_motor.net_power_electric) > 0

), cars_overview_pct AS (
    SELECT cars.brand,
           cars.model,
           ROUND(cars_hybrid_grouped.power_electric / 
             (cars_hybrid_grouped.power_electric + cars_hybrid_grouped.power_fuel) * 100, 2)
             AS power_pct_electric
    FROM registered_cars AS cars
    JOIN cars_hybrid_grouped
    ON cars.plate = cars_hybrid_grouped.plate
) 
    SELECT cars_overview_pct.brand,
       cars_overview_pct.model,
       cars_overview_pct.power_pct_electric,
       CASE WHEN cars_overview_pct.power_pct_electric > 70 THEN 'large' ELSE 
            CASE WHEN cars_overview_pct.power_pct_electric BETWEEN 30 AND 70 THEN 'medium' ELSE
                 CASE WHEN cars_overview_pct.power_pct_electric < 30 THEN 'small' ELSE 'unknown'
                 END END END AS category_power_electric
FROM cars_overview_pct


