-- Inserting records into Customer
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, PhoneNumber) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '123-456-7891'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '123-456-7892'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '123-456-7893'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '123-456-7894'),
(6, 'David', 'Martinez', 'david.martinez@example.com', '123-456-7895'),
(7, 'Eva', 'Garcia', 'eva.garcia@example.com', '123-456-7896'),
(8, 'Frank', 'Wilson', 'frank.wilson@example.com', '123-456-7897'),
(9, 'Grace', 'Lee', 'grace.lee@example.com', '123-456-7898'),
(10, 'Henry', 'Taylor', 'henry.taylor@example.com', '123-456-7899');

-- Inserting records into ServiceProvider
INSERT INTO ServiceProvider (ServiceProviderID, ServiceProviderName, ServiceType, CommissionRate) VALUES
(1, 'FlyHigh Airlines', 'Airline', 5.00),
(2, 'StayNRest Hotels', 'Hotel', 10.00),
(3, 'RoadRiders Rentals', 'Car Rental', 12.00),
(4, 'SecureJourney Insurance', 'Insurance', 15.00),
(5, 'QuickTransfer Transits', 'Train', 3.00),
(6, 'LuxuryStays Hotels', 'Hotel', 8.00),
(7, 'EcoFly Airlines', 'Airline', 4.50),
(8, 'BudgetBeds Hotels', 'Hotel', 7.00),
(9, 'ExpressWheels Rentals', 'Car Rental', 11.00),
(10, 'SafeTrip Insurance', 'Insurance', 15.50);

-- Inserting records into Service
INSERT INTO Service (ServiceID, ServiceProviderID, ServiceType, ServiceDescription) VALUES
(1, 1, 'Flight', 'Round trip to New York'),
(2, 2, 'Hotel', '3 nights in a Deluxe room'),
(3, 3, 'Car Rental', 'Sedan for 2 days'),
(4, 4, 'Insurance', 'Travel insurance for Europe trip'),
(5, 5, 'Train', 'High-speed train to Paris'),
(6, 6, 'Hotel', '5-star accommodation'),
(7, 7, 'Flight', 'Direct flight to Tokyo'),
(8, 8, 'Hotel', 'Budget room for backpackers'),
(9, 9, 'Car Rental', 'Economy car for a weekend'),
(10, 10, 'Insurance', 'Comprehensive travel insurance package');

-- Inserting records into Booking
INSERT INTO Booking (BookingID, CustomerID, ServiceID, PartnerID, BookingDate, AmountPaid) VALUES
(1, 1, 1, 1, '2023-01-15', 300.00),
(2, 2, 2, 2, '2023-02-20', 450.00),
(3, 3, 3, 3, '2023-03-25', 150.00),
(4, 4, 4, 4, '2023-04-30', 800.00),
(5, 5, 5, 5, '2023-05-05', 350.00),
(6, 1, 6, 6, '2023-06-10', 900.00),
(7, 2, 7, 7, '2023-07-15', 1200.00),
(8, 3, 8, 8, '2023-08-20', 100.00),
(9, 4, 9, 9, '2023-09-25', 60.00),
(10, 5, 10, 10, '2023-10-30', 1600.00);

-- Inserting records into Feedback
INSERT INTO Feedback (FeedbackID, BookingID, Rating, Comments) VALUES
(1, 1, 5, 'Smooth and hassle-free booking experience.'),
(2, 2, 4, 'Good service, but room for improvement in user interface.'),
(3, 3, 3, 'Average rental service, vehicle was in okay condition.'),
(4, 4, 5, 'Excellent support for insurance coverage inquiries.'),
(5, 5, 4, 'Train was on time and comfortable.'),
(6, 6, 2, 'Hotel was not as described, quite disappointed.'),
(7, 7, 5, 'Flight was comfortable and had great amenities.'),
(8, 8, 3, 'Budget room was decent for the price.'),
(9, 9, 4, 'Car rental process was straightforward.'),
(10, 10, 5, 'Insurance package was comprehensive and well-explained.');