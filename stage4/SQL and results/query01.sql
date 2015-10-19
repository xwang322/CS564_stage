select housing.stname as "State Name"
from housing_units_state_level as housing
where abs(housing.HUEST_2011 - housing.Huest_2010) > 10000;
