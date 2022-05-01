-- SQLite
-- 2000년대 이후 수상 기록만을 고려했을때 2개 이상의 국적으로 메달을 획득한 선수 이름 조회.
SELECT a.name FROM records AS r
LEFT JOIN athletes AS a ON r.athlete_id = a.id
LEFT JOIN games AS g ON r.game_id = g.id
LEFT JOIN teams AS t ON r.team_id = t.id
WHERE year >= 2000 AND medal IS NOT NULL
GROUP BY a.id HAVING COUNT(DISTINCT(t.id)) >= 2
ORDER BY a.name;