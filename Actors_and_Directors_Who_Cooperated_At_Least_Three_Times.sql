-- 3번 이상 같이 작업한 적 있는 배우와 감독 id 조회
SELECT actor_id
     , director_id
FROM ActorDirector
GROUP BY actor_id, director_id
HAVING COUNT(*) >= 3 -- actor_id, direcotr_id로 그룹화 후 카운트 3 이상인 것만 조회