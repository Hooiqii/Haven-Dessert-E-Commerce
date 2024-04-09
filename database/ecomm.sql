-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 03:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Cakes', 'cakes'),
(2, 'Cookies', 'cookies'),
(3, 'Doughnuts', 'doughnuts'),
(4, 'Puddings', 'puddings');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `u_name` varchar(20) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`u_name`, `u_email`, `u_message`) VALUES
('PHUA HUAYSZE', 'szesze_3038@yahoo.com', 'hello'),
('PHUA HUAYSZE', 'szesze_3038@yahoo.com', 'hello'),
('PHUA HUAYSZE', 'szesze_3038@yahoo.com', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Birdie Cake', '<p>Cute little birdie is chirping in the morning! You can choose either mixed fruits flavour or black forest flavour. Bring this birdie home and surprise the one u love.</p>\r\n', 'Birdie Cake', 68, 'cake1-Birdie.jpg', '2023-01-21', 3),
(2, 1, 'Black Forest Cake', '<p>A classic dessert with a mixture of light sour cherry, lightly sweetened fresh cream, light bitterness from the chocolate and last but not least the soft chiffon. </p>\r\n\r\n<p>This would be the best choice as a gift to the special one as well as for yourself.</p>\r\n\r\n\r\n', 'Black Forest Cake', 68, 'cake2-BlackFoestCake.jpg', '2023-01-22', 1),
(3, 1, 'Chantilly Fruit Cake', '<p>Rich fragrant fruits plus a delicate cake, truly irresistible with just one bite!\r\n</p>\r\n\r\n\r\n', 'Chantilly Fruit Cake', 78, 'cake3-ChantillyFruitCake.jpg', '2023-01-21', 3),
(4, 3, 'Kitkat Doughnut', '<p>Need a break? Get a Kit Kat. Need something even better? </p>\r\n\r\n<p>Why not a Kit Kat with a sumptuous doughnut covered with chocolate, and a bit of extra drizzle as a nice cherry (or in this case, Kit Kat) on top?</p>\r\n\r\n\r\n', 'Kitkat Doughnut', 4, 'doughnut1-KitkatDoughnut.jpg', '2023-01-11', 3),
(5, 3, 'Bomboloni Strawberry Doughnuts', '<p>For a more traditional take on the jam doughnut, this yeast-raised shell is jam packed with strawberry filling and coated with a light dusting of powdered sugar.</p>\r\n', 'bomboloni-strawberry-doughnuts', 4, 'doughnut2-PowderedStraberryFilled.jpg', '2023-01-21', 1),
(6, 3, 'Chocolate With Sprinkles Doughnuts', '<p>Want a little extra fun? This is the doughnut for you! </p>\r\n\r\n<p>Our Chocolate Iced Glazed doughnut is covered in bright candy sprinkles, creating a tasty treat that is a favorite of the young and young-at-heart. </p>\r\n\r\n<p>Special color coordinated sprinkles during various holiday seasons add a festive touch.</p>\r\n\r\n', 'Chocolate With Sprinkles Doughnuts', 4, 'doughnut3-ChocolateWithSprinkles.jpg', '2023-01-19', 4),
(7, 2, 'Fudgy Chocolate Cookies', '<p>These chocolate cookies are almost like a brownie because they are soft, fudgy and chewy. <br />\r\nThey’re made with real melted chocolate in the batter and really are the best chocolate cookie\r\n\r\n</p>\r\n', 'Fudgy Chocolate Cookies', 6, 'cookies1-FudfyChocolateCookies.jpg', '2023-01-19', 2),
(8, 2, 'Raspberry Cookies', '<p>A shortbread-style cookie filled with sweet raspberry jam and topped with a sweet and buttery crumble.</p>\r\n', 'Raspberry Cookies', 7, 'cookies2-RaspberryCookies.jpg', '2023-01-21', 1),
(9, 2, 'S\'mores Cookies', '<p>S&#39;mores cookies are a delicious twist on your favorite campfire treat! These cookies are soft and chewy, filled with graham crackers and chocolate, then stuffed with gooey marshmallows for the ultimate s&#39;mores dessert. Trust me, everyone will fall in love with these s&#39;mores stuffed cookies!<br />\r\n&nbsp;</p>\r\n', 's-mores-cookies', 6, 's-mores-cookies.jpg', '2023-01-19', 1),
(10, 4, 'Banana Pudding', '<p>Layers of vanilla custard, cookies or cake, and sliced bananas topped with whipped cream or meringue. <br/>It is like traditional English Trifle, which is similarly made with layers of cake, fruit and custard.</p>\r\n', 'Banana Pudding', 5, 'pudding1-BananaPudding.jpg', '2023-01-11', 4),
(11, 4, 'Caramel Custard Pudding', '<p>What does caramel custard taste like?\r\nCaramel Custard is a traditional French dessert with creamy caramel over silky custard.</br> It is a traditional dessert which is made with just a few ingredients, but is always a delight to the palate. </br>Made with eggs, sugar and milk, this custard has a quintessential taste and always reminds of happy times and festivals.\r\n</p>\r\n\r\n', 'Caramel Custard Pudding', 5, 'pudding2-CaramelCustardPudding.jpg', '2023-01-19', 2),
(12, 4, 'Pumpkin Pudding', '<p>This creamy pumpkin pudding is the perfect answer to your fall, pumpkin-flavored dessert cravings while requiring half the effort of homemade pumpkin pie.</p>\r\n\r\n', 'Pumpkin Pudding', 5, 'pudding3-PumpkinPudding.jpg', '2023-01-11', 13),
(31, 1, 'Fruity Cake', '<p>Vanilla chiffon cake with fresh cream &amp; mixed fruits</p>\r\n', 'fruity-cake', 73, 'fruity-cake.jpg', '0000-00-00', 0),
(32, 1, 'Almond Cake', '<p>What Does It Taste Like? If you&#39;re buying a quality brand of almond flour, I don&#39;t think it&#39;s a surprise to anyone that almond flour tastes like almonds. It&#39;s got a&nbsp;<strong>mildly sweet, nutty kind of flavor with just the slightest hint of bitter &ndash; just like almonds</strong></p>\r\n', 'almond-cake', 80, 'almond-cake.jpg', '2023-01-21', 1),
(34, 1, 'Chocolate Cakes', '<p><em>Rich in chocolate flavour with a tender-moist crumb, and fluffy with the perfect amount of sweetness</em>.</p>\r\n', 'chocolate-cakes', 68, 'chocolate-cakes.jpg', '2023-01-19', 1),
(35, 1, 'Strawberry Cheesecake', '<p>This baked&nbsp;<em>strawberry cheesecake</em>&nbsp;has a light &amp; creamy base topped with the best strawberry topping made of fresh strawberries &amp; lemon juice!</p>\r\n', 'strawberry-cheesecake', 68, 'strawberry-cheesecake.jpg', '2023-01-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 1, 'David Deacon', 'Good Product', 5, '2023-01-09 20:43:02'),
(2, 1, 'John Doe', 'Look so delicious', 4, '2023-01-09 21:00:41'),
(3, 1, 'Robert Billings', 'Needs more dessert, good website but less choice for dessert', 3, '2023-01-09 21:10:16'),
(4, 1, 'Daniel Callaghan', 'Great!', 5, '2023-01-09 23:51:05'),
(5, 1, 'Bobby', 'Too sweet', 2, '2023-01-14 21:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2023-01-14'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2023-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Haven', 'Dessert', '', '', 'logo - ori haven dessert.jpg', 1, '', '', '2023-01-01'),
(2, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Klang, Selangor', '0123456789', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2023-02-01'),
(3, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'Parit Raja, Johor', '0162234567', 'female3.jpg', 1, '', '', '2023-03-01'),
(4, 'szesze3038@gmail.com', '$2y$10$OWvKwbKC5ErNdvVbbLjvyeatqw4F0DvgOmHeP8dMiWtunKAhGj1.C', 0, 'COCO', 'CHIN', '86, LORONG HULUBALANG 10c, TAMAN SENTOSA, SELANGOR', '', 'profile.jpg', 1, 'iEwtXCZd9LeD', '', '2023-01-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
