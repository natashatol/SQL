-- use a sub-select to retrieve employees whose salary greater than avg salary
SELECT EMP_ID, F_NAME, L_NAME 
    FROM EMPLOYEES
    WHERE SALARY >
        (select AVG(SALARY) FROM EMPLOYEES)

-- retrieve all employee records and avg salary in every row
SELECT EMP_ID, SALARY, (SELECT AVG(SALARY) FROM EMPLOYEES) as AVG_SALARY 
    FROM EMPLOYEES 

-- retrieve only columns with non - sensitive employee data
SELECT * FROM (SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES) AS EMP4ALL

-- retrieve only employees records that correspond to department in departments table
SELECT * FROM EMPLOYEES 
    WHERE DEP_ID IN(SELECT DEPT_ID_DEP FROM departments)

-- retrieve list of employees from location L0002
SELECT F_NAME, L_NAME FROM EMPLOYEES 
    WHERE DEP_ID IN (select * FROM LOCATIONS WHERE LOC = L0002)

-- get DEP_ID and name for employees who earn more than $70,000
SELECT DEP_ID, F_NAME, L_NAME FROM EMPLOYEES    
    WHERE DEP_ID IN (SELECT DEP_ID FROM EMPLOYEES WHERE SALARY > 70000)

-- retrieve only employees records that corerespond to departments in the departments table
SELECT * FROM EMPLOYEES E, DEPARTMENTS D
    WHERE E.DEP_ID = D.DEP_ID

-- retrieve only emp id and dep name in above query
SELECT EMP_ID DEP_NAME FROM EMPLOYEES E, DEPARTMENTS 
    WHERE E.DEP_ID = D.DEP_ID


