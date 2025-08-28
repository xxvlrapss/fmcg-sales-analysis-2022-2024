-- Cek total revenue
SELECT SUM(revenue) AS total_revenue FROM dbo.daily_sales;

-- Cek distribusi promo
SELECT promo_flag_text, COUNT(*) AS trx_count, SUM(revenue) AS revenue
FROM dbo.daily_sales
GROUP BY promo_flag_text;
