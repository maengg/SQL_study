
-- SQLite
-- 8/2 ~ 8/9 일별 방문자 수 집계
SELECT event_date_kst AS dt
    , COUNT(DISTINCT(user_pseudo_id)) AS users -- 중복 제거해서 방문자 수 체크
FROM ga
WHERE event_date_kst >= '2021-08-02'
AND event_date_kst <= '2021-08-09'
GROUP BY event_date_kst;