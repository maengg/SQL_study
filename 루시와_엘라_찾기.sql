-- 특정 이름을 가진 동물을 조회하는 쿼리문.
-- IN을 사용하여 특정 이름이 들어간 동물들을 조회.
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID;