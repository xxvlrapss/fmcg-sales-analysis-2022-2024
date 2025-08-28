-- Penjualan bulanan (untuk tren & YoY/MoM)

CREATE OR ALTER VIEW mart.v_monthly_sales AS
SELECT 
    CONVERT(date, EOMONTH(CAST([date] AS date))) AS month_end,
    FORMAT(CAST([date] AS date), 'yyyy-MM')      AS month,
    SUM(revenue)       AS monthly_revenue,
    SUM(units_sold)    AS monthly_units
FROM dbo.daily_sales
GROUP BY 
    CONVERT(date, EOMONTH(CAST([date] AS date))), 
    FORMAT(CAST([date] AS date), 'yyyy-MM');

