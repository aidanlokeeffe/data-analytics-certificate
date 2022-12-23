/*
SELECT duration
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE duration > 20
*/

SELECT
  COUNT(*) AS num_of_biketrips
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE 
  duration >= 1200
