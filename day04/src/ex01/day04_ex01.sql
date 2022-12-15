-- CREATE VIEW v_persons_name AS SELECT name FROM person
-- ORDER BY name;

SELECT name FROM v_persons_female
UNION ALL
SELECT name from v_persons_male
ORDER BY name;

