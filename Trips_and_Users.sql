-- ban 되지 않은 client와 driver 중 취소율 구하기
SELECT request_at AS Day, 
     , ROUND(COUNT(CASWE WHEN status != 'completed' THEN id END) / COUNT(*), 2) AS 'Cancellation Rate'
FROM Trips
WHERE client_Id IN (SELECT Users_Id FROM Users WHERE banned ='No') -- ban 되지 않은 client
AND driver_Id in (SELECT Users_Id FROM Users WHERE banned ='No') -- ban 되지 않은 driver
AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY request_at;