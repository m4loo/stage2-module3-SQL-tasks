SELECT * FROM mark
        WHERE mark > 6
        ORDER BY mark DESC;

SELECT * FROM payment
        WHERE amount < 300
        ORDER BY amount ASC;

SELECT * FROM paymenttype
        ORDER BY name;

SELECT * FROM student
        ORDER BY name DESC;

SELECT s.id, s.name, s.birthday, s.groupnumber FROM student AS s
        JOIN payment AS p
        ON p.student_id = s.id
        WHERE p.amount > 1000
        ORDER BY s.birthday ASC;