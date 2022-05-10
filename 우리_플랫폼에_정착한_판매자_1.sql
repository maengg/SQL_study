-- 판매자 중 주문 건수가 100개 이상인 판매자의 ID와 주문 건수 조회
SELECT seller_id
    ,  COUNT(DISTINCT(order_id)) AS orders -- 중복 제거하고 count
FROM olist_order_items_dataset
GROUP BY seller_id
HAVING orders >= 100