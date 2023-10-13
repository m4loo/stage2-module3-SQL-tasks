INSERT INTO student (name, groupnumber, birthday) VALUES ('John', 1, 1999-01-01);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Chris', 1, 1999-02-02);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Carl', 1, 1999-03-03);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Oliver', 2, 1999-04-04);
INSERT INTO student (name, groupnumber, birthday) VALUES ('James', 2, 1999-05-05);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Lucas', 2, 1999-06-06);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Henry', 2, 1999-07-07);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Jacob', 3, 1999-08-08);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Logan', 3, 1999-09-09);

INSERT INTO student (name, groupnumber, birthday) VALUES ('Alex', 4, 1999-10-10);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Long', 4, 1999-11-11);
INSERT INTO student (name, groupnumber, birthday) VALUES ('Piter', 5, 1999-12-12);

INSERT INTO subject (name, grade)  VALUES ('Art', 1);
INSERT INTO subject (name, grade)  VALUES ('Music', 1);
INSERT INTO subject (name, grade)  VALUES ('Geography', 2);
INSERT INTO subject (name, grade)  VALUES ('History', 2);
INSERT INTO subject (name, grade)  VALUES ('PE', 3);
INSERT INTO subject (name, grade)  VALUES ('Math', 3);
INSERT INTO subject (name, grade)  VALUES ('Science', 4);
INSERT INTO subject (name, grade)  VALUES ('IT', 4);

INSERT INTO subject (name, grade)  VALUES ('Biology', 5);
INSERT INTO subject (name, grade)  VALUES ('Chemistry', 5);

INSERT INTO paymenttype (name)  VALUES ('DAILY');
INSERT INTO paymenttype (name)  VALUES ('WEEKLY');
INSERT INTO paymenttype (name)  VALUES ('MONTHLY');

INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (101, SELECT id FROM student WHERE name = 'John', SELECT id FROM paymenttype WHERE name = 'WEEKLY', CURRENT_DATE);
INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (102, SELECT id FROM student WHERE name = 'Oliver', SELECT id FROM paymenttype WHERE name = 'MONTHLY', CURRENT_DATE);
INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (103, SELECT id FROM student WHERE name = 'Henry', SELECT id FROM paymenttype WHERE name = 'WEEKLY', CURRENT_DATE);
INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (104, SELECT id FROM student WHERE name = 'James', SELECT id FROM paymenttype WHERE name = 'DAILY', CURRENT_DATE);

INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (105, SELECT id FROM student WHERE name = 'Alex', SELECT id FROM paymenttype WHERE name = 'DAILY', CURRENT_DATE);
INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (106, SELECT id FROM student WHERE name = 'Long', SELECT id FROM paymenttype WHERE name = 'WEEKLY', CURRENT_DATE);
INSERT INTO payment (amount, type_id, student_id, payment_date)  VALUES (107, SELECT id FROM student WHERE name = 'Piter', SELECT id FROM paymenttype WHERE name = 'MONTHLY', CURRENT_DATE);

INSERT INTO mark (mark, student_id, subject_id)  VALUES (8, SELECT id FROM student WHERE name = 'Chris', SELECT id FROM subject WHERE name = 'Art');
INSERT INTO mark (mark, student_id, subject_id)  VALUES (5, SELECT id FROM student WHERE name = 'Oliver', SELECT id FROM subject WHERE name = 'History');
INSERT INTO mark (mark, student_id, subject_id)  VALUES (9, SELECT id FROM student WHERE name = 'James', SELECT id FROM subject WHERE name = 'Geography');
INSERT INTO mark (mark, student_id, subject_id)  VALUES (4, SELECT id FROM student WHERE name = 'Jacob', SELECT id FROM subject WHERE name = 'Math');
INSERT INTO mark (mark, student_id, subject_id)  VALUES (9, SELECT id FROM student WHERE name = 'Logan', SELECT id FROM subject WHERE name = 'PE');

INSERT INTO mark (mark, student_id, subject_id)  VALUES (7, SELECT id FROM student WHERE name = 'Alex', SELECT id FROM subject WHERE name = 'Biology');
INSERT INTO mark (mark, student_id, subject_id)  VALUES (9, SELECT id FROM student WHERE name = 'Long', SELECT id FROM subject WHERE name = 'IT');
INSERT INTO mark (mark, student_id, subject_id)  VALUES (8, SELECT id FROM student WHERE name = 'Piter', SELECT id FROM subject WHERE name = 'Chemistry');