select esasro.age as "Age",
       abs(sum(esasro.popestimate2011) - sum(esasro.popestimate2010)) as "Difference",
Case When sum(esasro.popestimate2011) - sum(esasro.popestimate2010) > 0 then "increased"
     When sum(esasro.popestimate2011) - sum(esasro.popestimate2010) = 0 then "same"
     WHen sum(esasro.popestimate2011) - sum(esasro.popestimate2010) < 0 then "decreased"
     end
as "Indicator"
from pop_estimate_state_age_sex_race_origin as esasro
group by esasro.age;
