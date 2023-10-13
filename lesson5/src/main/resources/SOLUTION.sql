SELECT * FROM payment
        WHERE amount >= 500;

SELECT * FROM student
        WHERE DATEADD(YEAR, -20, CURRENT_DATE) > birthday;

SELECT * FROM student
        WHERE groupnumber = 10 AND DATEADD(YEAR, -20, CURRENT_DATE) < birthday;

SELECT * FROM student
        WHERE name LIKE '%Mike%' OR groupnumber IN (4, 5, 6);

SELECT * FROM payment
        WHERE DATEADD(MONTH, -8, CURRENT_DATE) < payment_date;

SELECT * FROM student
        WHERE name LIKE 'A%';
SELECT * FROM student WHERE
        (name LIKE '%Roxi%' AND groupnumber = 4) OR (name LIKE '%Tallie%' AND groupnumber = 9);