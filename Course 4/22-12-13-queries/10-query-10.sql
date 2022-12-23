/*
This query intentionally has a syntax error, as I wanted to see if the 
order of FROM and SELECT mattered. Turns out it does.
*/
FROM 
  `bigquery-public-data.new_york_trees.tree_census_2015`

SELECT
  AVG(tree_dbh)

LIMIT 1000