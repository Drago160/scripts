with ranked as (
select 
	Jobtitles.name
	, dense_rank() over (order by salary desc) as rank
from 
	Staff join Jobtitles
	using(jobtitle_id)
)
select 
	name
from ranked
where rank = 2
;
