/*
SELECT
  DISTINCT drive_wheels
FROM
  `atari-mirai-001.automobile_data.automobile_data`
*/

/*
SELECT
  DISTINCT drive_wheels,
  LENGTH(drive_wheels) AS string_length
FROM 
  `atari-mirai-001.automobile_data.automobile_data`
*/

UPDATE
  `atari-mirai-001.automobile_data.automobile_data`
SET
  drive_wheels = TRIM(drive_wheels)
WHERE
  TRUE

