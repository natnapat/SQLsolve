/*
Weather Observation Station 14
*/
select truncate(max(LAT_N),4) from STATION where LAT_N < 137.2345;