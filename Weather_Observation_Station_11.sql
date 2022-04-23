-- 모음으로 시작하지 않거나 끊나지 않는 도시 이름 조회
-- 정규표현식 사용
SELECT DISTINCT(CITY) FROM STATION
WHERE CITY REGEXP '^[^aeiou]|[^aeiou]$';