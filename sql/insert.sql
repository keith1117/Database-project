INSERT INTO Airline (name) VALUES 
('JetBlue');

INSERT INTO Airport (code, city, country, airport_type) VALUES 
('JFK', 'New York', 'USA', 'International'),
('PVG', 'Shanghai', 'China', 'International'),
('BOS', 'Boston', 'USA', 'International'),
('PEK', 'Beijing', 'China', 'International'),
('LAX', 'LOS Angeles', 'USA', 'Domestic'),
('SFO', 'San Francisco', 'USA', 'Domestic');


INSERT INTO Customer (email, name, password, building_number, street, city, state, phone_number, passport_number, passport_expiration, passport_country, date_of_birth) VALUES 
('zl3419@nyu.edu', 'Eric Lin', 'root', '101', 'Main St', 'New York', 'NY', '555-1234', 'A12345678', '2028-05-15', 'USA', '1990-10-01'),
('hw3345@nyu.edu', 'Keith Wang', 'root', '20', 'Oak Ave', 'Boston', 'MA', '555-5678', 'B98765432', '2027-11-20', 'USA', '1985-03-25');

INSERT INTO Airline_Staff (username, password, first_name, last_name, date_of_birth, email_address, airline_name) VALUES
('jbsmith', '3321-4498', 'John', 'Smith', '1975-01-20', 'john.smith@jetblue.com', 'JetBlue');

INSERT INTO Airline_Staff_Phone (username, phone) VALUES
('jbsmith', '954-555-0001'),
('jbsmith', '954-555-0002');

INSERT INTO Airplane (id_number, airline_name, seats, manufacturer, age) VALUES 
('N603JB', 'JetBlue', 162, 'Airbus', 5),
('N500JB', 'JetBlue', 130, 'Embraer', 10),
('N701JB', 'JetBlue', 200, 'Airbus', 2),
('N111JB', 'JetBlue', 145, 'Airbus', 6),
('N222JB', 'JetBlue', 102, 'Embraer', 3);

INSERT INTO Flight (airline_name, flight_number, departure_date_time, arrival_date_time, base_price, departure_airport, arrival_airport, airplane_id_number, status) VALUES 
('JetBlue', 'B6008', '2026-03-01 10:00:00', '2026-03-02 12:00:00', 850.50, 'JFK', 'PVG', 'N603JB', 'DELAYED');

INSERT INTO Flight (airline_name, flight_number, departure_date_time, arrival_date_time, base_price, departure_airport, arrival_airport, airplane_id_number, status) VALUES 
('JetBlue', 'B6009', '2025-10-20 08:00:00', '2025-10-20 11:00:00', 820.00, 'PVG', 'JFK', 'N701JB', 'ON_TIME');

INSERT INTO Flight (airline_name, flight_number, departure_date_time, arrival_date_time, base_price, departure_airport, arrival_airport, airplane_id_number, status) VALUES 
('JetBlue', 'B6010', '2025-12-20 08:00:00', '2025-12-21 9:00:00', 199.00, 'BOS', 'PEK', 'N111JB', 'ON_TIME');

INSERT INTO Flight (airline_name, flight_number, departure_date_time, arrival_date_time, base_price, departure_airport, arrival_airport, airplane_id_number, status) VALUES 
('JetBlue', 'B6011', '2025-12-27 12:00:00', '2025-12-28 13:00:00', 79.00, 'LAX', 'SFO', 'N222JB', 'CANCELLED');

INSERT INTO Ticket (ticket_ID, customer_email, airline_name, flight_number, departure_date_time, card_type, card_number, name_on_card, expiration_date, purchase_date_time) VALUES 
(1001, 'zl3419@nyu.edu', 'JetBlue', 'B6008', '2026-03-01 10:00:00', 'Credit', '1111222233334444', 'Eric Lin', '2027-10-01', '2025-10-28 14:00:00');

INSERT INTO Ticket (ticket_ID, customer_email, airline_name, flight_number, departure_date_time, card_type, card_number, name_on_card, expiration_date, purchase_date_time) VALUES 
(1002, 'hw3345@nyu.edu', 'JetBlue', 'B6009', '2025-10-20 08:00:00', 'Debit', '5555666677778888', 'Keith Wang', '2028-02-01', '2025-10-28 15:30:00');

INSERT INTO Review (customer_email, airline_name, flight_number, departure_date_time, rating, comment, created_at) VALUES 
('hw3345@nyu.edu', 'JetBlue', 'B6009', '2025-10-20 08:00:00', 4, 'Service was good, but the seat was uncomfortable.', '2025-10-21 12:00:00');
