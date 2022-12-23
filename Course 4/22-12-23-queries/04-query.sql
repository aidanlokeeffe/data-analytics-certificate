SELECT
  state
FROM
  `atari-mirai-001.customer_data.customer_address` 
WHERE 
  LENGTH(state) > 2
