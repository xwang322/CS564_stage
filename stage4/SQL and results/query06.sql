select H.stname as "State_Name",
(select total(esasro1.popestimate2011)
 from pop_estimate_state_age_sex_race_origin as esasro1
 where esasro1.age >= 21 and esasro1.sumlev = 40 and esasro1.state = esasro.state) *100/
(select total(esasro2.popestimate2011)
 from pop_estimate_state_age_sex_race_origin as esasro2
 where esasro2.sumlev = 40 and esasro2.state = esasro.state)*100 as "Percentage in %"
from pop_estimate_state_age_sex_race_origin as esasro, housing_units_state_level as H
where esasro.sumlev = 40 and esasro.state= H.state
group by esasro.state;

