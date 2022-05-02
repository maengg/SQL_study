-- SQLite
-- 골프에 출전한 선수 id 출력
SELECT DISTINCT(r.athlete_id) FROM events e
LEFT JOIN records r on e.id = r.event_id
WHERE sport = 'Golf';