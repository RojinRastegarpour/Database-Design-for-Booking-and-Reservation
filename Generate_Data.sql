INSERT INTO users (username, hashed_password, gender, national_code, persian_first_name, persian_last_name, latin_first_name, latin_last_name, phone_number, email, credit)
VALUES
('john_doe', 'hashed_pass_1', 1, '1234567890', 'جان', 'دو', 'John', 'Doe', '+1234567890', 'john.doe@example.com', 200),
('jane_smith', 'hashed_pass_2', 0, '9876543210', 'جین', 'اسمیت', 'Jane', 'Smith', '+9876543210', 'jane.smith@example.com', 150),
('alex_walker', 'hashed_pass_3', 1, '5678901234', 'الکس', 'واکر', 'Alex', 'Walker', '+5678901234', 'alex.walker@example.com', 350),
('emma_johnson', 'hashed_pass_4', 0, '4321098765', 'ایما', 'جانسون', 'Emma', 'Johnson', '+4321098765', 'emma.johnson@example.com', 100),
('michael_clark', 'hashed_pass_5', 1, '7890123456', 'مایکل', 'کلارک', 'Michael', 'Clark', '+7890123456', 'michael.clark@example.com', 50),
('sophia_smith', 'hashed_pass_6', 0, '2109876543', 'صوفیا', 'اسمیت', 'Sophia', 'Smith', '+2109876543', 'sophia.smith@example.com', 300),
('william_davis', 'hashed_pass_7', 1, '6543210987', 'ویلیام', 'دیویس', 'William', 'Davis', '+6543210987', 'william.davis@example.com', 180),
('olivia_miller', 'hashed_pass_8', 0, '9081726354', 'الیویا', 'میلر', 'Olivia', 'Miller', '+9081726354', 'olivia.miller@example.com', 400),
('james_wilson', 'hashed_pass_9', 1, '5432109876', 'جیمز', 'ویلسون', 'James', 'Wilson', '+5432109876', 'james.wilson@example.com', 220),
('ava_taylor', 'hashed_pass_10', 0, '5678904321', 'آوا', 'تیلور', 'Ava', 'Taylor', '+5678904321', 'ava.taylor@example.com', 75);


INSERT INTO discount_code (code, reservation_type, max_discount_value, discount_percentage, start_datetime, expiry_datetime)
VALUES
('SUMMER2023', 1, 1000, 20, '2023-06-01 00:00:00', '2023-09-30 23:59:59'),
('FAMILY10', 2, NULL, 10, '2023-07-15 12:00:00', '2023-12-31 23:59:59'),
('SPRINGSALE', 3, 500, 15, '2023-03-20 00:00:00', '2023-04-30 23:59:59'),
('HONEYMOON', 2, 800, 25, '2023-05-01 00:00:00', '2023-10-31 23:59:59'),
('EARLYBIRD', 4, 750, 30, '2023-08-01 00:00:00', '2023-11-30 23:59:59'),
('DISCOUNT50', 1, 300, 50, '2023-07-20 10:00:00', '2023-07-21 10:00:00'),
('WEEKEND15', 3, 200, 15, '2023-07-23 00:00:00', '2023-07-25 23:59:59'),
('VILLA20', 2, 600, 20, '2023-07-10 15:00:00', '2023-08-15 23:59:59'),
('FREESHIPPING', 4, NULL, 5, '2023-06-15 00:00:00', '2023-09-15 23:59:59'),
('WELCOME10', 1, 150, 10, '2023-01-01 00:00:00', '2023-12-31 23:59:59');


INSERT INTO discount_code_user (code, user_id)
VALUES
('SUMMER2023', 1),
('SUMMER2023', 3),
('FAMILY10', 2),
('HONEYMOON', 5),
('HONEYMOON', 8),
('EARLYBIRD', 4),
('DISCOUNT50', 6),
('VILLA20', 9),
('WELCOME10', 7),
('WELCOME10', 10);


INSERT INTO villa (name, description, address, renting_cost)
VALUES
('Cozy Beachfront Villa', 'A beautiful villa with stunning ocean views', '123 Beach Road, Paradise City', 300),
('Luxury Mountain Retreat', 'A luxurious villa nestled in the mountains', '456 Mountain View Drive, Serenity Hills', 500),
('Seaside Paradise Villa', 'A charming villa with direct beach access', '789 Seaside Avenue, Sunshine Coast', 250),
('Riverside Haven Villa', 'A peaceful villa overlooking the tranquil river', '101 River Bend Lane, Riverside Village', 350),
('Tropical Hideaway Villa', 'A private villa surrounded by lush tropical gardens', '222 Palm Grove Road, Tropical Island', 400),
('Modern City Villa', 'A stylish villa in the heart of the bustling city', '333 Urban Street, Metropolis Central', 200),
('Historic Countryside Villa', 'A historic villa with panoramic countryside views', '444 Country Lane, Old Heritage Town', 280),
('Lakefront Retreat Villa', 'A serene villa situated on the shores of a tranquil lake', '555 Lakeview Drive, Serenity Lakeside', 320),
('Ski Chalet Villa', 'A cozy villa located near the ski slopes', '666 Snowy Peak Road, Winter Wonderland', 450),
('Eco-Friendly Villa', 'An eco-conscious villa with sustainable features', '777 Green Avenue, EcoVillage', 260);


INSERT INTO villa_image (villa_id, image_url)
VALUES
(1, 'https://example.com/villa_images/villa1_image1.jpg'),
(1, 'https://example.com/villa_images/villa1_image2.jpg'),
(1, 'https://example.com/villa_images/villa1_image3.jpg'),
(2, 'https://example.com/villa_images/villa2_image1.jpg'),
(2, 'https://example.com/villa_images/villa2_image2.jpg'),
(3, 'https://example.com/villa_images/villa3_image1.jpg'),
(4, 'https://example.com/villa_images/villa4_image1.jpg'),
(5, 'https://example.com/villa_images/villa5_image1.jpg'),
(6, 'https://example.com/villa_images/villa6_image1.jpg'),
(7, 'https://example.com/villa_images/villa7_image1.jpg');


INSERT INTO hotel (name, description, address, stars_count)
VALUES
('Grand Riviera Hotel', 'A luxurious hotel with breathtaking sea views', '123 Ocean Avenue, Seaside City', 5),
('Mountain Lodge Resort', 'A cozy resort nestled in the mountains', '456 Mountain View Drive, Serenity Hills', 4),
('Sunset Beach Hotel', 'A charming beachfront hotel with beautiful sunsets', '789 Beachside Road, Sunshine Coast', 4),
('Riverside Inn', 'A peaceful hotel overlooking the tranquil river', '101 River Bend Lane, Riverside Village', 3),
('Tropical Paradise Resort', 'A tropical resort with palm trees and pristine beaches', '222 Palm Grove Road, Tropical Island', 5),
('Metropolis Plaza Hotel', 'A modern hotel in the heart of the bustling city', '333 Urban Street, Metropolis Central', 4),
('Heritage Mansion Hotel', 'A historic hotel with classic architecture', '444 Historic Avenue, Old Heritage Town', 3),
('Lakeview Lodge Resort', 'A serene resort with stunning lake views', '555 Lakeview Drive, Serenity Lakeside', 4),
('Alpine Ski Hotel', 'A ski hotel located near the ski slopes', '666 Snowy Peak Road, Winter Wonderland', 3),
('EcoResort', 'An eco-friendly resort with sustainable practices', '777 Green Avenue, EcoVillage', 5);


INSERT INTO hotel_image (hotel_id, image_url)
VALUES
(1, 'https://example.com/hotel_images/hotel1_image1.jpg'),
(1, 'https://example.com/hotel_images/hotel1_image2.jpg'),
(1, 'https://example.com/hotel_images/hotel1_image3.jpg'),
(2, 'https://example.com/hotel_images/hotel2_image1.jpg'),
(2, 'https://example.com/hotel_images/hotel2_image2.jpg'),
(3, 'https://example.com/hotel_images/hotel3_image1.jpg'),
(4, 'https://example.com/hotel_images/hotel4_image1.jpg'),
(5, 'https://example.com/hotel_images/hotel5_image1.jpg'),
(6, 'https://example.com/hotel_images/hotel6_image1.jpg'),
(7, 'https://example.com/hotel_images/hotel7_image1.jpg');


INSERT INTO hotel_phone_number (hotel_id, phone_number)
VALUES
(1, '+1234567890'),
(1, '+0987654321'),
(2, '+1122334455'),
(3, '+3344556677'),
(4, '+5566778899'),
(5, '+9988776655'),
(6, '+4433221100'),
(7, '+8877665544'),
(8, '+9876543210'),
(9, '+0123456789');


INSERT INTO hotel_room (hotel_id, type, price, description)
VALUES
(1, 1, 200, 'Standard Room with Ocean View'),
(1, 2, 300, 'Deluxe Suite with Balcony'),
(2, 1, 150, 'Mountain View Room'),
(2, 2, 250, 'Cabin Suite with Fireplace'),
(2, 3, 350, 'Family Suite with Kitchenette'),
(3, 1, 180, 'Beachfront Room'),
(4, 1, 120, 'Riverside Room with Garden View'),
(5, 2, 280, 'Beach Bungalow with Private Pool'),
(6, 1, 100, 'City View Room'),
(7, 2, 220, 'Historic Suite with Antique Furnishings');


INSERT INTO tour (name, description)
VALUES
('City Highlights Tour', 'Explore the best attractions in the city'),
('Mountain Adventure Tour', 'Embark on an exciting trek through the mountains'),
('Beach Paradise Tour', 'Relax and unwind on pristine sandy beaches'),
('Historical Landmarks Tour', 'Discover the rich history and culture of the region'),
('Wildlife Safari Tour', 'Encounter amazing wildlife in their natural habitats'),
('Cultural Heritage Tour', 'Immerse yourself in the local traditions and customs'),
('Wine Tasting Tour', 'Indulge in a tour of renowned wineries and vineyards'),
('Island Hopping Tour', 'Hop from one stunning island to another in the archipelago'),
('Desert Expedition Tour', 'Experience the thrill of traversing vast desert landscapes'),
('Art and Architecture Tour', 'Admire masterpieces of art and stunning architecture');


INSERT INTO airline (id, name)
VALUES
(1, 'Emirates Airlines'),
(2, 'Singapore Airlines'),
(3, 'Lufthansa'),
(4, 'British Airways'),
(5, 'Qatar Airways'),
(6, 'Cathay Pacific'),
(7, 'Delta Air Lines'),
(8, 'Air France'),
(9, 'Turkish Airlines'),
(10, 'ANA All Nippon Airways');

-- TODO airline_origin --

INSERT INTO airplane_model (model_name, seats_count)
VALUES
('Airbus A320', 180),
('Boeing 737', 200),
('Embraer E190', 114),
('Airbus A350', 325),
('Boeing 787', 290),
('Bombardier CRJ900', 90),
('Airbus A380', 555),
('Boeing 777', 350),
('Embraer E195', 120),
('Airbus A330', 280);


INSERT INTO airplane (id, airline_id, model)
VALUES
(1, 1, 'Airbus A320'),
(2, 1, 'Airbus A320'),
(3, 2, 'Boeing 737'),
(4, 3, 'Embraer E190'),
(5, 4, 'Airbus A350'),
(6, 5, 'Boeing 787'),
(7, 6, 'Bombardier CRJ900'),
(8, 7, 'Airbus A380'),
(9, 8, 'Boeing 777'),
(10, 9, 'Embraer E195');


INSERT INTO rail_company (id, name, daily_trips, max_allowed_daily_trips)
VALUES
(1, 'Express Railways', 30, 50),
(2, 'SwiftTrains', 20, 40),
(3, 'Metro Rails', 40, 60),
(4, 'Transcontinental Trains', 25, 45),
(5, 'City Connect Rails', 35, 55),
(6, 'Highspeed Lines', 50, 70),
(7, 'Coastal Railways', 15, 35),
(8, 'Northern Express', 28, 48),
(9, 'Central Railco', 22, 42),
(10, 'Southern Rails', 33, 53);


INSERT INTO train_model (model_name, seats_count)
VALUES
('Express 2000', 150),
('RapidRail 300', 180),
('MetroMax 500', 200),
('SuperSwift 700', 160),
('Urban Commuter', 120),
('Luxury Liner', 100),
('Coastal Cruiser', 140),
('Transcontinental 1000', 220),
('City Sprinter', 130),
('Highland Hauler', 190);


INSERT INTO train (id, rail_company_id, model)
VALUES
(1, 1, 'Express 2000'),
(2, 1, 'Express 2000'),
(3, 2, 'RapidRail 300'),
(4, 3, 'MetroMax 500'),
(5, 4, 'SuperSwift 700'),
(6, 5, 'Urban Commuter'),
(7, 6, 'Luxury Liner'),
(8, 7, 'Coastal Cruiser'),
(9, 8, 'Transcontinental 1000'),
(10, 9, 'City Sprinter');

INSERT INTO train_seat (id, train_id, price, seat_number)
VALUES
(1, 1, 50, 101),
(2, 1, 50, 102),
(3, 1, 60, 103),
(4, 2, 55, 101),
(5, 2, 55, 102),
(6, 3, 45, 101),
(7, 3, 45, 102),
(8, 4, 70, 101),
(9, 5, 65, 101),
(10, 6, 80, 101);

INSERT INTO villa_reservation (id, user_id, villa_id, discount_code, entry_datetime, departure_datetime, cancel_datetime)
VALUES
(1, 1, 1, 'SUMMER2023', '2023-07-25 14:00:00', '2023-07-30 10:00:00', NULL),
(2, 2, 3, NULL, '2023-08-10 12:00:00', '2023-08-15 11:00:00', NULL),
(3, 4, 3, 'HONEYMOON', '2023-09-05 15:00:00', '2023-09-10 12:00:00', '2023-08-30 10:00:00'),
(4, 3, 4, NULL, '2023-08-18 13:00:00', '2023-08-20 11:00:00', NULL),
(5, 5, 7, 'VILLA20', '2023-09-01 16:00:00', '2023-09-05 14:00:00', NULL),
(6, 6, 7, 'SUMMER2023', '2023-07-22 10:00:00', '2023-07-25 09:00:00', NULL),
(7, 7, 6, NULL, '2023-08-05 14:00:00', '2023-08-08 12:00:00', NULL),
(8, 8, 7, NULL, '2023-09-15 11:00:00', '2023-09-20 10:00:00', NULL),
(9, 9, 1, 'VILLA20', '2023-08-28 12:00:00', '2023-09-03 10:00:00', NULL),
(10, 10, 1, 'SUMMER2023', '2023-07-30 09:00:00', '2023-08-05 08:00:00', NULL),
(11, 6, 7, 'SUMMER2023', '2023-07-22 10:00:00', '2023-07-25 09:00:00', NULL),
(12, 7, 3, NULL, '2023-08-05 14:00:00', '2023-08-08 12:00:00', NULL),
(13, 8, 1, NULL, '2023-09-15 11:00:00', '2023-09-20 10:00:00', NULL),
(14, 9, 3, 'VILLA20', '2023-08-28 12:00:00', '2023-09-03 10:00:00', NULL),
(15, 10, 1, 'SUMMER2023', '2023-07-30 09:00:00', '2023-08-05 08:00:00', NULL);


INSERT INTO hotel_reservation (id, user_id, discount_code, price, entry_datetime, departure_datetime, cancel_datetime)
VALUES
(1, 1, 'FAMILY10', 400, '2023-07-25 14:00:00', '2023-07-30 10:00:00', NULL),
(2, 2, NULL, 550, '2023-08-10 12:00:00', '2023-08-15 11:00:00', NULL),
(3, 4, 'HONEYMOON', 700, '2023-09-05 15:00:00', '2023-09-10 12:00:00', '2023-08-30 10:00:00'),
(4, 3, NULL, 300, '2023-08-18 13:00:00', '2023-08-20 11:00:00', NULL),
(5, 5, 'DISCOUNT50', 450, '2023-09-01 16:00:00', '2023-09-05 14:00:00', NULL),
(6, 6, 'EARLYBIRD', 350, '2023-07-22 10:00:00', '2023-07-25 09:00:00', NULL),
(7, 7, NULL, 200, '2023-08-05 14:00:00', '2023-08-08 12:00:00', NULL),
(8, 8, NULL, 600, '2023-09-15 11:00:00', '2023-09-20 10:00:00', NULL),
(9, 9, 'WELCOME10', 250, '2023-08-28 12:00:00', '2023-09-03 10:00:00', NULL),
(10, 10, 'DISCOUNT50', 300, '2023-07-30 09:00:00', '2023-08-05 08:00:00', NULL);


INSERT INTO hotel_room_reservation (reservation_id, room_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10);


INSERT INTO tour_reservation (id, user_id, tour_id, people_count, total_price, reserve_datetime, cancel_datetime)
VALUES
(1, 1, 1, 2, 200, '2023-07-25', NULL),
(2, 2, 3, 4, 800, '2022-12-10', NULL),
(3, 4, 2, 1, 150, '2023-09-05', '2023-08-30 10:00:00'),
(4, 3, 4, 3, 450, '2022-12-10', NULL),
(5, 5, 5, 2, 300, '2022-12-10', NULL),
(6, 6, 7, 2, 400, '2023-07-22', NULL),
(7, 7, 6, 1, 200, '2022-12-10', NULL),
(8, 8, 9, 3, 600, '2023-09-15', NULL),
(9, 9, 8, 2, 300, '2023-08-28', NULL),
(10, 10, 10, 1, 150, '2023-07-30', NULL);


INSERT INTO airplane_ticket (id, airplane_id, origin_country, destination_country, price, seat_id, flight_datetime, return_flight_datetime)
VALUES
(1, 1, 'United Arab Emirates', 'United States', 1200, 'A1', '2023-07-25 14:00:00', '2023-08-05 10:00:00'),
(2, 2, 'Singapore', 'Australia', 800, 'B3', '2023-08-10 12:00:00', '2023-08-20 11:00:00'),
(3, 3, 'Germany', 'France', 500, 'C2', '2023-09-05 15:00:00', '2023-09-15 12:00:00'),
(4, 4, 'United Kingdom', 'Canada', 900, 'D1', '2023-08-18 13:00:00', '2023-08-28 11:00:00'),
(5, 5, 'Iran', 'Turkey', 600, 'E2', '2023-09-01 16:00:00', '2023-09-11 14:00:00'),
(6, 6, 'Hong Kong', 'Japan', 400, 'F1', '2023-07-22 10:00:00', '2023-07-30 09:00:00'),
(7, 7, 'United States', 'Italy', 1100, 'G3', '2023-08-05 14:00:00', '2023-08-15 12:00:00'),
(8, 8, 'France', 'Spain', 700, 'H2', '2023-09-15 11:00:00', '2023-09-25 10:00:00'),
(9, 9, 'Turkey', 'Greece', 550, 'I1', '2023-08-28 12:00:00', '2023-09-07 10:00:00'),
(10, 10, 'Japan', 'South Korea', 300, 'J2', '2023-07-30 09:00:00', '2023-08-08 08:00:00');


INSERT INTO flight_reservation (id, user_id, ticket_id, discount_code, flight_type, reserve_datetime, cancel_datetime)
VALUES
(1, 1, 1, 'SUMMER2023', 1, '2023-07-25 14:00:00', NULL),
(2, 2, 3, NULL, 2, '2023-08-10 12:00:00', NULL),
(3, 4, 2, 'HONEYMOON', 1, '2023-09-05 15:00:00', '2023-08-30 10:00:00'),
(4, 3, 4, NULL, 2, '2023-08-18 13:00:00', NULL),
(5, 5, 5, 'DISCOUNT50', 1, '2023-09-01 16:00:00', NULL),
(6, 6, 7, 'SUMMER2023', 2, '2023-07-22 10:00:00', NULL),
(7, 7, 6, NULL, 1, '2023-08-05 14:00:00', NULL),
(8, 8, 9, NULL, 2, '2023-09-15 11:00:00', NULL),
(9, 8, 8, 'WELCOME10', 1, '2023-08-28 12:00:00', NULL),
(10, 3, 10, 'DISCOUNT50', 2, '2023-07-30 09:00:00', NULL),
(11, 3, 5, 'SUMMER2023', 1, '2023-07-25 14:00:00', NULL),
(12, 8, 5, NULL, 2, '2023-08-10 12:00:00', NULL),
(13, 6, 5, 'SUMMER2023', 2, '2023-07-22 10:00:00', NULL),
(14, 8, 5, NULL, 1, '2023-08-05 14:00:00', NULL);


INSERT INTO train_ticket (id, train_id, seat_id, origin, destination, price, departure_datetime, cancel_datetime)
VALUES
(1, 1, 1, 'New York', 'Boston', 50, '2023-07-25 14:00:00', NULL),
(2, 2, 4, 'Chicago', 'Denver', 60, '2023-08-10 12:00:00', NULL),
(3, 3, 6, 'Los Angeles', 'San Francisco', 70, '2023-09-05 15:00:00', '2023-08-30 10:00:00'),
(4, 4, 8, 'London', 'Manchester', 45, '2023-08-18 13:00:00', NULL),
(5, 5, 9, 'Paris', 'Berlin', 55, '2023-09-01 16:00:00', NULL),
(6, 6, 10, 'Tokyo', 'Osaka', 65, '2023-07-22 10:00:00', NULL);



INSERT INTO train_reservation (id, user_id, ticket_id, discount_code, flight_type, reserve_datetime, cancel_datetime)
VALUES
(1, 1, 1, 'SUMMER2023', 1, '2023-07-25 14:00:00', NULL),
(2, 2, 3, NULL, 2, '2023-08-10 12:00:00', NULL),
(3, 4, 2, 'HONEYMOON', 1, '2023-09-05 15:00:00', '2023-08-30 10:00:00'),
(4, 3, 4, NULL, 2, '2023-08-18 13:00:00', NULL),
(5, 5, 5, 'DISCOUNT50', 1, '2023-09-01 16:00:00', NULL),
(6, 6, 6, 'SUMMER2023', 2, '2023-07-22 10:00:00', NULL),
(7, 1, 1, 'SUMMER2023', 1, '2023-07-25 14:00:00', NULL),
(8, 1, 3, NULL, 2, '2023-08-10 12:00:00', NULL),
(9, 8, 2, 'HONEYMOON', 1, '2023-09-05 15:00:00', '2023-08-30 10:00:00'),
(10, 3, 4, NULL, 2, '2023-08-18 13:00:00', NULL),
(11, 5, 5, 'DISCOUNT50', 1, '2023-09-01 16:00:00', NULL),
(12, 4, 6, 'SUMMER2023', 2, '2023-07-22 10:00:00', NULL);