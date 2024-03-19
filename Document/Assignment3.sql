-- Create the database
CREATE DATABASE PostManagement;
GO

-- Use the newly created database
USE PostManagement;
GO

-- Create the PostCategories table
CREATE TABLE PostCategories (
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(100),
    Description NVARCHAR(MAX)
);
GO

-- Create the AppUsers table
CREATE TABLE AppUsers (
    UserID INT PRIMARY KEY,
    Fullname NVARCHAR(100),
    Address NVARCHAR(255),
    Email NVARCHAR(100),
    Password NVARCHAR(100) -- Note: Storing passwords like this is not secure, for real-world applications, consider using encryption or hashing techniques.
);
GO

-- Create the Posts table
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    AuthorID INT,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    Title NVARCHAR(255),
    Content NVARCHAR(MAX),
    PublishStatus BIT, -- Assuming 0 for unpublished and 1 for published
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES PostCategories(CategoryID),
    FOREIGN KEY (AuthorID) REFERENCES AppUsers(UserID)
);
GO
