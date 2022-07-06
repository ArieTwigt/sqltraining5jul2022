SELECT cars.brand,
       cars.model,
       cars.price,
       cars.registration_date,
       DATENAME(WW, CONVERT(datetime, CONVERT(varchar(10), cars.registration_date))) AS weeknumer,
       DATENAME(M, CONVERT(datetime, CONVERT(varchar(10), cars.registration_date))) AS month_name,
       DATENAME(W, CONVERT(datetime, CONVERT(varchar(10), cars.registration_date))) AS week_day
       
FROM registered_cars AS cars