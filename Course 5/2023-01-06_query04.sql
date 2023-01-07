WITH
  longest_used_bike AS (
    SELECT
      bikeid,
      SUM(duration_minutes) as trip_duration
    FROM
      `bigquery-public-data.austin_bikeshare.bikeshare_trips`
    GROUP BY
      bikeid
    ORDER BY
      trip_duration DESC
    LIMIT 1
  )

-- Find the start station ID where the most used bike
-- is most likely to be found
SELECT
  trips.start_station_id,
  COUNT(*) AS trip_ct
FROM
  longest_used_bike AS longest
  FULL JOIN
  `bigquery-public-data.austin_bikeshare.bikeshare_trips`AS trips
  ON
  longest.bikeid = trips.bikeid
GROUP BY
  trips.start_station_id
ORDER BY
  trip_ct DESC
LIMIT 1
/* OH, okay my results are different than those of the correct answer. The reason is that I grouped by trip duration instead of trip count, and trip count is the variable that actually answers the question.
*/


/*
SELECT 
  bikeshare_trips.bikeid,
  start_station_id,
  longest_used_bike.trip_duration
  
FROM
  `bigquery-public-data.austin_bikeshare.bikeshare_trips` AS bikeshare_trips
INNER JOIN
  longest_used_bike
  ON bikeshare_trips.bikeid = longest_used_bike.bikeid
ORDER BY
  longest_used_bike.trip_duration DESC
LIMIT 1
*/

