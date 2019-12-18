-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 10:58 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healtho tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`fname`, `lname`, `email`, `phn`) VALUES
('Mounika', 'Matha', 'matha@gmail.com', '7897785656'),
('Mounika', 'Matha', 'matha@gmail.com', '7897785656'),
('Donald', 'Hey', 'nuy@gmail.com', '7798666478');

-- --------------------------------------------------------

--
-- Table structure for table `ip_login`
--

CREATE TABLE `ip_login` (
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_login`
--

INSERT INTO `ip_login` (`uname`, `pass`) VALUES
('Niha1234', 'niha1234'),
('Vishnu1234', 'vishnu1234'),
('Vanshi1234', 'vanshi1234'),
('Pratyusha1234', 'pratyusha1234');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `hgt` int(4) NOT NULL,
  `wgt` int(3) NOT NULL,
  `sym` varchar(50) NOT NULL,
  `dis` varchar(50) NOT NULL,
  `days` int(3) DEFAULT NULL,
  `bldgrp` varchar(3) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `phn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`fname`, `lname`, `age`, `sex`, `hgt`, `wgt`, `sym`, `dis`, `days`, `bldgrp`, `addr`, `phn`) VALUES
('Rita', 'Singh', 43, 'Female', 154, 50, 'cough with blood,night sweats,fever,lose of appiti', 'tuberculosis', 7, 'O+', 'Syamala Nagar,Guntur,Andhra Pradesh', '8919804838'),
('Mithun', 'Chakravarthy', 19, 'Male', 170, 60, 'pain in bones,dizziness,mouth ulcer,weight loss', 'Blood cancer', 10, 'A+', 'Kanchipuram,TamilNadu', '9876543210'),
('Mohith Kumar', 'Velaga', 45, 'Male', 175, 50, 'fatigue,fever,cough,breath shortness', 'Lower Respiratory Infections', 50, 'B+', 'Amalapuram,Andhra Pradesh,India', '7890654321'),
('Moturu', 'Niharika', 34, 'Female', 152, 54, 'abdominal pain,loose stools,nausea', 'Diarrheal Diseases', 10, 'O+', 'Chennai,Tamil Nadu,India', '7989808083'),
('Mounika ', 'Vellalacheruvu', 19, 'Female', 160, 42, 'chest pressure,dry cough,fatigue', 'Chronic Obstructive Pulmonary Disease', NULL, 'AB+', 'Tagore Street,Bengaluru,India', '8564256856'),
('Saranya', 'Somepalli', 12, 'Female', 159, 40, 'excessive thirst and urination,weight loss', 'Diabetes Mellitus', 36, 'A-', 'JKC Nagar,Vijayawada,Andhra Pradesh', '8908097907'),
('Vaishnavi', 'Balaji', 45, 'Female', 165, 70, 'cough with blood,nightsweats,fever,loseof appitite', 'tuberculosis', 4, 'AB+', 'Kothapeta,Guntur,Andhra Pradesh,India', '8989878675'),
('Mounika ', 'Yasam', 24, 'Female', 160, 56, 'pain in bones,dizziness,mouth ulcer,weight loss', 'Blood cancer', 8, 'B-', 'NT nagar,Nellore,Andhra pradesh,India', '8098978676'),
('Siva Mani', 'Venkat', 21, 'Male', 180, 65, 'fatigue,fever,cough,breath shortness', 'Lower Respiratory Infections', NULL, 'O+', 'Ongole,Prakasam,Andhra Pradesh,India', '7907836673'),
('Vikranth ', 'Pulahari', 23, 'Male', 186, 60, 'chest pressure,dry cough,fatigue', 'Chronic Obstructive Pulmonary Disease', 11, 'B+', 'R R colony,Kadapa,Andhra Pradesh,India', '9087676565'),
('Bindu', 'Jampala', 22, 'Female', 157, 50, 'excessive thirst and urination,weight loss', 'Diabetes Mellitus', 4, 'O-', 'SVN colony,Srikalahasti,Andhra Pradesh,India', '9878667856'),
('Donald', '', 23, 'transgende', 167, 45, 'cough with blood , night sweats', 'tuberculosis', 3, 'O+', 'Ameerpet,Hyderabad,Telangana', '7897896765'),
('Trishi', 'Kalala', 34, 'female', 176, 76, 'pain in bones,dizziness,weight loss', 'Blood cancer', 5, 'AB-', 'Thalalaa,Vishal,Maharastra,India', '9787655343'),
('Kala', 'Ashok', 43, 'male', 167, 65, 'pain in bones,dizziness,weight loss', 'Blood cancer', 9, 'B-', 'Ashok Nagar,Hyderabad,Telanagana,India', '7549897867'),
('Parth', 'Yusha', 28, 'female', 176, 67, 'excessive thirst and urination', 'Diabetes Mellitus', 9, 'O+', 'Chennai,Andhra Pradesh,India', '9786757565'),
('vaishu', 'balaji', 20, 'female', 160, 60, 'pain in bones,dizziness,weight loss', 'Blood cancer', 40, 'o+', 'vit university', '9898768789'),
('Donald', 'hyufgewf', 23, 'male', 167, 45, 'cough with blood , night sweats', 'Diabetes Mellitus', 5, 'O+', 'fhueiyguerh,Andhra', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `bldgrp` varchar(3) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `phn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`fname`, `lname`, `uname`, `pass`, `age`, `sex`, `email`, `bldgrp`, `addr`, `phn`) VALUES
('Niharika', 'Moturu', 'Niha1234', 'niha1234', 19, 'Female', 'niharikamotur929@gmail.com', 'O+', 'P and T colony, Patamata,Vijayawada,Andhra pradesh', '8919804838'),
('Saranya', 'Somepalli', 'saru1234', 'saru1234', 19, 'female', 'saru@gmail.com', 'O+', 'Guntur,Andhra Pradesh,India', '7098097786'),
('sainikhil', 'Somepalli', 'sai', 'sai', 12, 'male', 'sai@gmail.com', 'A+', 'kc nagar', '9948516178');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
