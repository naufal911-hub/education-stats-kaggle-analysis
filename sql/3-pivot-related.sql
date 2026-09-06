SELECT year, indicator_code, 
       MAX(CASE WHEN country_name = 'Malaysia' THEN value END) AS malaysia,
       MAX(CASE WHEN country_name = 'Vietnam' THEN value END) AS vietnam
FROM pisa_data
WHERE country_name IN ('Malaysia', 'Vietnam')
  AND value IS NOT NULL
GROUP BY year, indicator_code
ORDER BY indicator_code, year;

SELECT year, indicator_code, 
       MAX(CASE WHEN country_name = 'Malaysia' THEN value END) AS malaysia,
       MAX(CASE WHEN country_name = 'Vietnam' THEN value END) AS vietnam,
       MAX(CASE WHEN country_name = 'Vietnam' THEN value END) 
         - MAX(CASE WHEN country_name = 'Malaysia' THEN value END) AS vietnam_minus_malaysia
FROM pisa_data
WHERE country_name IN ('Malaysia', 'Vietnam')
  AND value IS NOT NULL
GROUP BY year, indicator_code
ORDER BY indicator_code, year;
