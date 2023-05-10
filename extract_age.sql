	
select
	staff_id
	, name
	, ((CURRENT_DATE - birthdate) / 365) as age
from Staff
;
