-- 75 marks 이상인 학생 조회.
-- 정렬은 마지막 3글자로, 겹치는 경우 ID 기준으로 정렬.
SELECT Name FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;