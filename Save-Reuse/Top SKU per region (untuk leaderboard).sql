-- Top SKU per region (untuk leaderboard)

CREATE OR ALTER VIEW mart.v_top_sku_by_region AS
WITH sku_region AS (
    SELECT region, sku, SUM(revenue) AS revenue
    FROM dbo.daily_sales
    GROUP BY region, sku
),
ranked AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY region ORDER BY revenue DESC) AS rn
    FROM sku_region
)
SELECT region, sku, revenue
FROM ranked
WHERE rn <= 10;    -- ubah ke 5/20 sesuai kebutuhan
