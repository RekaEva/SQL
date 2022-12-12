

SELECT COALESCE (person.name, '-') AS person_name,
       t.visit_date,
       COALESCE (pizzeria.name, '-') AS pizzeria_name
FROM
    (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS t
FULL JOIN person ON t.person_id = person.id
FULL JOIN pizzeria ON t.pizzeria_id = pizzeria.id
ORDER BY 1, 2, 3;


-- SELECT *
-- FROM
--     (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS t
-- FULL JOIN person ON t.person_id = person.id
-- FULL JOIN pizzeria ON t.pizzeria_id = pizzeria.id
-- ORDER BY 1, 2, 3;
