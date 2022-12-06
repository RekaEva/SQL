-- WITH females AS
--     (SELECT pizzeria.name as pizzeria_name
--     FROM person_visits
--     JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
--     JOIN person on person_visits.person_id = person.id
--     WHERE person.gender = 'female'),
--
--    males AS
--     (SELECT pizzeria.name as pizzeris_name
--     FROM person_visits
--     JOIN pizzeria on person_visits.pizzeria_id = pizzeria.id
--     JOIN person on person_visits.person_id = person.id
--     WHERE person.gender = 'male')
-- SELECT
-- ORDER BY pizzeria_name;


WITH males (pizzeria_name) AS
    (
    	SELECT pizzeria.name AS pizzeria_name, person.name
        FROM person
    	JOIN person_visits
        ON person.id = person_visits.person_id
    	JOIN pizzeria
        ON person_visits.pizzeria_id = pizzeria.id
        WHERE person.gender = 'male'
    ),
     females (pizzeria_name) AS
    (
        SELECT pizzeria.name AS pizzeria_name, person.name
        FROM person
    	JOIN person_visits
        ON person.id = person_visits.person_id
    	JOIN pizzeria
        ON person_visits.pizzeria_id = pizzeria.id
        WHERE person.gender = 'female'
    )
SELECT pizzeria_name FROM
((SELECT pizzeria_name FROM males
    EXCEPT ALL
    (SELECT pizzeria_name FROM females))
UNION ALL
(SELECT pizzeria_name FROM females
    EXCEPT ALL
    (SELECT pizzeria_name FROM males))) AS foo
ORDER BY 1;