-- 이름이 없는 동물은 'No name'으로 나오게 하는 쿼리문
-- ID를 기준으로 정렬.
SELECT ANIMAL_TYPE, IFNULL(NAME, 'No name') AS NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS ORDER BY ANIMAL_ID;