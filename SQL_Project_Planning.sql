
-- task_id, start_date, end_date 가 있는 테이블에서 개별 프로젝트를 조회.
-- end_date가 다음 행의 start_date와 일치하면 같은 프로젝트를 지속하고 있는 것.
-- 프로젝트 기간이 긴 순서대로 정렬하고 기간이 같은 경우 start_date를 기준으로 정렬
SELECT Start_Date, MIN(End_Date) FROM
-- 모든 end_date에 포함되지 않는 start_date만 가져오기. start_date가 end_date에 포함되면 같은 프로젝트.
(SELECT Start_Date FROM Projects WHERE Start_Date NOT IN 
    (SELECT End_date FROM Projects)) s_date,
-- start_date와 마찬가지로 모든 start_date에 포함되지 않는 end_date 가져오기.
(SELECT End_Date FROM Projects WHERE End_Date NOT IN 
    (SELECT Start_Date FROM Projects)) e_date
-- 위와 같이 조회하는 경우 하나의 start_date에 모든 end_date가 조합된다. ex) 10/1 | 10/2, 10/1 | 10/3 ...
-- start_date가 end_date보다 작은 경우만 조회하고 start_date를 기준으로 그룹화
WHERE Start_Date < End_Date GROUP BY Start_Date
-- 기간을 우선수위로 정렬하고 그 다음 순위로는 start_date 기준으로 정렬
-- MIN을 사용하는 건 가장 작은 end_date가 해당 프로젝트의 진짜 end_date이기 때문.
ORDER BY DATEDIFF(Start_Date, MIN(End_Date)) DESC, Start_Date;