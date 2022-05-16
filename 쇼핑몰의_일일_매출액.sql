-- 2018년 1월 1일 이후 쇼핑몰의 일일 매출액 조회
SELECT DATE(order_purchase_timestamp) AS dt
     , ROUND(SUM(payment_value),2) AS revenue_daily
FROM olist_orders_dataset o 
  INNER JOIN olist_order_payments_dataset p ON o.order_id = p.order_id -- payment_value를 가져오기 위해 join
WHERE order_purchase_timestamp >= '2018-01-01' 
GROUP BY DATE(order_purchase_timestamp) -- 날짜 기준으로 그룹화
ORDER BY dt