-- Save-Reuse (Output Akhir)

CREATE OR ALTER VIEW mart.v_monthly_sales AS
SELECT FORMAT(date, 'yyyy-MM') AS month, SUM(revenue) AS monthly_revenue
FROM dbo.daily_sales
GROUP BY FORMAT(date, 'yyyy-MM');
