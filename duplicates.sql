select distinct
	email as duplicate_emails
from Staff as main_Staff
where email in 
	(
		select email
		from Staff
		where 1=1
		and email = main_Staff.email
		and main_Staff.staff_id != staff_id
	)
;
