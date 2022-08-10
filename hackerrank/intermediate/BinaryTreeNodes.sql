/*
Binary Tree Nodes
*/
select b.N, 
case 
    when b.P is not null then
        case
            when (select count(*) from bst where P = b.n) = 0
            then "Leaf"
            else "Inner"
        end
    else "Root"
end
from bst b
order by b.N;