-- 각 요일과 시간대별 평균 팁과 평균 일행 조회
SELECT day, time, ROUND(AVG(tip), 2) , ROUND(AVG(size),2)
FROM tips
GROUP BY day, time ORDER BY day, time;