CREATE OR REPLACE VIEW v_product_catalog AS
SELECT 
    g.guitar_id,
    g.brand || ' ' || g.model AS full_name, 
    c.name AS category,
    g.price,
    CASE 
        WHEN g.stock_quantity > 0 THEN 'In Stock'
        ELSE 'Out of Stock'
    END AS availability
FROM guitars g
JOIN categories c ON g.category_id = c.category_id;


SELECT * FROM v_product_catalog WHERE availability = 'In Stock';