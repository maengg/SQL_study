-- 할부 단위별 주문수, 최소 금액, 최대 금액, 평균 금액 조회
SELECT payment_installments
    ,  COUNT(DISTINCT(order_id)) AS order_count
    ,  MIN(payment_value) AS min_value
    ,  MAX(payment_value) AS max_value
    ,  AVG(payment_value) AS avg_value
FROM olist_order_payments_dataset
WHERE payment_type = 'credit_card' -- 지불 방법이 신용 카드인 경우만 조회
GROUP BY payment_installments;