/*
African Cities
*/
select CITY.NAME from CITY
inner join COUNTRY
on CITY.COUNTRYCODE = COUNTRY.CODE
where COUNTRY.CONTINENT="Africa";