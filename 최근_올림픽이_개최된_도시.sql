-- 2000년도 이후 개최된 올림픽 조회
SELECT year
     , UPPER(LEFT(city,3))
FROM games
WHERE year >= 2000
ORDER BY year DESC;