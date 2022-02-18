-- 중성화 됐는지 아닌지 확인하는 쿼리문
-- 중성화 됐으면 O, 아니면 X
SELECT ANIMAL_ID, NAME,IF (SEX_UPON_INTAKE LIKE 'Intact%', 'X', 'O') AS 중성화 
FROM ANIMAL_INS ORDER BY ANIMAL_ID;
