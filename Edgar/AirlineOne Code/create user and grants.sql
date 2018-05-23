CREATE USER Edgar IDENTIFIED BY pass123;
GRANT CONNECT, CREATE SESSION, RESOURCE, DBA TO Edgar;
GRANT drop any trigger to Edgar;
commit;

SELECT USER FROM DUAL; -- See the actual user.

CONNECT Edgar;
commit;

