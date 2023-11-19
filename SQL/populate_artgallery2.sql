PRAGMA foreign_keys = ON;
--Insertion Gallery dataset

BEGIN TRANSACTION;

INSERT INTO Gallery (IDGallery, GalleryName, Address, Owner, GalleryAmountEarned) VALUES
(1, 'Modern Art Gallery', '123 Art St, Artville', 'Alice Smith', 0),
(2, 'Contemporary Art Space', '456 Culture Ave, Creativetown', 'John Doe', 0),
(3, 'The Classic Gallery', '789 Vintage Rd, Oldtown', 'Emma Johnson', 0),
(4, 'Urban Art Studio', '20 Cityscape Ln, Metropolis', 'Liam Brown', 0),
(5, 'Renaissance Art House', '321 History Blvd, Oldcity', 'Noah Davis', 0),
(6, 'Abstract Art Corner', '654 Pattern St, Designcity', 'Olivia Williams', 0),
(7, 'Nature Art Gallery', '987 Green Rd, Forestville', 'Sophia Miller', 0),
(8, 'Avant-Garde Showcase', '135 Avant St, New Art City', 'Isabella Taylor', 0),
(9, 'Cubist Creations Coop', '246 Cube Ave, Geometric Town', 'Mia Anderson', 0),
(10, 'Impressionist Inspirations', '369 Light St, Brightville', 'Amelia Thomas', 0),
(11, 'Surrealist Space', '478 Dream Rd, Imaginaria', 'Harper Jackson', 0),
(12, 'Pop Art Pavilion', '581 Pop Ln, Color Town', 'Evelyn White', 0),
(13, 'Classical Canvas Gallery', '682 Classic Ct, Tradition City', 'Abigail Harris', 0),
(14, 'Futurist Art Forum', '783 Future Blvd, Tomorrowville', 'Emily Martin', 0),
(15, 'Realism Art Realm', '884 Real St, Everyday City', 'Madison Lee', 0),
(16, 'Expressionist Exhibit', '985 Express Ln, Emote Town', 'Elizabeth Young', 0),
(17, 'Digital Art Domain', '386 Digital Dr, Tech City', 'Sofia Hernandez', 0),
(18, 'Baroque Art Bureau', '287 Baroque Blvd, Elegantville', 'Avery Clark', 0),
(19, 'Minimalist Art Museum', '188 Minimal Rd, Simple City', 'Scarlett Lewis', 0),
(20, 'Neo-Classical Nook', '289 Neo St, NewClass City', 'Grace Walker', 0);

COMMIT;

-- Customer dataset

BEGIN TRANSACTION;

INSERT INTO Customer (IDCustomer, Name, Address, TotalMoneySpent) VALUES
(1, 'James Wilson', '101 Main St, Springfield', 0),
(2, 'Sophia Martinez', '202 Oak St, Rivercity', 0),
(3, 'Liam Johnson', '305 Pine Ave, Greentown', 0),
(4, 'Emma Thompson', '408 Maple Dr, Hillcrest', 0),
(5, 'Olivia Brown', '512 Elm Rd, Lakeview', 0),
(6, 'Noah Garcia', '615 Birch Ln, Sunnyside', 0),
(7, 'Ava Davis', '718 Cedar Blvd, Eastwood', 0),
(8, 'Isabella Rodriguez', '821 Walnut St, Westfield', 0),
(9, 'Sophie Wilson', '924 Ash Ct, Northgate', 0),
(10, 'Mia Anderson', '1027 Cherry Pkwy, Southbank', 0),
(11, 'Amelia Martin', '1130 Oak Ln, Midtown', 0),
(12, 'Harper Smith', '1233 Pinecrest Ave, Riverside', 0),
(13, 'Evelyn Clark', '1336 Grove St, Bridgetown', 0),
(14, 'Abigail Lewis', '1439 Orchard Rd, Uptown', 0),
(15, 'Emily White', '1542 Park Blvd, Eastvale', 0),
(16, 'Ella Harris', '1645 Maplewood Dr, Westlake', 0),
(17, 'Madison Walker', '1748 Hillside Ln, Lakehurst', 0),
(18, 'Scarlett Young', '1851 Valley Rd, Highland', 0),
(19, 'Victoria Allen', '1954 River St, Meadowlands', 0),
(20, 'Avery Thompson', '2057 Forest Ave, Creekside', 0);

COMMIT;

-- Artist dataset

BEGIN TRANSACTION;

INSERT INTO Artist (IDArtist, Name, Birthdate, Birthplace, StyleOfArt, ArtistAmountEarned) VALUES
(1, 'Alex Taylor', '1980-02-15', 'Paris, France', 'Impressionism', 0),
(2, 'Isabella Brown', '1975-04-10', 'New York, USA', 'Abstract', 0),
(3, 'Ethan Johnson', '1990-08-30', 'Tokyo, Japan', 'Surrealism', 0),
(4, 'Emma Wilson', '1985-05-20', 'London, England', 'Realism', 0),
(5, 'Olivia Martinez', '1978-09-15', 'Mexico City, Mexico', 'Expressionism', 0),
(6, 'William Davis', '1982-11-02', 'Berlin, Germany', 'Neo-expressionism', 0),
(7, 'Sophia Lee', '1992-03-22', 'Seoul, South Korea', 'Minimalism', 0),
(8, 'James Thomas', '1988-07-19', 'Sydney, Australia', 'Contemporary', 0),
(9, 'Mia Taylor', '1970-12-05', 'Rome, Italy', 'Baroque', 0),
(10, 'Charlotte Brown', '1983-10-30', 'Vienna, Austria', 'Rococo', 0),
(11, 'Benjamin Wilson', '1986-01-17', 'Moscow, Russia', 'Futurism', 0),
(12, 'Ava Davis', '1993-04-23', 'Athens, Greece', 'Classical', 0),
(13, 'Matthew Lee', '1979-08-15', 'Cairo, Egypt', 'Abstract Expressionism', 0),
(14, 'Amelia Martinez', '1987-06-09', 'Madrid, Spain', 'Cubism', 0),
(15, 'Elijah Johnson', '1984-03-26', 'Lisbon, Portugal', 'Street Art', 0),
(16, 'Harper Anderson', '1991-09-11', 'Oslo, Norway', 'Landscape Painting', 0),
(17, 'Evelyn Young', '1977-11-18', 'Stockholm, Sweden', 'Pop Art', 0),
(18, 'Logan Garcia', '1989-02-07', 'Buenos Aires, Argentina', 'Surrealism', 0),
(19, 'Lucas Martin', '1995-05-14', 'Shanghai, China', 'Ink Wash Painting', 0),
(20, 'Mason Lee', '1994-10-25', 'Mumbai, India', 'Modernist', 0);

COMMIT;

-- TypeOfArt dataset

BEGIN TRANSACTION;

INSERT INTO TypeOfArt (IDTypeOfArt, TypeName) VALUES
(1, 'Pintura'),
(2, 'Escultura'),
(3, 'Fotografia');

COMMIT;

-- ArtworkClassification dataset

BEGIN TRANSACTION;

INSERT INTO ArtworkClassification (IDArtworkClassification, ClassificationName) VALUES
(1, 'Clássico'),
(2, 'Moderno'),
(3, 'Contemporâneo');

COMMIT;

-- Exhibition dataset

BEGIN TRANSACTION;

INSERT INTO Exhibition (IDExhibition, StartDate, EndDate, IDGallery) VALUES
(1, '2023-01-01', '2023-02-28', 1),
(2, '2023-03-01', '2023-04-30', 2),
(3, '2023-05-01', '2023-06-30', 3),
(4, '2023-07-01', '2023-08-31', 4),
(5, '2023-09-01', '2023-10-31', 5),
(6, '2023-11-01', '2023-12-31', 6),
(7, '2023-01-15', '2023-03-15', 7),
(8, '2023-03-16', '2023-05-15', 8),
(9, '2023-05-16', '2023-07-15', 9),
(10, '2023-07-16', '2023-09-15', 10),
(11, '2023-09-16', '2023-11-15', 11),
(12, '2023-11-16', '2024-01-15', 12),
(13, '2024-01-01', '2024-02-28', 13),
(14, '2024-03-01', '2024-04-30', 14),
(15, '2024-05-01', '2024-06-30', 15),
(16, '2024-07-01', '2024-08-31', 16),
(17, '2024-09-01', '2024-10-31', 17),
(18, '2024-11-01', '2024-12-31', 18),
(19, '2024-01-15', '2024-03-15', 19),
(20, '2024-03-16', '2024-05-15', 20);

COMMIT;

-- Sales dataset

BEGIN TRANSACTION;

INSERT INTO Sales (IDSales, Date, TotalAmount, ArtistAmount, GalleryAmount, Price, IDCustomer, IDGallery) VALUES
(1, '2023-01-15', 1000.00, 700.00, 300.00, 1000.00, 1, 1),
(2, '2023-02-10', 1500.00, 1050.00, 450.00, 1500.00, 2, 1),
(3, '2023-03-05', 2000.00, 1400.00, 600.00, 2000.00, 3, 2),
(4, '2023-04-20', 2500.00, 1750.00, 750.00, 2500.00, 4, 2),
(5, '2023-05-25', 3000.00, 2100.00, 900.00, 3000.00, 5, 3),
(6, '2023-06-15', 3500.00, 2450.00, 1050.00, 3500.00, 6, 3),
(7, '2023-07-05', 4000.00, 2800.00, 1200.00, 4000.00, 7, 4),
(8, '2023-08-10', 4500.00, 3150.00, 1350.00, 4500.00, 8, 4),
(9, '2023-09-20', 5000.00, 3500.00, 1500.00, 5000.00, 9, 5),
(10, '2023-10-30', 5500.00, 3850.00, 1650.00, 5500.00, 10, 5),
(11, '2023-11-15', 6000.00, 4200.00, 1800.00, 6000.00, 11, 6),
(12, '2023-12-05', 6500.00, 4550.00, 1950.00, 6500.00, 12, 6),
(13, '2024-01-20', 7000.00, 4900.00, 2100.00, 7000.00, 13, 7),
(14, '2024-02-10', 7500.00, 5250.00, 2250.00, 7500.00, 14, 7),
(15, '2024-03-25', 8000.00, 5600.00, 2400.00, 8000.00, 15, 8),
(16, '2024-04-15', 8500.00, 5950.00, 2550.00, 8500.00, 16, 8),
(17, '2024-05-10', 9000.00, 6300.00, 2700.00, 9000.00, 17, 9),
(18, '2024-06-20', 9500.00, 6650.00, 2850.00, 9500.00, 18, 9),
(19, '2024-07-05', 10000.00, 7000.00, 3000.00, 10000.00, 19, 10),
(20, '2024-08-25', 10500.00, 7350.00, 3150.00, 10500.00, 20, 10);

COMMIT;

-- Artwork dataset

BEGIN TRANSACTION;

INSERT INTO Artwork (IDArtwork, Title, YearMade, State, IDTypeOfArt, IDSales, IDArtist, IDArtworkClassification) VALUES
(1, 'Dreams of Spring', 2020, 'Excellent', 1, 1, 1, 1),
(2, 'Urban Melody', 2021, 'Good', 2, 2, 2, 2),
(3, 'Echoes of the Past', 2019, 'Excellent', 3, 3, 3, 3),
(4, 'Shadows and Light', 2022, 'New', 1, 4, 4, 1),
(5, 'Mystic River', 2018, 'Good', 2, 5, 5, 2),
(6, 'The Silent Valley', 2020, 'Excellent', 3, 6, 6, 3),
(7, 'Colors of Autumn', 2021, 'New', 1, 7, 7, 1),
(8, 'Whispers in the Wind', 2017, 'Excellent', 2, 8, 8, 2),
(9, 'Timeless Beauty', 2022, 'New', 3, 9, 9, 3),
(10, 'Harmony in Chaos', 2019, 'Good', 1, 10, 10, 1),
(11, 'Reflections of the Soul', 2021, 'Excellent', 2, 11, 11, 2),
(12, 'Dance of the Spirits', 2020, 'New', 3, 12, 12, 3),
(13, 'Eternal Embrace', 2018, 'Good', 1, 13, 13, 1),
(14, 'Whirlwind of Dreams', 2022, 'Excellent', 2, 14, 14, 2),
(15, 'The Journey Within', 2021, 'New', 3, 15, 15, 3),
(16, 'Oasis of Serenity', 2019, 'Good', 1, 16, 16, 1),
(17, 'Voyage of Discovery', 2020, 'Excellent', 2, 17, 17, 2),
(18, 'Rhythm of the Rain', 2021, 'New', 3, 18, 18, 3),
(19, 'Cascade of Thoughts', 2017, 'Good', 1, 19, 19, 1),
(20, 'Echoes of Time', 2022, 'Excellent', 2, 20, 20, 2);

COMMIT;

-- Employee dataset

BEGIN TRANSACTION;

INSERT INTO Employee (IDEmployee, EmployeeName, Address, PhoneNumber) VALUES
(1, 'John Smith', '123 Oak Street, Springfield', '555-0101'),
(2, 'Sarah Johnson', '456 Maple Avenue, River City', '555-0102'),
(3, 'Michael Williams', '789 Pine Road, Green Town', '555-0103'),
(4, 'Emma Brown', '101 Elm Street, Hillcrest', '555-0104'),
(5, 'James Jones', '202 Cedar Blvd, Lakeview', '555-0105'),
(6, 'Olivia Garcia', '305 Birch Lane, Sunnyside', '555-0106'),
(7, 'William Davis', '408 Spruce Street, Eastwood', '555-0107'),
(8, 'Ava Martinez', '511 Walnut Road, Westfield', '555-0108'),
(9, 'Isabella Miller', '614 Chestnut Lane, Northgate', '555-0109'),
(10, 'Sophia Wilson', '717 Ash Drive, Southbank', '555-0110'),
(11, 'Benjamin Moore', '820 Oakdale Road, Midtown', '555-0111'),
(12, 'Charlotte Taylor', '923 Birchwood Ave, Riverside', '555-0112'),
(13, 'Mason Anderson', '1026 Redwood Blvd, Bridgetown', '555-0113'),
(14, 'Ethan Thompson', '1129 Willow Lane, Uptown', '555-0114'),
(15, 'Ella Hernandez', '1232 Maple Park Street, Eastvale', '555-0115'),
(16, 'Abigail Clark', '1335 Poplar Road, Westlake', '555-0116'),
(17, 'Liam Nelson', '1438 Cedar Street, Lakehurst', '555-0117'),
(18, 'Emily White', '1541 Oakwood Ave, Highland', '555-0118'),
(19, 'Amelia Lewis', '1644 Fir Drive, Meadowlands', '555-0119'),
(20, 'Harper Walker', '1747 Spruce Corner, Creekside', '555-0120');

COMMIT;

--Update Gallery Came first :p

UPDATE Gallery
SET GalleryAmountEarned = (
    SELECT SUM(GalleryAmount)
    FROM Sales
    WHERE Sales.IDCustomer = Gallery.IDGallery
);

-- Update the total money spent by each customer

UPDATE Customer
SET TotalMoneySpent = (
    SELECT SUM(Price)
    FROM Sales
    WHERE Sales.IDCustomer = Customer.IDCustomer
);

-- Update the total amount earned by each artist

UPDATE Artist
SET ArtistAmountEarned = (
    SELECT SUM(Sales.ArtistAmount)
    FROM Sales
    JOIN Artwork ON Sales.IDSales = Artwork.IDSales
    WHERE Artwork.IDArtist = Artist.IDArtist
);