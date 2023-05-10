select
	staff_id
	, name
	, case 
	  when extract(month from CURRENT_DATE)>extract(month from birthdate) then 
			 	extract(year from CURRENT_DATE)-extract(year from birthdate)
	    when extract(month from CURRENT_DATE)=extract(month from birthdate)
			and extract(day from CURRENT_DATE)>=extract(day from birthdate) then
				extract(year from CURRENT_DATE)-extract(year from birthdate)
		else extract(year from CURRENT_DATE)-extract(year from birthdate) - 1
		end as age
from Staff
