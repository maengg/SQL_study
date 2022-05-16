-- 멘토와 멘티 리스트 조회 단, 멘토와 멘티는 다른 부서
SELECT e1.employee_id AS mentee_id
     , e1.name AS mentee_name
     , e2.employee_id AS mentor_id
     , e2.name AS mentor_name
FROM employees e1
  LEFT JOIN employees e2 ON e1.department != e2.department -- 다른 부서끼리 매칭
  AND e2.join_date <= '2019-12-31' -- 2021-12-31을 기준으로 재직한 지 2년 된 경우 멘티
WHERE e1.join_date BETWEEN '2021-09-01' and '2021-12-31' -- 2021-12-31을 기준으로 3개월 이내 입사한 경우 멘토
ORDER BY mentee_id, mentor_id