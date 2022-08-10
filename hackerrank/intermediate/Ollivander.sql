/*
Ollivander's Inventory
*/
select w.id, wp.age, w.coins_needed, w.power from Wands w
inner join Wands_Property wp
on w.code = wp.code
where wp.is_evil = 0 and w.coins_needed = (
    select min(coins_needed) from Wands
    inner join Wands_Property
    on Wands.code = Wands_Property.code
    where w.code = Wands_Property.code and w.power = Wands.power)
order by w.power desc, wp.age desc;
