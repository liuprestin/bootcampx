CREATE TABLE cohorts (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(255),
start_date DATE,
end_date DATE
);

/* I believe SQL has the date datatype - but unsure if they're using it here*/

CREATE TABLE students (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(32),
    github VARCHAR(255),
    start_date DATE,
    end_date DATE,
    cohort_id INTEGER REFERENCES cohort(id) ON DELETE CASCADE
);