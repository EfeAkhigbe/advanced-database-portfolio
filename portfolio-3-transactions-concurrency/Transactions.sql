
-- Check the original grade
SELECT score FROM grades WHERE grade_id = 1;

-- Begin a transaction
START TRANSACTION;

-- Temporarily change the grade
UPDATE grades
SET score = 90
WHERE grade_id = 1;

-- Check the temporary change
SELECT score FROM grades WHERE grade_id = 1;

-- Cancel the change
ROLLBACK;

-- Check the grade after cancellation
SELECT score FROM grades WHERE grade_id = 1;


-- Check the original grade
SELECT score FROM grades WHERE grade_id = 1;

-- Begin a transaction
START TRANSACTION;

-- Change the grade
UPDATE grades
SET score = 86
WHERE grade_id = 1;

-- Save the change
COMMIT;

-- Check the saved grade
SELECT score FROM grades WHERE grade_id = 1;
