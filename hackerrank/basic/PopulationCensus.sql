/*
Population Census
*/
select sum(CITY.POPULATION) from CITY
inner join COUNTRY 
on CITY.CountryCode = COUNTRY.Code
where COUNTRY.CONTINENT = "Asia";