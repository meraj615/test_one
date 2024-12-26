
-- Create a database
CREATE DATABASE UserManagement;

-- Use the newly created database
USE UserManagement;

-- Create a 'Users' table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into the 'Users' table
INSERT INTO Users (FirstName, LastName, Email, PasswordHash)
VALUES 
    ('John', 'Doe', 'john.doe@example.com', 'hashed_password_123'),
    ('Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_456');

-- Select all data from the 'Users' table
SELECT * FROM Users;
