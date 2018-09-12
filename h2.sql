create table Theatres
	(
		"Name" varchar2(250) Primary key,
		"City" varchar2(50),
		"State" varchar2(2),
		"Zip" number(5),
		"Phone" varchar2(15)
	)
;


create table Movies
	(
		"Title" varchar2(250) Primary key,
		"Rating" decimal(2,1) check ("Rating">0 AND "Rating"<11),
		"Length" number(3) check ("Length">0),
		"ReleaseDate" varchar2(50) check (concat(concat(concat(trim(SUBSTR("ReleaseDate", 1,2)), '-'), concat(trim(SUBSTR("ReleaseDate", 3,3)), '-')), trim(SUBSTR("ReleaseDate", length("ReleaseDate")-4, length("ReleaseDate")))) > '01-JAN-1990') -- might be wrong --
	)
;

create table ShownAt
	(
		"TheatreName" varchar2(250),
		"MovieTitle" varchar2(250),
    Primary key ("TheatreName", "MovieTitle")
	)
;


--Insert Theatres

INSERT INTO "BEIMESCHF1"."THEATRES" ("Name", "City", "State", "Zip", "Phone") VALUES ('Great Escape 14', 'Wilder', 'KY', '41076', '(859) 442-0000');
INSERT INTO "BEIMESCHF1"."THEATRES" ("Name", "City", "State", "Zip", "Phone") VALUES ('AMC Newport On The Levee 20', 'Newport', 'KY', '41071', '(888) AMC-4FUN');
INSERT INTO "BEIMESCHF1"."THEATRES" ("Name", "City", "State", "Zip", "Phone") VALUES ('Danbarry Dollar Saver Eastgate', 'Cincinnati', 'OH', '45245', '(513) 947-8111');
INSERT INTO "BEIMESCHF1"."THEATRES" ("Name", "City", "State", "Zip", "Phone") VALUES ('Danbarry Dollar Cinemas Turfway', 'Florence', 'KY', '41042', '(859) 647-2828');
INSERT INTO "BEIMESCHF1"."THEATRES" ("Name", "City", "State", "Zip", "Phone") VALUES ('Esquire Theatre', 'Cincinnati', 'OH', '45220', '(513) 281-8750');
INSERT INTO "BEIMESCHF1"."THEATRES" ("Name", "City", "State", "Zip", "Phone") VALUES ('Showcase Cinema De Lux Florence', 'Florence', 'KY', '41042', '((800) 315-4000');


--Insert Movies

INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Big Hero 6', '8.5', '102', '7 November 2014');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Interstellar', '9.1', '169', '7 November 2014');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Gone Girl', '8.5', '149', '3 October 2014');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Nightcrawler', '8.3', '117', '31 October 2014');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Schindler''s List', '8.9', '195', '4 February 1994');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('The Green Mile', '8.5', '189', '10 December 1999');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Fargo', '8.2', '98', '5 April 1996');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('District 9', '8.7', '112', '14 August 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('A Perfect Getaway', '6.8', '97', '7 August 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Star Trek', '8.4', '127', '8 May 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Aliens in the Attic', '4.5', '86', '31 July 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Public Enemies', '7.5', '140', '1 July 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Away We Go', '7.9', '98', '26 June 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('The Hurt Locker', '8.0', '131', '10 October 2008');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('The Dark Knight', '8.9', '152', '18 July 2008');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('Up', '8.7', '86', '29 May 2009');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('The Departed', '8.5', '151', '6 October 2006');
INSERT INTO "BEIMESCHF1"."MOVIES" ("Title", "Rating", "Length", "ReleaseDate") VALUES ('The Pianist', '8.5', '150', '3 January 2003');


--Insert Showings

INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Great Escape 14', 'Big Hero 6');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Great Escape 14', 'Interstellar');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Great Escape 14', 'Gone Girl');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Great Escape 14', 'Public Enemies');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Great Escape 14', 'The Departed');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'Big Hero 6');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'Interstellar');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'Gone Girl');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'District 9');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'A Perfect Getaway');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'Away We Go');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'Up');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('AMC Newport On The Levee 20', 'The Departed');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Saver Eastgate', 'Big Hero 6');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Saver Eastgate', 'Interstellar');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Saver Eastgate', 'Gone Girl');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Saver Eastgate', 'Nightcrawler');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Cinemas Turfway', 'Nightcrawler');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Cinemas Turfway', 'The Green Mile');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Cinemas Turfway', 'District 9');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Cinemas Turfway', 'Star Trek');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Cinemas Turfway', 'Aliens in the Attic');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Danbarry Dollar Cinemas Turfway', 'The Hurt Locker');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Esquire Theatre', 'Interstellar');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Esquire Theatre', 'Schindler''s List');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Esquire Theatre', 'Fargo');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Esquire Theatre', 'The Pianist');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Big Hero 6');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Interstellar');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Gone Girl');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'District 9');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'A Perfect Getaway');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Star Trek');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Aliens in the Attic');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Away We Go');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'The Hurt Locker');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'The Dark Knight');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'Up');
INSERT INTO "BEIMESCHF1"."SHOWNAT" ("TheatreName", "MovieTitle") VALUES ('Showcase Cinema De Lux Florence', 'The Departed');


-- 1
select "TheatreName"
from shownat
where "MovieTitle"= 'Interstellar'
;
/*
Result:
AMC Newport On The Levee 20
Danbarry Dollar Saver Eastgate
Esquire Theatre
Great Escape 14
Showcase Cinema De Lux Florence

*/

-- 2
-- I don't think this is a good way to write this but my where clause was not behaving properly in the subquery

select 
  "Name", 
  "Phone"
from (
select
  Theatres."Name", 
  Theatres."Phone",
  "MovieTitle"
from Theatres
left outer join ShownAt on Theatres."Name"= ShownAt."TheatreName" and ShownAt."MovieTitle"= 'Gone Girl'
--where "MovieTitle" is null
) t1
where t1."MovieTitle" is null
;
/*
Result:
Danbarry Dollar Cinemas Turfway	(859) 647-2828
Esquire Theatre	(513) 281-8750

*/

--3


