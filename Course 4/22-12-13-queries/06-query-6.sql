SELECT
  name, count
FROM
  `thematic-land-371319.babynames.names_2014`
WHERE
  gender = 'M'
ORDER BY
  count DESC
LIMIT 
  5