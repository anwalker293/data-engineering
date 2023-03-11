/*
Collaborators (if any):
Time spent (in hours):
*/


-- A)
INSERT INTO hw5.movies (id,title,year,director) VALUES
  (2,'The Graduate',1967,'Mike Nichols');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- B)
INSERT INTO hw5.movies (id,title,year,director) VALUES
  (51,'The Graduate',1865,'Mike Nichols');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- C)
DELETE FROM hw5.movies WHERE id=9;
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- D)
DROP TABLE hw5.reviewers;
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- E)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (4,36,5,'2010-01-01');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- F)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (1,3,6,'2003-04-14');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- G)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (3,3,NULL,'2015-04-02');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- H)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (3,3,3,'1999-04-18');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- I)
INSERT INTO hw5.reviewers (id,name) VALUES
  (11,'Daniel Day');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- J)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (3,1,0,'2012-08-08');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- K)
DELETE FROM hw5.reviewers WHERE id=2;
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- L)
DROP TABLE hw5.movies;
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- M)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (4,2,-2,'2001-10-23');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- N)
INSERT INTO hw5.reviewers (id,name) VALUES
  (20,NULL);
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- O)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (3,3,4.3,'1997-05-15');
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- P)
INSERT INTO hw5.ratings (reviewer_id,movie_id,stars,rating_date) VALUES
  (1,50,3,NULL);
/* Description in plain english of what constraint caused the error and how it did so:

*/

-- Q)
INSERT INTO hw5.movies (id,title,year,director) VALUES
  (51,'The Visitor',2007,'Krzysztof Kieslowski');
/* Description in plain english of what constraint caused the error and how it did so:

*/

