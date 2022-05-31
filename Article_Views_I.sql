-- 자신의 article을 한번이라도 본적 있는 author_id 반환
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id