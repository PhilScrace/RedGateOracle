CREATE OR REPLACE TYPE Project AS OBJECT (
 hr.project_no NUMBER(2),
title      VARCHAR2(35),
cost       NUMBER(7,2));
/