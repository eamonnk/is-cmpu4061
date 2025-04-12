-- SELECT * from cars
-- SELECT carMake, reg_no, carOwner from cars WHERE carOwner LIKE "Jim Smith"
-- SELECT * FROM cars WHERE colour LIKE "blue"
-- SELECT carMake, max(price), min(price) FROM cars GROUP BY carMake
-- SELECT * FROM cars ORDER BY price ASC;
-- SELECT COUNT(carMake) FROM cars WHERE colour LIKE "red"
-- SELECT SUM(price) FROM cars WHERE carMake = "ford"
-- SELECT MAX(price) AS Max_Price, MIN(price) AS Min_Price, AVG(price) AS Avg_Price FROM cars
-- not sure this is working.....SELECT MAX(price) AS Max_Price, AVG(price) AS Avg_Price, MIN(price) AS Min_Price FROM cars GROUP BY carMake
SELECT MAX(price) AS Max_Price, AVG(price) AS Avg_Price , MIN(price) AS Min_Price  FROM cars WHERE reg_no 
