--Create buildings tables
CREATE TABLE Buildings(
    building_name VARCHAR(20)PRIMARY KEY,
    capacity INTEGER NOT NULL,
);

--INSERT DATA
INSERT INTO buildings (building_name, capacity) VALUES
('1e', 24),
('1w', 32),
('2e', 16),
('2w', 20);

CREATE TABLE employees(
    role VARCHAR(30) NOT NULL,
    name VARCHAR(100)NOT NULL,
    building VARCHAR(10),
    years_employed INTEGER NOT NULL,
    FOREIGN KEY(building) REFERENCES buildings(building_name)
);
SELECT * FROM employees;
SELECT DISTINCT buildings FROM employees ;
SELECT * FROM buildings;
SELECT DISTINCT building_name, role FROM buildings LEFT JOIN employees ON building_name = building;
--NULL
SELECT name, role FROM employees WHERE building IS NULL;
SELECT buildings.building_name FROM buildings LEFT JOIN employees ON buildings.building_name = employees.building WHERE employees.building IS NULL;