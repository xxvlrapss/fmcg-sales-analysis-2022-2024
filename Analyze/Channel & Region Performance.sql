-- Channel & Region Performance

SELECT region, channel, SUM(revenue) AS revenue, SUM(units_sold) AS units
FROM dbo.daily_sales
GROUP BY region, channel
ORDER BY revenue DESC;
