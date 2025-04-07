ACCEPT num  PROMPT 'Enter a number: '

SET SERVEROUTPUT ON
DECLARE
    v_num NUMBER := &num;
BEGIN
    IF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Negative number entered: ' || v_num);
    ELSIF v_num = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Zero entered: ' || v_num);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Positive number entered: ' || v_num);
    END IF;
END;
/
