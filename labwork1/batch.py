from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('laba1')

batch = """
BEGIN BATCH
INSERT INTO laba1."User" (user_id, user_email, user_name, user_group, user_course, user_faculty) 

VALUES (1, 'andriyha98@gmail.com', {"first_name": 'Andriy', "last_name": 'Hladkiy'}, 'KM-63', 4, 'FPM');


INSERT INTO laba1."User" (user_id, user_email, user_name, user_group, user_course, user_faculty) 

VALUES (1, 'test3@gmail.com', {"first_name": 'Yarik', "last_name": 'Artemenko'}, 'KM-63', 4, 'FPM');

APPLY BATCH;
"""
connection.execute(batch)
