/*
Contest LeaderBoard
*/
select h.hacker_id, h.name, sum(s.max_score) as total_score from Hackers as h
inner join (
            select hacker_id, challenge_id, max(score) as max_score
            from Submissions
            group by hacker_id, challenge_id
            ) as s
on h.hacker_id = s.hacker_id
group by h.hacker_id, h.name
having total_score > 0
order by total_score desc, h.hacker_id;
