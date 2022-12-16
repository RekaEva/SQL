DROP VIEW if exists
v_persons_female,
    v_persons_male,
    v_generated_dates,
    v_symmetric_union;


DROP MATERIALIZED VIEW IF EXISTS
    mv_dmitriy_visits_and_eats;