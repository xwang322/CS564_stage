select husl1.stname
from housing_units_state_level as husl1, pop_estimate_nation_state_pr as ensp1
where husl1.state = ensp1.state and ensp1.sumlev = 40 
      and ((ensp1.estimatesbase2010 *1.0 / husl1.huestbase2010) >
(select ensp.estimatesbase2010
from pop_estimate_nation_state_pr as ensp
where ensp.sumlev = 10) *1.0 /
(select total(husl.huestbase2010)
from housing_units_state_level as husl)
);
