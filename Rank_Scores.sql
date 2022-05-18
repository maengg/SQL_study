-- score를 기준으로 랭크 매기기. 단, 동점자는 같은 순위이고 그 후에 순위는 연속적인 정수여야 함.
SELECT score
     , DENSE_RANK() OVER (ORDER BY score DESC) AS rank -- score 기준으로 dense_rank
FROM Scores;