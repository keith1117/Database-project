-- localhost:8889/Airline Project/Flight/		http://localhost:8888/phpMyAdmin5/index.php?route=/database/sql&db=Airline+Project

--    Showing rows 0 -  0 (1 total, Query took 0.0002 seconds.)


-- a. Show all the future flights in the system.
SELECT
    *
FROM
    Flight
WHERE
    departure_date_time > NOW();



-- JetBlue	B6008	2026-03-01 10:00:00	2026-03-02 12:00:00	850.50	JFK	PVG	N603JB	DELAYED	
-- localhost:8889/Airline Project/Flight/		http://localhost:8888/phpMyAdmin5/index.php?route=/table/sql&db=Airline+Project&table=Flight

--    Showing rows 0 -  0 (1 total, Query took 0.0002 seconds.)


-- b. Show all of the delayed flights in the system.
SELECT
    *
FROM
    Flight
WHERE
    status = 'DELAYED';



-- JetBlue	B6008	2026-03-01 10:00:00	2026-03-02 12:00:00	850.50	JFK	PVG	N603JB	DELAYED	
-- localhost:8889/Airline Project/Customer/		http://localhost:8888/phpMyAdmin5/index.php?route=/table/sql&db=Airline+Project&table=Flight

--    Showing rows 0 -  2 (3 total, Query took 0.0002 seconds.)


-- c. Show the customer names who bought the tickets.
SELECT DISTINCT
    C.name
FROM
    Customer C
JOIN
    Ticket T ON C.email = T.customer_email;


-- name	
-- Chloe Lee	
-- Eric Lin	
-- Keith Wang	
-- localhost:8889/Airline Project/Airplane/		http://localhost:8888/phpMyAdmin5/index.php?route=/table/sql&db=Airline+Project&table=Customer

--    Showing rows 0 -  2 (3 total, Query took 0.0002 seconds.)


-- d. Show all the airplanes owned by the airline "JetBlue".
SELECT
    *
FROM
    Airplane
WHERE
    airline_name = 'JetBlue';


-- id_number	airline_name	seats	manufacturer	age	
-- N500JB	JetBlue	130	Embraer	10	
-- N603JB	JetBlue	162	Airbus	5	
-- N701JB	JetBlue	200	Airbus	2	
