SELECT 
  AVG(temperature)
FROM
  `atari-mirai-001.demos.nyc_weather`
WHERE
  date BETWEEN '2020-06-01' AND '2020-06-30'
