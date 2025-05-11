CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE ServiceProvider (
    ServiceProviderID INT PRIMARY KEY,
    ServiceProviderName VARCHAR(100),
    ServiceType VARCHAR(50),
    CommissionRate DECIMAL(5, 2)
);

CREATE TABLE Service (
    ServiceID INT PRIMARY KEY,
    ServiceProviderID INT,
    ServiceType VARCHAR(50),
    ServiceDescription VARCHAR(255),
    FOREIGN KEY (ServiceProviderID) REFERENCES ServiceProvider(ServiceProviderID)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    ServiceID INT,
    PartnerID INT,
    BookingDate DATE,
    AmountPaid DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (ServiceID) REFERENCES Service(ServiceID),
    FOREIGN KEY (PartnerID) REFERENCES ServiceProvider(ServiceProviderID)
);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    BookingID INT,
    Rating INT,
    Comments VARCHAR(255),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

