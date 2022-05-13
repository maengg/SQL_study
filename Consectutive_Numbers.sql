-- 연속 3번 등장한 숫자 조회
SELECT DISTINCT Num AS ConsecutiveNums
FROM (
    SELECT Num
         , LEAD(num, 1) OVER (ORDER BY id) AS next
         , LEAD(num, 2) OVER (ORDER BY id) AS after_next
    FROM Logs
) l -- 아래와 그 아래 행을 이어서 붙인다. 
WHERE l.Num = l.next AND l.Num = l.after_next -- 이어진 3개가 모두 같으면 연속적으로 3번 나타난 것