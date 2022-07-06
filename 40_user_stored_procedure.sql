DECLARE @TopAmount int = 8
DECLARE @MinPrice float = 1000.0
DECLARE @MaxPrice float = 10000.0

EXECUTE [dbo].[top_car_models]
 @TopAmount
 ,@MinPrice
 ,@MaxPrice
GO