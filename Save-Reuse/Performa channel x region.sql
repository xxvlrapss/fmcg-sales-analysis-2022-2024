-- Performa channel x region

CREATE OR ALTER VIEW mart.v_channel_region AS
SELECT region, channel, 
       SUM(revenue) AS revenue, 
       SUM(units_sold) AS units
FROM dbo.daily_sales
GROUP BY region, channel;
