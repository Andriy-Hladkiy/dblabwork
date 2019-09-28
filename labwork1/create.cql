CREATE KEYSPACE IF NOT EXISTS laba1 WITH replication = {
	'class' : 'SimpleStrategy',
	'replication_factor': '1'
};

CREATE TYPE IF NOT EXISTS laba1.user_name_type (
 first_name text,
 last_name text
);


CREATE TABLE IF NOT EXISTS laba1."User" (
 user_id int,
 user_email text,
 user_name frozen<laba1.user_name_type>,
 user_group text,
 user_course int,
 user_faculty text,
 
 
 PRIMARY KEY (user_id)
);


CREATE TABLE IF NOT EXISTS laba1."Housing" (
 housing_number int,
 housing_addresses text,
 number_of_floors int,
 
 
 PRIMARY KEY (housing_number)
);


CREATE TABLE IF NOT EXISTS laba1."Audience" (
 audience_number int,

 
 PRIMARY KEY (audience_number)
);

CREATE TABLE IF NOT EXISTS laba1."Lesson" (
 lesson_name text,
 housing_number text,
 audience_number int,
 lesson_time Time,
 
 
 PRIMARY KEY (lesson_name)
);

CREATE INDEX u_email on laba1."User"(user_email);
CREATE INDEX u_name on laba1."User"(user_name);
CREATE INDEX u_group on laba1."User"(user_group);