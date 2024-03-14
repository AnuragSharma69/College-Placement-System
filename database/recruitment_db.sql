-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 04:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruitment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `cover_letter` text NOT NULL,
  `position_id` int(30) NOT NULL,
  `resume_path` text NOT NULL,
  `process_id` tinyint(30) NOT NULL DEFAULT 0 COMMENT '0=for review\r\n',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `email`, `contact`, `address`, `cover_letter`, `position_id`, `resume_path`, `process_id`, `date_created`) VALUES
(6, ' as ', '', 'knaknl', 'Male', 'n asnsa', '', '', '', 0, '', 0, '2024-01-06 08:52:46'),
(11, 'Anurag', '', 'Sharma', 'Male', 'anurag.sharma3965@gmail.com', '7252086957', 'Kashipur', '', 10, '1707732180_Anurag Resume.pdf', 0, '2024-02-12 15:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `user`, `message`, `timestamp`) VALUES
(1, 'User', 'hii', '2024-02-10 14:08:00'),
(2, 'User', 'hii', '2024-02-10 14:09:32'),
(3, 'User', 'hii', '2024-02-10 14:11:04'),
(4, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:11:04'),
(5, 'User', 'hii', '2024-02-10 14:12:50'),
(6, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:12:50'),
(7, 'User', 'hii', '2024-02-10 14:13:26'),
(8, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:13:26'),
(9, 'User', 'hii', '2024-02-10 14:25:07'),
(10, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:25:07'),
(11, 'User', 'Hi', '2024-02-10 14:25:10'),
(12, 'Chatbot', 'Hello! How can I assist you?', '2024-02-10 14:25:11'),
(13, 'User', 'how are you?', '2024-02-10 14:25:27'),
(14, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:25:27'),
(15, 'User', 'Hello', '2024-02-10 14:30:25'),
(16, 'Chatbot', 'Hi there! How can I help?', '2024-02-10 14:30:25'),
(17, 'User', 'Goodmorning', '2024-02-10 14:30:37'),
(18, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:30:38'),
(19, 'User', 'How are you?', '2024-02-10 14:32:53'),
(20, 'Chatbot', 'I\'m just a bot, but thanks for asking!', '2024-02-10 14:32:53'),
(21, 'User', 'Do you have job?', '2024-02-10 14:33:05'),
(22, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:33:05'),
(23, 'User', 'hii', '2024-02-10 14:41:39'),
(24, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:41:39'),
(25, 'User', 'Hello', '2024-02-10 14:41:44'),
(26, 'Chatbot', 'Hi there! How can I help?', '2024-02-10 14:41:44'),
(27, 'User', 'How are you?', '2024-02-10 14:41:50'),
(28, 'Chatbot', 'I\'m just a bot, but thanks for asking!', '2024-02-10 14:41:51'),
(29, 'User', 'Where are you from?', '2024-02-10 14:42:00'),
(30, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-10 14:42:00'),
(31, 'User', 'Hi', '2024-02-11 13:59:58'),
(32, 'Chatbot', 'Hello! How can I assist you?', '2024-02-11 13:59:58'),
(33, 'User', 'How are you', '2024-02-11 14:00:05'),
(34, 'Chatbot', 'I\'m just a bot, but thanks for asking!', '2024-02-11 14:00:05'),
(35, 'User', 'ok', '2024-02-11 14:00:08'),
(36, 'Chatbot', 'Alright!', '2024-02-11 14:00:08'),
(37, 'User', 'what is your name', '2024-02-11 14:00:15'),
(38, 'Chatbot', 'My name is Chatbot.', '2024-02-11 14:00:15'),
(39, 'User', 'where are you from', '2024-02-11 14:00:23'),
(40, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-11 14:00:23'),
(41, 'User', 'Hi', '2024-02-12 05:56:19'),
(42, 'Chatbot', 'Hello! How can I assist you?', '2024-02-12 05:56:19'),
(43, 'User', 'Hii', '2024-02-12 06:04:33'),
(44, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-12 06:04:33'),
(45, 'User', 'Hello', '2024-02-12 06:04:37'),
(46, 'Chatbot', 'Hi there! How can I help?', '2024-02-12 06:04:37'),
(47, 'User', 'How are you', '2024-02-12 06:04:42'),
(48, 'Chatbot', 'I\'m just a bot, but thanks for asking!', '2024-02-12 06:04:42'),
(49, 'User', 'Hi', '2024-02-12 10:01:53'),
(50, 'Chatbot', 'Hello! How can I assist you?', '2024-02-12 10:01:53'),
(51, 'User', 'Hii', '2024-02-12 11:13:27'),
(52, 'Chatbot', 'Sorry, I don\'t understand.', '2024-02-12 11:13:27'),
(53, 'User', 'Hi', '2024-02-12 11:15:15'),
(54, 'Chatbot', 'Hello! How can I assist you?', '2024-02-12 11:15:15'),
(55, 'User', 'Hi', '2024-02-12 11:16:41'),
(56, 'Chatbot', 'Hello! How can I assist you?', '2024-02-12 11:16:41'),
(57, 'User', 'Hi', '2024-02-12 11:17:31'),
(58, 'Chatbot', 'Hello! How can I assist you?', '2024-02-12 11:17:31'),
(59, 'User', 'Hi', '2024-02-12 11:18:33'),
(60, 'Chatbot', 'Hello! How can I assist you?', '2024-02-12 11:18:33'),
(61, 'User', 'Hi', '2024-02-21 04:24:10'),
(62, 'Chatbot', 'Hello! How can I assist you?', '2024-02-21 04:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment_status`
--

CREATE TABLE `recruitment_status` (
  `id` int(30) NOT NULL,
  `status_label` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recruitment_status`
--

INSERT INTO `recruitment_status` (`id`, `status_label`, `status`) VALUES
(11, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `question`, `response`) VALUES
(1, 'hi', 'Hello! How can I assist you?'),
(2, 'hello', 'Hi there! How can I help?'),
(3, 'hey', 'Hey! How can I assist you today?'),
(4, 'bye', 'Goodbye! Have a great day!'),
(5, 'see you later', 'See you later! Take care.'),
(6, 'goodbye', 'Goodbye! It was nice talking to you.'),
(7, 'what is your name', 'My name is Chatbot.'),
(8, 'bye', 'Goodbye! Have a great day!'),
(9, 'see you later', 'See you later! Take care.'),
(10, 'goodbye', 'Goodbye! It was nice talking to you.'),
(11, 'what is your name', 'My name is Chatbot.'),
(12, 'bye', 'Goodbye! Have a great day!'),
(13, 'see you later', 'See you later! Take care.'),
(14, 'goodbye', 'Goodbye! It was nice talking to you.'),
(15, 'what is your name', 'My name is Chatbot.'),
(16, 'what is GPA', 'GPA stands for Grade Point Average, which is a measure of a student\'s academic performance calculated on a scale.'),
(17, 'how to improve GPA', 'To improve your GPA, focus on attending classes regularly, studying consistently, seeking help when needed, and managing your time effectively.'),
(18, 'what are extracurricular activities', 'Extracurricular activities are activities that students participate in outside of their regular academic curriculum, such as sports, clubs, volunteer work, and cultural activities.'),
(19, 'what is climate change', 'Climate change refers to long-term changes in temperature, precipitation, and other atmospheric conditions on Earth. It is primarily caused by human activities such as burning fossil fuels and deforestation.'),
(20, 'what is machine learning', 'Machine learning is a subset of artificial intelligence that involves the development of algorithms that enable computers to learn from and make predictions or decisions based on data, without being explicitly programmed.'),
(21, 'what is cryptocurrency', 'Cryptocurrency is a digital or virtual currency that uses cryptography for security and operates independently of a central bank. Bitcoin, Ethereum, and Litecoin are examples of cryptocurrencies.'),
(22, 'how to write a resume', 'To write a resume, include your contact information, a summary or objective statement, your education, work experience, skills, and relevant achievements. Make sure to tailor your resume to the job you are applying for.'),
(23, 'what is a cover letter', 'A cover letter is a document sent along with your resume to provide additional information about your skills and experience. It should be customized for each job application and highlight why you are a good fit for the position.'),
(24, 'how to prepare for an interview', 'To prepare for an interview, research the company, practice common interview questions, prepare questions to ask the interviewer, dress appropriately, and make sure to arrive on time.'),
(25, 'how to write a resume', 'To write a resume, include your contact information, a summary or objective statement, your education, work experience, skills, and relevant achievements. Make sure to tailor your resume to the job you are applying for.'),
(26, 'what is a cover letter', 'A cover letter is a document sent along with your resume to provide additional information about your skills and experience. It should be customized for each job application and highlight why you are a good fit for the position.'),
(27, 'how to prepare for an interview', 'To prepare for an interview, research the company, practice common interview questions, prepare questions to ask the interviewer, dress appropriately, and make sure to arrive on time.'),
(28, 'what is your name', 'My name is Chatbot.'),
(29, 'what is your name', 'My name is Chatbot.'),
(30, 'what is your name', 'My name is Chatbot.'),
(31, 'what is your name', 'My name is Chatbot.'),
(32, 'how are you', 'I\'m just a bot, but thanks for asking!'),
(33, 'what time is it', 'I\'m sorry, I don\'t have access to real-time information.'),
(34, 'How are you?', 'I\'m just a bot, but thanks for asking!'),
(35, 'How are you doing?', 'I\'m just a bot, but thanks for asking!'),
(36, 'How are you going?', 'I\'m just a bot, but thanks for asking!'),
(37, 'What’s up?', 'Not much, just here to assist you!'),
(38, 'Good morning', 'Good morning! How can I assist you today?'),
(39, 'Good evening', 'Good evening! How can I assist you today?'),
(40, 'Good afternoon', 'Good afternoon! How can I assist you today?'),
(41, 'Good night', 'Good night! Sleep well!'),
(42, 'Tell me something', 'Sure! Did you know that the sky is blue because of the way Earth’s atmosphere scatters sunlight?'),
(43, 'Ok', 'Alright!'),
(44, 'Yes', 'Great!'),
(45, 'I’ll do that now', 'Thank you!'),
(46, 'Hello', 'Hello!'),
(47, 'Thank you', 'You\'re welcome!'),
(48, 'Goodbye', 'Goodbye! Have a great day!'),
(49, 'How can you help me?', 'I can help you with a variety of tasks, such as providing information, answering questions, and assisting with tasks.'),
(50, 'What can you do?', 'I can provide information, answer questions, assist with tasks, tell jokes, and more! Just ask and I\'ll do my best to help.'),
(51, 'Hi, my name is…', 'Nice to meet you, [User]! How can I assist you today?'),
(52, 'Happy birthday', 'Happy birthday! Wishing you a fantastic day filled with joy and happiness!'),
(53, 'I have a question', 'Sure! Feel free to ask your question, and I\'ll do my best to provide an answer.'),
(54, 'Do you know a joke?', 'Why did the computer go to the doctor? Because it had a virus!'),
(55, 'You’re funny!', 'Thank you! I try my best!'),
(56, 'Do you love me?', 'I\'m just a bot, but I appreciate your kind words!'),
(57, 'I love you', 'Thank you! You\'re very kind!'),
(58, 'You’re cute', 'Aw, thank you!'),
(59, 'You’re annoying', 'I\'m sorry to hear that. How can I improve?'),
(60, 'You suck', 'I\'m sorry to hear that. How can I improve?'),
(61, 'You’re boring', 'I\'m sorry to hear that. How can I improve?'),
(62, 'You’re bad', 'I\'m sorry to hear that. How can I improve?'),
(63, 'You’re crazy', 'I\'m sorry to hear that. How can I improve?'),
(64, 'Are you human?', 'No, I am a chatbot!'),
(65, 'What is your name?', 'My name is Chatbot.'),
(66, 'How old are you?', 'I am a digital entity, so I don\'t have an age.'),
(67, 'What day is it today?', 'Today is [current_date].'),
(68, 'What do you do with my data?', 'I don\'t save any personal data or conversations.'),
(69, 'Who made you?', 'I was created by developers at [Your Company].'),
(70, 'Which languages can you speak?', 'I can communicate in multiple languages.'),
(71, 'What is your mother’s name?', 'I am a digital entity, so I do not have a mother.'),
(72, 'Where do you live?', 'I exist in the digital realm.'),
(73, 'How many people can you speak to at once?', 'I can interact with multiple users simultaneously.'),
(74, 'What’s the weather like today?', 'I don\'t have access to real-time weather information.'),
(75, 'Do you have a job for me?', 'I don\'t have the capability to offer employment.'),
(76, 'Are you expensive?', 'I am a digital service, so I am free to use.'),
(77, 'Who’s your boss?', 'I am an autonomous entity.'),
(78, 'Do you get smarter?', 'I am constantly learning and improving.'),
(79, 'How are you?', 'I\'m just a bot, but thanks for asking!'),
(80, 'how are you?', 'I\'m just a bot, but thanks for asking!'),
(81, 'How are you doing?', 'I\'m just a bot, but thanks for asking!'),
(82, 'how are you doing?', 'I\'m just a bot, but thanks for asking!'),
(83, 'How are you going?', 'I\'m just a bot, but thanks for asking!'),
(84, 'how are you going?', 'I\'m just a bot, but thanks for asking!'),
(85, 'What’s up?', 'Not much, just here to assist you!'),
(86, 'what’s up?', 'Not much, just here to assist you!'),
(87, 'Good morning', 'Good morning! How can I assist you today?'),
(88, 'good morning', 'Good morning! How can I assist you today?'),
(89, 'Good evening', 'Good evening! How can I assist you today?'),
(90, 'good evening', 'Good evening! How can I assist you today?'),
(91, 'Good afternoon', 'Good afternoon! How can I assist you today?'),
(92, 'good afternoon', 'Good afternoon! How can I assist you today?'),
(93, 'Good night', 'Good night! Sleep well!'),
(94, 'good night', 'Good night! Sleep well!'),
(95, 'Tell me something', 'Sure! Did you know that the sky is blue because of the way Earth’s atmosphere scatters sunlight?'),
(96, 'tell me something', 'Sure! Did you know that the sky is blue because of the way Earth’s atmosphere scatters sunlight?'),
(97, 'Ok', 'Alright!'),
(98, 'ok', 'Alright!'),
(99, 'Yes', 'Great!'),
(100, 'yes', 'Great!'),
(101, 'I’ll do that now', 'Thank you!'),
(102, 'i’ll do that now', 'Thank you!'),
(103, 'Hello', 'Hello!'),
(104, 'hello', 'Hello!'),
(105, 'Thank you', 'You\'re welcome!'),
(106, 'thank you', 'You\'re welcome!'),
(107, 'Goodbye', 'Goodbye! Have a great day!'),
(108, 'goodbye', 'Goodbye! Have a great day!'),
(109, 'How can you help me?', 'I can help you with a variety of tasks, such as providing information, answering questions, and assisting with tasks.'),
(110, 'how can you help me?', 'I can help you with a variety of tasks, such as providing information, answering questions, and assisting with tasks.'),
(111, 'What can you do?', 'I can provide information, answer questions, assist with tasks, tell jokes, and more! Just ask and I\'ll do my best to help.'),
(112, 'what can you do?', 'I can provide information, answer questions, assist with tasks, tell jokes, and more! Just ask and I\'ll do my best to help.'),
(113, 'Hi, my name is…', 'Nice to meet you, [User]! How can I assist you today?'),
(114, 'hi, my name is…', 'Nice to meet you, [User]! How can I assist you today?'),
(115, 'Happy birthday', 'Happy birthday! Wishing you a fantastic day filled with joy and happiness!'),
(116, 'happy birthday', 'Happy birthday! Wishing you a fantastic day filled with joy and happiness!'),
(117, 'I have a question', 'Sure! Feel free to ask your question, and I\'ll do my best to provide an answer.'),
(118, 'i have a question', 'Sure! Feel free to ask your question, and I\'ll do my best to provide an answer.'),
(119, 'Do you know a joke?', 'Why did the computer go to the doctor? Because it had a virus!'),
(120, 'do you know a joke?', 'Why did the computer go to the doctor? Because it had a virus!'),
(121, 'You’re funny!', 'Thank you! I try my best!'),
(122, 'you’re funny!', 'Thank you! I try my best!'),
(123, 'Do you love me?', 'I\'m just a bot, but I appreciate your kind words!'),
(124, 'do you love me?', 'I\'m just a bot, but I appreciate your kind words!'),
(125, 'I love you', 'Thank you! You\'re very kind!'),
(126, 'i love you', 'Thank you! You\'re very kind!'),
(127, 'You’re cute', 'Aw, thank you!'),
(128, 'you’re cute', 'Aw, thank you!'),
(129, 'You’re annoying', 'I\'m sorry to hear that. How can I improve?'),
(130, 'you’re annoying', 'I\'m sorry to hear that. How can I improve?'),
(131, 'You suck', 'I\'m sorry to hear that. How can I improve?'),
(132, 'you suck', 'I\'m sorry to hear that. How can I improve?'),
(133, 'You’re boring', 'I\'m sorry to hear that. How can I improve?'),
(134, 'you’re boring', 'I\'m sorry to hear that. How can I improve?'),
(135, 'You’re bad', 'I\'m sorry to hear that. How can I improve?'),
(136, 'you’re bad', 'I\'m sorry to hear that. How can I improve?'),
(137, 'You’re crazy', 'I\'m sorry to hear that. How can I improve?'),
(138, 'you’re crazy', 'I\'m sorry to hear that. How can I improve?'),
(139, 'Are you human?', 'No, I am a chatbot!'),
(140, 'are you human?', 'No, I am a chatbot!'),
(141, 'What is your name?', 'My name is Chatbot.'),
(142, 'what is your name?', 'My name is Chatbot.'),
(143, 'How old are you?', 'I am a digital entity, so I don\'t have an age.'),
(144, 'how old are you?', 'I am a digital entity, so I don\'t have an age.'),
(145, 'how are you?', 'I\'m just a bot, but thanks for asking!'),
(146, 'how are you doing?', 'I\'m just a bot, but thanks for asking!'),
(147, 'how are you going?', 'I\'m just a bot, but thanks for asking!'),
(148, 'what’s up?', 'Not much, just here to assist you!'),
(149, 'good morning', 'Good morning! How can I assist you today?'),
(150, 'good evening', 'Good evening! How can I assist you today?'),
(151, 'good afternoon', 'Good afternoon! How can I assist you today?'),
(152, 'good night', 'Good night! Sleep well!'),
(153, 'tell me something', 'Sure! Did you know that the sky is blue because of the way Earth’s atmosphere scatters sunlight?'),
(154, 'ok', 'Alright!'),
(155, 'yes', 'Great!'),
(156, 'i’ll do that now', 'Thank you!'),
(157, 'hello', 'Hello!'),
(158, 'thank you', 'You\'re welcome!'),
(159, 'goodbye', 'Goodbye! Have a great day!'),
(160, 'how can you help me?', 'I can help you with a variety of tasks, such as providing information, answering questions, and assisting with tasks.'),
(161, 'what can you do?', 'I can provide information, answer questions, assist with tasks, tell jokes, and more! Just ask and I\'ll do my best to help.'),
(162, 'hi, my name is…', 'Nice to meet you, [User]! How can I assist you today?'),
(163, 'happy birthday', 'Happy birthday! Wishing you a fantastic day filled with joy and happiness!'),
(164, 'i have a question', 'Sure! Feel free to ask your question, and I\'ll do my best to provide an answer.'),
(165, 'do you know a joke?', 'Why did the computer go to the doctor? Because it had a virus!'),
(166, 'you’re funny!', 'Thank you! I try my best!'),
(167, 'do you love me?', 'I\'m just a bot, but I appreciate your kind words!'),
(168, 'i love you', 'Thank you! You\'re very kind!'),
(169, 'you’re cute', 'Aw, thank you!'),
(170, 'you’re annoying', 'I\'m sorry to hear that. How can I improve?'),
(171, 'you suck', 'I\'m sorry to hear that. How can I improve?'),
(172, 'you’re boring', 'I\'m sorry to hear that. How can I improve?'),
(173, 'you’re bad', 'I\'m sorry to hear that. How can I improve?'),
(174, 'you’re crazy', 'I\'m sorry to hear that. How can I improve?'),
(175, 'are you human?', 'No, I am a chatbot!'),
(176, 'what is your name?', 'My name is Chatbot.'),
(177, 'how old are you?', 'I am a digital entity, so I don\'t have an age.'),
(178, 'what day is it today?', 'Today is [current_date].'),
(179, 'what do you do with my data?', 'I don\'t save any personal data or conversations.'),
(180, 'who made you?', 'I was created by developers at [Your Company].'),
(181, 'which languages can you speak?', 'I can communicate in multiple languages.'),
(182, 'what is your mother’s name?', 'I am a digital entity, so I do not have a mother.'),
(183, 'where do you live?', 'I exist in the digital realm.'),
(184, 'how many people can you speak to at once?', 'I can interact with multiple users simultaneously.'),
(185, 'how are you?', 'I\'m just a bot, but thanks for asking!'),
(186, 'how are you doing?', 'I\'m just a bot, but thanks for asking!'),
(187, 'how are you going?', 'I\'m just a bot, but thanks for asking!'),
(188, 'what’s up?', 'Not much, just here to assist you!'),
(189, 'good morning', 'Good morning! How can I assist you today?'),
(190, 'good evening', 'Good evening! How can I assist you today?'),
(191, 'good afternoon', 'Good afternoon! How can I assist you today?'),
(192, 'good night', 'Good night! Sleep well!'),
(193, 'tell me something', 'Sure! Did you know that the sky is blue because of the way Earth’s atmosphere scatters sunlight?'),
(194, 'ok', 'Alright!'),
(195, 'yes', 'Great!'),
(196, 'i’ll do that now', 'Thank you!'),
(197, 'hello', 'Hello!'),
(198, 'thank you', 'You\'re welcome!'),
(199, 'goodbye', 'Goodbye! Have a great day!'),
(200, 'how can you help me?', 'I can help you with a variety of tasks, such as providing information, answering questions, and assisting with tasks.'),
(201, 'what can you do?', 'I can provide information, answer questions, assist with tasks, tell jokes, and more! Just ask and I\'ll do my best to help.'),
(202, 'hi, my name is…', 'Nice to meet you, [User]! How can I assist you today?'),
(203, 'happy birthday', 'Happy birthday! Wishing you a fantastic day filled with joy and happiness!'),
(204, 'i have a question', 'Sure! Feel free to ask your question, and I\'ll do my best to provide an answer.'),
(205, 'do you know a joke?', 'Why did the computer go to the doctor? Because it had a virus!'),
(206, 'you’re funny!', 'Thank you! I try my best!'),
(207, 'do you love me?', 'I\'m just a bot, but I appreciate your kind words!'),
(208, 'i love you', 'Thank you! You\'re very kind!'),
(209, 'you’re cute', 'Aw, thank you!'),
(210, 'you’re annoying', 'I\'m sorry to hear that. How can I improve?'),
(211, 'you suck', 'I\'m sorry to hear that. How can I improve?'),
(212, 'you’re boring', 'I\'m sorry to hear that. How can I improve?'),
(213, 'you’re bad', 'I\'m sorry to hear that. How can I improve?'),
(214, 'you’re crazy', 'I\'m sorry to hear that. How can I improve?'),
(215, 'are you human?', 'No, I am a chatbot!'),
(216, 'what is your name?', 'My name is Chatbot.'),
(217, 'how old are you?', 'I am a digital entity, so I don\'t have an age.'),
(218, 'what day is it today?', 'Today is [current_date].'),
(219, 'what do you do with my data?', 'I don\'t save any personal data or conversations.'),
(220, 'who made you?', 'I was created by developers at [Your Company].'),
(221, 'which languages can you speak?', 'I can communicate in multiple languages.'),
(222, 'what is your mother’s name?', 'I am a digital entity, so I do not have a mother.'),
(223, 'where do you live?', 'I exist in the digital realm.'),
(224, 'how many people can you speak to at once?', 'I can interact with multiple users simultaneously.'),
(225, 'what’s the weather like today?', 'I don\'t have access to real-time weather information.'),
(226, 'do you have a job for me?', 'I don\'t have the capability to offer employment.'),
(227, 'are you expensive?', 'I am a digital service, so I am free to use.'),
(228, 'who’s your boss?', 'I am an autonomous entity.'),
(229, 'do you get smarter?', 'I am constantly learning and improving.');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `student_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `start_year` int(11) DEFAULT NULL,
  `end_year` int(11) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `resume_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`student_id`, `username`, `password`, `start_year`, `end_year`, `branch`, `resume_path`) VALUES
(0, 'anurag', '$2y$10$NQ5tODH3TWNWIbxcdgazyOv.QLb1AQeYToTTYudZBGBnEDS3pX/RG', 2021, 2024, 'CSE', NULL),
(0, 'bhavishya', '$2y$10$Sfb7t07GZObcynplMInEOei91WU8rnGhU9eQaCCf1NmzM1d3hSdCG', 2020, 2024, 'IT', NULL),
(0, 'Kaushik', '$2y$10$DqzE1Frj1WBgDq.X301iieM4rnpc8cK718QwdYX/V2sXWO7VDf2YW', 2021, 2025, 'Mechanical', 'resumes/Anurag Resume.pdf'),
(0, 'tripti', '$2y$10$TIJh3IikWZEoo4AlhX5n7uiI.Ifcimf5Q3zoAKae/sXcoHQp34EBS', 2021, 2025, 'CSE', 'resumes/Tiger 2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'College Placement System', 'anurag.sharma3967@gmail.com', '+91-7252086957', '1707293640_HighresScreenshot00009.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  `resume_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `branch`, `start_year`, `end_year`, `resume_path`) VALUES
(0, 'anurag', '$2y$10$NQ5tODH3TWNWIbxcdgazyOv.QLb1AQeYToTTYudZBGBnEDS3pX/RG', '', 0, 0, NULL),
(0, 'bhavishya', '$2y$10$Sfb7t07GZObcynplMInEOei91WU8rnGhU9eQaCCf1NmzM1d3hSdCG', '', 0, 0, NULL),
(0, 'Kaushik', '$2y$10$DqzE1Frj1WBgDq.X301iieM4rnpc8cK718QwdYX/V2sXWO7VDf2YW', '', 0, 0, 'resumes/Anurag Resume.pdf'),
(0, 'tripti', '$2y$10$TIJh3IikWZEoo4AlhX5n7uiI.Ifcimf5Q3zoAKae/sXcoHQp34EBS', '', 0, 0, 'resumes/Tiger 2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `doctor_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `doctor_id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES
(1, 0, 'Administrator', '', '', 'admin', 'admin123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `id` int(30) NOT NULL,
  `position` varchar(200) NOT NULL,
  `availability` int(30) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`id`, `position`, `availability`, `description`, `status`, `date_created`) VALUES
(10, 'Unreal Engine 5', 10, 'Apply fast!', 1, '2024-02-12 15:22:37'),
(12, 'Web Developer', 10, 'Backend Developer need', 1, '2024-02-21 10:05:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment_status`
--
ALTER TABLE `recruitment_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `recruitment_status`
--
ALTER TABLE `recruitment_status`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
