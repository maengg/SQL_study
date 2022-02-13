-- 공간을 두개 소유한 헤비 유저의 정보를 조회하는 쿼리문
-- 헤비 유저가 소유한 공간의 모든 정보를 다 조회해야 하기에, GROUP BY 결과로 보여주면 안됨.
-- 서브쿼리로 헤비유저의 ID를 조회한후 ID가 서브쿼리문에 포함되어 있는 데이터만 조회.
SELECT * FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(ID) >= 2) 
ORDER BY ID;