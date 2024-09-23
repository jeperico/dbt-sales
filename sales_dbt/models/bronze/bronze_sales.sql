{{ config(materialized='view') }}

SELECT
  *
FROM
  {{ source('sales_source', 'sales') }}
