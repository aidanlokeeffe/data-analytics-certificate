/*
SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  `atari-mirai-001.automobile_data.automobile_data`
WHERE
  compression_ratio <> 70
*/

/*
SELECT
  COUNT(*) AS num_of_rows_to_delete
FROM
  `atari-mirai-001.automobile_data.automobile_data`
WHERE
  compression_ratio = 70
*/

DELETE `atari-mirai-001.automobile_data.automobile_data`
WHERE compression_ratio = 70