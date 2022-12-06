-- SELECT pizza_name, pizzeria.name AS pizzeria_name, price
-- FROM menu

SELECT pizza_name, pizzeria.name AS pizzeria_name, price
FROM menu
JOIN pizzeria
ON pizzeria.id= menu.pizzeria_id
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;

-- SELECT pizza_name, pizzeria.name AS pizzeria_name, price
-- FROM menu
-- FULL OUTER JOIN pizzeria
-- ON menu.pizzeria_id = pizzeria.id
-- WHERE pizza_name = 'pepperoni pizza' OR pizza_name = 'mushroom pizza'
-- ORDER BY pizza_name, pizzeria_name;