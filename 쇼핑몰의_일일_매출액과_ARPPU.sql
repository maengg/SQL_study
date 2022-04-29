-- 2018-01-01 이후 각 일자별 주문 고객 수, 매출액, ARPPU 조회
SELECT DATE(o.order_purchase_timestamp) AS dt, COUNT(DISTINCT(o.customer_id)) AS pu, ROUND(SUM(p.payment_value),2) AS revenue_daily,
ROUND(SUM(p.payment_value)/COUNT(DISTINCT(o.customer_id)),2) AS arppu
FROM olist_orders_dataset AS o
JOIN olist_order_payments_dataset AS p
ON o.order_id = p.order_id
WHERE order_purchase_timestamp > '2018-01-01'
GROUP BY DATE(order_purchase_timestamp)
ORDER BY DATE(order_purchase_timestamp);