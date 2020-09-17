-- Drop the PETRESCUE table in case it exists
drop table PETRESCUE;
-- Create the PETRESCUE table 
create table PETRESCUE (
	ID INTEGER PRIMARY KEY NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE
	);
-- Insert sample data into PETRESCUE table
insert into PETRESCUE values 
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15')


-- calculate total cost of all animal rescues in table, write as SUM_OF_COST
SELECT SUM(COST) as SUM_OF_COST 
    FROM PETRESUCUE

--- maximum quantity of animals rescued
SELECT MAX(QUANTITY) 
    FROM PETRESCUE

-- average cost of animals rescued
SELECT AVG(COST) 
    FROM PETRESCUE

-- average cost of rescuing a dog
SELECT AVG(COST / QUANTITY) 
    FROM PETRESCUE
    WHERE ANIMAL = 'Dog'

-- rounded cost of each rescue
SELECT ROUND(COST) 
    FROM PETRESCUE

-- length of animal name
SELECT LENGTH(ANIMAL)
    FROM PETRESCUE

-- animal name in uppercase
SELECT DISTINCT(UCASE(ANIMAL))
    FROM PETRESCUE

-- columns from table, where animals rescued are cats, where cat in lower case in the query
SELECT * FROM PETRESCUE 
    WHERE LCASE(ANIMAL) = 'cat'

-- day of months cats have been rescued
SELECT DAY(DATE) FROM PETRESCUE   
    WHERE LCASE(ANIMAL) = 'cat'

-- number of rescues on 5th day of the month
SELECT COUNT(*) 
    FROM PETRESCUE 
    WHERE DAY(RESCUEDATE) = 05

-- display third day from each rescue
SELECT (RESCUEDATE + 3) 
    FROM PETRESCUE

-- length of time the animals have been rescued, the difference between today's date and rescue date
SELECT (CURRENT_DATE minus RESCUEDATE) 
    FROM PETRESCUE