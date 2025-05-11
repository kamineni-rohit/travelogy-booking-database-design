-- 1.High-Value Customers
SELECT c.CustomerID, c.FirstName, c.LastName, SUM(b.AmountPaid) AS TotalAmountSpent
FROM Customer c
JOIN Booking b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING SUM(b.AmountPaid) > 1500;

-- 2.Total Revenue per Service Type
SELECT 
  s.ServiceType,
  SUM(b.AmountPaid) AS TotalRevenue,
  CASE 
    WHEN SUM(b.AmountPaid) >= ALL (SELECT SUM(b2.AmountPaid) FROM Booking b2 JOIN Service s2 ON b2.ServiceID = s2.ServiceID GROUP BY s2.ServiceType) THEN 'Highest Revenue Generator'
    ELSE 'Standard Revenue Generator'
  END AS RevenueStatus
FROM Service s
JOIN Booking b ON s.ServiceID = b.ServiceID
GROUP BY s.ServiceType
ORDER BY TotalRevenue DESC;

-- 3.Service Performance Indicators
SELECT s.ServiceID, s.ServiceType,
       MIN(b.AmountPaid) AS MinAmount,
       MAX(b.AmountPaid) AS MaxAmount,
       CASE
           WHEN MAX(b.AmountPaid) > 1000 THEN 'High value'
           WHEN MAX(b.AmountPaid) BETWEEN 500 AND 1000 THEN 'Moderate value'
           ELSE 'Low value'
       END AS ValueCategory
FROM Service s
JOIN Booking b ON s.ServiceID = b.ServiceID
GROUP BY s.ServiceID, s.ServiceType;

-- 4. Feedback Analysis
SELECT f.FeedbackID, f.Comments,
       CASE
           WHEN f.Comments LIKE '%xcellent%' OR f.Comments LIKE '%outstanding%' OR f.Comments LIKE '%awesome%' THEN 'Positive'
           WHEN f.Comments LIKE '%poor%' OR f.Comments LIKE '%bad%' OR f.Comments LIKE '%horrible%' OR f.Comments LIKE '%disappointed%' THEN 'Negative'
           ELSE 'Neutral'
       END AS Sentiment
FROM Feedback f
JOIN Booking b ON f.BookingID = b.BookingID;

-- 5.Booking Frequency by Service Type
SELECT 
    S.ServiceType, 
    COUNT(B.BookingID) AS BookingFrequency,
    CASE
        WHEN COUNT(B.BookingID) >= 3 THEN 'High frequency'
        WHEN COUNT(B.BookingID) = 2 THEN 'Medium frequency'
        ELSE 'Low frequency'
    END AS FrequencyCategory
FROM 
    Booking B
INNER JOIN 
    Service S ON B.ServiceID = S.ServiceID
-- Assuming there's a need to focus on services with at least one booking
WHERE 
    B.BookingDate >= '2023-01-01' -- Example condition to limit the scope, such as bookings from the current year
GROUP BY 
    S.ServiceType
ORDER BY 
    BookingFrequency DESC;
