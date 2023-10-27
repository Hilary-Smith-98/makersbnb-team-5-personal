DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS spaces CASCADE;
DROP TABLE IF EXISTS availability ;

CREATE TABLE users (
id SERIAL PRIMARY KEY,
username varchar(255),
password varchar(255),
name text,
email varchar(255),
phone_number text
);

CREATE TABLE spaces (
id SERIAL PRIMARY KEY,
name text,
description text,
price_per_night numeric (7,2),
host_id int,
constraint fk_user foreign key(host_id)
    references users(id)

);

CREATE TABLE availability (
id SERIAL PRIMARY KEY,
date_not_available date,
approved text,
requested_by_user_id int,
spaces_id int,
constraint fk_spaces foreign key(spaces_id)
    references spaces(id)

);

INSERT INTO users (name, username, password, email, phone_number) VALUES ('Naomi Bloggs', 'Silvakippy','securepassword','Macicman@hotmail.com','01214960879');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Beata Ekkebert', 'Tomantning1789','A4$N61s','hir_ufizaxe52@yahoo.com','07700900186');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Rohese Clarity','Vegetebuck360','j=95J6','duha-gudedo63@outlook.com','01154960210');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Adolfo Dalit', 'Draffbrot1708','yuZY020#','jamixi_fajo87@yahoo.com','07700900191');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Apolónia Caelius', 'Mentalves26','XRy#14H6', 'rofenen-eya82@aol.com','07700900625');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Basu Eugenijus', 'Ajje04Mome','v9Q/l3~2', 'pizuye-xini98@aol.com','01314960681');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Inna Avital', 'Jockoman10245','^%41h6zW', 'reda-pajaru16@gmail.com','07700900485');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Anouk Verissimus', 'Bicornlian166',';628MGo', 'dox_epefize62@mail.com','03069990479');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Filipa Jyoti', 'Tiradepi280','uF#L6$89', 'gisuta-damo55@hotmail.com','07700900200');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Silas Narmer', 'Vaultynius39','PLd969;W', 'tule_piceyi54@yahoo.com','07700900239');
INSERT INTO users (name, username, password, email, phone_number) VALUES ('Cornelio Rozenn', 'Jossja0104','Zq07O0X', 'yaloki_saro39@aol.com','01214978789');

INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Mill Lodge', 'This large town is located near the coast and has a futuristic look.  It is best-known for its haunted house, a tumultuous history, and for being the home of a famous painter.  Also, there are all sorts of old artifacts still lying around the area.', 00135.00, 1);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('River View', 'This large town is located in the hills and has a rustic atmosphere.  It is best-known for its diverse population.  Also, rumor has it that many of the towns citizens are involved in some sort of secret project.', 00085.20, 2);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Melvins House', 'This small town is located in the desert and looks very modern.  It is best-known for the nearby military base.  Also, there are all sorts of old artifacts still lying around the area.', 0120.00, 1);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('The Old Vicarage', 'This large town is located by a lake and has a rustic atmosphere.  It is best-known for its haunted house.  Also, there are all sorts of old artifacts still lying around the area.', 00090.00, 3);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Black End', 'This moderate-sized town is located near the coast and looks very modern.  It is best-known for its beautiful park.  Also, rumor has it that the inhabitants are hiding something.', 00145.00, 4);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Primroselands', 'This large town is located in a valley and has a fairytale-like look to it.  It is best-known for its beautiful park, its autumn festival, and for being the home of a famous sculptor.  Also, rumor has it that the inhabitants are hiding something.', 00090.50, 2);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Firlands', 'This moderate-sized town is located in the hills and looks quite old.  It is best-known for its theater.  Also, there are all sorts of old artifacts still lying around the area.', 00125.00, 2);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('The Firs', 'This moderate-sized town is located in the desert and looks very old-fashioned.  It is best-known for its diverse population.  Also, rumor has it that a treasure is hidden somewhere in the town.', 00175.00, 5);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Sunny End', 'This large town is located in the mountains and has a rustic atmosphere.  It is best-known for a tumultuous history.  Also, rumor has it that the inhabitants may not be entirely human.', 00210.02, 5);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Middleton House', 'This moderate-sized town is located in a valley and has a rustic atmosphere.  It is best-known for a tumultuous history and its diverse population.  Also, rumor has it that the inhabitants are hiding something.', 0099.90, 7);
INSERT INTO spaces (name, description, price_per_night, host_id) VALUES ('Newport Lodge', 'This small town is located by a lake and looks very old-fashioned.  It is best-known for its fine dining and for being the home of a famous painter.  Also, strange objects are occasionally seen in the sky.', 000205.00, 6);

INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-12-01', 'approved', 3, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2024-02-02', 'denied', 2, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2024-06-03', 'unavailable', 6, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-12-04', 'pending', 6, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2024-04-05', 'approved', 7, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-12-06', 'denied', 1, 3);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2024-04-07', 'unavailable', 3, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-02-08', 'pending', 7, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-08-09', 'denied', 2, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2024-04-10', 'pending', 8, 1);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-10-29', 'approved', 9, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-10-30', 'approved', 3, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-11-03', 'approved', 6, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-11-06', 'approved', 7, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-11-14', 'approved', 2, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-12-05', 'approved', 4, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-03-19', 'pending', 1, 4);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-02-14', 'pending', 1, 6);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2024-08-10', 'approved', 1, 5);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-10-29', 'approved', 3, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-11-02', 'approved', 6, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-11-01', 'approved', 7, 2);
INSERT INTO availability (date_not_available, approved, requested_by_user_id, spaces_id) VALUES ('2023-11-11', 'approved', 2, 2);

