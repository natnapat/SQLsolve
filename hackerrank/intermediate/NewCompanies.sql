/*
New Companies
*/
select
    c.company_code,
    c.founder,
    count(distinct lm.lead_manager_code),
    count(distinct sm.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
from Company c
inner join Lead_Manager lm
on c.company_code = lm.company_code
inner join Senior_Manager sm
on lm.lead_manager_code = sm.lead_manager_code
inner join manager m 
on m.senior_manager_code = sm.senior_manager_code
inner join employee e
on e.manager_code = m.manager_code

group by c.company_code, c.founder
order by c.company_code asc;