-- 시간대별로 입양이 얼머나 활발하게 이뤄지는 지 조회.
SELECT HOUR(DATETIME) AS HOUR, COUNT(*) AS COUNT  FROM ANIMAL_OUTS
GROUP BY HOUR(DATETIME) HAVING HOUR >= 9 and HOUR <= 19
ORDER BY HOUR;