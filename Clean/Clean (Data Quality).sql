-- Cek nilai null
SELECT 
    SUM(CASE WHEN sku IS NULL THEN 1 ELSE 0 END) AS null_sku,
    SUM(CASE WHEN price_unit IS NULL THEN 1 ELSE 0 END) AS null_price
FROM dbo.daily_sales;

-- Cek harga unit <= 0
SELECT * FROM dbo.daily_sales WHERE price_unit <= 0;

-- Cek units_sold > stock_available
SELECT * FROM dbo.daily_sales WHERE units_sold > stock_available;
