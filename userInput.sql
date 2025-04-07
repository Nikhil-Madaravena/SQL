ACCEPT name PROMPT 'Enter the name of the employee: '
ACCEPT salary PROMPT 'Enter the salary of the employee: '

SET SERVEROUTPUT ON
DECLARE
    v_name VARCHAR2(100) := '&name';
    v_salary NUMBER := &salary;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_salary);
END;
/
