SELECT
  EXTRACT(YEAR FROM starttime) AS year,
  COUNT(*) AS number_of_rides
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
GROUP BY
  year
ORDER BY 
  year