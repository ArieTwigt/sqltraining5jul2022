SELECT cars.plate,
       cars.brand,
       cars.model, 
       motor.net_power_fuel,
       motor.net_power_electric
FROM registered_cars AS cars
JOIN cars_motor AS motor
  ON cars.plate = motor.plate
WHERE cars.plate = 'N710NN'
ORDER BY cars.plate