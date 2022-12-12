
-- WITH t_missing_dates(missing_date) AS
--     (SELECT missing_date::DATE AS missing_date
--         FROM generate_series('2022-01-01', '2022-01-10', interval '1 day')
--         AS missing_date)
--
-- SELECT missing_date FROM t_missing_dates
--     LEFT JOIN
--     (SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2
--         AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
--     ) AS t
--     ON missing_date = t.visit_date
-- WHERE t.person_id is NULL
-- ORDER BY missing_date;

