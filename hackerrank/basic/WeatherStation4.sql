/*
Weather Observation Station 4
*/
SELECT count(CITY) - count(DISTINCT CITY) FROM STATION;  