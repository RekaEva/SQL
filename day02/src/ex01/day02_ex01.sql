
SELECT dates::DATE AS missing_date
    FROM generate_series('2022-01-01', '2022-01-10', interval '1 day') AS dates
    LEFT JOIN
    (SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2
        AND visit_date BETWEEN '2022-01-01' AND '2022-01-10'
    ) AS t
    ON dates = t.visit_date
WHERE t.person_id is NULL
ORDER BY missing_date;

--
-- SELECT day::date AS missing_date
-- FROM   generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') day
--
-- -- SELECT *
-- -- FROM generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 day'::interval)
--
--
-- SELECT day::date AS missing_date
-- FROM   generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') day

-- --
-- --
-- SELECT g1 AS missing_date
-- FROM (SELECT g1::date FROM generate_series('2022-01-01', '2022-01-10', '1 day'::interval) AS g1 ) t1  LEFT JOIN
-- (SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2) t2
-- ON g1 = visit_date
-- WHERE visit_date IS NULL

--
--
-- SELECT
--     FROM person_visits

--
-- SELECT * FROM generate_seies('2022-01-01', '2022-01-10', '1 day'::interval);


-- SELECT day::date AS missing_date
-- FROM   generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') day