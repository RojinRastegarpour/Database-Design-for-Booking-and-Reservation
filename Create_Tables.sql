CREATE TABLE users
(
    id                 INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username           VARCHAR(50)  NOT NULL UNIQUE,
    hashed_password    VARCHAR(128) NOT NULL,
    gender             TINYINT      NOT NULL,
    national_code      VARCHAR(10)  NOT NULL UNIQUE,
    persian_first_name VARCHAR(30)  NOT NULL,
    persian_last_name  VARCHAR(30)  NOT NULL,
    latin_first_name   VARCHAR(30)  NOT NULL,
    latin_last_name    VARCHAR(30)  NOT NULL,
    phone_number       VARCHAR(15)  NOT NULL UNIQUE,
    email              VARCHAR(254) NOT NULL UNIQUE,
    credit             INT          NOT NULL
);

CREATE TABLE discount_code
(
    code                VARCHAR(50) NOT NULL PRIMARY KEY,
    reservation_type    SMALLINT    NOT NULL,
    max_discount_value  INT,
    discount_percentage TINYINT     NOT NULL,
    start_datetime      DATETIME    NOT NULL,
    expiry_datetime     DATETIME    NOT NULL
);

CREATE TABLE discount_code_user
(
    code    VARCHAR(50) NOT NULL,
    user_id INT         NOT NULL,
    FOREIGN KEY (code) REFERENCES discount_code(code),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE villa
(
    id           INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name         VARCHAR(80)  NOT NULL,
    description  VARCHAR(300) NOT NULL,
    address      VARCHAR(200) NOT NULL,
    renting_cost INT          NOT NULL
);

CREATE TABLE villa_image
(
    villa_id  int,
    image_url VARCHAR(100) NOT NULL,
    FOREIGN KEY (villa_id) REFERENCES villa(id)
);

CREATE TABLE hotel
(
    id          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(80)  NOT NULL,
    description VARCHAR(300) NOT NULL,
    address     VARCHAR(300) NOT NULL,
    stars_count TINYINT      NOT NULL
);

CREATE TABLE hotel_image
(
    hotel_id  int,
    image_url VARCHAR(100) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE hotel_phone_number
(
    hotel_id     int,
    phone_number VARCHAR(15) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE hotel_room
(
    id          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    hotel_id    INT          NOT NULL,
    type        SMALLINT     NOT NULL,
    price       INT          NOT NULL,
    description VARCHAR(300) NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE tour
(
    id          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(80)  NOT NULL,
    description VARCHAR(300) NOT NULL
);

CREATE TABLE airline
(
    id   INT         NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE airline_origin
(
    name           VARCHAR(50) NOT NULL PRIMARY KEY,
    origin_country VARCHAR(30) NOT NULL
);

CREATE TABLE airplane_model
(
    model_name  VARCHAR(50) NOT NULL PRIMARY KEY,
    seats_count SMALLINT    NOT NULL
);

CREATE TABLE airplane
(
    id         INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    airline_id INT         NOT NULL,
    model      VARCHAR(50) NOT NULL,
    FOREIGN KEY (airline_id) REFERENCES airline(id),
    FOREIGN KEY (model) REFERENCES airplane_model(model_name)
);

CREATE TABLE rail_company
(
    id                      INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name                    VARCHAR(80) NOT NULL,
    daily_trips             INT         NOT NULL,
    max_allowed_daily_trips INT         NOT NULL
);

CREATE TABLE train_model
(
    model_name  VARCHAR(50) NOT NULL PRIMARY KEY,
    seats_count SMALLINT    NOT NULL
);

CREATE TABLE train
(
    id              INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rail_company_id INT         NOT NULL,
    model           VARCHAR(50) NOT NULL,
    FOREIGN KEY (rail_company_id) REFERENCES rail_company(id),
    FOREIGN KEY (model) REFERENCES train_model(model_name)
);

CREATE TABLE train_seat
(
    id          INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    train_id    INT      NOT NULL,
    price       INT      NOT NULL,
    seat_number SMALLINT NOT NULL,
    FOREIGN KEY (train_id) REFERENCES train(id)
);

CREATE TABLE villa_reservation
(
    id                 INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id            INT      NOT NULL,
    villa_id           INT      NOT NULL,
    discount_code      VARCHAR(50),
    entry_datetime     DATETIME NOT NULL,
    departure_datetime DATETIME NOT NULL,
    cancel_datetime    DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (villa_id) REFERENCES villa(id),
    FOREIGN KEY (discount_code) REFERENCES discount_code(code)

);

CREATE TABLE hotel_reservation
(
    id                 INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id            INT      NOT NULL,
    discount_code      VARCHAR(50),
    price              INT      NOT NULL,
    entry_datetime     DATETIME NOT NULL,
    departure_datetime DATETIME NOT NULL,
    cancel_datetime    DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE hotel_room_reservation
(
    reservation_id INT NOT NULL,
    room_id        INT NOT NULL,
    FOREIGN KEY (reservation_id) REFERENCES hotel_reservation(id),
    FOREIGN KEY (room_id) REFERENCES hotel_room(id)
);

CREATE TABLE tour_reservation
(
    id               INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id          INT      NOT NULL,
    tour_id          INT      NOT NULL,
    people_count     SMALLINT NOT NULL,
    total_price      INT      NOT NULL,
    reserve_datetime DATETIME NOT NULL,
    cancel_datetime  DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (tour_id) REFERENCES tour(id)
);

CREATE TABLE airplane_ticket
(
    id                     INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    airplane_id            INT         NOT NULL,
    origin_country         VARCHAR(30) NOT NULL,
    destination_country    VARCHAR(30) NOT NULL,
    price                  INT         NOT NULL,
    seat_id                VARCHAR(10) NOT NULL,
    flight_datetime        DATETIME    NOT NULL,
    return_flight_datetime DATETIME,
    FOREIGN KEY (airplane_id) REFERENCES airplane(id)
);

CREATE TABLE flight_reservation
(
    id               INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id          INT      NOT NULL,
    ticket_id        INT      NOT NULL,
    discount_code    VARCHAR(50),
    flight_type      SMALLINT NOT NULL,
    reserve_datetime DATETIME NOT NULL,
    cancel_datetime  DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (ticket_id) REFERENCES airplane_ticket(id),
    FOREIGN KEY (discount_code) REFERENCES discount_code(code)

);

CREATE TABLE train_ticket
(
    id                 INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    train_id           INT         NOT NULL,
    seat_id            INT         NOT NULL,
    origin             VARCHAR(30) NOT NULL,
    destination        VARCHAR(30) NOT NULL,
    price              INT         NOT NULL,
    departure_datetime DATETIME    NOT NULL,
    cancel_datetime    DATETIME,
    FOREIGN KEY (train_id) REFERENCES train(id),
    FOREIGN KEY (seat_id) REFERENCES train_seat(id)
);

CREATE TABLE train_reservation
(
    id               INT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id          INT      NOT NULL ,
    ticket_id        INT      NOT NULL ,
    discount_code    VARCHAR(50) ,
    flight_type      SMALLINT NOT NULL,
    reserve_datetime DATETIME NOT NULL,
    cancel_datetime  DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (ticket_id) REFERENCES train_ticket(id),
    FOREIGN KEY (discount_code) REFERENCES discount_code(code)
);