/*
SELECT duration
FROM `bigquery-public-data.london_bicycles.cycle_hire`
WHERE duration > 20
*/

/*
SELECT
  COUNT(*) AS num_of_biketrips
FROM
  `bigquery-public-data.london_bicycles.cycle_hire`
WHERE 
  duration >= 1200
*/

SELECT
     end_station_name
FROM
    `bigquery-public-data.london_bicycles.cycle_hire` 
WHERE
     rental_id = 57635395;
