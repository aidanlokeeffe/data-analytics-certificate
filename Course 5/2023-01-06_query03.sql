-- Total quantity sold for each ProductID grouped by months and year it was sold
SELECT
  EXTRACT(YEAR FROM date) AS Year,
  EXTRACT(MONTH FROM date) AS Month,
  ProductId,
  ROUND(MAX(UnitPrice),2) AS UnitPrice,
  SUM(Quantity) AS UnitsSold
FROM
  `atari-mirai-001.sales.sales_info`
GROUP BY
  Year,
  Month,
  ProductId
ORDER BY
  Year,
  Month,
  ProductId

-- How many years of sales data are stored in this sheet?
/*
SELECT
  MIN(Date) AS min_date,
  MAX(Date) AS max_date
FROM
  `atari-mirai-001.sales.sales_info`
*/

/*
SELECT *
FROM `atari-mirai-001.sales.sales_info`
LIMIT 10
*/