-- 등급이 8이하인 경우 이름은 NULL로 처리
-- 등급 순으로 정렬하고 이름은 알파벳 순으로 정렬.
SELECT IF (g.Grade < 8, NULL, s.Name), g.Grade, s.Marks
FROM Students s JOIN Grades g
WHERE s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name;