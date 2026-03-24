INSERT INTO guitars (brand, model, category_id, price, stock_quantity)
VALUES ('Ibanez', 'RG550', 1, 35000.00, 4);

SELECT g.guitar_id, g.brand, g.model, c.name AS category, g.price
FROM guitars g
JOIN categories c 
ON g.category_id = c.category_id; 

UPDATE guitars 
SET price = 65000.00, stock_quantity = 10
WHERE model = 'American Professional II Stratocaster';

DELETE FROM guitars 
WHERE guitar_id = 5;
