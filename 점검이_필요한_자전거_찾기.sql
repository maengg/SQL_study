-- 1월 한달간 50km 이상 탄 자전거 id 조회
SELECT bike_id
FROM rental_history
WHERE rent_at BETWEEN '2021-01-01' AND '2021-02-01' -- 대여 시기가 1월달인 경우
GROUP BY bike_id
HAVING sum(distance) >= 50000 -- 거리의 합이 50000m 이상인 자전거