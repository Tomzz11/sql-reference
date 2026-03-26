
ALTER TABLE guitars 
ADD CONSTRAINT unique_brand_model UNIQUE (brand, model);


ALTER TABLE guitars 
ADD CONSTRAINT check_stock_not_negative CHECK (stock_quantity >= 0);

