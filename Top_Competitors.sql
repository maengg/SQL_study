-- 테스트에서 만점 받은 챌린지가 2가지 이상인 참가자의 id와 name을 조회.
-- 만점 받은 챌린지의 수를 기준으로 내림차순으로 정렬.
-- 만점 받은 챌린지 수가 같은 경우 id를 기준으로 오름차순으로 정렬
SELECT h.hacker_id, h.name FROM Submissions s
LEFT JOIN Challenges c ON s.challenge_id = c.challenge_id
LEFT JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
LEFT JOIN Hackers h ON s.hacker_id = h.hacker_id
WHERE d.score = s.score AND c.difficulty_level = d.difficulty_level
GROUP BY h.hacker_id, h.name
HAVING COUNT(*) >1
ORDER BY COUNT(*) DESC, h.hacker_id;