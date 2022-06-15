-- 주식 항목별로 이득인지 손해인지 조회
SELECT stock_name
     , SUM(IF(operation = 'Sell', price, -price)) AS capital_gain_loss -- Sell인 경우 +, Buy인 경우 -
FROM Stocks
GROUP BY stock_name