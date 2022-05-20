-- 중복된 이메일 조회
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(*) >= 2; -- email 별로 그룹화 후 2개 이상 카운트된 경우만 조회