-- Kontribusi kategori (share of revenue)
CREATE OR ALTER VIEW mart.v_category_contrib AS
SELECT 
    ISNULL(category, 'Unknown') AS category,
    SUM(revenue) AS revenue,
    100.0 * SUM(revenue) / SUM(SUM(revenue)) OVER() AS pct_contribution
FROM dbo.daily_sales
GROUP BY ISNULL(category, 'Unknown');

