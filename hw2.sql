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
		"Rating" decimal(2) check ("Rating">0 AND "Rating"<11),
		"Length" number(3) check ("Length">0),
		"ReleaseDate" varchar2(50) check (to_date(concat(concat(concat(trim(SUBSTR(Movies."ReleaseDate", 1,2)), '-'), concat(trim(SUBSTR(Movies."ReleaseDate", 3,3)), '-')), trim(SUBSTR(Movies."ReleaseDate", length(Movies."ReleaseDate")-4, length(Movies."ReleaseDate"))))) > '01-JAN-1990') -- might be wrong --
	)
;

create table ShownAt
	(
		"TheatreName" varchar2(250),
		"MovieTitle" varchar2(250),
    Primary key ("TheatreName", "MovieTitle")
	)
;

insert into Movies values ('Big Hero 6', 8.5, 102, '7 November 2014');

select
  SUBSTR(Movies."ReleaseDate", 1,2) as myDay,
  SUBSTR(Movies."ReleaseDate", 3,3) as myMonth,
  SUBSTR(Movies."ReleaseDate", length(Movies."ReleaseDate")-4, length(Movies."ReleaseDate")) as myYear,
  to_date(concat(concat(concat(trim(SUBSTR(Movies."ReleaseDate", 1,2)), '-'), concat(trim(SUBSTR(Movies."ReleaseDate", 3,3)), '-')), trim(SUBSTR(Movies."ReleaseDate", length(Movies."ReleaseDate")-4, length(Movies."ReleaseDate")))))  as myDate
  from Movies
  ;
