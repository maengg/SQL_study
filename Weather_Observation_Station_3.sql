-- ID가 짝인 CITY 이름 조회하기. 대신, 중복은 제거.
SELECT DISTINCT(CITY) FROM STATION
WHERE (ID%2) =0;