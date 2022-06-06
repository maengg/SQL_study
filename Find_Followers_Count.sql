-- 각 유저별 팔로워 수 조회
SELECT user_id
     , COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id