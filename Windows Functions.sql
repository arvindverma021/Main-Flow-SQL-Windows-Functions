CREATE DATABASE TASK4;
USE TASK4;


-- Create the Students Table 
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    MathScore INT,
    TotalScore INT
);


-- Insert Sample Data into the Students Table
INSERT INTO Students (StudentID, Name, MathScore, TotalScore) VALUES
(1, 'Alice', 85, 250),
(2, 'Bob', 90, 270),
(3, 'Charlie', 75, 230),
(4, 'David', 95, 300),
(5, 'Eve', 80, 260);

SELECT * FROM Students;


-- Task 1 - Query to Rank Students Based on Total Scores----
SELECT 
    StudentID, 
    Name, 
    TotalScore, 
    RANK() OVER (ORDER BY TotalScore DESC) AS StudentRank
FROM Students;

-- Explanation----
-- RANK() OVER (ORDER BY TotalScore DESC) assigns ranks based on the highest TotalScore.
-- Students with the same TotalScore share the same rank, and the next rank is skipped.


-- Task 2 - Calculate Running Totals for Math Scores----
SELECT 
    StudentID, 
    Name, 
    MathScore, 
    SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotal
FROM Students;

-- Explanation----
-- SUM(MathScore) OVER (ORDER BY StudentID) calculates a cumulative sum up to each student in the specified order.




