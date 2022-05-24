-- 자신의 매니저보다 salary가 더 높은 사람 조회
SELECT e1.name AS Employee
FROM Employee e1
    INNER JOIN Employee e2 ON e1.managerId = e2.id -- managerId와 id를 사용해서 Join
WHERE e1.salary > e2.salary;