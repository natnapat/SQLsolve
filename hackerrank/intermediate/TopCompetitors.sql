/*
Top Competitors
*/
select h.hacker_id, h.name from Hackers h
inner join (
    select Submissions.hacker_id, Submissions.challenge_id from Submissions
    inner join Challenges on Submissions.challenge_id = Challenges.challenge_id
    inner join Difficulty on Challenges.difficulty_level = Difficulty.difficulty_level
    where Submissions.score = Difficulty.score
)as s on h.hacker_id = s.hacker_id
group by h.hacker_id, h.name
having count(s.challenge_id) > 1
order by count(s.challenge_id) desc, h.hacker_id;