SELECT
  DISTINCT customer_id
FROM
  `atari-mirai-001.customer_data.customer_address` 
WHERE
  SUBSTR(country,1,2) = 'US'