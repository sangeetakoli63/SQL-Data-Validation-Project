-- Count total records in dataset
SELECT COUNT(*) AS total_records FROM dataset;

-- Find duplicate records based on name + email
SELECT *, COUNT(*) FROM dataset GROUP BY name, email HAVING COUNT(*) > 1;

-- Find rows where email is missing
SELECT * FROM dataset WHERE email IS NULL OR email = '';

-- Validate phone length (should be 10 digits)
SELECT * FROM dataset WHERE LENGTH(phone) != 10;

-- Summary of null values
SELECT 
    SUM(CASE WHEN name IS NULL OR name='' THEN 1 END) AS null_name,
    SUM(CASE WHEN email IS NULL OR email='' THEN 1 END) AS null_email,
    SUM(CASE WHEN phone IS NULL OR phone='' THEN 1 END) AS null_phone
FROM dataset;

