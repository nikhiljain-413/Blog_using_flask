-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 05:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2022-07-10 11:36:23', 'firstpost@gmail.com'),
(2, 'mera naam', '4434343434', 'second post', '2022-07-10 21:25:42', 'meraemail@gmail.com'),
(3, 'mera naam', '4434343434', 'Third post', '2022-07-10 11:44:51', 'meraemail@gmail.com'),
(4, 'Bithika Pal', 'dfdf', 'posting now', '2022-07-10 15:46:28', 'bithikapddal@iitkgp.ac.in'),
(5, 'ayush', 'dsffdfs', 'thanks for bhiya', '2022-07-10 17:19:41', 'ayush@df.dfd'),
(6, 'nikhil', 'dsffdfs', 'Aur video chiye flask ki', '2022-07-10 17:21:58', 'nik@df.dfd'),
(7, 'Nkh', 'dsffdfs', 'kese dhanyabad karu apka', '2022-07-10 17:22:33', 'nikh@df.dfd');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn more about c/c++', 'Created by Bjane Stroustrup', 'c-c++', 'In 1979, Bjarne Stroustrup, a Danish computer scientist, began work on \"C with Classes\", the predecessor to C++.[17] The motivation for creating a new language originated from Stroustrup\'s experience in programming for his PhD thesis. Stroustrup found that Simula had features that were very helpful for large software development, but the language was too slow for practical use, while BCPL was fast but too low-level to be suitable for large software development. When Stroustrup started working in AT&T Bell Labs, he had the problem of analyzing the UNIX kernel with respect to distributed computing. Remembering his PhD experience, Stroustrup set out to enhance the C language with Simula-like features.[18] C was chosen because it was general-purpose, fast, portable and widely used. As well as C and Simula\'s influences, other languages also influenced this new language, including ALGOL 68, Ada, CLU and ML.', 'post-bg.jpg', '2022-07-10 13:06:07'),
(2, 'Lets learn more about Python', 'Created by Guido Van Rossun', 'python', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.[33]\n\nPython is dynamically-typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a \"batteries included\" language due to its comprehensive standard library.[34][35]\n\nGuido van Rossum began working on Python in the late 1980s as a successor to the ABC programming language and first released it in 1991 as Python 0.9.0.[36] Python 2.0 was released in 2000 and introduced new features such as list comprehensions, cycle-detecting garbage collection, reference counting, and Unicode support. Python 3.0, released in 2008, was a major revision that is not completely backward-compatible with earlier versions. Python 2 was discontinued with version 2.7.18 in 2020', 'post-bg.jpg', '2022-07-10 21:04:07'),
(4, 'Lets learn more about Flask', 'You must master python before learing flask', 'flask', 'Flask is a micro web framework written in Python. It is classified as a microframework because it does not require particular tools or libraries.[2] It has no database abstraction layer, form validation, or any other components where pre-existing third-party libraries provide common functions. However, Flask supports extensions that can add application features as if they were implemented in Flask itself. Extensions exist for object-relational mappers, form validation, upload handling, various open authentication technologies and several common framework related tools.[3]\n\nApplications that use the Flask framework include Pinterest and LinkedIn', 'post-bg.jpg', '2022-07-10 21:08:58'),
(5, 'Lets learn more about Django', 'Free and Open source web framework .Simple and user friendly framework', 'django', 'Django sometimes stylized as django)[6] is a free and open-source, Python-based web framework that follows the model–template–views (MTV) architectural pattern.[7][8] It is maintained by the Django Software Foundation (DSF), an independent organization established in the US as a 501(c)(3) non-profit.\n\nDjango\'s primary goal is to ease the creation of complex, database-driven websites. The framework emphasizes reusability and \"pluggability\" of components, less code, low coupling, rapid development, and the principle of don\'t repeat yourself.[9] Python is used throughout, even for settings, files, and data models. Django also provides an optional administrative create, read, update and delete interface that is generated dynamically through introspection and configured via admin models.\n\nSome well-known sites that use Django include Instagram,[10] Mozilla,[11] Disqus,[12] Bitbucket,[13] Nextdoor[14] and Clubhouse.', 'post-bg.jpg', '2022-07-10 21:09:50'),
(7, 'Lets learn more about Java', 'Created by James Gosling', 'java', 'Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need to recompile.[18] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are typically not available in traditional compiled languages. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[19][20] particularly for client–server web applications, with a reported 9 million developers', 'post-bg.jpg', '2022-07-10 17:20:16'),
(8, 'Lets learn more about Databases and Sql Queries', 'The simple database is MySQL we will start our journey from here', 'database', 'MySQL is an open-source relational database management system (RDBMS).[5][6] Its name is a combination of \"My\", the name of co-founder Michael Widenius\'s daughter My,[7] and \"SQL\", the abbreviation for Structured Query Language. A relational database organizes data into one or more data tables in which data may be related to each other; these relations help structure the data. SQL is a language programmers use to create, modify and extract data from the relational database, as well as control user access to the database. In addition to relational databases and SQL, an RDBMS like MySQL works with an operating system to implement a relational database in a computer\'s storage system, manages users, allows for network access and facilitates testing database integrity and creation of backups.', 'post-bg.jpg', '2022-07-10 17:22:28'),
(9, 'Lets learn more about Competitive Programming', 'Master any one language java or c++ to start with CP', 'programming', 'The aim of competitive programming is to write source code of computer programs which are able to solve given problems. A vast majority of problems appearing in programming contests are mathematical or logical in nature. Typical such tasks belong to one of the following categories: combinatorics, number theory, graph theory, algorithmic game theory, computational geometry, string analysis and data structures. Problems related to constraint programming and artificial intelligence are also popular in certain competitions.  Irrespective of the problem category, the process of solving a problem can be divided into two broad steps: constructing an efficient algorithm, and implementing the algorithm in a suitable programming language (the set of programming languages allowed varies from contest to contest). These are the two most commonly tested skills in programming competitions.  In most contests, the judging is done automatically by host machines, commonly known as judges. Every solution submitted by a contestant is run on the judge against a set of (usually secret) test cases. Normally, contest problems have an all-or-none marking system, meaning that a solution is \"Accepted\" only if it produces satisfactory results on all test cases run by the judge, and rejected otherwise. However, some contest problems may allow for partial scoring, depending on the number of test cases passed, the quality of the results, or some other specified criteria. Some other contests only require that the contestant submit the output corresponding to given input data, in which case the judge only has to analyze the submitted output data.  Online judges are online environments in which testing takes place. Online judges have ranklists showing users with the biggest number of accepted solutions and/or shortest execution time for a particular problem.', 'post-bg.jpg', '2022-07-10 21:40:41'),
(10, 'Lets learn more about JavaScipt', 'Best language to learn both for frontend and backend', 'javascript', 'JavaScript , often abbreviated as JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. As of 2022, 98% of websites use JavaScript on the client side for webpage behavior, often incorporating third-party libraries. All major web browsers have a dedicated JavaScript engine to execute the code on users\' devices.\r\n\r\nJavaScript is a high-level, often just-in-time compiled language that conforms to the ECMAScript standard.[10] It has dynamic typing, prototype-based object-orientation, and first-class functions. It is multi-paradigm, supporting event-driven, functional, and imperative programming styles. It has application programming interfaces (APIs) for working with text, dates, regular expressions, standard data structures, and the Document Object Model (DOM).\r\n\r\nThe ECMAScript standard does not include any input/output (I/O), such as networking, storage, or graphics facilities. In practice, the web browser or other runtime system provides JavaScript APIs for I/O.\r\n\r\nJavaScript engines were originally used only in web browsers, but are now core components of some servers and a variety of applications. The most popular runtime system for this usage is Node.js.\r\n\r\nAlthough Java and JavaScript are similar in name, syntax, and respective standard libraries, the two languages are distinct and differ greatly in design.', 'post-bg.jpg', '2022-07-10 21:40:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
