CREATE TABLE edstats_data (
    country_name VARCHAR(100),
    country_code VARCHAR(6),
    indicator_name VARCHAR(255),
    indicator_code VARCHAR(30),
    year INTEGER,
    value NUMERIC
);

COPY edstats_data FROM '/data-imports/processed/melted_output_cleaned.csv' WITH (FORMAT csv, HEADER true, NULL '');
