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