-- 가장 높은 total earnings와 해당 total earnings이 몇명인지 조회
-- earnings라는 특성 만들고 해당 특성으로 그룹화
SELECT (months*salary) earnings, COUNT(*) FROM Employee
GROUP BY earnings ORDER BY earnings DESC
-- earnings이 높은 순으로 정렬한 뒤 가장 위에 있는 행만 조회
LIMIT 1;