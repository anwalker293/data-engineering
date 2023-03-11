/*
Problem 4

For each of the parts below, I have provided you space to both add your answer to the question,
to describe how you took the result of your query to answer the question, and to provide the
query itself.
*/


----------------------------------------------------------------------
-- Part A
-- What is the earliest formed band in the data set?
----------------------------------------------------------------------
-- ANSWER: Alice Cooper, in 1964
-- Description: I first wanted to more investigate the data set, so 
--   I just asked for all of the rows in metal_bands, for all of the 
--   information, and ordered by date/formed (ascending, also, just
--   in case). Then, for preciseness (idk? accounting for points
--   possibly taken), cleaned up the query a little bit (e.g. adding
--   distinct, even though probably was unnecessary)
-- Query below
SELECT DISTINCT band_name, formed -- could also do * for more info
FROM metal_bands
ORDER BY formed ASC;


----------------------------------------------------------------------
-- Part B
-- How many rows are duplicated?
----------------------------------------------------------------------
-- ANSWER:
-- Description:
-- Query below











----------------------------------------------------------------------
-- Part C
-- How many bands have "death" appearing in their name?
----------------------------------------------------------------------
-- ANSWER:
-- Description:
-- Query below











----------------------------------------------------------------------
-- Part D
-- Second most popular German "Viking folk" style band?
----------------------------------------------------------------------
-- ANSWER:
-- Description:
-- Query below











----------------------------------------------------------------------
-- Part E
-- Number of bands which formed and split in the same year?
----------------------------------------------------------------------
-- ANSWER:
-- Description:
-- Query below










