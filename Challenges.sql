-- WITH 절 사용
WITH counter AS (
    SELECT Hackers.hacker_id
        ,  Hackers.name
        ,  COUNT(*) AS challenges_created
    FROM Challenges
        INNER JOIN Hackers ON Challenges.hacker_id = Hackers.hacker_id
    GROUP BY Hackers.hacker_id, Hackers.name
) -- 각 id 별로 몇 문제 만들었는지 나타내는 테이블

SELECT counter.hacker_id
    ,  counter.name
    ,  counter.challenges_created
FROM counter
WHERE challenges_created = (
    SELECT MAX(challenges_created)
    FROM counter
) -- 문제를 가장 많이 만든 수와 동일한지
OR challenges_created IN (
    SELECT challenges_created
    FROM counter
    GROUP BY challenges_created
    HAVING COUNT(*) = 1
) -- 문제를 만든 수가 중복되는 경우는 제외
ORDER BY counter.challenges_created DESC, counter.hacker_id; -- 문제 수를 많이 만든 순으로 정렬, 문제 수가 같은 경우 id 기준으로 정렬