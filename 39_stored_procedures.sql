
USE Cars;
GO

CREATE PROCEDURE top_car_models
   @TopAmount INTEGER,
   @MinPrice FLOAT,
   @MaxPrice FLOAT
AS

SELECT TOP(@TopAmount)
      cars.brand,
      cars.model,
      AVG(cars.price) AS avg_price
FROM registered_cars AS cars
GROUP BY cars.brand, cars.model
HAVING AVG(cars.price) BETWEEN @MinPrice AND @MaxPrice
ORDER BY avg_price DESC