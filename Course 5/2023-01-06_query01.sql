WITH trips_over_1_hr AS (
  SELECT *
  FROM `bigquery-public-data.new_york_citibike.citibike_trips`
  WHERE
    tripduration >= 60
)

## Count how many trups are 60+ minutes long
SELECT
  COUNT(*) AS cnt
FROM
  trips_over_1_hr




