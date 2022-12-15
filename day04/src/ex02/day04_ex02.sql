CREATE OR REPLACE VIEW v_generated_dates AS
    SELECT generated_date::date
    FROM generate_series('2022-01-01', '2022-01-31', interval '1 day') AS generated_date
ORDER BY generated_date;
--
--
-- CREATE OR REPLACE VIEW v_generated_dates AS
-- SELECT date_trunc('day', my_date):: date AS generated_date
-- FROM generate_series('2022-01-01'::timestamp, '2022-01-31':: timestamp, '1 day'::interval) my_date
-- ORDER by generated_date;

-- SELECT * from menu;

--
-- SELECT * from v_generated_dates;

