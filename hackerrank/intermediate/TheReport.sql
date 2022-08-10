/*
The Report
*/
SELECT 
    case 
        when g.grade<8 then NULL 
        else s.name 
    end, 
    g.Grade, s.Marks 
FROM Students s, Grades g 
Where s.Marks >= g.Min_Mark AND s.marks <= g.Max_Mark 
ORDER BY g.Grade DESC, name, s.Marks;