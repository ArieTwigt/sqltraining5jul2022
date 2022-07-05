SELECT cars.brand || " " || cars.model as brand_model,
       cars.price
FROM registered_cars as cars