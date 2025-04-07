ACCEPT day PROMPT 'Enter the day of the week: '
SET SERVEROUTPUT ON
DECLARE
    v_day VARCHAR2(20) := '&day';
BEGIN
    CASE v_day
        WHEN 'Monday' THEN
            DBMS_OUTPUT.PUT_LINE('Start of the work week!');
        WHEN 'Tuesday' THEN
            DBMS_OUTPUT.PUT_LINE('Second day of the work week!');
        WHEN 'Wednesday' THEN
            DBMS_OUTPUT.PUT_LINE('Midweek day!');
        WHEN 'Thursday' THEN
            DBMS_OUTPUT.PUT_LINE('Almost the weekend!');
        WHEN 'Friday' THEN
            DBMS_OUTPUT.PUT_LINE('Last work day of the week!');
        WHEN 'Saturday' THEN
            DBMS_OUTPUT.PUT_LINE('Weekend has started!');
        WHEN 'Sunday' THEN
            DBMS_OUTPUT.PUT_LINE('Relax, it’s Sunday!');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Invalid day entered! Please enter a valid day of the week.');
    END CASE;
END;
/
