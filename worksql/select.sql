SELECT * FROM users;

SELECT "firstName", "lastName", "isMale"
FROM users
WHERE "isMale" IS NOT TRUE;

SELECT email, "isMale" 
FROM users 
WHERE "isMale"=TRUE;

-- дістати ім'я стать і дн усіх жінок з парними id
SELECT id, "firstName", "isMale", "birthday"
FROM users
WHERE "isMale" IS TRUE AND id%2=0;

SELECT * 
FROM users
WHERE "firstName"='Amy';
