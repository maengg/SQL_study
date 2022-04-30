--SQLite
-- 각 지역별로 어떤 카테고리가 많이 팔리는지 확인하기 위한 쿼리문.
-- Pivot table 방식
SELECT region AS Region,
COUNT(DISTINCT(CASE WHEN category = 'Furniture' THEN order_id END)) AS 'Furniture',
COUNT(DISTINCT(CASE WHEN category = 'Office Supplies' THEN order_id END)) AS 'Office Supplies',
COUNT(DISTINCT(CASE WHEN category = 'Technology' THEN order_id END)) AS 'Technology'
FROM records
GROUP BY region
ORDER BY region;