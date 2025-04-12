-- SELECT COUNT(*) FROM employees;
-- SELECT COUNT(*) FROM projects

-- CREATE VIEW Summary(NumEmpl) AS SELECT COUNT(*) FROM employees;
-- CREATE VIEW Summary2(NumProj) AS SELECT COUNT(*) FROM projects
-- 
-- SELECT NumEmpl, NumProj FROM Summary, Summary2;

--DROP VIEW Summary;
DROP VIEW Summary2;
