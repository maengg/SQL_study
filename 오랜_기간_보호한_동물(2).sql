-- 입양을 간 동물들 중 가장 오래 보호소에 있었던 동물 2마리를 조회하는 쿼리문
-- 보호소에 들어온 테이블과 나간 테이블을 Join 후 날짜의 차이로 정렬
SELECT I.ANIMAL_ID, I.NAME FROM ANIMAL_INS AS I
LEFT JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY O.DATETIME - I.DATETIME DESC LIMIT 2;