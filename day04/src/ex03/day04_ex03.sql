SELECT generated_date AS missing_dates from v_generated_dates
 WHERE generated_date NOT IN
 (SELECT visit_date FROM person_visits)
ORDER BY missing_dates;
--
-- SELECT visit_date FROM person_visits
