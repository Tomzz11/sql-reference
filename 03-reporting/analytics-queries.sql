SELECT c.name AS category_name,
        COUNT(g.guitar_id) AS total_items,
        AVG(g.price) AS average_price
FROM categories c 
LEFT JOIN guitars g 
ON c.categories_id = g.category_id
GROUP BY c.name;


SELECT SUM(price * stock_quantity) AS total_inventory_value
FROM guitars;


SELECT brand, model, stock_quantity
FROM guitars 
WHERE stock_quantity < 3
ORDER BY stock_quantity ASC;

