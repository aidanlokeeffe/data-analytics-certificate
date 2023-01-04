SELECT
  station_id,
  name
FROM
  bigquery-public-data.new_york.citibike_stations
WHERE
  station_id IN
  (
    SELECT
      start_station_id
    FROM
      bigquery-public-data.new_york.citibike_trips
    WHERE
      usertype = 'Subscriber'
  )




--See subqueries in from and where
/*
SELECT
  station_id,
  name,
  number_of_rides AS number_of_rides_starting_at_station
FROM
  (
    SELECT
      start_station_id,
      COUNT(*) number_of_rides
    FROM
      bigquery-public-data.new_york.citibike_trips
      GROUP BY
        start_station_id
  )
  AS station_num_trips
  INNER JOIN

  bigquery-public-data.new_york.citibike_stations ON station_id = start_station_id

  ORDER BY
    number_of_rides DESC
*/
  



/*
SELECT
  station_id,
  num_bikes_available,
  (SELECT
    AVG(num_bikes_available)
  FROM 
    `bigquery-public-data.new_york_citibike.citibike_stations`) AS avg_num_bikes_available
FROM
  `bigquery-public-data.new_york_citibike.citibike_stations`
*/


