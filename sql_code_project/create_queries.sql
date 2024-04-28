-- The table is created by Prit
-- Authors Table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL,
    LanguageCode VARCHAR(10),
    AuthorRating VARCHAR(20) NOT NULL
);

-- The table is created by Prit
-- Genres Table
CREATE TABLE Genres (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreName VARCHAR(255) NOT NULL
);

-- The table is created by Prit
-- Publishers Table
CREATE TABLE Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    PublisherName VARCHAR(255) NOT NULL
);

-- The table is created by Prit
-- Books Table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    GenreID INT,
    PublishingYear INT,
    AverageRating DECIMAL(3,2) NOT NULL,
    RatingsCount INT,
    PublisherID INT,
    SalePrice DECIMAL(5,2),
    SalesRank INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

-- The table is created by Rasaghna
-- Transactions Table
CREATE TABLE Transactions (
    TransactionID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    GrossSales DECIMAL(10,2) NOT NULL,
    PublisherRevenue DECIMAL(10,2),
    UnitsSold INT NOT NULL,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Constraints are given by Prit
-- Unique Constraint on AuthorName in Authors Table
ALTER TABLE Authors ADD CONSTRAINT UQ_AuthorName UNIQUE (AuthorName);

-- Unique Constraint on GenreName in Genres Table
ALTER TABLE Genres ADD CONSTRAINT UQ_GenreName UNIQUE (GenreName);

-- Unique Constraint on PublisherName in Publishers Table
ALTER TABLE Publishers ADD CONSTRAINT UQ_PublisherName UNIQUE (PublisherName);

-- Default Constraint on PublisherRevenue in Transactions Table
ALTER TABLE Transactions ALTER COLUMN PublisherRevenue SET DEFAULT 0.00;
