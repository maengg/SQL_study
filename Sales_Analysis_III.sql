-- 2019년 1분기에만 팔린 상품 조회
SELECT s.product_id
     , p.product_name
FROM Sales s
    INNER JOIN Product p ON s.product_id = p.product_id
GROUP BY s.product_id
HAVING MIN(s.sale_date) >= '2019-01-01' AND MAX(s.sale_date) <= '2019-03-31' -- 제일 오래된 날이 01-01 이후고 제일 최근이 03-31 전인 것만 조회