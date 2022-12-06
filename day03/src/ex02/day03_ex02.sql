WITH not_ordered AS
    (SELECT id AS menu_id
        FROM menu
        EXCEPT
        SELECT menu_id
        FROM person_order)
SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM not_ordered
    JOIN  menu on menu.id = menu_id
    JOIN pizzeria on menu.pizzeria_id = pizzeria.id
ORDER BY pizza_name, price;
