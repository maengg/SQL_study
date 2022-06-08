-- Big country 조회
SELECT name
     , population
     , area
FROM World
WHERE area >= 3000000 OR population >= 25000000 -- Big country 조건