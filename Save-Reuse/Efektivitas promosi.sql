-- Efektivitas promosi

CREATE OR ALTER VIEW mart.v_promo_effect AS
SELECT 
    CASE WHEN promotion_flag = 1 THEN 'Yes' ELSE 'No' END AS promo,
    SUM(units_sold) AS units,
    SUM(revenue)    AS revenue,
    AVG(price_unit) AS avg_price
FROM dbo.daily_sales
GROUP BY CASE WHEN promotion_flag = 1 THEN 'Yes' ELSE 'No' END;
