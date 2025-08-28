-- Sales Trend (Monthly Growth)
SELECT 
    FORMAT(CAST([date] AS date), 'yyyy-MM') AS month,
    SUM(revenue) AS monthly_revenue
FROM dbo.daily_sales
GROUP BY FORMAT(CAST([date] AS date), 'yyyy-MM')
ORDER BY month;



