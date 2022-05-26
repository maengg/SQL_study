-- 2019-07-27을 포함해서 30일 간의 DAU 구하기
SELECT activity_date AS day
     , COUNT(DISTINCT user_id) AS active_users -- 유니크한 user_id만 카운트
FROM Activity
WHERE activity_date BETWEEN DATE_ADD('2019-07-27', INTERVAL -29 day) AND '2019-07-27' -- 2019-07-27 기준으로 29일 전부터 7-27일까지 조회
GROUP BY day