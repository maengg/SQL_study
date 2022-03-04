-- 보호소에 들어온 동물 이름 중 두번 이상 쓰인 이름과 그 횟수를 조회.
-- 이름이 없는 경우는 제외.
SELECT NAME, COUNT(*) AS COUNT FROM ANIMAL_INS
GROUP BY NAME HAVING COUNT(*) >= 2 AND NAME IS NOT NULL
ORDER BY NAME;