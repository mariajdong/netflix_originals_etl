create table netflix (
	index int primary key,
	title varchar,
	genre varchar,
	year varchar,
	imdb_rating float,
	writer varchar,
	network varchar
);

create table hulu (
	index int primary key,
	title varchar,
	genre varchar,
	year varchar,
	writer varchar,
	imdb_rating float,
	network varchar
);

create table prime (
	index int primary key,
	title varchar,
	genre varchar,
	year varchar,
	imdb_rating float,
	writer varchar,
	network varchar
);