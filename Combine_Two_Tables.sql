-- 주소가 없는 경우는 null을 반환하도록 조회
SELECT firstName
     , lastName
     , city
     , state
FROM Person p
    LEFT JOIN Address a ON p.personId = a.personId -- null값 반환해야 해서 LEFT JOIN 사용