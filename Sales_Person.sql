-- RED 라는 이름의 회사와 거래한 적 없는 사람 조회
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (SELECT sales_id
                        FROM Orders o
                            LEFT JOIN Company c ON o.com_id = c.com_id
                        WHERE c.name = 'RED'
                        ) -- 서브 쿼리문으로 RED라는 회사와 거래한 적 있는 사람의 id 조회 후 NOT IN 사용