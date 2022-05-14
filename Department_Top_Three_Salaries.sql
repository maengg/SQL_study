-- 각 부서별 연봉이 높은 3순위까지 조회
SELECT sr.Department
     , sr.Employee
     , sr.salary
FROM (
    SELECT d.name AS Department
         , e.name AS Employee
         , salary
         , DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rank
    FROM Employee e
        INNER JOIN Department d ON departmentId = d.id
) sr -- DENSE_RANK로 모든 숫자 사용하여 salary 기준으로 순위 매긴 테이블
WHERE rank <= 3 -- 1, 2, 3위만 포함