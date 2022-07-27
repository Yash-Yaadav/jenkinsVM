INSERT INTO role (id, name)
VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN');

INSERT INTO user (id, username, password, first_name, last_name, date_of_birth, sex, phone, image)
VALUES
(1, 'yash@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'yash','yadav', '1994-07-16', 1, '+91 988 660 81 32', '1.jpg'),
(2, 'Mayur@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Mayur','Solanki', '1993-09-28', 1, '+91 999 999 99 99', '2.jpg'),
(3, 'Mridul@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Mridul','Kumar', '1998-09-28', 2, '+91 888 999 99 99', '3.png'),
(4, 'gehlot@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Dharm','gehlot', '1995-09-28', 1, '+91 777 999 99 99', '4.jpeg'),
(5, 'harun@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Harun','Bhati', '1965-11-15', 1, '+91 666 999 99 99', '5.jpg'),
(6, 'rahul@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Rahul','Anand', '1992-04-26', 2, '+91 555 999 99 99', '6.jpg'),
(7, 'dheeraj@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Dheeraj','Kumar', '1996-12-15', 2, '+91 555 999 99 99', '7.jpg'),
(8, 'vikas@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Vikas','Kala', '1988-10-11', 1, '+91 444 999 99 99', '8.jpg'),
(9, 'himanshu@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Himanshu', 'Dadhich', '1981-03-17', 2, '+91 333 999 99 99', '9.jpg'),
(10, 'ansari@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Azuansari', 'Ansari', '1988-10-13', 1, '+91 222 999 99 99', '10.jpg'),
(11, 'rahulS@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'RahulS', 'Surela', '1952-08-27', 1, '+91 111 999 99 99', '11.jpg'),
(12, 'ajit@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Ajit',  'aj', '1997-02-19', 2, '+91 999 888 99 99', '12.jpg'),
(13, 'tousif@gmail.com', '$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K', 'Tousif', 'tofu', '1994-12-01', 1, '+91 999 777 99 99', '13.jpeg');

INSERT INTO user_role (user_id, role_id)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1);

INSERT INTO friendship (id, user_sender, user_receiver, accepted)
VALUES
(null, 1,  2, true),
(null, 1,  3, true),
(null, 2,  3, true),
(null, 4,  5, true),
(null, 4,  6, true),
(null, 5,  1, false),
(null, 6,  1, false),
(null, 1, 9, false),
(null, 1,  8, false);

INSERT INTO messages (id, time, sender, receiver, message)
VALUES
(null, '2022-07-09 10:11:12', 1, 2, 'Hi! where are you?'),
(null, '2022-07-10 10:11:12', 2, 1, 'get lost!'),
(null, '2022-07-11 10:11:12', 3, 1, 'So whats the word on Tim?'),
(null, '2022-07-11 10:12:34', 1, 3, 'Hello there, how are you?'),
(null, '2022-07-12 10:11:12', 3, 2, 'Cheers. All right'),
(null, '2022-07-13 10:11:12', 1, 2, 'How it can help'),
(null, '2022-07-14 10:11:12', 2, 1, 'nice app');
