-- 자신의 베스트 프렌드가 더 높은 연봉을 받은 사람의 이름을 조회
-- 베스트 프렌드의 연봉으로 정렬.
SELECT Name FROM Students s
LEFT JOIN Friends f ON s.ID = f.ID
LEFT JOIN Packages p1 ON s.ID = p1.ID
LEFT JOIN Packages p2 ON f.Friend_ID = p2.ID
WHERE p2.Salary > p1.salary
ORDER BY p2.salary;