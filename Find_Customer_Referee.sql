-- refreree_id 컬럼이 Null 이거나 2가 아닌 경우만 조회
SELECT name
FROM Customer
WHERE referee_id IS NULL
OR referee_id != 2;