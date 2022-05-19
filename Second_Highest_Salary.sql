-- 2번째로 연봉이 높은 연봉 조회. 단, 2번째로 높은 연봉이 없는 경우 null 반환
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee); -- 제일 높은 연봉 제외