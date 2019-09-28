INSERT INTO laba1."User" (user_id, user_email, user_name, user_group, user_course, user_faculty) 

VALUES (1, 'andriyha98@gmail.com', {"first_name": 'Andriy', "last_name": 'Hladkiy'}, 'KM-63', 4, 'FPM');


INSERT INTO laba1."User" (user_id, user_email, user_name, user_group, user_course, user_faculty) 

VALUES (2, 'test1@gmail.com', {"first_name": 'Igor', "last_name": 'Ryasik'}, 'KM-63', 4, 'FPM');


INSERT INTO laba1."User" (user_id, user_email, user_name, user_group, user_course, user_faculty) 

VALUES (1, 'test3@gmail.com', {"first_name": 'Yarik', "last_name": 'Artemenko'}, 'KM-63', 4, 'FPM');

SELECT * FROM laba1."User";



INSERT INTO laba1."Lesson" (lesson_name, audience_number, housing_number, lesson_time) 

VALUES ('Matan', 95,  '15', 14);

INSERT INTO laba1."Lesson" (lesson_name, audience_number, housing_number, lesson_time) 

VALUES ('DB', 72,  '14', 12);

INSERT INTO laba1."Lesson" (lesson_name, audience_number, housing_number, lesson_time) 

VALUES ('FP', 305,  '24', 10);

SELECT * FROM laba1."Lesson";



INSERT INTO laba1."Housing" (housing_number, housing_addresses, number_of_floors) 

VALUES (15, 'Politeknichna 15', 5);

INSERT INTO laba1."Housing" (housing_number, housing_addresses, number_of_floors) 

VALUES (14, 'Politeknichna 14', 5);

INSERT INTO laba1."Housing" (housing_number, housing_addresses, number_of_floors) 

VALUES (13, 'Politeknichna 13', 5);

SELECT * FROM laba1."Housing";



INSERT INTO laba1."Audience" (audience_number) 

VALUES (72);


INSERT INTO laba1."Audience" (audience_number) 

VALUES (64);


INSERT INTO laba1."Audience" (audience_number) 

VALUES (74);

SELECT * FROM laba1."Audience";




UPDATE laba1."User"
SET user_name = { first_name: 'Andriy', last_name: 'Smooth' }
WHERE
 user_id = 1;
 
UPDATE laba1."User"
SET user_email = 'andre98@gmail.com'
WHERE
 user_id = 1;
 
UPDATE laba1."User"
SET user_group = 'KM-01M'
WHERE
 user_id = 1;

SELECT * FROM laba1."User";


UPDATE laba1."Lesson"
SET audience_number = 93
WHERE
 lesson_name = 'Matan';

SELECT * FROM laba1."Lesson";
 

SELECT user_name
FROM laba1."User"
WHERE user_id = 1;


SELECT user_email
FROM laba1."User"
WHERE user_id = 2;

SELECT user_group
FROM laba1."User"
WHERE user_id = 3;

SELECT * FROM laba1."User";

DELETE user_name
FROM laba1."User"
WHERE user_id = 1;

SELECT * FROM laba1."User";
