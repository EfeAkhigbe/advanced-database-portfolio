Portfolio 3: Transactions and Concurrency

This portfolio demonstrates transaction management
in a University Student Result Management System.

ROLLBACK:
A student's grade was temporarily changed from
85 to 90. The ROLLBACK command cancelled the
change and restored the original score of 85.

COMMIT:
A student's grade was changed from 85 to 86.
The COMMIT command saved the change.

Transaction management helps maintain data
integrity and consistency.

Concurrency Control:
When multiple users access the same database,
transactions help prevent conflicting updates.

Isolation levels control how transactions
interact. MySQL supports READ UNCOMMITTED,
READ COMMITTED, REPEATABLE READ and SERIALIZABLE.

InnoDB uses row-level locking and multiversion
concurrency control (MVCC) to manage concurrent
database operations.

This demonstration tested COMMIT and ROLLBACK.
Simultaneous transactions from two different
database sessions were not tested.
