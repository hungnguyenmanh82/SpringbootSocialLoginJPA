CREATE TABLE `socialdb`.`app_role` (
  `Role_Id` bigint NOT NULL ,
  `Role_Name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Role_Id`),
  UNIQUE INDEX `Role_Name_UNIQUE` (`Role_Name` ASC));
  
  
  ---------------------------------------------------------------
  CREATE TABLE `socialdb`.`app_user` (
  `User_Id` bigint NOT NULL AUTO_INCREMENT,
  `User_Name` VARCHAR(36) NOT NULL,
  `Email` VARCHAR(128) NOT NULL,
  `First_Name` VARCHAR(36) NULL,
  `Last_Name` VARCHAR(36) NULL,
  `Encryted_Password` VARCHAR(128) NOT NULL,
  `Enabled` BIT(1) NOT NULL,
  PRIMARY KEY (`User_Id`),
  UNIQUE INDEX `User_Name_UNIQUE` (`User_Name` ASC),
  UNIQUE INDEX `Email_UNIQUE` (`Email` ASC));
  
  --------------------------------------------------------
  CREATE TABLE `socialdb`.`persistent_logins` (
  `Series` VARCHAR(64) NOT NULL,
  `Username` VARCHAR(64) NOT NULL,
  `Token` VARCHAR(64) NOT NULL,
  `Last_Used` DATE NOT NULL,
  PRIMARY KEY (`Series`));

-------------------------------------------------------------

CREATE TABLE `userconnection` (
  `Userid` varchar(255) NOT NULL,
  `Providerid` varchar(255) NOT NULL,
  `Provideruserid` varchar(255) NOT NULL,
  `Rank` int(11) NOT NULL,
  `Displayname` varchar(255) DEFAULT NULL,
  `Profileurl` varchar(512) DEFAULT NULL,
  `Imageurl` varchar(512) DEFAULT NULL,
  `Accesstoken` varchar(512) DEFAULT NULL,
  `Secret` varchar(512) DEFAULT NULL,
  `Refreshtoken` varchar(512) DEFAULT NULL,
  `Expiretime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Userid`,`Providerid`,`Provideruserid`)
);
  
---------------------------------------------------------

CREATE TABLE 'user_role` (
  `Id` BIGINT NOT NULL,
  `User_Id` BIGINT NOT NULL,
  `Role_Id` BIGINT NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `USER_ROLE_UK` (`User_Id` ASC, `Role_Id` ASC));

--------------------------------------
 
insert into App_User (USER_ID, USER_NAME,EMAIL, ENCRYTED_PASSWORD, ENABLED)
values (2, 'dbuser1','hung2@gmail.com', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
 
insert into App_User (USER_ID, USER_NAME,EMAIL, ENCRYTED_PASSWORD, ENABLED)
values (1, 'dbadmin1','hung1@gmail.com', '$2a$10$PrI5Gk9L.tSZiW9FXhTS8O8Mz9E97k2FZbFvGFFaSsiTUIl.TCrFu', 1);
 
---
 
insert into app_role (ROLE_ID, ROLE_NAME)
values (1, 'ROLE_ADMIN');
 
insert into app_role (ROLE_ID, ROLE_NAME)
values (2, 'ROLE_USER');
 
---
 
insert into user_role (ID, USER_ID, ROLE_ID)
values (1, 1, 1);
 
insert into user_role (ID, USER_ID, ROLE_ID)
values (2, 1, 2);
 
insert into user_role (ID, USER_ID, ROLE_ID)
values (3, 2, 2);