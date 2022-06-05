-- 주문을 많이한 고객 번호 조회
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC -- order 수를 기준으로 정렬
LIMIT 1; -- 상위 1개만 조회