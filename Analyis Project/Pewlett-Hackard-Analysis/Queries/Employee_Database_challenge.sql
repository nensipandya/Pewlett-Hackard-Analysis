DROP TABLE ret_titles
-- List the number of retiring employees by title.
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.to_date,
		t.from_date
INTO ret_titles
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

-- Run the table
SELECT * FROM ret_titles;

-- Remove the duplicates and keep the most updated titles by using DISTINCT ON .
SELECT DISTINCT ON (e.emp_no)
		e.emp_no,
		e.first_name,
		e.last_name,
		t.title		
INTO unique_titles
FROM employees as e
LEFT JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no; 

-- Run the unique_titles table
SELECT * FROM unique_titles;

--Count the number of titles from the Unique Titles table.
SELECT title, COUNT(emp_no) AS "count"
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

-- List the number of employees for mentorship eligibility title.

SELECT DISTINCT ON (e.emp_no)
		e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		ON (de.emp_no = e.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31');

-- Run the mentorship_eligibility table
SELECT * FROM mentorship_eligibility;