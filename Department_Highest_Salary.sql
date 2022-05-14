-- 각 부서에서 가장 높은 연봉을 받는 직원 조회

-- WHERE 절 서브쿼리
SELECT Department.name AS Department
    ,  Employee.name AS Employee
    ,  Employee.salary
FROM Employee
JOIN Department ON Employee.departmentId = Department.id -- 부서 이름을 조회하기 위해 Department 테이블과 join
WHERE (departmentId, salary) IN (
    SELECT departmentId
        ,  MAX(salary)
    FROM Employee
    GROUP BY departmentId
)--각 부서별 가장 높은 연봉과 id 조회하는 서브쿼리;


-- FROM 절 서브쿼리
SELECT d.name AS Department
    ,  e.name AS Employee
    ,  e.salary
FROM Employee AS e
    INNER JOIN( -- 부서에서 가장 많이 벌 때에 그 임금과 부서 id
        SELECT departmentId, MAX(salary) As max_salary
        FROM Employee
        GROUP BY departmentId
        ) AS dh ON e.departmentId = dh.departmentId 
                AND e.salary = dh.max_salary
    INNER JOIN Department AS d on d.id = e.departmentId

-- WINDOW 함수 MAX
SELECT ms.Department
     , ms.Name As Employee
     , ms.salary AS Salary
FROM (
    SELECT d.name AS Department
         , e.name
         , e.salary
         , MAX(salary) OVER (PARTITION BY e.departmentId) AS max_salary
    FROM Employee e
        INNER JOIN Department d On e.departmentId = d.id
) ms
WHERE ms.salary = max_salary