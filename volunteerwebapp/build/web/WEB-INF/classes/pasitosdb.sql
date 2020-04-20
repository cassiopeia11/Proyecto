CREATE SCHEMA `pasitosdb` ;
CREATE TABLE `pasitosdb`.`usuarios` 
(
);
CREATE TABLE `pasitosdb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `carnet` VARCHAR(8) NOT NULL,
  `year` VARCHAR(10) NOT NULL,
  `phone` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`id`));
  
SET GLOBAL time_zone = '-3:00';
INSERT INTO pasitosdb.users(id, name, carnet, year, phone) values(0, 'Roger', '20170919', 'cuarto', '64206115');

