-- SQLite
-- 2017년 1월 한달간 택배사에는 도착했지만, 고객사에 도착하지 않은 경우 택배사 도착날 기준으로 집계하여 건수 조회
SELECT DATE(order_delivered_carrier_date) AS delivered_carrier_date, COUNT(*) AS orders
FROM olist_orders_dataset
WHERE order_delivered_carrier_date >= '2017-01-01'
AND order_delivered_carrier_date < '2017-02-01'
AND order_delivered_customer_date IS NULL
GROUP BY DATE(order_delivered_carrier_date)
ORDER BY DATE(order_delivered_carrier_date);