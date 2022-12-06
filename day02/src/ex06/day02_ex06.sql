
SELECT
    pizza_name, pizzeria.name AS pizzeria_name
from person_order
join menu m on person_order.menu_id = m.id
join pizzeria on m.pizzeria_id = pizzeria.id
join person p on person_order.person_id = p.id
WHERE p.name = 'Denis' or p.name = 'Anna'
ORDER BY pizza_name, pizzeria_name

