-- 전 날에 비해 온도가 높은 날의 id 조회
SELECT w2.id
FROM Weather w1
    INNER JOIN Weather w2 ON w1.recordDate = DATE_SUB(w2.recordDate, INTERVAL 1 day) -- w1에 하루 전날 데이터를 join
WHERE w1.temperature < w2.temperature