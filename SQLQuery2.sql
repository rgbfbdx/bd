create database Academy;

CREATE TABLE Groups (
 Id INT IDENTITY(1,1) PRIMARY KEY,
 [Name] NVARCHAR(10) NOT NULL UNIQUE,
);

REATE TABLE Departments (
 Id INT IDENTITY(1,1) PRIMARY KEY,
 [Name] NVARCHAR(MAX) NOT NULL,
 Phone NVARCHAR(5) NOT NULL
);

CREATE TABLE Curators (
 Id INT IDENTITY(1,1) PRIMARY KEY,
 FirstName NVARCHAR(MAX) NOT NULL,
 LastName NVARCHAR(MAX) NOT NULL,
 CuratorsId INT FOREIGN KEY REFERENCES Departments(Id)
);

CREATE TABLE Faculties (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Financing MONEY NOT NULL 
    Name NVARCHAR(MAX) NOT NULL 
);

CREATE TABLE Lectures (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name NVARCHAR(MAX) NOT NULL 
);

CREATE TABLE Subjects (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Name NVARCHAR(MAX) NOT NULL 
);

CREATE TABLE Teachers (
 Id INT IDENTITY(1,1) PRIMARY KEY,
 FirstName NVARCHAR(MAX) NOT NULL,
 LastName NVARCHAR(MAX) NOT NULL,
 DepartmentId INT FOREIGN KEY REFERENCES Departments(Id)
);

CREATE TABLE GroupsCurators (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    CuratorId INT NOT NULL,
    GroupId INT NOT NULL
);

INSERT INTO GroupsCurators (CuratorId, GroupId)
VALUES (1, 3);

SELECT *
FROM GroupsCurators;

CREATE TABLE GroupsLectures (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    GroupsId INT NOT NULL,
    LecturesId INT NOT NULL
);

INSERT INTO GroupsLectures (GroupsId, LecturesId)
VALUES (1, 3);

SELECT *
FROM GroupsLectures;
