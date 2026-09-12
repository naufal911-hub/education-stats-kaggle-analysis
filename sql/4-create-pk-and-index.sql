SELECT * FROM edstats_data WHERE country_name='Malaysia' LIMIT 10

SELECT * FROM information_schema.table_constraints WHERE table_name='edstats_data' and constraint_type='PRIMARY KEY';

SELECT * FROM information_schema.table_constraints tc
INNER JOIN information_schema.key_column_usage kcu 
  ON tc.constraint_name = kcu.constraint_name
WHERE tc.constraint_name = 'pk_edstats';

SELECT "country_code", "year", "indicator_code", COUNT(*)
FROM edstats_data
GROUP BY "country_code", "year", "indicator_code"
HAVING COUNT(*) > 1

ALTER TABLE edstats_data ADD CONSTRAINT PK_edstats PRIMARY KEY ("country_code", "year", "indicator_code");

CREATE INDEX idx_indicator_code ON edstats_data (indicator_code)
