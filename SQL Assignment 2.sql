
CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(15) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
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