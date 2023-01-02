/*
SELECT *
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality` 
LIMIT 1000
*/

/*
SELECT DISTINCT Year
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
*/

-- Find out which 10 counties had the lowest birthrates in 2016-2018
/*SELECT *
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
ORDER BY Births
LIMIT 10
*/

-- Find out which 10 counties had the highest birthrates in 2016-2018
/*SELECT *
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
ORDER BY Births DESC
LIMIT 10
*/

-- Find out which 10 counties had the highest birthrates in 2018 only
SELECT *
FROM `bigquery-public-data.sdoh_cdc_wonder_natality.county_natality`
WHERE Year = '2018-01-01'
ORDER BY Births DESC
LIMIT 11

