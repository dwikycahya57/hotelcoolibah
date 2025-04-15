-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Des 2018 pada 06.56
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ewar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `permalink`, `description`) VALUES
(6, 'Komputer', 'komputer', ''),
(9, 'Android', 'android', ''),
(10, 'Laptop', 'laptop', ''),
(11, 'Apple', 'apple', ''),
(12, 'Samsung', 'samsung', ''),
(13, 'Jam Tangan', 'jam-tangan', ''),
(14, 'Game Console', 'game-console', ''),
(15, 'Kamera', 'kamera', ''),
(16, 'Tablet', 'tablet', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `confirmations`
--

CREATE TABLE `confirmations` (
  `id` int(10) NOT NULL,
  `sender_bank` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) NOT NULL,
  `receiver_bank` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `confirmations`
--

INSERT INTO `confirmations` (`id`, `sender_bank`, `bank_account_name`, `receiver_bank`, `amount`, `payment_date`, `status`, `order_id`, `created`, `modified`) VALUES
(1, 'BCA', 'SATRIA APRILIAN', '0', 4000, '2018-11-21', 1, 1, '2018-12-01 16:36:44', NULL),
(2, 'BCA', 'SATRIA APRILIAN', '0', 4000, '2018-11-21', 1, 2, '2018-12-01 16:40:42', NULL),
(3, 'BRI', '1231928389', '0', 0, '1970-02-03', 1, 3, '2018-12-08 08:59:17', NULL),
(4, 'BCA', 'SATRIA APRILIAN', '0', 0, '2018-11-21', 1, 5, '2018-12-10 04:43:24', NULL),
(5, 'BCA', 'SATRIA APRILIAN', '0', 0, '2018-11-21', 1, 6, '2018-12-10 04:44:50', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `key` int(11) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `media`
--

INSERT INTO `media` (`id`, `type`, `key`, `mime`, `description`, `path`, `created`, `modified`) VALUES
(31, 'slide', 33, 'image/jpeg', 'PROMO DISKON 50% TANGGAL 22-25 Desember', 'public/slides/pageBanner.png', '2013-05-25 13:03:19', '0000-00-00 00:00:00'),
(32, 'slide', 34, 'image/jpeg', 'Ini adalah slider image 2', 'public/slides/IMG-20180418-WA0011.jpg', '2013-05-25 13:03:34', '0000-00-00 00:00:00'),
(33, 'product', 7, 'image/jpeg', 'Realme C1 Smartphone [16GB/ 2GB]', 'public/products/realme-c1-vs-realme-2_20181016_221614.jpg', '2018-12-08 07:41:35', '0000-00-00 00:00:00'),
(34, 'product', 8, 'image/png', 'SONY Playstation 4 Slim 500GB', 'public/products/playstation-4-slim-vertical-product-shot-01-us-07sep16.png', '2018-12-08 10:00:52', '0000-00-00 00:00:00'),
(39, 'product', 10, 'image/jpeg', 'Macbook Pro MPXQ2', 'public/products/macbook.jpg', '2018-12-08 11:42:00', '0000-00-00 00:00:00'),
(41, 'product', 11, 'image/jpeg', 'Canon EOS 1500D Kit EF-S 18-55mm', 'public/products/eos-1500d-angled-front.jpg', '2018-12-08 11:46:29', '0000-00-00 00:00:00'),
(42, 'product', 12, 'image/jpeg', 'Samsung Galaxy A7 2018', 'public/products/galaxy-a7-2018-black_1.jpg', '2018-12-08 11:55:08', '0000-00-00 00:00:00'),
(43, 'product', 0, 'image/png', 'Helm 2 Tak', 'public/products/playstation-4-slim-vertical-product-shot-01-us-07sep16.png', '2018-12-10 05:40:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `order_date` date NOT NULL,
  `payment_deadline` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `code`, `total`, `order_date`, `payment_deadline`, `payment_method`, `user_id`, `status`, `created`, `modified`) VALUES
(1, 'R2K5O6F7', 4000, '2018-12-01', '2018-12-08', '1', 1, 1, '2018-12-01 00:00:00', NULL),
(2, '7WY2OYG0', 4000, '2018-12-01', '2018-12-08', '1', 1, 1, '2018-12-01 00:00:00', NULL),
(3, 'NW96JBFW', 1629000, '2018-12-08', '2018-12-15', '1', 1, 1, '2018-12-08 00:00:00', NULL),
(4, 'CVMKOHMR', 6599000, '2018-12-10', '2018-12-17', '1', 3, 0, '2018-12-10 00:00:00', NULL),
(5, 'S481A7SM', 6599000, '2018-12-10', '2018-12-17', '1', 3, 1, '2018-12-10 00:00:00', NULL),
(6, '5ECG9RFR', 11298000, '2018-12-10', '2018-12-17', '1', 1, 1, '2018-12-10 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_percent` double DEFAULT NULL,
  `net_price` double NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `code`, `name`, `qty`, `price`, `discount_percent`, `net_price`, `order_id`) VALUES
(1, 'ABCR34', 'Product Baru', 1, 4000, 20, 4000, 1),
(2, 'ABCR34', 'Product Baru', 1, 4000, 20, 4000, 2),
(3, '1998', 'Realme C1', 1, 1629000, 0, 1629000, 3),
(4, 'CNN15', 'Canon EOS 1500D Kit EF-S 18-55mm', 1, 6599000, 0, 6599000, 4),
(5, 'CNN15', 'Canon EOS 1500D Kit EF-S 18-55mm', 1, 6599000, 0, 6599000, 5),
(6, 'SNPS4', 'SONY Playstation 4 Slim 500GB', 1, 4699000, 0, 4699000, 6),
(7, 'CNN15', 'Canon EOS 1500D Kit EF-S 18-55mm', 1, 6599000, 0, 6599000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `permalink`, `title`, `body`, `status`, `created`, `modified`) VALUES
(6, 'about', 'About', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>', 1, '2012-05-15 19:53:52', '2012-05-15 19:54:01'),
(7, 'how-to-shop', 'How To shop', '<p><img src=\"http://localhost/ewar/public/front/img/howtoorder.png\" alt=\"\" width=\"1579\" height=\"1112\" /></p>', 1, '2012-05-15 19:54:41', '2018-12-10 04:41:33'),
(8, 'contact', 'Contact', '<p>Main Address :</p>\n<p>&nbsp;</p>', 1, '2012-05-16 22:52:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` double NOT NULL,
  `net_price` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `permalink`, `price`, `discount_percent`, `net_price`, `description`, `stock`, `status`, `category_id`) VALUES
(7, '1998', 'Realme C1', 'realme-c1', 2985000, 0, 2985000, '<p>Detail produk dari Realme C1 Smartphone [16GB/ 2GB] Free 5 Item</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>OS : Android 8.1 Oreo</li>\r\n<li>Prosesor : Qualcomm Snapdragon 450</li>\r\n<li>Memori : Internal 16GB, RAM 2 GB</li>\r\n<li>Kamera : Kamera Belakang 13MP+2MP dan&', 100, 1, 9),
(8, 'SNPS4', 'SONY Playstation 4 Slim 500GB', 'sony-playstation-4-slim-500gb', 4699000, 0, 4699000, '<p>&nbsp;</p>\r\n<ul>\r\n<li>1 Tahun Garansi Resmi SONY INDONESIA</li>\r\n<li>1 Tahun Tambahan Garansi Resmi SONY INDONESIA (Extended Warranty)</li>\r\n<li>Jaminan 100% Asli dan Baru(Brand New In Box)</li>\r\n<li>Produk Resmi SONY INDONESIA Dilengkapi Kartu Garansi', 50, 1, 14),
(10, 'MPXQ2', 'Macbook Pro MPXQ2', 'macbook-pro-mpxq2', 18980000, 0, 18980000, '<h2>New Macbook 2017 Grey [No Touchbar/13inch/ Core i5 2.3 GHz/ 8GB/ Intel Iris Plus 640/ 128GB]</h2>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Prosesor : 2.3 GHz dual-core Intel Core i5 Turbo Boost up to 3.5 GHz</li>\r\n<li>RAM : 8GB 1866 MHz</li>\r\n<li>Kapasitas penyimpan', 20, 1, 11),
(11, 'CNN15', 'Canon EOS 1500D Kit EF-S 18-55mm', 'canon-eos-1500d-kit-ef-s-18-55mm', 6599000, 0, 6599000, '<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>Free bonus lengkap Screen Guard , Filter 58mm, Tas Kamera</li>\r\n<li>Garansi Resmi Datascrip 1th servis dan sparepart</li>\r\n<li>Sensor CMOS APS-C 24,1 megapiksel &amp; DIGIC 4+</li>\r\n</ul>', 30, 1, 15),
(12, 'SMA750', 'Samsung Galaxy A7 2018', 'samsung-galaxy-a7-2018', 4149000, 0, 4149000, '<p>&nbsp;</p>\r\n<ul>\r\n<li>Display 6.0&rdquo; FHD+ (1080&times;2220) Super AMOLED</li>\r\n<li>Rear Camera : Triple camera 24MP AF (F1.7)</li>\r\n<li>Ultra Wide: 8MP (F2.4), 120&deg;, Depth: 5MP(F2.2)</li>\r\n<li>Front Camera: 24MP FF (F2.0)</li>\r\n<li>Body 159.8 x', 30, 1, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`) VALUES
(1, 'paginationLimit', '6', 'Global pagination limit'),
(2, 'imageAllowed', 'gif|jpg|png|jpeg', ''),
(3, 'maxImageSize', '200000', ''),
(4, 'Order.DueDate', '7', 'Days payment due'),
(5, 'Bank.Name', 'BCA,Mandiri,BNI', 'Bank name that receive transfer from customer'),
(6, 'Email.Admin', 'admin@tokokita.com', 'Email Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_en` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `title_en`, `description_en`, `position`, `status`) VALUES
(33, 'PROMO DISKON 50%', 'PROMO DISKON 50% TANGGAL 22-25 Desember', '', '', 33, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `reset_token`, `full_name`, `address`, `phone`, `zip`, `level`, `status`, `last_login`, `created`, `modified`) VALUES
(1, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 'ADMINISTRATOR', 'Jl CONDET', '54674573', 0, 1, 1, '2018-12-10 06:48:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'panjul@gmail.com', '900150983cd24fb0d6963f7d28e17f72', NULL, 'PANJUL', 'Yogyakarta', '356363', 0, 0, 1, '2012-05-16 22:44:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'user@user.com', '6ad14ba9986e3615423dfca256d04e3f', NULL, 'satria aprilian', 'easdasdasd', '9823098129038', 13430, 0, 1, '2018-12-10 04:43:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'mapril@gmail.com', '6ad14ba9986e3615423dfca256d04e3f', NULL, 'muhammad aprilian', 'jl condet asd', '8122139898', 0, 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmations`
--
ALTER TABLE `confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `confirmations`
--
ALTER TABLE `confirmations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
