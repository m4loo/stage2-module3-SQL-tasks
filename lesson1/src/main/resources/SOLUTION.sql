CREATE TABLE student
(
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    birthday DATE,
    groupnumber INT
);

CREATE TABLE subject (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    description VARCHAR(45),
    grade INT
);

CREATE TABLE paymenttype (
    id BIGINT NOT NULL PRIMARY KEY,
    name VARCHAR(45)
);

CREATE TABLE payment (
    id BIGINT NOT NULL PRIMARY KEY,
    type_id BIGINT,
    amount DECIMAL,
    student_id BIGINT,
    payment_date TIMESTAMP,
    FOREIGN KEY (type_id) REFERENCES paymenttype (id),
    FOREIGN KEY (student_id) REFERENCES student (id)
);

CREATE TABLE mark (
    id BIGINT NOT NULL PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT,
    FOREIGN KEY (student_id) REFERENCES student (id),
    FOREIGN KEY (subject_id) REFERENCES subject (id)
);