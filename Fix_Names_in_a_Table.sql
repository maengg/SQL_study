-- 이름의 앞 글자는 대문자 나머지는 소문자로 변형해서 조회
SELECT user_id
     , CONCAT(UPPER(LEFT(name,1)), LOWER(SUBSTR(name,2))) AS name -- 대문자 소문자로 바꾼뒤 CONCAT으로 합치기
FROM Users
ORDER BY user_id