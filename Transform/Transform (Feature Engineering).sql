-- Tambahkan revenue (kalau belum ada)
ALTER TABLE dbo.daily_sales ADD revenue AS (price_unit * units_sold);

-- Tambahkan flag promosi Yes/No
ALTER TABLE dbo.daily_sales ADD promo_flag_text AS (
    CASE WHEN promotion_flag = 1 THEN 'Yes' ELSE 'No' END
);
