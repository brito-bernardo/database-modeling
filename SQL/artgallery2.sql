-- Drop existing tables if they exist
DROP TABLE IF EXISTS Gallery;
DROP TABLE IF EXISTS Exhibition;
DROP TABLE IF EXISTS SingleArtistExhibition;
DROP TABLE IF EXISTS MultiArtistExhibition;
DROP TABLE IF EXISTS Sales;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS Artwork;
DROP TABLE IF EXISTS TypeOfArt;
DROP TABLE IF EXISTS ArtworkClassification;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS GalleryEmployee;
DROP TABLE IF EXISTS ArtworkArtworkClassification;
DROP TABLE IF EXISTS ArtworkExhibition;


-- Create Gallery Table
CREATE TABLE Gallery (
    IDGallery INTEGER PRIMARY KEY,
    GalleryName TEXT NOT NULL,
    Address TEXT NOT NULL,
    Owner TEXT NOT NULL,
    GalleryAmountEarned REAL CHECK(GalleryAmountEarned >= 0)
);

-- Create the Exhibition table
CREATE TABLE Exhibition (
    IDExhibition INTEGER PRIMARY KEY,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL CHECK(EndDate >= StartDate),
    IDGallery INTEGER NOT NULL,
    FOREIGN KEY(IDGallery) REFERENCES Gallery(IDGallery) ON DELETE CASCADE
);

-- Create the SingleArtistExhibition table
CREATE TABLE SingleArtistExhibition (
    IDExhibition INTEGER PRIMARY KEY,
    FOREIGN KEY(IDExhibition) REFERENCES Exhibition(IDExhibition) ON DELETE CASCADE
);

-- Create the MultiArtistExhibition table
CREATE TABLE MultiArtistExhibition (
    IDExhibition INTEGER PRIMARY KEY,
    FOREIGN KEY(IDExhibition) REFERENCES Exhibition(IDExhibition) ON DELETE CASCADE
);

-- Create the Sales table
CREATE TABLE Sales (
    IDSales INTEGER PRIMARY KEY,
    Date DATE NOT NULL,
    TotalAmount REAL CHECK(TotalAmount >= 0),
    ArtistAmount REAL CHECK(ArtistAmount >= 0),
    GalleryAmount REAL CHECK(GalleryAmount >= 0),
    Price REAL CHECK(Price >= 0),
    IDCustomer INTEGER NOT NULL,
    IDGallery INTEGER NOT NULL,
    FOREIGN KEY(IDCustomer) REFERENCES Customer(IDCustomer) ON DELETE CASCADE,
    FOREIGN KEY(IDGallery) REFERENCES Gallery(IDGallery) ON DELETE CASCADE 
);

-- Create the Customer table
CREATE TABLE Customer (
    IDCustomer INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Address TEXT NOT NULL,
    TotalMoneySpent REAL CHECK(TotalMoneySpent >= 0)
);

-- Create the Artist table
CREATE TABLE Artist (
    IDArtist INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Birthdate DATE,
    Birthplace TEXT NOT NULL,
    StyleOfArt TEXT NOT NULL,
    ArtistAmountEarned REAL CHECK(ArtistAmountEarned >= 0)
);

-- Create the Artwork table
CREATE TABLE Artwork (
    IDArtwork INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    YearMade INTEGER,
    State TEXT NOT NULL,
    IDTypeOfArt INTEGER NOT NULL,
    IDSales INTEGER,
    IDArtist INTEGER NOT NULL,
    IDArtworkClassification INTEGER NOT NULL,
    FOREIGN KEY(IDTypeOfArt) REFERENCES TypeOfArt(IDTypeOfArt),
    FOREIGN KEY(IDSales) REFERENCES Sales(IDSales) ON DELETE CASCADE,
    FOREIGN KEY(IDArtist) REFERENCES Artist(IDArtist) ON DELETE CASCADE,
    FOREIGN KEY(IDArtworkClassification) REFERENCES ArtworkClassification(IDArtworkClassification)
);

-- Create the TypeOfArt table
CREATE TABLE TypeOfArt (
    IDTypeOfArt INTEGER PRIMARY KEY,
    TypeName TEXT NOT NULL
);

-- Create the ArtworkClassification table
CREATE TABLE ArtworkClassification (
    IDArtworkClassification INTEGER PRIMARY KEY,
    ClassificationName TEXT NOT NULL
);

-- Create the Employee table
CREATE TABLE Employee (
    IDEmployee INTEGER PRIMARY KEY,
    EmployeeName TEXT NOT NULL,
    Address TEXT NOT NULL,
    PhoneNumber TEXT NOT NULL
);

-- Create the GalleryEmployee table
CREATE TABLE GalleryEmployee (
    IDEmployee INTEGER,
    IDGallery INTEGER,
    PRIMARY KEY(IDEmployee, IDGallery),
    FOREIGN KEY(IDEmployee) REFERENCES Employee(IDEmployee) ON DELETE CASCADE,
    FOREIGN KEY(IDGallery) REFERENCES Gallery(IDGallery) ON DELETE CASCADE
);

-- Create the ArtworkArtworkClassification table
CREATE TABLE ArtworkArtworkClassification (
    IDArtwork INTEGER,
    IDArtworkClassification INTEGER,
    PRIMARY KEY(IDArtwork, IDArtworkClassification),
    FOREIGN KEY(IDArtwork) REFERENCES Artwork(IDArtwork), -- Composite key and foreign key to the Artwork table
    FOREIGN KEY(IDArtworkClassification) REFERENCES ArtworkClassification(IDArtworkClassification) -- Foreign key to the ArtworkClassification table
);

-- Create the ArtworkExhibition table
CREATE TABLE ArtworkExhibition (
    IDArtwork INTEGER,
    IDExhibition INTEGER,
    PRIMARY KEY(IDArtwork, IDExhibition),
    FOREIGN KEY(IDArtwork) REFERENCES Artwork(IDArtwork) ON DELETE CASCADE, -- Composite key and foreign key to the Artwork table
    FOREIGN KEY(IDExhibition) REFERENCES Exhibition(IDExhibition) ON DELETE CASCADE -- Foreign key to the Exhibition table
);
