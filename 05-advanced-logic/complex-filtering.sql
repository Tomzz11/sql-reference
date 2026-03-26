SELECT brand, model, price 
FROM guitars 
WHERE price BETWEEN 20000 AND 70000 
AND status = 'active'
ORDER BY price ASC;


SELECT * FROM guitars 
WHERE brand ~* '^(F|G)';


SELECT brand, model, price 
FROM guitars 
WHERE price > (SELECT AVG(price) FROM guitars);
