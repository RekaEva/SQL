-- CREATE OR REPLACE VIEW v_symmetric_union AS
--     SELECT * from person_visits WHERE visit_date = '2022-01-02';
--
-- SELECT * from v_symmetric_union;
--
--
-- CREATE OR REPLACE VIEW v_symmetric_union AS
-- (
-- WITH R AS (SELECT * FROM person_visits WHERE visit_date = '2022-01-02'),
--      S AS (SELECT * FROM person_visits WHERE visit_date = '2022-01-06')
--
-- (SELECT * FROM R WHERE person_id NOT IN (SELECT person_id FROM S))
--     UNION ALL
-- (SELECT * FROM S WHERE person_id NOT IN (SELECT person_id FROM R))
-- -- ORDER BY person_id
-- );
--
-- SELECT * from v_symmetric_union;































