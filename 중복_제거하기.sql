-- 동물의 이름은 총 몇개인지 조회.
-- 중복인 경우 하나로 치고, Null인 경우 count하지 않는다.
SELECT COUNT(DISTINCT(NAME)) AS count FROM ANIMAL_INS
WHERE NAME != 'NULL'