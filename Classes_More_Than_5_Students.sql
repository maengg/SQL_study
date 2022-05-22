-- 학생이 최소 5명 이상인 수업 조회
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(*) >= 5 -- group by 후 count 5개 이상인 것만 조회