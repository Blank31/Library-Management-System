-- Insert queries for Author table
-- These query is written by Rasaghna
INSERT INTO Authors (AuthorName, LanguageCode, AuthorRating)
SELECT DISTINCT Author, language_code, Author_Rating
FROM sample_data;

INSERT INTO Authors (AuthorName, LanguageCode, AuthorRating) VALUES
('Isabella Knightley', 'en', 'Expert'),
('Rafael Moreno', 'es', 'Intermediate'),
('Yuki Nagato', 'ja', 'Intermediate'),
('Amira Sayed', 'ar', 'Novice'),
('Ethan Hawke', 'en', 'Expert'),
('Lara Croft', 'en', 'Intermediate'),
('Nikolai Volkov', 'ru', 'Novice'),
('Samantha Bee', 'en', 'Expert'),
('Carlos Ruiz', 'es', 'Intermediate'),
('Anika Chopra', 'hi', 'Novice');

select * from Authors order by AuthorID;

-- These query is written by Harsh 
-- Insert queries for Genre table
INSERT INTO Genres (GenreName)
SELECT DISTINCT genre
FROM sample_data;

INSERT INTO Genres (GenreName) VALUES ('Cyber Mystery');
INSERT INTO Genres (GenreName) VALUES ('Quantum Fiction');
INSERT INTO Genres (GenreName) VALUES ('Mythopoeia');
INSERT INTO Genres (GenreName) VALUES ('Solarpunk');
INSERT INTO Genres (GenreName) VALUES ('Afrofuturism');

select * from Genres order by GenreID;

-- These query is written by Harsh
-- Insert queries for Publisher table
INSERT INTO Publishers (PublisherName)
SELECT DISTINCT Publisher
FROM sample_data;

INSERT INTO Publishers (PublisherName) VALUES ('Aether Publishing House');
INSERT INTO Publishers (PublisherName) VALUES ('Binary Stars Books');
INSERT INTO Publishers (PublisherName) VALUES ('Celestial Mapping Co.');
INSERT INTO Publishers (PublisherName) VALUES ('Dimensional Printworks');
INSERT INTO Publishers (PublisherName) VALUES ('Elemental Reads Publishing');
INSERT INTO Publishers (PublisherName) VALUES ('Forbidden Lore Press');
INSERT INTO Publishers (PublisherName) VALUES ('Graviton Media');
INSERT INTO Publishers (PublisherName) VALUES ('Horizon Line Books');
INSERT INTO Publishers (PublisherName) VALUES ('Interstellar Ink');
INSERT INTO Publishers (PublisherName) VALUES ('Labyrinth Literary');
INSERT INTO Publishers (PublisherName) VALUES ('Mythos Creations');
INSERT INTO Publishers (PublisherName) VALUES ('Nexus Book Group');
INSERT INTO Publishers (PublisherName) VALUES ('Quantum Quills Publishing');
INSERT INTO Publishers (PublisherName) VALUES ('Rift Valley Press');
INSERT INTO Publishers (PublisherName) VALUES ('Timefold Books');


select distinct * from Publishers ;

-- -- These query is written by Harsh
-- Insert queries for Books table
INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank)
SELECT temp.`Book Name`, a.AuthorID, g.GenreID, temp.`Publishing Year`, temp.Book_average_rating, temp.Book_ratings_count, p.PublisherID, temp.`sale price`, temp.`sales rank`
FROM sample_data temp
JOIN Authors a ON temp.Author = a.AuthorName
JOIN Genres g ON temp.genre = g.GenreName
JOIN Publishers p ON temp.Publisher = p.PublisherName;

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('Whispers of the Quantum Realm', 97, 5, 2024, 4.8, 120, 20, 15.99, 1);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('Solar Flares and Shadows', 96, 7, 2024, 4.7, 85, 10, 12.99, 2);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('Echoes from the Afrofuture', 95, 8, 2023, 4.9, 143, 9, 18.99, 3);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('The Labyrinth of Time', 101, 6, 2024, 4.6, 97, 17, 13.99, 4);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('Gardens Beyond the Galaxy', 102, 5, 2025, 4.5, 88, 15, 14.99, 5);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('Chronicles of the Forgotten', 103, 4, 2023, 4.4, 76, 11, 16.99, 6);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('The Enigma of Arrival', 104, 7, 2024, 4.2, 64, 13, 17.99, 7);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ('Beneath the Cosmic Seas', 99, 5, 2025, 4.3, 52, 16, 19.99, 8);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ("Lost Chronicles: Earth's Last Hope", 100, 6, 2024, 4.1, 120, 18, 15.49, 9);

INSERT INTO Books (Title, AuthorID, GenreID, PublishingYear, AverageRating, RatingsCount, PublisherID, SalePrice, SalesRank) 
VALUES ("The Final Frontier: A New Dawn", 98, 8, 2023, 4.6, 134, 19, 20.99, 10);


select * from Books;


-- These query is written by Rasaghna
-- Insert queries for Transaction table
INSERT INTO Transactions (BookID ,GrossSales, PublisherRevenue, UnitsSold)
SELECT 
    b.BookID,
    temp.`gross sales`,
    temp.`publisher revenue`,
    temp.`units Sold`
FROM 
    sample_data temp
JOIN
    Books b ON temp.`Book Name` = b.Title;


INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (64, 1919.40, 1151.64, 120);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (65, 1104.15, 662.49, 85);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (66, 2717.57, 1630.54, 143);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (67, 1357.03, 814.22, 97);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (68, 1319.12, 791.47, 88);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (69, 1287.24, 772.34, 76);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (70, 1151.36, 690.82, 64);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (71, 1039.68, 623.81, 52);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (72, 1858.80, 1115.28, 120);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (73, 2808.66, 1685.20, 134);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (64, 2398.80, 1439.28, 150);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (65, 1039.15, 623.49, 100);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (66, 2727.57, 1636.54, 148);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (67, 1377.03, 826.22, 99);
INSERT INTO Transactions (BookID, GrossSales, PublisherRevenue, UnitsSold) VALUES (68, 1329.12, 797.47, 89);


select * from transactions;
