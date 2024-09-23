{{ config(materialized='view') }}

WITH sales_for_seller AS (
  SELECT 
    email AS seller, 
    DATE(day) AS day, 
    SUM(cost) AS total_cost,
    SUM(quantity) AS total_quantity,
    COUNT(*) as total_sales
  FROM 
    {{ ref('silver_sales') }}
  WHERE 
    day >= CURRENT_DATE - INTERVAL '7 days'
  GROUP BY 
    email, DATE(day)
)

SELECT 
  seller,
  day,
  total_cost,
  total_quantity,
  total_sales
FROM 
  sales_for_seller
ORDER BY 
  day ASC, seller ASC
