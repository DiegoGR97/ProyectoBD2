--CHANGE DATE FORMAT TO SHOW IN TABLE
--SQL Developer is returning only the date, not the time. How do I fix this?
--Go to Tools> Preferences > Database > NLS and set the Date Format as MM/DD/YYYY HH24:MI:SS

-- INSERT AND SELECT CODE FOR DATES
INSERT INTO my_table (my_date) VALUES ( TO_DATE( '11-13-2012', 'MM-DD-YYYY' ) );
SELECT TO_CHAR( my_date, 'MM-DD-YYYY' ) FROM my_table;