--? In SQL there are 2 statements (and everything is a statement)
--? 1. Commands : These are statments that when executed effect some change on the database
--? 2. Queries : These are statements that when executed return data for read-only purposes

--& Create a Table
CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    hobbies TEXT,
    is_online BOOLEAN DEFAULT 1
);

--! <|-------------------------------CRUDS-------------------------------|>

--? Create
-- ^ Insert Data
INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    'isai',
    'Almeraz',
    'Volleyball, Reading, Coding'
);


--? Read
--* Select Data
SELECT * FROM user WHERE id = 1; 

--* Other Selects options
SELECT last_name, hobbies FROM user WHERE id = 1; 
SELECT last_name, first_name FROM user WHERE id > 1 AND  first_name = 'isai'; 


--? Update
UPDATE user SET
    first_name = 'Danny',
    last_name = 'Astorga',
    hobbies = 'Reading, Running, Candle Making'
WHERE id = 1;


--? Delete
DELETE FROM user WHERE id = 1;




--? Scan (is technically a type of read operation)
SELECT * FROM user;


--! <|-------------------------------MINI CHALLANGE-------------------------------|>

--?  Basic commands and queries

--* 1. Using your sandbox.db, create the following records in your user table:
--* 1.1. Jane Doe whose hobbies are playing tennis and video games
--* 1.2. Tom Jones who likes to ski and go bird watching
--* 1.3. Jenny Rogers who likes to code and watch YouTube videos
--* 2. Update Tom Jones such that their first name is "Thomas"
--* 3. Delete Jane Doe's record from the database table, permanently.
--* 4. Create a report in which records are displayed in this order: last_name, first_name, hobbies and id (for all users).


--? Bonus
--* If you have extra time, create a database table for vehicles.

INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    'Jane',
    'Doe',
    'Playing Tennis, Playing Video Games'
);

INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    'Tom',
    'Jones',
    'Ski, Bird Watching'
);

INSERT INTO user(
    first_name,
    last_name,
    hobbies
) VALUES (
    'Jenny',
    'Rogers',
    'code, watch Youtube'
);

UPDATE user SET
    first_name = 'Thomas' 
WHERE first_name = 'Tom';

DELETE FROM user WHERE first_name = 'jane' AND last_name = 'Doe';

SELECT last_name, first_name, hobbies, id FROM user;

--? Vehicles Table
CREATE TABLE vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model VARCHAR(45),
    year INTEGER,
    color VARCHAR(45),
    dor_number INTEGER,
    plate_number VARCHAR(45),

);




