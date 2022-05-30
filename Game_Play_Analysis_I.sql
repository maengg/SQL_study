-- 플레이어가 처음 로그인한 날 조회
SELECT player_id
     , MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id