-- 일 주문량이 10개 이상인 날 중 가구 카테고리의 판매량이 40% 이상인 날 조회
SELECT order_date
     , COUNT(DISTINCT CASE WHEN category = 'Furniture' THEN order_id END) AS furniture -- 가구인 경우만 count
     , ROUND(COUNT(DISTINCT CASE WHEN category = 'Furniture' THEN order_id END) / COUNT(DISTINCT order_id)*100,2) AS furniture_pct -- 전체 주문 비중 에서 가구 카테고리 주문 비중
FROM records
GROUP BY order_date
HAVING COUNT(DISTINCT order_id) >= 10 AND furniture_pct >= 40 -- 일 주문량과 가구 카테고리 주문 비중 조건