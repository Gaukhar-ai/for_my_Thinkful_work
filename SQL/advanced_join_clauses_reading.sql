
select *
from emp inner join dept
on emp.deptno = dept.deptno;

--Imagine that you wanted to return the empno, ename, and deptno fields from the emp table.
--At this point, you could probably do that without too much thought.
--You'd crank out the following query:
SELECT empno, ename, deptno
FROM emp;

--But there's another way to write this. You can be more specific by explicitly prefixing 
--which table to get this field from, as shown below.
SELECT emp.empno, emp.ename, emp.deptno
FROM emp;

SELECT empno, ename, emp.deptno, dname
FROM emp INNER JOIN dept
ON emp.deptno = dept.deptno;

SELECT empno, ename, emp.deptno, dname
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno;

SELECT empno, ename, dept.deptno, dname
FROM dept LEFT OUTER JOIN emp
ON emp.deptno = dept.deptno;

SELECT empno, ename, dept.deptno, dname
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno;

SELECT empno, ename, emp.deptno, dname
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno;

SELECT empno, ename, dept.deptno, dname
FROM emp RIGHT OUTER JOIN dept
ON emp.deptno = dept.deptno;

SELECT empno, ename, emp.deptno, dname
FROM dept LEFT OUTER JOIN emp
ON emp.deptno = dept.deptno;

SELECT empno, ename, emp.deptno, dname
FROM emp FULL OUTER JOIN dept
ON emp.deptno = dept.deptno;

SELECT empno, ename, dept.deptno, dname
FROM dept FULL OUTER JOIN emp
ON emp.deptno = dept.deptno;

SELECT empno, ename, dept.deptno, dname
FROM dept FULL OUTER JOIN emp
ON emp.deptno = dept.deptno;

--Using JOIN on more than two tables
--????You want to maintain all empno records, so LEFT OUTER JOIN is used in relation to dept. 
---This part of the statement is just as before. How do I know its a left join???

SELECT empno, ename, emp.deptno, dname, cty, state
FROM emp

round(avg(user_rating),2)

LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno

LEFT OUTER JOIN loc
ON dept.locno = loc.locno;

--if i do this way, no empl #7694, there isn't an entry cor cook's dept in the dept table. 
SELECT empno, ename, emp.deptno, dname, cty, state
FROM emp

INNER JOIN dept
ON emp.deptno = dept.deptno

INNER JOIN loc
ON dept.locno = loc.locno;

SELECT empno, ename, emp.deptno, dname
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno
WHERE mgr = 7698; --??? what's mgr??? - manager

SELECT emp.deptno, dname, SUM(sal)
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno
GROUP BY emp.deptno, dname;

SELECT emp.deptno, dname, SUM(sal) AS dept_salary
FROM emp LEFT OUTER JOIN dept
ON emp.deptno = dept.deptno
WHERE empno BETWEEN 7500 AND 8000
GROUP BY emp.deptno, dname
HAVING SUM(sal) > 3000
ORDER BY dname;

SELECT deptno, dname, locno FROM dept
UNION
SELECT deptno, dname, locno FROM dept2;

SELECT deptno, dname FROM dept
UNION
SELECT deptno, dname FROM dept2;

SELECT locno FROM dept
UNION ALL
SELECT locno FROM dept2; 

SELECT locno FROM dept
UNION
SELECT locno FROM dept2; 