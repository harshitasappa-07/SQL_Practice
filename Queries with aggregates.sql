-- Create Employees Table
CREATE TABLE employees (
    role VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    building VARCHAR(10),
    years_employed INTEGER NOT NULL,
    FOREIGN KEY (building) REFERENCES buildings(building_name)
);

-- Insert data into Employees
INSERT INTO employees (role, name, building, years_employed) VALUES
('Engineer', 'Becky A.', '1e', 4),
('Engineer', 'Dan B.', '1e', 2),
('Engineer', 'Sharon F.', '1e', 6),
('Engineer', 'Dan M.', '1e', 4),
('Engineer', 'Malcom S.', '1e', 1),
('Artist', 'Tylar S.', '2w', 2),
('Artist', 'Sherman D.', '2w', 8),
('Artist', 'Jakob J.', '2w', 6),
('Artist', 'Lillia A.', '2w', 7),
('Artist', 'Brandon J.', '2w', 7),
('Manager', 'Scott K.', '1e', 9),
('Manager', 'Shirlee M.', '1e', 3),
('Manager', 'Daria O.', '2w', 6);
SELECT * FROM emplyoees;
SELECT MAX(years_employed) as Max_years_employed
FROM employees;
SELECT role, AVG(years_employed) as Average_years_employed FROM employees GROUP BY role;
SELECT building, SUM(years_employed) as Total_years_employed FROM employees GROUP BY building;
SELECT role, COUNT(*) as Number_of_artists FROM employees WHERE role = "Artist";
SELECT role, COUNT(*) FROM employees SELECT role, SUM(years_employed) FROM employees GROUP BY role HAVING role = "Engineer";GROUP BY role;