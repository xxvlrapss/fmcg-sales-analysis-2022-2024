-- Promotion Effectiveness

SELECT promo_flag_text, AVG(units_sold) AS avg_units, SUM(revenue) AS total_revenue
FROM dbo.daily_sales
GROUP BY promo_flag_text;
