SELECT
    (SELECT name FROM person
	WHERE person.id = pv.person_id) AS person_name ,
    ( SELECT name FROM pizzeria
	WHERE pizzeria.id = pv.pizzeria_id) AS pizzeria_name
FROM (SELECT person_id, pizzeria_id, visit_date FROM person_visits
    WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv
ORDER BY person_name, pizzeria_name DESC;

-- SELECT
--     (SELECT name from person
--        WHERE id = person_visits.person_id) AS person_name,
--     (SELECT name from pizzeria
--        WHERE id = person_visits.pizzeria_id) AS pizzeria_name
-- FROM  person_visits
-- WHERE visit_date >= '2022-01-07' AND visit_date <= '2022-01-09'
-- ORDER BY person_name, pizzeria_name DESC;

-- SELECT (...) AS person_name ,  -- this is an internal query in a main SELECT clause
--         (...) AS pizzeria_name  -- this is an internal query in a main SELECT clause
-- FROM (SELECT … FROM person_visits WHERE …) AS pv -- this is an internal query in a main FROM clause
-- ORDER BY ..
