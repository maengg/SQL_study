-- 모음으로 시작하는 도시 이름 조회
SELECT CITY FROM STATION
WHERE CITY LIKE 'a%' OR 
    CITY LIKE 'e%' OR 
    CITY LIKE 'i%' OR 
    CITY LIKE 'o%' OR 
    CITY LIKE 'u%';