-- Top Products (SKU)
SELECT TOP 10 sku, SUM(units_sold) AS total_units, SUM(revenue) AS total_revenue
FROM dbo.daily_sales
GROUP BY sku
ORDER BY total_revenue DESC;
