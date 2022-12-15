WITH Andrey_visit (pizzeria_name) AS
    (SELECT pizzeria.name AS pizzeria_name
        FROM pizzeria
        JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
        JOIN person ON person.id = person_visits.person_id
    WHERE person.name = 'Andrey'),

     Andrey_order (pizzeria_name) AS
    (SELECT pizzeria.name AS pizzeria_name
        FROM pizzeria
        JOIN menu ON menu.pizzeria_id = pizzeria.id
        JOIN person_order ON person_order.menu_id = menu.id
        JOIN person ON person.id = person_order.person_id
    WHERE person.name = 'Andrey')

SELECT pizzeria_name FROM  Andrey_visit
    EXCEPT
SELECT pizzeria_name FROM Andrey_order
ORDER BY pizzeria_name;
