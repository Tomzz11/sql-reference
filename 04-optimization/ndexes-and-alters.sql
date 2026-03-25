CREATE INDEX idx_guitar_search 
ON guitars(brand, model); 

ALTER TABLE guitars 
ADD COLUMN status VARCHAR(20) DEFAULT 'active';

CREATE VIEW view_available_guitars AS
SELECT brand, model, price 
FROM guitars 
WHERE stock_quantity > 0 AND status = 'active';


