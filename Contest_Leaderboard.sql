-- 테스트 참가자의 total_score를 조회.
-- 같은 challenge에 여러번 제출한 점수가 있는 경우 최대 점수만 사용해서 더함.
SELECT h.hacker_id, name, SUM(best_score) AS total_score 
FROM Hackers h
LEFT JOIN
(SELECT hacker_id, MAX(score) AS best_score FROM Submissions
GROUP BY hacker_id, challenge_id) AS max_score
ON h.hacker_id = max_score.hacker_id
GROUP BY h.hacker_id, name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id;