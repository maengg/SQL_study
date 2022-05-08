-- 가장 높은 total earnings와 해당 total earnings이 몇명인지 조회
-- earnings라는 특성 만들고 해당 특성으로 그룹화
SELECT (months*salary) earnings, COUNT(*) FROM Employee
GROUP BY earnings ORDER BY earnings DESC
-- earnings이 높은 순으로 정렬한 뒤 가장 위에 있는 행만 조회
LIMIT 1;

-- WHERE 절 서브쿼리를 이용한 풀이
SELECT salary*months AS earnings
    ,  COUNT(*)
FROM Employee
WHERE salary*months = (SELECT MAX(salary*months) FROM Employee) -- 가장 많은 earing과 일치하는 조건
GROUP BY earnings;

-- HAVING 절 서브쿼리를 이용한 풀이

SELECT salary*months AS earnings
    ,  COUNT(*)
FROM Employee
GROUP BY earnings
HAVING earnings = (SELECT MAX(salary*months) FROM Employee); -- 가장 많은 earing과 일치하는 조건