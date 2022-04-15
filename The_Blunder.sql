-- 월급의 평균을 조회하는데, 0이 눌리지 않은 경우와 실제 값의 차이를 조회
-- Replace 사용해서 0을 공백으로 전환
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM EMPLOYEES;