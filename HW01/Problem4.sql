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
-- ANSWER: 51
-- Description: At first, I just wanted to query the items that were duplicates
-- (actually, I wanted to save this column output into a variable somehow, but 
-- I was unsure how to do that, so I saved it into a temporary table instead); 
-- thus, the first query groups by each band name and then, if it occurs more
-- than once (AKA it's a duplicate), the query will pick it up. In order to
-- account for the fact that COUNT(*) will also sum up the original row, I
-- subtract 1 for each of these (only summing up the duplicates).
-- Thus, in the second query, I sum over the num_duplicates column to get
-- the total number of duplicate metal bands.
-- (I just did duplicate metal bands, assuming copyright for metal bands
-- having the same name/being distinct)
-- Query below
CREATE TEMP TABLE duplicates AS (
  SELECT band_name, COUNT(*)-1 as num_duplicates
	FROM metal_bands
	GROUP BY band_name
	HAVING COUNT(*) > 1
);

SELECT SUM(num_duplicates)
FROM duplicates;

----------------------------------------------------------------------
-- Part C
-- How many bands have the colors black or white appearing somewhere in their name (case insensitive here)? 
----------------------------------------------------------------------
-- ANSWER: 62
-- Description: In the first query, (a) I made sure to query all band names that contained white or black 
-- (case insensitive) by using ILIKE below. Then (b) queried for all distinct bands (no repeats, please!).
-- Finally, to be able to sum up how much we have, I followed a similar technique as to part B 
-- (creating a temporary table and using COUNT over the column).
-- Query below
CREATE TEMP TABLE sub_bands AS (
  SELECT DISTINCT band_name
	FROM metal_bands
	WHERE (band_name ILIKE '%white%' OR band_name ILIKE '%black%')
 );
 
SELECT COUNT(band_name)
FROM sub_bands;

----------------------------------------------------------------------
-- Part D
-- Second most popular German "Viking folk" style band?
----------------------------------------------------------------------
-- ANSWER: Crom
-- Description: I just did a similar thing as above: query the bands
--   with Germany in its origin (lowercase, uppercase, etc.) and
--   with Viking folk in its style (lowercase, ...). Then ordered by fans
--   to get the results in order from highest to lowest which was popular.
--   (Maybe unnecessary extra steps) Then skipped the first row with offset
--   and then skipped all remaining rows but the second. Thus, got the second
--   most popular German "Viking folk" style band to be Crom.
-- Query below
-- (Probably too specific, delete the last two lines to be less specific)
-- (I also like viewing all the information, so maybe do * instead of band_name?)
SELECT band_name
FROM metal_bands
WHERE (origin ILIKE '%Germany%' AND style ILIKE '%Viking folk%')
ORDER BY fans
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;

----------------------------------------------------------------------
-- Part E
-- Assuming that a split value of NULL implies the band is still together (which
--   admittedly, is a pretty big assumption), what is the oldest band in the database
--   that is still together?
----------------------------------------------------------------------
-- ANSWER:
-- Description: How tragic!
-- Query below










