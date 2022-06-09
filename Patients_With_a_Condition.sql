-- 당뇨병이 있는 환자 조회. 당뇨병이 있는 환자의 conditions 컬럼은 접두사가 DIAB1 이다.
SELECT *
FROM Patients
WHERE conditions LIKE('DIAB1%') 
OR conditions LIKE('% DIAB1%') 