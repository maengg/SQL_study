-- SQLite
-- 현재 살아있지 않은 작가 중 등록된 작품이 없는 작가의 id와 이름 조회
SELECT a.artist_id, name FROM artists a
LEFT JOIN artworks_artists w ON a.artist_id = w.artist_id
WHERE w.artwork_id IS NULL 
AND a.death_year IS NOT NULL;