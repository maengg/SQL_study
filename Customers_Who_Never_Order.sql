-- 주문한 적 없는 고객 조회
SELECT name AS Customers
FROM Customers c
    LEFT JOIN Orders o ON c.id = o.customerId -- NULL 값 이용하기 위해 LEFT JOIN 사용
WHERE o.id IS NULL    