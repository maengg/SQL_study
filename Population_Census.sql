-- asia 대륙에 있는 모든 도시의 인구를 합한 값을 보여주는 쿼리문.
SELECT SUM(c.POPULATION) FROM CITY c
LEFT JOIN COUNTRY t ON c.COUNTRYCODE = t.CODE
WHERE t.CONTINENT = 'Asia';