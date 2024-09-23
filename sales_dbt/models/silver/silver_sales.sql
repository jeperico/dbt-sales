{{ config(materialized='view') }}

WITH cleaned_data AS (
  SELECT
    email,
    DATE(date_hour) AS day,
    cost,
    quantity,
    product
  FROM
    {{ ref('bronze_sales') }}
  WHERE
    cost BETWEEN 5 AND 100
    AND date_hour >= DATE_TRUNC('year', CURRENT_DATE)
    AND date_hour < CURRENT_DATE + INTERVAL '1 day'
)

SELECT * FROM cleaned_data