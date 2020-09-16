SELECT F_NAME L_NAME FROM EMPLOYEES
    WHERE ADDRESS LIKE '%Elgin,IL%'

SELECT F_NAME L_NAME FROM EMPLOYEES 
    WHERE B_DATE LIKE '197%'

SELECT F_NAME L_NAME FROM EMPLOYEES
    WHERE DEP_ID = 5
    AND SALARY BETWEEN 6000 and 7000

SELECT F_NAME L_NAME FROM EMPLOYEES
    ORDER BY DEP_ID

SELECT F_NAME L_NAME FROM EMPLOYEES
    ORDER BY DEP_ID desc, L_NAME DESC

SELECT DEP_ID, COUNT(*)
    FROM EMPLOYEES 
    GROUP BY DEP_ID

SELECT DEP_ID, COUNT(*), AVG(SALARY)
    FROM EMPLOYEES
    GROUP BY DEP_ID

SELECT DEP_ID, COUNT(*) as "NUM_EMPLOYEES", AVG(SALARY) as "AVG_SALARY"
    FROM EMPLOYEES
    GROUP BY DEP_ID

SELECT DEP_ID, COUNT(*) as "NUM_EMPLOYEES", AVG(SALARY) as "AVG_SALARY"
    FROM EMPLOYEES
    GROUP BY DEP_ID
    ORDER BY "AVG_SALARY"

SELECT DEP_ID, COUNT(*) as "NUM_EMPLOYEES", AVG(SALARY) as "AVG_SALARY"
    FROM EMPLOYEES
    GROUP BY DEP_ID
    ORDER BY "AVG_SALARY"
    HAVING COUNT(*) < 4
    ORDER BY AVG_SALARY