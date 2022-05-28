-- 2019년에 구매기록이 있는 사람의 id, join_date, 구매 횟수를 조회
SELECT user_id AS buyer_id
     , join_date
     , SUM(CASE WHEN YEAR(order_date) = '2019' THEN 1 ELSE 0 END) AS orders_in_2019 -- order_date가 2019년이면 1, 아니면 2
FROM Users u
    LEFT JOIN Orders o ON u.user_id = o.buyer_id
GROUP BY user_id