-- 3변의 길이가 주어진 테이블에서 삼각형 종류 작성하는 쿼리문.
SELECT CASE
        WHEN A+B > C AND B+C > A AND A+C > B THEN
        CASE
            WHEN A = B AND B = C THEN 'Equilateral'
            WHEN A = B OR B = C OR A = C THEN 'Isosceles'
            ELSE 'Scalene'
        END
        ELSE 'Not A Triangle'
        END
FROM TRIANGLES;