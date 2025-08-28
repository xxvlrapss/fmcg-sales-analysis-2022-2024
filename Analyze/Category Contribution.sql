-- Category Contribution
SELECT category, SUM(revenue) AS revenue,
       100.0 * SUM(revenue) / SUM(SUM(revenue)) OVER() AS pct_contribution
FROM dbo.daily_sales
GROUP BY category
ORDER BY revenue DESC;
