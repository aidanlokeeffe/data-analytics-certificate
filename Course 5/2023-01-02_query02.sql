SELECT
  stn,
  date,
  -- Use the IF function to replace 9999.9 values
  -- which the dataset description explains is the
  -- default value when temperature is missing, with
  -- NULLs instead.
    IF(
      temp=9999.9,
      NULL,
      temp
    ) AS temperature,

    -- Use the IF function to replace 999.9 values, 
    -- which the dataset description explains is the 
    -- default value when wind speed is missing, with 
    -- NULLs instead.
    IF(
      wdsp="999.9",
      NULL,
      CAST(wdsp AS Float64)
    ) AS wind_speed,
    -- Use the IF function to replace 99.99 values, which the dataset description explains is the default value when precipitation is missing, with NULLs instead.

    IF(

       prcp=99.99,
       0,
       prcp) AS precipitation
FROM
  `bigquery-public-data.noaa_gsod.gsod2020`
WHERE
  stn="725030" -- La Guardia

  OR stn="744860" -- JFK
ORDER BY
  date DESC,
  stn ASC
