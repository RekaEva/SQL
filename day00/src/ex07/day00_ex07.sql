SELECT id, name,
CASE
    WHEN (age >= 10 and age <= 20) then 'interval #1'
    WHEN (age > 20 and age < 24) then 'interval #2'
    ELSE 'interval #3'
END AS interval
from person
ORDER BY interval;
