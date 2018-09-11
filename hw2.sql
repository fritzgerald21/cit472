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
		"ReleaseDate" varchar2(50) check ("ReleaseDate" > '1990-01-01') -- might be wrong --
	)
;

create table ShownAt
	(
		"TheatreName" varchar2(250),
		"MovieTitle" varchar2(250),
    Primary key ("TheatreName", "MovieTitle")
	)
;
