{{ config(materialized='view') }}

WITH sales_seven_days AS (
  SELECT
    day,
    product,
    SUM(cost) AS total_cost,
    SUM(quantity) AS total_quantity,
    COUNT(*) as total_sales
  FROM
    {{ ref('silver_sales') }}
  WHERE
    day >= CURRENT_DATE - INTERVAL '7 days'
  GROUP BY
    day, product
)

SELECT
  day,
  product,
  total_cost,
  total_quantity,
  total_sales
FROM
  sales_seven_days
ORDER BY
  day ASC
