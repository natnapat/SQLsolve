/*
Placements
*/
select s.Name from Students s
inner join Friends f
on s.ID = f.ID
inner join Packages p1
on f.Friend_ID = p1.ID
inner join Packages p2
on s.ID = p2.ID
where p1.Salary > p2.Salary
order by p1.Salary;
