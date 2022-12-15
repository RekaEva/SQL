CREATE VIEW v_price_with_discount AS
(SELECT person.name,
       menu.pizza_name,
       menu.price,
       menu.price * 0.9 AS discount_price
    FROM person_order
    INNER JOIN person ON person_order.person_id = person.id
    INNER JOIN menu ON person_order.menu_id = menu.id
ORDER BY name, pizza_name);


