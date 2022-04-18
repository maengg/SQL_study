-- 아직 입양가지 못한 동물들 중 가장 오래된 동물 3마리 조회하는 쿼리문.
-- 테이블 Join 후 입양 기록을 가진 테이블의 Id가 NULL인 것을 조회.
SELECT I.NAME, I.DATETIME FROM ANIMAL_INS AS I
LEFT JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.ANIMAL_ID IS NULL ORDER BY I.DATETIME LIMIT 3;

-- 서브쿼리로 조회.
SELECT NAME, DATETIME FROM ANIMAL_INS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
ORDER BY DATETIME LIMIT 3;