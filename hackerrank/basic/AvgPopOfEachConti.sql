/*
Average Population of Each Continent
*/
select COUNTRY.CONTINENT, floor(avg(CITY.POPULATION)) from COUNTRY
inner join CITY
on COUNTRY.CODE = CITY.COUNTRYCODE
group by COUNTRY.CONTINENT;