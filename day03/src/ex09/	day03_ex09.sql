INSERT INTO person_visits VALUES ((SELECT max(id) FROM person_visits) + 1,
                         		(SELECT id FROM person WHERE name = 'Denis'),
                        		(SELECT id FROM pizzeria WHERE name = 'Dominos'), '2022-02-24'),
								((SELECT max(id) FROM person_visits) + 2,
                         		(SELECT id FROM person WHERE name = 'Irina'),
                        		(SELECT id FROM pizzeria WHERE name = 'Dominos'), '2022-02-24');

SELECT * from person_visits