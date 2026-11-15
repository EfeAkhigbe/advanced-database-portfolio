Portfolio 5: Distributed and Cloud Database 

Case Study: University Student Result Management System

This exercise demonstrates distributed database concepts
using a simulated university database.

Two tables, students_server_a and students_server_b,
were created to represent data stored at different
locations.

The UNION ALL command combined records from both
tables to retrieve all five students.

A replica table was also created to demonstrate
copying data for backup and availability purposes.

Distributed Database Concepts:

1. Sharding:
Data can be divided across multiple servers.
This can improve scalability and distribute workloads.

2. Replication:
Copies of data can be maintained across servers
to improve availability and fault tolerance.

3. Consistency:
When multiple copies exist, updates must be
coordinated to prevent inconsistent information.

4. Cloud Deployment:
A managed cloud database service could host the
university system, providing backups, monitoring
and scaling options.

Limitations:
This exercise used MySQL tables in DB Fiddle to
simulate partitions and a static data copy.
It did not deploy multiple database servers,
configure automatic replication or use a cloud
database service.
