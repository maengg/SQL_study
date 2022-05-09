-- tip을 가장 많이 주는 날의 요일과 팁 합계를 조회
SELECT day, SUM(tip) AS tip_daily 
FROM tips 
GROUP BY day
ORDER BY tip_daily DESC -- tip이 높은 순으로 정렬하고 상위 1개만 조회
LIMIT 1;
