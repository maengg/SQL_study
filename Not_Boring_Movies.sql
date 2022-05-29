-- id가 홀수이면서 지루하지 않은 영화 조회
SELECT *
FROM cinema
WHERE MOD(id,2) = 1 -- 2로 나눠서 나머지 1이면 홀수
AND description != 'boring'
ORDER BY rating DESC;