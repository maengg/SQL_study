-- 우유와 요거트가 같이 담긴 장바구니를 조회하는 쿼리문.
-- GROUP BY 후 ID 별로 중복되지 않는 상품 개수가 1 초과인 경우만 조회.
-- 즉, 우유가 2개여도 1로 카운트.
SELECT CART_ID FROM CART_PRODUCTS
WHERE NAME IN ('Milk', 'Yogurt')
GROUP BY CART_ID
HAVING COUNT(DISTINCT NAME) > 1
ORDER BY CART_ID;

-- 서브쿼리를 사용한 쿼리문
-- 서브쿼리로 카트아이디와 상품명이 중복되지 않는 열들만 조회
-- 해당 서브쿼리문에서 ID별로 그룹화하고 카운트가 2개 이상인 것들만 조회.
SELECT CART_ID 
FROM (SELECT DISTINCT CART_ID, NAME FROM CART_PRODUCTS
    WHERE NAME IN ('Milk', 'Yogurt')) AS C
GROUP BY C.CART_ID
HAVING COUNT(*) > 1
ORDER BY CART_ID;