/*
Weather Observation Station 5
*/
select CITY, length(CITY) from STATION
where CITY = (select CITY from STATION order by length(CITY), CITY limit 1);

select CITY, length(CITY) from STATION
where CITY = (select CITY from STATION order by length(CITY) desc, CITY limit 1);