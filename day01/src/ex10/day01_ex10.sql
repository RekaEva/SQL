
SELECT person.name AS person_name, menu.pizza_name, pizzeria.name AS pizzeria_name
    FROM person_order
    JOIN menu ON person_order.menu_id = menu.id
    JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
    JOIN person ON person_order.person_id = person.id
    ORDER BY 1, 2, 3;