-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 20, 2019 at 04:38 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trekkerguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_admin`
--

CREATE TABLE `app_admin` (
  `admin_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `user_img` varchar(255) NOT NULL DEFAULT 'admin.png',
  `token_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_admin`
--

INSERT INTO `app_admin` (`admin_id`, `name`, `email`, `password`, `phone`, `user_img`, `token_id`) VALUES
(1, 'Admin ', 'admin@gmail.com', 'admin', 0, 'admin.png', 123456);

-- --------------------------------------------------------

--
-- Table structure for table `app_category`
--

CREATE TABLE `app_category` (
  `cat_id` int(255) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `category_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_category`
--

INSERT INTO `app_category` (`cat_id`, `category_name`, `category_image`) VALUES
(1, 'Land Activity', 'http://192.168.1.105/app_dashboard/uploads/category/607LandActivity.jpg'),
(2, 'Water Activity', 'http://192.168.1.105/app_dashboard/uploads/category/508WaterActivity.jpg'),
(3, 'Air Activity', 'http://192.168.1.105/app_dashboard/uploads/category/781AirActivity.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `app_places`
--

CREATE TABLE `app_places` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `place_id` int(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `website` varchar(300) NOT NULL,
  `cat_id` varchar(250) NOT NULL,
  `facility` varchar(1000) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` longtext NOT NULL,
  `image1` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `image4` varchar(500) DEFAULT NULL,
  `image5` varchar(500) DEFAULT NULL,
  `latitude` varchar(400) NOT NULL,
  `longitude` varchar(400) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_places`
--

INSERT INTO `app_places` (`id`, `title`, `place_id`, `address`, `phone`, `website`, `cat_id`, `facility`, `image`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `latitude`, `longitude`, `date`) VALUES
(2, 'Classical Markha Valley Trek', 4793, 'Ladakh Himalaya', '9930405476', 'NotAvailable', '1', 'Moderate', 'http://192.168.1.105/app_dashboard/uploads/place/6651Markha1.jpg', 'One of the most famous treks in Ladakh, the route of this trek makes its way through remote mountain passes and sleepy villages to quaint monastic settlements, all parts of the spectacularly beautiful landscape of Markha Valley. The trek route, which is among the best trekking places in India, passes through monasteries to the pale alpine meadows of Nimaling in the silhouette of Kang Yatze Peak. From this point, trail ascends to the Kongmaru La (the highest point on the trek) with its imposing views of the Karakoram and K2. A tourist can expect accommodation in the parachute tents at most of the villages on the route, thus making this trek known as a â€˜tea house trekâ€™. Apart from the outstanding contrast of trekking in a cold desert valley, tourists also get an arresting view of Zanskar and Ladakh ranges, the Kang Yatze (21,000 ft) and Stok Kangri (20,086 ft). The route takes the trekker inside a beautiful Hemis National Park and involves two passes, Ganda La and Kongmaru La. There are many things about this trek which make it so fascinating. There is a part of the trek which requires you to cross the Markha River whose waters are waist deep. You also go across Buddhist villages which exude a serene aura and inexplicably draw you towards them. At another point, you also pass rocky gorges, and doing so quenches your thirst for adventure.', 'http://192.168.1.105/app_dashboard/uploads/place/2989Markha2.JPG', 'http://192.168.1.105/app_dashboard/uploads/place/3967Markha3.jpg', 'NULL', 'NULL', 'NULL', '34.00660', '77.122520', '16/04/2019'),
(3, 'Rajmachi', 6659, 'Sahyadri Mountains', '9930405476', 'NotAvailable', '1', 'Moderate', 'http://192.168.1.105/app_dashboard/uploads/place/7777Rajmachi1.jpg', 'Rajmachi Fort is one of the many historical forts in the rugged hills of Sahyadri mountains. It consists of two twin fortresses Shriwardhan Ballekilla and Manaranjan Balekilla, with a wide machi surrounding the two Balekillas', 'http://192.168.1.105/app_dashboard/uploads/place/2857Rajmachi2.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/3350Rajmachi3.jpg', 'NULL', 'NULL', 'NULL', '18.8296834', '73.3974108', '16/04/2019'),
(4, 'Ganga River Rafting', 5349, 'Rishikesh, Uttarakhand', '9930405476', 'NotAvailable', '2', 'Grade I â€“ IV', 'http://192.168.1.105/app_dashboard/uploads/place/5029Ganges1.jpg', 'River Ganga in Rishikesh is one of the worldâ€™s best rafting destinations. Adventure enthusiast can enjoy river rafting down rapids ranging from grade 1 to grade 4. This almost 16 km stretch is rich with whirlpools and rapids. There are as many as 13 rapids. Return to Sender, Roller Coaster, Three Blind Mice, Double Trouble, Tee Off and Golf Course are some incredible names. Camping on the beautiful white sand river beaches against the scenic Kumaon Mountains is also a popular adventure. The real charm of this region of Shivaliks is river rafting in Rishikesh.', 'http://192.168.1.105/app_dashboard/uploads/place/7825Ganges2.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/768Ganges3.jpg', 'NULL', 'NULL', 'NULL', '25.6052693', '83.7038469', '16/04/2019'),
(6, 'Teesta River', 5041, 'Sikkim and Darjeeling', '9930405476', 'NotAvailable', '2', 'Grade I â€“ IV', 'http://192.168.1.105/app_dashboard/uploads/place/1670Teesta2.jpeg', 'The Teesta River flows through Sikkim, Darjeeling, and Kalimpong Hill Region. The mighty river is another thrilling river rafting spot. Blessed with a string of rapids rated at Grade 14, it creates a true invigorating experience. The turbulent Rangit, a tributary of the Teesta, has multidimensional rapids and is perfect for a challenge to more experienced rafters.', 'http://192.168.1.105/app_dashboard/uploads/place/3800Teesta1.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/2548Teesta3.jpeg', 'NULL', 'NULL', 'NULL', '27.14362367', '88.27875137', '16/04/2019'),
(7, 'Lonavala', 2104, 'Maharashtra, India', '123456789', 'NotAvailable', '3', 'Easy', 'http://192.168.1.105/app_dashboard/uploads/place/2751Lona1.jpg', 'Hot Air Balloon rides are a general idea of fun at foreign locales, but having one in India is as amusing as it sounds! The concept may have taken its own good time to initialize in India, with the help of some good investment and interest, today you can find many places that offer hot air balloon rides, which tower some amazing sceneries. So, get ready to experience the best and most amazing ride of your life. Here is a list of some of the best destinations in India for Hot Air Balloon rides.', 'http://192.168.1.105/app_dashboard/uploads/place/9131Lona2.jpeg', 'http://192.168.1.105/app_dashboard/uploads/place/5699Lona3.png', 'NULL', 'NULL', 'NULL', '18.7557', '73.4091', '16/04/2019'),
(8, 'Jaipur', 7833, 'Rajasthan  India', '123456789', 'NotAvailable', '3', 'Maximum 4000 feet', 'http://192.168.1.105/app_dashboard/uploads/place/626Jaipur1.jpg', 'Known as one of the most rustic and beautiful places in India, Rajasthan is perhaps a perfect venue to go on a hot air balloon ride. Catch a birdâ€™s eye view of the Pink City and glide proudly over the palaces and forts. The weather conditions are close at the deserted side of the state and going on a balloon trip can make for a perfect holiday.', 'http://192.168.1.105/app_dashboard/uploads/place/9392Jaipur3.jpg', 'NULL', 'NULL', 'NULL', 'NULL', '26.916194', '75.820349', '16/04/2019'),
(13, 'Teesta River', 4046, 'Sikkim and Darjeeling', '123456789', 'NotAvailable', '2', 'Grade I â€“ IV', 'http://192.168.1.105/app_dashboard/uploads/place/9739Kaziranga1.jpg', 'The Teesta River flows through Sikkim, Darjeeling, and Kalimpong Hill Region. The mighty river is another thrilling river rafting spot. Blessed with a string of rapids rated at Grade 14, it creates a true invigorating experience. The turbulent Rangit, a tributary of the Teesta, has multidimensional rapids and is perfect for a challenge to more experienced rafters.', 'http://192.168.1.105/app_dashboard/uploads/place/7231Kaziranga2.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/3629Kaziranga3.jpg', 'NULL', 'NULL', 'NULL', '27.14362367', '88.27875137', '16/04/2019');

-- --------------------------------------------------------

--
-- Table structure for table `app_placesmain`
--

CREATE TABLE `app_placesmain` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `place_id` int(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `website` varchar(300) NOT NULL,
  `facility` varchar(1000) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` longtext NOT NULL,
  `image1` varchar(500) DEFAULT 'NULL',
  `image2` varchar(500) DEFAULT 'NULL',
  `image3` varchar(500) DEFAULT 'NULL',
  `image4` varchar(500) DEFAULT 'NULL',
  `image5` varchar(500) DEFAULT 'NULL',
  `latitude` varchar(400) NOT NULL,
  `longitude` varchar(400) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_placesmain`
--

INSERT INTO `app_placesmain` (`id`, `title`, `place_id`, `address`, `phone`, `website`, `facility`, `image`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `latitude`, `longitude`, `date`) VALUES
(1, 'Teesta River', 4046, 'Sikkim and Darjeeling', '123456789', 'NotAvailable', 'Grade I â€“ IV', 'http://192.168.1.105/app_dashboard/uploads/place/9739Kaziranga1.jpg', 'The Teesta River flows through Sikkim, Darjeeling, and Kalimpong Hill Region. The mighty river is another thrilling river rafting spot. Blessed with a string of rapids rated at Grade 14, it creates a true invigorating experience. The turbulent Rangit, a tributary of the Teesta, has multidimensional rapids and is perfect for a challenge to more experienced rafters.', 'http://192.168.1.105/app_dashboard/uploads/place/7231Kaziranga2.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/3629Kaziranga3.jpg', 'NULL', 'NULL', 'NULL', '27.14362367', '88.27875137', '16/04/2019'),
(2, 'Classical Markha Valley Trek', 4793, 'Ladakh Himalaya', '9930405476', 'NotAvailable', 'Moderate', 'http://192.168.1.105/app_dashboard/uploads/place/6651Markha1.jpg', 'One of the most famous treks in Ladakh, the route of this trek makes its way through remote mountain passes and sleepy villages to quaint monastic settlements, all parts of the spectacularly beautiful landscape of Markha Valley. The trek route, which is among the best trekking places in India, passes through monasteries to the pale alpine meadows of Nimaling in the silhouette of Kang Yatze Peak. From this point, trail ascends to the Kongmaru La (the highest point on the trek) with its imposing views of the Karakoram and K2. A tourist can expect accommodation in the parachute tents at most of the villages on the route, thus making this trek known as a â€˜tea house trekâ€™. Apart from the outstanding contrast of trekking in a cold desert valley, tourists also get an arresting view of Zanskar and Ladakh ranges, the Kang Yatze (21,000 ft) and Stok Kangri (20,086 ft). The route takes the trekker inside a beautiful Hemis National Park and involves two passes, Ganda La and Kongmaru La. There are many things about this trek which make it so fascinating. There is a part of the trek which requires you to cross the Markha River whose waters are waist deep. You also go across Buddhist villages which exude a serene aura and inexplicably draw you towards them. At another point, you also pass rocky gorges, and doing so quenches your thirst for adventure.', 'http://192.168.1.105/app_dashboard/uploads/place/2989Markha2.JPG', 'http://192.168.1.105/app_dashboard/uploads/place/3967Markha3.jpg', 'NULL', 'NULL', 'NULL', '34.00660', '77.122520', '16/04/2019'),
(3, 'Rajmachi', 6659, 'Sahyadri Mountains', '9930405476', 'NotAvailable', 'Moderate', 'http://192.168.1.105/app_dashboard/uploads/place/7777Rajmachi1.jpg', 'Rajmachi Fort is one of the many historical forts in the rugged hills of Sahyadri mountains. It consists of two twin fortresses Shriwardhan Ballekilla and Manaranjan Balekilla, with a wide machi surrounding the two Balekillas', 'http://192.168.1.105/app_dashboard/uploads/place/2857Rajmachi2.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/3350Rajmachi3.jpg', 'NULL', 'NULL', 'NULL', '18.8296834', '73.3974108', '16/04/2019'),
(4, 'Ganga River Rafting', 5349, 'Rishikesh, Uttarakhand', '9930405476', 'NotAvailable', 'Grade I â€“ IV', 'http://192.168.1.105/app_dashboard/uploads/place/5029Ganges1.jpg', 'River Ganga in Rishikesh is one of the worldâ€™s best rafting destinations. Adventure enthusiast can enjoy river rafting down rapids ranging from grade 1 to grade 4. This almost 16 km stretch is rich with whirlpools and rapids. There are as many as 13 rapids. Return to Sender, Roller Coaster, Three Blind Mice, Double Trouble, Tee Off and Golf Course are some incredible names. Camping on the beautiful white sand river beaches against the scenic Kumaon Mountains is also a popular adventure. The real charm of this region of Shivaliks is river rafting in Rishikesh.', 'http://192.168.1.105/app_dashboard/uploads/place/7825Ganges2.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/768Ganges3.jpg', 'NULL', 'NULL', 'NULL', '25.6052693', '83.7038469', '16/04/2019'),
(6, 'Teesta River', 5041, 'Sikkim and Darjeeling', '9930405476', 'NotAvailable', 'Grade I â€“ IV', 'http://192.168.1.105/app_dashboard/uploads/place/1670Teesta2.jpeg', 'The Teesta River flows through Sikkim, Darjeeling, and Kalimpong Hill Region. The mighty river is another thrilling river rafting spot. Blessed with a string of rapids rated at Grade 14, it creates a true invigorating experience. The turbulent Rangit, a tributary of the Teesta, has multidimensional rapids and is perfect for a challenge to more experienced rafters.', 'http://192.168.1.105/app_dashboard/uploads/place/3800Teesta1.jpg', 'http://192.168.1.105/app_dashboard/uploads/place/2548Teesta3.jpeg', 'NULL', 'NULL', 'NULL', '27.14362367', '88.27875137', '16/04/2019'),
(7, 'Lonavala', 2104, 'Maharashtra, India', '123456789', 'NotAvailable', 'Easy', 'http://192.168.1.105/app_dashboard/uploads/place/2751Lona1.jpg', 'Hot Air Balloon rides are a general idea of fun at foreign locales, but having one in India is as amusing as it sounds! The concept may have taken its own good time to initialize in India, with the help of some good investment and interest, today you can find many places that offer hot air balloon rides, which tower some amazing sceneries. So, get ready to experience the best and most amazing ride of your life. Here is a list of some of the best destinations in India for Hot Air Balloon rides.', 'http://192.168.1.105/app_dashboard/uploads/place/9131Lona2.jpeg', 'http://192.168.1.105/app_dashboard/uploads/place/5699Lona3.png', 'NULL', 'NULL', 'NULL', '18.7557', '73.4091', '16/04/2019'),
(8, 'Jaipur', 7833, 'Rajasthan  India', '123456789', 'NotAvailable', 'Maximum 4000 feet', 'http://192.168.1.105/app_dashboard/uploads/place/626Jaipur1.jpg', 'Known as one of the most rustic and beautiful places in India, Rajasthan is perhaps a perfect venue to go on a hot air balloon ride. Catch a birdâ€™s eye view of the Pink City and glide proudly over the palaces and forts. The weather conditions are close at the deserted side of the state and going on a balloon trip can make for a perfect holiday.', 'http://192.168.1.105/app_dashboard/uploads/place/9392Jaipur3.jpg', 'NULL', 'NULL', 'NULL', 'NULL', '26.916194', '75.820349', '16/04/2019');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `treklocation` varchar(300) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `treklocation`, `userid`, `username`) VALUES
(1, '13423', 14, 'abiishake'),
(2, 'Jaipur', 14, 'abiishake');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `token`) VALUES
(1, 'dp7esZt4YpE:APA91bEHto_aPpCclDuaSx67r1OTi3zM0B5RPT1dXs5HwKwMuE933XmnE9qTf1sr74O8Kr5XHihkoFZwJc3Mrw0w5ealPVnI4bV_7SZTikd5JZj7z1I_IWefeQTxCWd7Afwv6OPxuihC'),
(2, 'cbjFLfRrB6k:APA91bFoE_Znn_c361c9htm8KMSePpgBynB5KlUcLyS_S1qC8HKeqpV6IcogRu4KAKv8ejp1F-_jI1QgX_zxKEJyW25BdtmH-g0Sedcob6POmK3SDdb49MnzkTSPhVH2wizbi5js2UJV'),
(3, 'e5cRTxjJXAY:APA91bFm-KBascr0D4brwhLLK_1LJ04aAJ1yaIF6ItbOKNJ4Ik9w2ECzBNaxEhJt7zedvj72aEnNmvsYQ0Mh1fFtY-eoIBFt0e2drNdDJ8EMFzksgnzwIPKHpro2CEVaH0kxrQAG196W'),
(4, 'dokHypRS8G0:APA91bH3DqyhspLR077OpZAMknlvxoaPcTFSVA_TTexMHipx8htv8Hy_JixAskf_EEzdAyzIWjOiX6Vshx6MqDZnxE6lWcNkgnJsHiJAgcntnzqEGl4DnOmFnQL6mHr0icg3Ilz8t1_m'),
(5, 'fWU0798vcMA:APA91bEFW8DMhxLQNPM10JXEV8sT8XIbpF0h6hXO2fRlyJ_5rMp89G6aL_JfHj0XHTiUB0OJ921DvTv7I8tqWXSs8piSVjq_InID9P1P2ZPVhWsBDr0tweZmsVsZL6lLZHsF5yzvhNA4'),
(6, 'd4AwFMargTY:APA91bFSwyJ6sBKIZLAQFuOQhFuc2NLwGi_Qf7ww49LiDcajEmQkyhfd_LwsZ3Wdo_x9ncTzmkOpYOG0Sk1xueNLbaRdkMxgB1gdVcqYzXVoqwatuyPfK3OSTb0eAVQ5DrlQOWoeoLEF'),
(7, 'fM4lJAH-NVs:APA91bHqZ3ri4tGgS1-fGVgKpcLApOJzOkAiIZvRgXYVjsQISnp9kmZvSMXROhEdbGHrh7ipuZgHoeioLrm_n41uFl-Qw8wkajajkroOlgZpSuul84rGNP8xWzPxta5aXxoyZR57ZEO1'),
(8, 'cRQHGQcuoEA:APA91bGJ9ONbHmB7vhAlcT1DgXJWHrwulZ6f1CBim0xaH-cMDcOoCRtA0llQGbZaE1Xxvh6dUfqpXCBtQ1mFGgfJ5-PzMcHsrdFONMIjQ1Kgi0nuK_FAmTHuJcATFmJ-wn0vYHHzNDfp'),
(9, 'fly6UKU-CmE:APA91bGUhwV0W1I6MN0b_tnDncLHnnj3EqiXQ-jBLPI9K-jzkFNWOwfHqs7JHQiwjI0kTifExOPb5KeoXAOZKYHH_goEftGg1tj2IUCTBkQSQ_qDWOFHr2RhISkv8SZBr8DBLURUXr6K'),
(10, 'f4fsXnnSoII:APA91bGroyUvQuZl9yulVhfOwTaQn5O-_uHJt0-sRGPbV-TawuR7UClxRTQPRdPNrJRMySvY0BWC42qPYtfSI4H6YXeUFjXhQztJfrw3y_Q2Qu_TAitgNHWiscwzqrWhHPbtmkUuO5H0'),
(11, 'dYKNBGTxjY4:APA91bGXQ0Z6F6ih4uYIxNHSsoqYu1fJh4sc0xy_FuAlD4zoxakh4tHho7Uw0zqO_cHV7kJomQIu0qCUODdz7JOZnU8S3s1qPkCU54Ie4RavzRMsb4nQz0fEAVmfi6Pt4Ks6262HtGDr'),
(12, 'eBP1N3NmT-c:APA91bE-hwjifLfMvrtI8MMk8vqv5mtMEoemHeLqe2JlU-G6FsABeAAoTnR6zobvwwyFwxy12b2AGqGK_lYPYGwBqbEFBfKjoVMQklb_o2Bjey8f7-X4fnBebn0C9AE27K5kjkS5uIkG'),
(13, 'c1iZ5oc0AgQ:APA91bF9C1pcnxh6HBl05MPbRDGR1TBVlz8z74U9N4LB8vcvlh63tsbPEkVVrWHKhz-t0DM9ADwG-385jlU1-yhQyoujW8xUHiOPeRIgmKxmhKSa76GJ4HvcV4XHW0qxlKOR55ecksvE'),
(14, 'edsWfkLuC6s:APA91bE13ss896MKlV6BgjNfEK8GiSsyXmaiI_dswudLCzbWnB3LrK6vBS1cgqyv2DL5ZcQNg0dghKHUmBQDtkxA8vCkqlVZOg5AXs4SQn-dhpeK98xLws9R9jFbdy7PnKwwQBw966VK'),
(15, 'fmXzHt475L4:APA91bFXrdKZhZ918kOGj05JxKmro24f4_GC5CKUVP5MeA-nXM8ndnXW3ApxL1AvUb65hZP_PCwDPmZeVDc8cUoN0LiQPZhBPSLV5b0TMOQ0lkISx2GWpmbcHGzvggTIDChQXu2QF-kK'),
(16, 'droQVPc0A8k:APA91bEvnwMFKULgofznlQ_8Hu5016-omSzqEmkVOrJZ15jJQbDkvn9Mra-4yIT753q_0iYcr2k-khKdu5BWfEj1LSZ8CRw8tMHKVODvpVVWhkQm_sXZB7rXzFhNLCrV2GL-4dT3Tbzw'),
(17, 'fMuOpQQHdwg:APA91bH7FRnbTvIG6CylY21PM-Yk0YLArZ1y-0jolQocxdK_nxT_J-Utq_19bKGThcIoK9XX1PlGSg2I89XnHX9ORVhOes6otcmnep-O3qV-OqPR5ftdJHXx2Zeoe4KepPUehc83QZR8'),
(18, 'eFrwz2loIy0:APA91bF5iCPeIMjABXERVZ0MMOIt1vPpOgWu-BPxT9kaP9zQHk5dHQB58gThhBbiIUFXO-MvZYunENlVykhsWeMyGSz7bM_5DEEJkGpfBTiloHLUDb7TcBVzzTO3FXIeTD2MKP4bpZUQ'),
(19, 'eLY6Mar7ZgQ:APA91bGwkFbnAIK4nyYR09VpHTq3wjpWmtbi9IDgeVcWG1m9yUNg18xGXwm_lT--rfdkekAMctCYD-vQjHHkNIiY8xdaK8jmHiaE3BPlwh3lxQ4QJa7_J61k5SuhDoxPlXLk5XeK6_vO'),
(20, 'e11H066A2ck:APA91bEUqzs9w5OsFkOUTQqb2ruFKH8-malSFJVzXm5Xj2tCSY7lxpIW3_CNhcf-vWSYD8xUssPaYG0LuiKTOvYHqZ8xiKngaBYv-V4ZQu0JE_q8cPRgzRgNFJSpuzeJnqz8-Oo0A9Jf'),
(21, 'dmjh9ZpW8-Y:APA91bF7ghF5snQCyG4cq1qXb1zE7nG46uQR-u4HC_supjxIJVMZN-7l0EC0BC78H5o65zuvoKxcuBzcj6D7THPEKfZRtfgKCCemMxiYV7NXzZxQsnkmvj2vJDKrH5XvMRA111URXsr4'),
(22, 'fHne2IzEAZE:APA91bHkafoU8Ei3HY3TV0vCAUQ3Cl99dqY8tBRl__GfgX8_byLLAnGcvXIoZP9XrR2kz4izziB2nlKPdNFWWGOynuQsHO_98J7-Qfq7zfKor97Xe0lkOt7RZjzxRd3BpYXqL2tKhlaU'),
(23, 'du_DiohwpQo:APA91bHBoOVYAjrptgBGbp1ie6g2RUuxiCrOJmY5IdIym4PUQY4wNm5BLFdd9ihqmlxAQQ4pRwpMaeqnAptd29tYMMFjg7xIh0L2E6eaFAlUN9V5tHbKM0yPn9YD5aPf3e0mGPxyZy_d'),
(24, 'fNwJWa9uo0A:APA91bE0AkIlR1YRpkykUlSnAc2knUwIeTJV3RUpziWGZDkbZJl5dCG7iVQc_ciYAGYcOyYsGvjKO7EqBcZ3UL9iIdYtA3QWtrfzlmLiwZcuTOcInSC5av2_pCLXUY872rJVWjpDBq5s'),
(25, 'dKJ7QMUPXXQ:APA91bFn1iSStQp2wYXSBIw_oAtz6RA0_Hw7b7_K5PIwl3SI6Fd7clm1E2P6bJohysSoJNVSORHfGVKBqiI1E17s58lNmHZPu1q_IzBd7weyNeosPiJcXQzxAW9kxN3ummL87zLBoOeE'),
(26, 'fmaFf2GER4I:APA91bG850uo2yf0NJ4K3T482yYPoeTQ1r3xn5wet4LGKi-nPc_ucefz3wwwPydE5tNGe6LI5bYGJHbp9-ihZDUXM98xs7oM6XK2gBIyzxy7oRIdnD_U6qlJ4b9X2LVeBMXhRwKsM5K1'),
(27, 'asdagfew'),
(28, 'der3Vj8urQU:APA91bFMp_urUgEEHo8hi-akLiAxlsu9vEGXATWPZ73RN9rfgWXXanILLeNL5_nE-UmQpQ2k6-A_UTWtM16kd8jmNDRQRy9ghM8n1CCM1E6aU7bEvqQc8AjPyc1aW73_LAMOktqxXKLQ'),
(29, 'eC0A2B2uRBU:APA91bEBPrW6ihljYBnMKn9GxpR4WbCxjLFns7BlpfIMbsCNiSMUI1_kzaV2NyUOLWigd92z4eK-lnifRrE4-GU90ezPjkwyFv2A2K5ORku_falOolKU1vcy5DfbR0qmCdJI0O98N2_A'),
(30, 'dDHVFYFHw-s:APA91bGDvslciu_1JR1uDdDkVff7nvtH8HKecURAnPX4FmCGwI_RGRc2fCbMPAkOGAvL090zMAn-TWB59coqLZ2tzc-lreRgI5w6QGwJar__wvwlJO40Vde7w8SLYuubZdt6RrsY0x4M'),
(31, 'djlzGO_SbTs:APA91bF6hjbB3pxKmq2G-PhT_ug7wRhhAngQyS5S-txz5fqcx5aIvaHVZzzdnKbh2Vt7fEB6gRegiew-7w3UIc-QGhvSOBK9xXJGui5Wd3cvryD2WDaYySuX2boYld2a58q-MLUfohQX'),
(32, 'fTAzqGPZpiA:APA91bGaBHKZOloWRaIBysgtx6Qj82NdVpnnC9Tjo8sZNRtLXM6Xi8kbvjv_LGiMORgQY8KLhfrD7277zwq3dyhQEFTIjEPMzQjzEP9Bth4RkeEuiJNYHviBpJVUija7Ogek39d5W2ac'),
(33, 'fg72fvG1BGI:APA91bH6QlyUEZDdvHLsza8i9RROR5jmkBsbELhkejabFpMixgZWGFdWY7PZy1SPmA3f6AmbmwZmIq5Hlp7iZz9fJFsKh-JIA5yp5GMEmAtOJ7cDxeUWPEPV0s_Nx8kMcOEEJropSbTJ'),
(34, 'd4g0SMR3FMQ:APA91bEA19sEsDOC1CqmtQ8SQG7ifOwzUTg3AcybHycy5p--3Oh0uefk9LZjvrcE4Ws1X1d60PBGukxdomST4g7p3h2TESHYBmmWZkS-F_1py8LqKPMRhc7kxN9EM_mLS3bX6eikTYH_'),
(35, 'exAqqzXp83o:APA91bFubigJcaZRDro8QYJJ1UGRK8yieviFruDNUvsa0NMNV2NKi4g9EiTr7nj2S8LsaMfUc74pgTkefOzCqPCFO28BCrFdwP5o6MxqrUqCqxtuXwPws3jzrfl4d-6e7aURYmUgPU2L'),
(36, 'fILMyeumtNM:APA91bGzCE1k-GIEWh-C9n1lKQfj11-MXdZm-UNz3EkiqL04zMG0lYDpkj172JukTdaV1cfxKm-Ecmco7FQWAef7fk4dzYchWsjkk25yIzKc5slr_hxo40LnPiT-ZjhFk9XyqnTcarRz'),
(37, 'fTASQ7XDbpQ:APA91bEdlGHpvtxk5GqjzUV8pZ7q6CM8WMoH7OfD8Sxsv_WloqbMMXMlJCicIy1ilgZiIPGDr5u1zgQp3RHgt5CkainD5Bp-icei_xA0QFu4ZErIwNVvOjBjoTyPznxbB3pYLvGcw1kE'),
(38, 'epQtZz6lipY:APA91bGVbLmcYLpNJTB8hpcBsDt35jYDnUD23_5sUIejh9MTmfhU5yEO3k0VvEXU4l2-mS8Olpl89rr_eoOuavtyQWmL7eFLSvvYYWN6SHCVqHbBCHcHb5_OnMkk8_qLXbHoO1_4tZTi'),
(39, 'eZ4ZGS0UaAA:APA91bHPPjOlBBegA4oDfvDijh4FAaPnDXhBT1H57vFNL8B9ywNRVmedkpnqPVteGkDMLM7qJy8jCQKZY3jVR65A7MKCCC2eVG-tOgpuoEPbxdBATGQQS6AazBaPlxp9ILyFBGGk477D'),
(40, 'dyYi8Evp2l4:APA91bFSS5HLkxDaJyV1SVFESXsa2e7kjGLlmfnr32OU6_0qYeIWGNIcdQZkXp3sgbFXqM87mKjO13hL1_q_rhcq50oSBLggi9QAWJ2rtiQB6L_Ksk19m9XzGNAtxA42Ypjw_m3X0q6c'),
(41, 'eNGXwYuZneU:APA91bECEA3L1VR805SSGmUR0PpThHbKgTmyqsNi1b7iPei1G1cFaaUdgh732w8-lBy8SSvNSrs4dRt_yY7k3n8G5lF9iDpIJDFIzAumxlz87zQJdJH5KU-NyiMDlttp5fZ-iMoxmQJE'),
(42, 'ccsc_Ng6_Dw:APA91bEe0NwvhctaRdR3V2ebSDkJvrgr88BTFJO1VtODX69WNbIGwMgNQB24_w-sC0UPEPlC4aQsWgU_af3hNRgifWF6RS2gvSAwHfPik1cyXcnGVLxIe1czeAJWpgec3tNlr7Tbl-K_'),
(43, 'cS2vTAcZRJ8:APA91bFJD3P_uRLsQaGLG6QZ-lYAg86BZlLAzPi7e7qAOx584o_LIe8BnX8AWYGkdwF_Q-KyXeSwDNGw_v8CYnE4JVu9saHqJrsUnzYWDuPxfLRQfaRMTXdgKm-OglLBuoLw581uqr-L'),
(44, 'e_ChZQJhK0A:APA91bHXaO68Dlz5pyEHJEkeQKnQ9e9U_MWVU-jDPcPqReeNcrofJX9gtUKuYd-xSCGLAsvD_JphGxQsUQPUUlCex_ALq16WrpL-hEIaDvo0CBUYzPC4G-5Z1XQlumsFMtQ78W5f_uDX'),
(45, 'eyK5T_aCnF0:APA91bF2ORjDckWOW_p9AnVX9YMr6FK9CGpMgUBNze6c3cxbbsnc-WaH49ahm7w1_71xSMnED_WCv7jDp-Vl3B0xJrsZCDcs3tWV0lAlzwNmLVAS94lyZxqIftsFDW4HwI2y6Kny34lq'),
(46, 'e5oPkOfc78Y:APA91bGvxDbTDOUleDoMuZw0SfOv36oQDhi6UUaopsBBc_MCTQb8hBWJNUwZLn4qRU_O9PHX9NKsXbne5s9wqPqEuvSvMnRvXaqbtQE7MWNLFQHqD35ydiDUY-B6rb5vTR9cuWUNhLNa'),
(47, 'eD5UScj4srU:APA91bGWlKEvtcRUCFc-bzywvp50p7OXG6f-fufuN49yPmdqkqrxljdLAGfB0yzn8xwEIVdfH1I45gEDl1flEUcvSolS_zJvt2WZoIgENcm6n8HyJ6kzb1GSSRAM7o_6m3VUMp1xZZmC'),
(48, 'dEBVUGhIruM:APA91bH1x-3rRwmNmpsHTHoyadqD6pyGwxUP8xw1U_5GoKTqLw5XKBlQkwrf-z4Mn-Fsu2_bWc4V4RS0ED6lz_8YiX-de5Jte2YRawTpPK8B1OGUJhSVxKm51_BOIkrIzAjDdbKW-9YB'),
(49, 'fQiDK53sC7w:APA91bFw5sddAjUroOFt2kY_tH6VNFaXsLLOpBB0iVvIXBNr4T8D2FdpU6hsY0yN0Id2svJWr_3ImyxvD0crKRDV9bBlCDEJpm-pr_xbrOhMcTx2RQTNlGfoLDNJ-kUljFMmelO1Ocdx'),
(50, 'ca_VYKpdi4M:APA91bH-4pJ3owiPpDwahPglJEr9XhVHuyVzslz4BwnOFF9vnCOxGiYLA0GlL6j_c9rTqZRlk8ONjA8HHbVdd6Nz2R1j3wA9Wo8qI_pYg27IPC5PvBHfZpQDljLOctNfmmIqkd32UkNb'),
(51, 'czj5DqSbwE4:APA91bFK8kos55tBrYxqaf2fmn9tVQsb5e1KtlfSNEbDRMCeYHQNed8DLs0EW1JPFa6WDoi5Nj4FIXfJaieM53N530F8gg_3VT_IVNPeyMBVWchBvfOWcx464H5vzWFPii1hHJch9VFV'),
(52, 'e4zcPc_BBFQ:APA91bG_iTKXtoJ-ZV_M5m2-Zq5KOq901qEOrPQJe9W5BKSOPTr9YGBfiVel-lSuG69VWJShM7kmH-JY_7YswNFbDK2EeAUyZGWdx0lCvCu_fXkBkEl9f9HXvnC2TwA1EebHQSHkolA8'),
(53, 'fvi1SQdnpes:APA91bGt3NWb3DOQic9TcaDsteRxP2iI29kZlaRutGne1C2xtM9dWEqPv21TyW-TS7whG1dGcDFN5g67jm1XY62lTXP8pPtrTxeDE3uc3LZ6pPvgBqzNAI5hWvDWhJLLZ8YCrfvyWWHW'),
(54, 'd7Q7F297oLw:APA91bHH9ceN6RUyhBD9DFzpaA8Ol6bX4TybDZLamx4PWXBpKQP9xQuFBZUEivHVQiMCQMpXEy9dbe4oh0RBsuGd0vfa1GUVj2xJYoF4akORiC6wE_7xH3VbKxESCDZzFD7ccV0ILWyW'),
(55, 'eARp5doxhQM:APA91bEyaOB2CcWpqKiBMxpZP1R06orzNW92Rl3zaLHlP30yWtAF6mNzyQvX3qYhVX8OQRGl12SWfRdlGOCHbaEuIxGD8-j2ojj7GVCKDVdS-1cwAyyyw9HTRd7EGKF1G1qorjn6Yq7k'),
(56, 'dctjejLDI7A:APA91bEG3K7SZx16S5KPNYyHhb9eV9J9ymd9XGQTiP3Q3wDv8327TO3rHOnRXIWnPjFTICU4lLtYKFu8SGAPbtmUjP3T-hEBjLp0-FoVgcrOGD2L7sSzXTiaws2ijBO-Q0zhyiiVYHoi'),
(57, 'fYDuyfl95Hw:APA91bEeJOmIZ-CJZdmpYcfntekt5FOIaBMLKlo-nOnTflSdVVPGw397Ddch2KiadJhQgaEEvYzLuAuni2IH4iitpCAlxOkec88WBKR0z6QsKw0ftrj5y83HrUk2TCIXIpFAJsmHBDJV'),
(58, 'eX10XeFvuDM:APA91bHR66H20LZ411GiXZKPDDhgvwwLsoRXsdn4y8ry3Ayvd3KinbavE20UPvzk80ZpbbVZ2VhHEFht0oHu-WbdL3DChlqaFBnuNmdDtyoFis_UoJBW4b6k9h9uJ81xWbyDU6Iazo5t'),
(59, 'frKENr1rZ3k:APA91bFq5JtkV7l_WZwhh0AxOPyQcH3pLkdn4KNtLJ7Xka6nBk7x51ac2xPmvLELZ3HfD3lv69_yvOGExJjISLSzbVTdla2gSsIC2uDeuYv-X1aAKNc1cQKKNV2MsnbUOppgxnGnsjrW'),
(60, 'dg6VVcGyPlc:APA91bFYb5_7OI7OTenrXZ7jL5zo2vpGmD217kUNYzkBgmffs4sG-Etpg0OII8YOeaTesovb9XIcciCz1LTMMNCL3vA7irfwevfwDZ35f0xRDtBONuQcHgqzEwQqtYYGMVsuMMkUA53q'),
(61, 'd-jUDK3PJXQ:APA91bFJkClha_rzvH69l3Mdg7FPUBAEOT4_fkOkT4d_WbYQRDs0tvZIipjA1uleHj5OUJYxdQR6H7ApkqfNOi5-ZKahWdOxfYEPpnmCgUfoQkpUDWlhDe4ZYro38lCDjCKUuqOC8_F8'),
(62, 'fdmKy_o4yN4:APA91bFTr1Ca-5arUTfqOrzf23-OEKs-iBVXlKHwqp92hYAr9u2QqRySPmpAPAqFxceS1zlyJSifDWxBw2xyFDKx8qRQnpvjw07Dy0vENhvtMwEWBZBYcWsToXID6Y5wglkkApNlLNnE'),
(63, 'e3dp6RP4hts:APA91bF98NbKuSSuZyEvOQS00BQpJnIIlKAI47_gC_uQ6BMrss2eefPkkYaJpL45XH2jt8nBVTPXbesxFm7Hk73E1ELnNIWVyLebZsXtqVKgMlKqSxzDaR1HiD1vY73NKThFZODCSleg'),
(64, 'fJajWxa8EhQ:APA91bGmbCywRW9gZn6C3Ae9GQ-oFngO8HexRzm1pAzxWdLWxubZsjQYkf2Oy_cOB5wdjpCLoiNnW5vPLdQdSez6AusesDpwzuczOO9c_d3IPO1dRvLNfwtBDE15wax1QUWkkgQLPVX1'),
(65, 'fennjMJ42q4:APA91bHWryiRBX_--AAKjW9XgOKSqtTHt2kQpXeEwuDbu1d6YYhHJHhjY8Qq1-QD6hzbBp8nhqXRVJlSSoIoD1gHlJmhJRZRwgIFzp5FSaLHCHhE8eZfBZb1YnJqKcajpt2Q27-uYnuP'),
(66, 'ffhS6TSoFJQ:APA91bH4NW5k0ZM_AJMPC9IKUx9-GancmpDZiClTVnTW8jtlRhx-iqb7DG9oE92TphKhVnV71wOSRVqlot82R2S6eMdMXWgCfuDEAkMVrwQitEtN2me1-Q2cKVvGHICHKSj7mhXES628'),
(67, 'cftdax8d0kw:APA91bF_xGS66mGNM7inTd1KpRwEOMV6wF7ml0CQdVLTm_Wg3wZXvxetKR1YvH_tAnuQSJtLbpdx-6MYYeKgneFzZoIs-2sCauX160rc_S_Ui-U9bEho_7RAIoXFZUjuxji7be4QOnCS'),
(68, 'fCYLmuLCz6U:APA91bGZhp07UlTmKzVyc8Xskd6oYDJ5f5o_eHb48-i23DxUP4ZpK_2AFV-_gdJ5HGsM-xgEwck_wOgtF4AMXBpHHyWz4pNSgVa51weQxHHERYOtHVoo2JHEWm1glZHWrHCh8qNVbJC_'),
(69, 'fgzdMRE-Zk0:APA91bFLUhd2EnokGcFhS-jASdO3Nq84lFMbaSo1FHUBpNZA9MEcCNN9tVJvRx1xpoddv0i6fXLqy-FoOtEIKa4vQJz3pO7a-lWihFRNLqp-9X42-0DAwu3_rMfhxs0GJKy2Y8VYCWdt'),
(70, 'eXhkwGWA5oE:APA91bGj83obdjCWHiE2Z1dyN-Wb3HOTLaN__wgQDQZaG_iB3fnait_6UHovwTBBNYx5nunWk0NE5NzRmKiGdTTUkQ7ZIRJwBHOrwOb6Skl2fLMuUEK5jCoDlHtgchJEylUU67uhkGdA'),
(71, 'fPzfKbfrLaM:APA91bGMHVLXMmu5uGWRs7KSpr9aXD1wfxGUbRyo10t3fzbvxENbH_ifXEVoQvYfVXSFzYNCoxil1PvGoXiOGeHymmz6QlGYQvmjWKA0C9-RO-MN25nvSfqqPpQjY1rMcKtMdz4Bheqg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `gender` varchar(60) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `gender`, `username`) VALUES
(1, 'pas@asd.com', '123', 'male', 'abhishek'),
(2, 'p1as@asd.com', '123', 'male', '111'),
(3, 'lwl@ak.com', 'dldm', 'Male', 'lsls'),
(4, 'palabhishek322@gmail.com', 'kzmdm', 'Female', 'jsj'),
(5, 'koibhiusekaro@gmail.comhjgx', 'djjggx', 'Male', 'ghh'),
(6, 'tripathinaina05@gmail.com', 'sjsmmzmxm', 'Male', 'q627828'),
(7, 'nnnb@gv.co', 'bnnn', 'Male', 'ghnn'),
(8, 'motheruxksk@gamilx.com', 'ajajajanbs', 'Female', 'abhishekalal'),
(9, 'otjernew@gmail.xom', 'akkaaia', 'Male', 'palabjaiskakak'),
(10, 'yyyyy@gah.com', 'ushwwh', 'Male', 'yyyauaha'),
(11, 'dndndn@ejhh.cfff', 'ddfffgg f', 'Female', 'egegrhrht'),
(12, 'aklalalsn@lfl.xon', 'kakaka', 'Male', 'abhaihek'),
(13, 'elliot@gmail.com', '23456', 'male', 'elliot'),
(14, 'abhiahek@gmail.xkm', '123446', 'Male', 'abiishake');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_admin`
--
ALTER TABLE `app_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `app_category`
--
ALTER TABLE `app_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `app_places`
--
ALTER TABLE `app_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `app_placesmain`
--
ALTER TABLE `app_placesmain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_admin`
--
ALTER TABLE `app_admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `app_category`
--
ALTER TABLE `app_category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `app_places`
--
ALTER TABLE `app_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `app_placesmain`
--
ALTER TABLE `app_placesmain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
