-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2022 at 10:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `best_hotels`
--

CREATE TABLE `best_hotels` (
  `id` bigint(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `neighborhoodName` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `amenities` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `best_hotels`
--

INSERT INTO `best_hotels` (`id`, `name`, `image`, `location`, `neighborhoodName`, `price`, `stars`, `score`, `amenities`) VALUES
(11, 'The Park Hyderabad', 'https://content.r9cdn.net/rimg/himg/03/ae/24/ice-233787598-70639058_3XL-345367.jpg', 'Hyderabad', 'Somajiguda', 68, 5, 5.8, 'PARKING,POOL,SPA'),
(12, 'Taj Falaknuma Palace', 'https://content.r9cdn.net/rimg/himg/a7/cb/c3/leonardo-1200539-Ladies_Room_O-406516.jpg', 'Hyderabad', '', 681, 5, 9.5, 'PARKING,WIFI,POOL,SPA'),
(13, 'Radisson Blu Plaza Hotel Hyderabad Banjara Hills', 'https://content.r9cdn.net/rimg/himg/63/f4/d2/ice-114052-68261612_3XL-183398.jpg', 'Hyderabad', 'Banjara Hills', 91, 4, 8.1, 'PARKING,WIFI,POOL,SPA'),
(14, 'Vivanta Hyderabad, Begumpet', 'https://content.r9cdn.net/rimg/himg/3c/d2/17/leonardo-1265626-Premium_Temptation_Room_O-762499.jpg', 'Hyderabad', 'Begumpet', 89, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(15, 'Taj Deccan', 'https://content.r9cdn.net/rimg/himg/9f/15/59/revato-174753-12755053-295730.jpg', 'Hyderabad', 'Banjara Hills', 92, 5, 8.4, 'PARKING,WIFI,POOL'),
(16, 'Novotel Hyderabad Airport', 'https://content.r9cdn.net/rimg/himg/b6/3f/62/ice-38052-79062133_3XL-062407.jpg', 'Hyderabad', '', 103, 5, 7.3, 'PARKING,WIFI,POOL,SPA'),
(17, 'Sheraton Hyderabad Hotel', 'https://content.r9cdn.net/rimg/himg/75/c9/e3/leonardo-2009194-hydsi-lobby-9337-hor-clsc_O-600874.jpg', 'Hyderabad', '', 131, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(18, 'ITC Kakatiya, a Luxury Collection Hotel, Hyderabad', 'https://content.r9cdn.net/rimg/himg/0f/d2/92/leonardo-1124231-hydlc-exterior-6031-hor-clsc_O-655062.jpg', 'Hyderabad', 'Begumpet', 124, 5, 7.9, 'PARKING,WIFI,POOL,SPA'),
(19, 'Taj Banjara', 'https://content.r9cdn.net/rimg/himg/18/92/8d/leonardo-1124423-Underdeck_O-051747.jpg', 'Hyderabad', 'Banjara Hills', 64, 5, 7.7, 'PARKING,WIFI,POOL,PETS'),
(20, 'The Westin Hyderabad Mindspace', 'https://content.r9cdn.net/rimg/himg/b3/19/03/leonardo-125231038-hydwi-hyderabad-6067-hor-clsc_O-780326.jpg', 'Hyderabad', 'Madhapur', 149, 5, 8.5, 'PARKING,WIFI,POOL,SPA'),
(21, 'Taj Krishna', 'https://content.r9cdn.net/rimg/himg/9f/8c/f4/leonardo-2671001-Luxury_Suite_O-859481.jpg', 'Hyderabad', 'Banjara Hills', 126, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(22, 'Lemon Tree Premier, Hitec City, Hyderabad', 'https://content.r9cdn.net/rimg/himg/db/69/23/leonardo-1233630-6.35.01.01_Facade_O-039005.jpg', 'Hyderabad', 'HITEC City', 116, 4, 7.5, 'WIFI,POOL,SPA'),
(23, 'Oakwood Residence Kapil Hyderabad', 'https://content.r9cdn.net/rimg/himg/23/b6/43/revato-893414-11732064-124166.jpg', 'Hyderabad', '', 68, 4, 8.7, 'PARKING,WIFI,POOL,PETS'),
(24, 'The Golkonda Hyderabad', 'https://content.r9cdn.net/rimg/himg/81/99/1e/leonardo-196301398-Jewel_Of_Nizam_Entrance_CF_O-674724.jpg', 'Hyderabad', '', 56, 4, 7.2, 'PARKING,WIFI,POOL'),
(25, 'Radisson Hyderabad Hitec City', 'https://content.r9cdn.net/rimg/himg/f5/3b/72/ice-114077-63658134_3XL-413941.jpg', 'Hyderabad', 'Gachibowli', 87, 4, 6.8, 'PARKING,WIFI,POOL'),
(26, 'Hyatt Hyderabad Gachibowli', 'https://content.r9cdn.net/rimg/himg/c5/94/45/ice-49838-61030212_3XL-980957.jpg', 'Hyderabad', '', 129, 5, 7.8, 'PARKING,WIFI,POOL,PETS,SPA'),
(27, 'The Taj Mahal Palace Mumbai', 'https://content.r9cdn.net/rimg/himg/bf/3c/5e/leonardo-1129513-Ball_Room_1_O-847738.jpg', 'Mumbai', 'South Mumbai', 284, 5, 9.2, 'WIFI,POOL,SPA'),
(28, 'Trident Nariman Point', 'https://content.r9cdn.net/rimg/himg/a5/4f/bb/leonardo-1129620-TNP-Verandah_O-961009.jpg', 'Mumbai', 'South Mumbai', 109, 5, 9, 'PARKING,POOL,SPA'),
(29, 'Taj Mahal Tower, Mumbai', 'https://content.r9cdn.net/rimg/himg/74/83/0f/leonardo-1996235-015_Pooside_O-176626.jpg', 'Mumbai', 'South Mumbai', 139, 5, 9, 'WIFI,POOL,SPA'),
(30, 'Sofitel Mumbai BKC', 'https://content.r9cdn.net/rimg/himg/8b/97/62/leonardo-5686415-6451_ex_01_p_3000x2250_O-176229.jpg', 'Mumbai', 'Western Suburbs', 181, 5, 8.3, 'PARKING,WIFI,POOL,PETS,SPA'),
(31, 'Itc Maratha Mumbai, A Luxury Collection Hotel, Mumbai', 'https://content.r9cdn.net/rimg/himg/f5/a5/d5/leonardo-125230268-bomlc-king-suite-7677-hor-clsc_O-141992.jpg', 'Mumbai', 'Western Suburbs', 121, 5, 8.4, 'PARKING,WIFI,POOL,SPA'),
(32, 'Taj Lands End', 'https://content.r9cdn.net/rimg/himg/b6/08/d9/leonardo-1140494-Grand_Luxury__Romm_O-485166.jpg', 'Mumbai', 'Western Suburbs', 149, 5, 8.7, 'PARKING,WIFI,POOL,SPA'),
(33, 'Trident Bandra Kurla', 'https://content.r9cdn.net/rimg/himg/4e/ff/26/leonardo-1132025-Trident_Club_Room_bedroom_O-640686.jpg', 'Mumbai', 'Western Suburbs', 128, 5, 9, 'PARKING,WIFI,POOL,SPA'),
(34, 'The Leela Mumbai', 'https://content.r9cdn.net/rimg/himg/d8/4c/97/ice-24964-0760256_3XL-963796.jpg', 'Mumbai', 'Western Suburbs', 98, 5, 8.7, 'PARKING,POOL,SPA'),
(35, 'Novotel Mumbai Juhu Beach', 'https://content.r9cdn.net/rimg/himg/0b/b2/4a/ice-85675954-68616570_3XL-988044.jpg', 'Mumbai', 'Western Suburbs', 127, 5, 6.9, 'PARKING,WIFI,POOL,PETS,SPA'),
(36, 'Grand Hyatt Mumbai', 'https://content.r9cdn.net/rimg/himg/7c/1b/91/ice-87537342-71974855_3XL-042392.jpg', 'Mumbai', 'Western Suburbs', 137, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(37, 'Taj Santacruz', 'https://content.r9cdn.net/rimg/himg/9e/f2/c3/leonardo-100160086-Presidential_Suite_Hall_O-854896.jpg', 'Mumbai', 'Western Suburbs', 143, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(38, 'The Orchid Hotel Mumbai Vile Parle', 'https://content.r9cdn.net/rimg/kimg/3c/e4/7e68beed77499865.jpg', 'Mumbai', 'Western Suburbs', 137, 5, 7.5, 'PARKING,WIFI,POOL,SPA'),
(39, 'Itc Grand Central, A Luxury Collection Hotel, Mumbai', 'https://content.r9cdn.net/rimg/himg/a3/d6/9e/leonardo-125230264-bomrl-presidential-suite-livingroom-0130-hor-clsc_O-663960.jpg', 'Mumbai', 'South Mumbai', 144, 5, 8.7, 'PARKING,WIFI,POOL,SPA'),
(40, 'Sahara Star', 'https://content.r9cdn.net/rimg/himg/3a/c6/66/leonardo-2671704-India_Mumbai__Hotel_Sahara_Star__Neptune_Suite_S-543467.jpg', 'Mumbai', 'Western Suburbs', 160, 5, 7.8, 'PARKING,WIFI,POOL,SPA'),
(41, 'The Oberoi Mumbai', 'https://content.r9cdn.net/rimg/himg/82/ff/35/leonardo-1130600-TOM_KOHINOOR_SUITE_LIVING_ROOM_WITH_PIANO_1_O-407678.jpg', 'Mumbai', 'South Mumbai', 189, 5, 9.4, 'PARKING,WIFI,POOL,SPA'),
(42, 'The St. Regis Mumbai', 'https://content.r9cdn.net/rimg/himg/74/b5/8a/leonardo-2031218-bomxr-floor-lobby-1536-hor-clsc_O-109409.jpg', 'Mumbai', 'South Mumbai', 196, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(54, 'Auberge Discovery Bay Hong Kong', 'https://content.r9cdn.net/rimg/himg/33/3c/23/leonardo-183459420-Ocean_View_Deluxe_Room_at_Auberge_Discovery_Bay_-_Copy_O-693290.jpg', 'Hong-Kong', 'Islands District', 157, 4, 8.2, 'WIFI,POOL,SPA'),
(55, 'Royal Plaza Hotel', 'https://content.r9cdn.net/rimg/himg/97/cc/44/arbisoftimages-95742-photo-153-t-image.jpg', 'Hong-Kong', 'Kowloon', 84, 5, 8.6, 'WIFI,POOL,SPA'),
(56, 'Hong Kong Disneyland Hotel', 'https://content.r9cdn.net/rimg/kimg/a4/18/89e9b94c1dc5efbf.jpg', 'Hong-Kong', 'Islands District', 227, 4, 8.2, 'WIFI,POOL'),
(57, 'Hong Kong Gold Coast Hotel', 'https://content.r9cdn.net/rimg/himg/ee/1e/a8/revato-3629-12214879-930196.jpg', 'Hong-Kong', 'Tuen Mun District', 101, 4, 7.9, 'WIFI,POOL'),
(58, 'Disney Explorers Lodge', 'https://content.r9cdn.net/rimg/himg/82/e5/49/hotelsdotcom-685436-f8541032_w-114273.jpg', 'Hong-Kong', 'Islands District', 203, 4, 8.4, 'WIFI,POOL'),
(59, 'The Royal Garden', 'https://content.r9cdn.net/rimg/himg/fa/26/fb/arbisoftimages-76251-gallery-05-170728085741-image.jpg', 'Hong-Kong', 'Kowloon', 79, 5, 8.3, 'WIFI,POOL,SPA'),
(60, 'Hyatt Centric Victoria Harbour Hong Kong', 'https://content.r9cdn.net/rimg/himg/45/26/fa/ice-195392936-79970225_3XL-557630.jpg', 'Hong-Kong', 'Eastern District', 108, 5, 8.2, 'WIFI,POOL'),
(61, 'Eaton Hk', 'https://content.r9cdn.net/rimg/himg/27/d0/89/leonardo-79569122-Terrible-Baby-3_O-571785.jpg', 'Hong-Kong', 'Kowloon', 76, 4, 8.5, 'WIFI,POOL'),
(62, 'Bay Bridge Lifestyle Retreat', 'https://content.r9cdn.net/rimg/himg/d7/dd/3c/revato-1164-12293408-614480.jpg', 'Hong-Kong', 'Tsuen Wan District', 58, 4, 7.5, 'WIFI,POOL'),
(63, 'The Peninsula Hong Kong', 'https://content.r9cdn.net/rimg/himg/2d/d4/86/leonardo-2658781-Gaddis_O-036698.jpg', 'Hong-Kong', 'Kowloon', 576, 5, 9.2, 'WIFI,POOL,SPA'),
(64, 'Hotel ICON', 'https://content.r9cdn.net/rimg/himg/12/16/cc/revato-12456-12358947-533204.jpg', 'Hong-Kong', 'Kowloon', 145, 4, 9.1, 'WIFI,POOL,SPA'),
(65, 'Harbour Grand Hong Kong', 'https://content.r9cdn.net/rimg/himg/d3/d0/7b/ice-123037-photo.aspx_did=2692_brochureid=123037_publicid=57601147_instanceid=3_resizing=4K-600812.jpg', 'Hong-Kong', 'Eastern District', 116, 5, 8.3, 'WIFI,POOL,SPA'),
(66, 'Royal View Hotel', 'https://content.r9cdn.net/rimg/himg/39/27/31/hotelsdotcom-254116-e6b40a6e_w-818365.jpg', 'Hong-Kong', 'Tsuen Wan District', 51, 4, 7.7, 'WIFI,POOL,SPA'),
(67, 'Regal Riverside Hotel', 'https://content.r9cdn.net/rimg/himg/36/ed/19/revato-3551-9965611-406353.jpg', 'Hong-Kong', 'Sha Tin District', 61, 4, 7.4, 'POOL,SPA'),
(68, 'The Ritz-Carlton Hong Kong', 'https://content.r9cdn.net/rimg/himg/bb/3f/be/leonardo-1238166-hkgkw-suite-0020-hor-clsc_O-940028.jpg', 'Hong-Kong', 'Kowloon', 381, 5, 9.1, 'WIFI,POOL,SPA'),
(69, 'Intercontinental Grand Stanford Hong Kong', 'https://content.r9cdn.net/rimg/himg/28/bf/71/leonardo-4999593-HKGHB_6183713953_O-349076.jpg', 'Hong-Kong', 'Kowloon', 122, 5, 8.6, 'WIFI,POOL'),
(70, 'Hilton San Francisco Financial District', 'https://content.r9cdn.net/rimg/himg/6e/d1/6f/ice-122330658-70209633_3XL-546833.jpg', 'San-Francisco', 'Financial District', 176, 4, 7.4, 'PETS,SPA'),
(71, 'Fairmont San Francisco', 'https://content.r9cdn.net/rimg/himg/b5/ea/46/ostrovok-7573902-359f19fca12e6f9cb381db7d82ae479aa85e82ef-489618.jpg', 'San-Francisco', 'Nob Hill', 461, 5, 8.5, 'PETS,SPA'),
(72, 'Hotel Riu Plaza Fisherman\'s Wharf', 'https://content.r9cdn.net/rimg/kimg/89/7d/556d09b88495863a.jpg', 'San-Francisco', 'North Beach', 206, 4, 8, 'WIFI,POOL'),
(73, 'Club Quarters Hotel in San Francisco', 'https://content.r9cdn.net/rimg/himg/52/7a/58/leonardo-1077053-2020-03-09_1103-ADA_CQSanFrancisco_mark-weinberg_0028_O-625134.jpg', 'San-Francisco', 'Financial District', 180, 4, 8, 'WIFI,PETS'),
(74, 'Hyatt Regency San Francisco', 'https://content.r9cdn.net/rimg/himg/09/d6/3a/ice-87537520-67921197_3XL-657436.jpg', 'San-Francisco', 'Financial District', 306, 4, 8.5, 'WIFI,PETS'),
(75, 'Intercontinental Hotels Mark Hopkins San Francisco', 'https://content.r9cdn.net/rimg/himg/8e/2b/33/leonardo-1159088-SFOHA_4020507700_O-523430.jpg', 'San-Francisco', 'Nob Hill', 309, 4, 8.2, 'PETS'),
(76, 'Grand Hyatt San Francisco Union Square', 'https://content.r9cdn.net/rimg/himg/06/61/84/ice-49761-67636099_3XL-939496.jpg', 'San-Francisco', 'Union Square Area', 253, 4, 8.5, 'WIFI,PETS'),
(77, 'The Westin St. Francis San Francisco on Union Square', 'https://content.r9cdn.net/rimg/kimg/52/ac/abb5682bdb121a42.jpg', 'San-Francisco', 'Union Square Area', 215, 4, 8.4, 'WIFI,PETS'),
(78, 'Hyatt Centric Fisherman\'s Wharf San Francisco', 'https://content.r9cdn.net/rimg/himg/90/df/77/ice-49759-62208564_3XL-254597.jpg', 'San-Francisco', 'North Beach', 202, 4, 8.1, 'WIFI,POOL,PETS'),
(79, 'Staypineapple, An Elegant Hotel, Union Square', 'https://content.r9cdn.net/rimg/kimg/c3/a2/0a161982-5a9d8d88-8.jpg', 'San-Francisco', 'Tenderloin', 220, 4, 8.6, 'WIFI,PETS'),
(80, 'Hotel Nikko San Francisco', 'https://content.r9cdn.net/rimg/himg/9f/a2/b3/leonardo-1282646-SFOHN_62047565_Anzu_Cocktail_Lounge_1150x835_O-110506.jpg', 'San-Francisco', 'Tenderloin', 304, 4, 8.8, 'WIFI,POOL,PETS'),
(81, 'Warwick San Francisco', 'https://content.r9cdn.net/rimg/himg/ca/38/52/hotelsdotcom-159773278-a565e8cf_w-496864.jpg', 'San-Francisco', 'Tenderloin', 214, 4, 7.8, 'WIFI'),
(82, 'Hotel Zephyr San Francisco', 'https://content.r9cdn.net/rimg/himg/ba/70/57/arbisoftimages-32986-Quest_Quarter_King-image.jpg', 'San-Francisco', 'North Beach', 242, 4, 8.2, 'PETS'),
(83, 'W San Francisco', 'https://content.r9cdn.net/rimg/himg/1b/82/5d/leonardo-125229230-sfowh-gym-5658-hor-clsc_O-324419.jpg', 'San-Francisco', 'SoMa', 292, 4, 8.4, 'PETS'),
(84, 'Hotel Fusion', 'https://content.r9cdn.net/rimg/himg/8a/62/53/ice-109497-60793693_3XL-388367.jpg', 'San-Francisco', 'Union Square Area', 160, 3, 7.9, 'WIFI,SPA'),
(85, 'The Mosser', 'https://content.r9cdn.net/rimg/kimg/6c/a6/0a67fdf7-15bfde7d8e3.jpg', 'San-Francisco', 'SoMa', 115, 3, 7.7, 'WIFI'),
(86, 'Hilton Los Angeles Airport', 'https://content.r9cdn.net/rimg/himg/a2/86/a9/ice-59865-72337853_3XL-773582.jpg', 'Los-Angeles', 'Westchester', 174, 4, 7.5, 'AIRPORT_SHUTTLE,POOL,PETS,SPA'),
(87, 'Millennium Biltmore Los Angeles', 'https://content.r9cdn.net/rimg/kimg/f2/32/3052c8e9-15da8d29487.jpg', 'Los-Angeles', 'Central Los Angeles', 218, 4, 7.4, 'WIFI,POOL'),
(88, 'Sheraton Gateway Los Angeles Hotel', 'https://content.r9cdn.net/rimg/himg/9a/48/0f/leonardo-1092110-laxsi-suite-4560-hor-clsc_O-261178.jpg', 'Los-Angeles', 'Westchester', 192, 4, 7.9, 'WIFI,POOL'),
(89, 'Sonesta Los Angeles Airport Lax', 'https://content.r9cdn.net/rimg/himg/80/4d/7b/ice-136733-72195912_3XL-658812.jpg', 'Los-Angeles', 'Westchester', 160, 4, 8, 'AIRPORT_SHUTTLE,WIFI,POOL,SPA'),
(90, 'The Westin Los Angeles Airport', 'https://content.r9cdn.net/rimg/himg/d9/a8/90/arbisoftimages-61000-laxwi-presidential-9797-hor-wide-image.jpg', 'Los-Angeles', 'Westchester', 172, 4, 8.1, 'AIRPORT_SHUTTLE,POOL,PETS,SPA'),
(91, 'Freehand Los Angeles', 'https://content.r9cdn.net/rimg/himg/3f/83/93/revato-1324482-13276061-609277.jpg', 'Los-Angeles', 'Central Los Angeles', 192, 4, 8.2, 'WIFI,POOL'),
(92, 'The Westin Bonaventure Hotel &amp; Suites, Los Angeles', 'https://content.r9cdn.net/rimg/himg/f9/f1/34/leonardo-125229740-laxbw-prime-1715-hor-clsc_O-509781.jpg', 'Los-Angeles', 'Central Los Angeles', 311, 4, 7.9, 'WIFI,POOL,PETS'),
(93, 'Intercontinental - Los Angeles Downtown, An IHG Hotel', 'https://content.r9cdn.net/rimg/himg/9e/89/da/leonardo-100160128-LAXHC_5058454914_O-557551.jpg', 'Los-Angeles', 'Central Los Angeles', 380, 4, 8.8, 'WIFI,POOL,PETS'),
(94, 'Hyatt Regency Los Angeles International Airport', 'https://content.r9cdn.net/rimg/himg/e6/82/66/arbisoftimages-32450-The-Concourse-Hotel-at-Los-Angeles-International-Airport-P050-Suite-Room.gallery-2-3-item-panel-image.jpg', 'Los-Angeles', 'Westchester', 218, 4, 8.4, 'AIRPORT_SHUTTLE,WIFI,POOL,SPA'),
(95, 'Renaissance Los Angeles Airport Hotel', 'https://content.r9cdn.net/rimg/himg/a4/11/9b/leonardo-1066986-laxrr-lobby-0057-hor-clsc_O-267447.jpg', 'Los-Angeles', 'Westchester', 180, 4, 8.2, 'AIRPORT_SHUTTLE,POOL'),
(96, 'Los Angeles Airport Marriott', 'https://content.r9cdn.net/rimg/himg/c7/92/80/leonardo-1072573-laxap-pool-0104-hor-clsc_O-099468.jpg', 'Los-Angeles', 'Westchester', 192, 4, 8.2, 'AIRPORT_SHUTTLE,POOL'),
(97, 'The Hollywood Roosevelt', 'https://content.r9cdn.net/rimg/himg/c6/aa/aa/ice-201063894-65019146_3XL-354051.jpg', 'Los-Angeles', 'Central Los Angeles', 267, 4, 8.3, 'POOL,PETS,SPA'),
(98, 'La Quinta Inn &amp; Suites LAX', 'https://content.r9cdn.net/rimg/himg/7c/f6/ba/ice-77144-68935225_3XL-622787.jpg', 'Los-Angeles', 'Westchester', 139, 3, 7.7, 'WIFI,POOL'),
(99, 'Holiday Inn Los Angeles - LAX Airport', 'https://content.r9cdn.net/rimg/himg/48/b3/6f/leonardo-1082062-LAXIA_6132694034_O-511227.jpg', 'Los-Angeles', 'Westchester', 155, 3, 7.5, 'AIRPORT_SHUTTLE,WIFI,POOL'),
(100, 'Omni Los Angeles Hotel at California Plaza', 'https://content.r9cdn.net/rimg/himg/9c/2b/c0/leonardo-123248320-omni-los-angeles-hotel-at-california-plaza-lobby-2_O-569110.jpg', 'Los-Angeles', 'Central Los Angeles', 291, 4, 8.5, 'POOL,PETS,SPA'),
(101, 'The Line Hotel', 'https://content.r9cdn.net/rimg/himg/c1/69/e4/leonardo-67068321-HHV_DD_O-635572.jpg', 'Los-Angeles', 'Central Los Angeles', 256, 4, 7.9, 'WIFI,POOL,PETS'),
(102, 'ITC Sonar, a Luxury Collection Hotel, Kolkata', 'https://content.r9cdn.net/rimg/himg/2b/f8/c7/leonardo-1124233-cculc-presidential-suite-8595-hor-clsc_O-682706.jpg', 'Kolkata', 'Tangra', 122, 5, 8.3, 'PARKING,WIFI,POOL,SPA'),
(103, 'Novotel Kolkata Hotel And Residences', 'https://content.r9cdn.net/rimg/himg/b6/b3/b8/ice-85675898-68616878_3XL-851441.jpg', 'Kolkata', '', 77, 5, 7.9, 'PARKING,WIFI,POOL,PETS,SPA'),
(104, 'Vedic Village Spa Resort', '', 'Kolkata', '', 72, 4, 7.3, 'PARKING,WIFI,POOL,SPA'),
(105, 'The Lalit Great Eastern Kolkata', 'https://content.r9cdn.net/rimg/himg/48/d7/cf/hotelsdotcom-77701160-1c6e2e96_w-216002.jpg', 'Kolkata', '', 112, 5, 7.9, 'POOL,SPA'),
(106, 'Taj Bengal', 'https://content.r9cdn.net/rimg/himg/e3/2e/bf/leonardo-2670781-LUXURY_SUITE_259_116_MAIN_O-160796.jpg', 'Kolkata', 'Alipore', 143, 5, 8.9, 'PARKING,WIFI,POOL,PETS,SPA'),
(107, 'JW Marriott Hotel Kolkata', 'https://content.r9cdn.net/rimg/himg/0d/0e/5f/leonardo-113767526-ccujw-living-0027-hor-clsc_O-193434.jpg', 'Kolkata', 'Tangra', 182, 5, 8.5, 'PARKING,WIFI,POOL,SPA'),
(108, 'The Park Kolkata', 'https://content.r9cdn.net/rimg/himg/37/01/71/ice-141136-71912239_3XL-239384.jpg', 'Kolkata', '', 100, 5, 6.6, 'PARKING,WIFI,POOL,SPA'),
(109, 'Hyatt Regency Kolkata', 'https://content.r9cdn.net/rimg/himg/9b/ad/9b/arbisoftimages-56554-KOLKA-P007-Guchhi-Restaurant.adapt.16x9.1280.720-image.jpg', 'Kolkata', 'Salt Lake City', 99, 5, 7.7, 'PARKING,WIFI,POOL,SPA'),
(110, 'Vivanta Kolkata Em Bypass', 'https://content.r9cdn.net/rimg/himg/ee/17/4a/leonardo-1292297-2_-_Premium_room-premium_suite_sleeping_room_alt_O-759937.jpg', 'Kolkata', '', 98, 5, 8.2, 'PARKING,WIFI,POOL,PETS'),
(111, 'Holiday Inn Kolkata Airport', 'https://content.r9cdn.net/rimg/himg/b4/83/e3/leonardo-2021120-CCUAP_6536101448_O-413798.jpg', 'Kolkata', '', 85, 4, 7.8, 'PARKING,WIFI,POOL'),
(112, 'The Peerless Inn - Kolkata', 'https://content.r9cdn.net/rimg/himg/b3/14/fe/hotelsdotcom-113831892-982d9491_w-393783.jpg', 'Kolkata', 'Dharmatala', 80, 4, 7.1, 'PARKING,WIFI'),
(113, 'Kenilworth Hotel, Kolkata', 'https://content.r9cdn.net/rimg/himg/8b/de/be/hotelsdotcom-76219926-e51f80ee_w-794454.jpg', 'Kolkata', '', 97, 4, 7.9, 'PARKING,WIFI,SPA'),
(114, 'The Lindsay', '', 'Kolkata', 'Dharmatala', 36, 3, 6.1, 'WIFI'),
(115, 'Howard Johnson by Wyndham Kolkata', 'https://content.r9cdn.net/rimg/himg/12/0d/34/ice-93452-60101550_3XL-210160.jpg', 'Kolkata', '', 76, 4, 7.4, 'PARKING,WIFI'),
(116, 'Radisson Kolkata Ballygunge', 'https://content.r9cdn.net/rimg/himg/d6/54/d2/ice-114080-63669938_3XL-954018.jpg', 'Kolkata', 'Ballygunge', 72, 4, 7.2, 'PARKING,WIFI,POOL,SPA'),
(117, 'The Hhi Kolkata', 'https://content.r9cdn.net/rimg/himg/b4/95/e9/hotelsdotcom-76219922-85e02cf4_w-469976.jpg', 'Kolkata', '', 73, 4, 5.8, 'PARKING,WIFI,POOL'),
(118, 'Four Points by Sheraton Hotel &amp; Serviced Apartments, Pune', 'https://content.r9cdn.net/rimg/himg/6c/75/54/leonardo-2083400-pnqfp-facade-7398-hor-clsc_O-587996.jpg', 'Pune', 'Viman Nagar', 76, 5, 7.6, 'PARKING,WIFI,POOL,SPA'),
(119, 'Radisson Blu Hotel Pune Kharadi', 'https://content.r9cdn.net/rimg/himg/ff/7c/bb/ice-191473734-63762273_3XL-040971.jpg', 'Pune', 'Kharadi', 71, 4, 8, 'PARKING,WIFI,POOL,SPA'),
(120, 'Hyatt Pune', 'https://content.r9cdn.net/rimg/himg/f4/66/0c/ice-49885-60357914_3XL-042682.jpg', 'Pune', '', 101, 5, 7.9, 'PARKING,WIFI,POOL,PETS,SPA'),
(121, 'Pride Hotel', '', 'Pune', 'Shivaji Nagar', 74, 5, 6.8, 'PARKING,WIFI,POOL,SPA'),
(122, 'Novotel Pune Nagar Road', 'https://content.r9cdn.net/rimg/himg/5c/fb/45/ice-115027628-68615402_3XL-528530.jpg', 'Pune', 'Viman Nagar', 58, 4, 7.3, 'PARKING,WIFI,POOL'),
(123, 'Royal Orchid Central Pune', 'https://content.r9cdn.net/rimg/himg/a8/28/d5/leonardo-2671743-1130401cdms_img_pho_000_nc__188203_Restaurant___S-195707.jpg', 'Pune', 'Kalyani Nagar', 63, 4, 7.2, 'PARKING,WIFI,POOL'),
(124, 'ibis Pune Viman Nagar', 'https://content.r9cdn.net/rimg/himg/e0/93/16/ice-37972-72950654_3XL-754648.jpg', 'Pune', 'Viman Nagar', 41, 3, 6.9, 'PARKING,WIFI,PETS'),
(125, 'ibis Pune Hinjewadi', 'https://content.r9cdn.net/rimg/himg/9c/29/c8/leonardo-111184834-7253_ho_00_p_3000x2250_O-538493.jpg', 'Pune', '', 32, 3, 8.2, 'PARKING,WIFI,PETS'),
(126, 'Blue Diamond - Ihcl Seleqtions', 'https://content.r9cdn.net/rimg/himg/32/89/c9/leonardo-1124411-Easy_-_The_Bar_3_O-566677.jpg', 'Pune', '', 102, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(127, 'Oxford Golf Resort', '', 'Pune', '', 120, 4, 7.9, 'PARKING,WIFI,POOL'),
(128, 'The Orchid Hotel Pune Hinjewadi', 'https://content.r9cdn.net/rimg/himg/c9/13/a0/leonardo-1960425-AK_04374_O-448636.jpg', 'Pune', '', 65, 4, 7.6, 'PARKING,WIFI,POOL,SPA'),
(129, 'Hyatt Regency Pune', 'https://content.r9cdn.net/rimg/himg/9e/12/01/ice-49886-63268214_3XL-192792.jpg', 'Pune', '', 113, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(130, 'Conrad Pune', 'https://content.r9cdn.net/rimg/himg/21/c4/74/ice-73415-67646867_3XL-914758.jpg', 'Pune', '', 152, 5, 9, 'PARKING,POOL,SPA'),
(131, 'The Westin Pune Koregaon Park', 'https://content.r9cdn.net/rimg/himg/c7/39/67/leonardo-125230724-pnqwi-suite-livingroom-5188-hor-clsc_O-205723.jpg', 'Pune', '', 140, 5, 8.6, 'PARKING,WIFI,POOL,PETS,SPA'),
(132, 'Vivanta Pune, Hinjawadi', 'https://content.r9cdn.net/rimg/himg/b2/e9/33/leonardo-2009877-LOBBY_A_216_O-805211.jpg', 'Pune', '', 87, 4, 8.3, 'PARKING,WIFI,POOL,SPA'),
(133, 'Sun-N-Sand Pune', '', 'Pune', '', 64.6, 5, 0, ''),
(134, 'MOXY NYC Times Square', 'https://content.r9cdn.net/rimg/himg/81/b8/86/leonardo-2044948-nycox-bar-0055-hor-clsc_O-428882.jpg', 'New-York', 'Manhattan', 156, 4, 8.2, 'WIFI,PETS'),
(135, 'Pod Times Square', 'https://content.r9cdn.net/rimg/himg/b1/ff/80/ice-182115790-64780344_3XL-819557.jpg', 'New-York', 'Manhattan', 111, 3, 8.4, 'WIFI,PETS'),
(136, 'YOTEL New York', 'https://content.r9cdn.net/rimg/himg/6d/e5/8f/ice-228091444-68405969_3XL-515689.jpg', 'New-York', 'Manhattan', 156, 4, 7.5, 'WIFI'),
(137, 'Pod 51', 'https://content.r9cdn.net/rimg/himg/49/41/1d/hotelsdotcom-164846780-0000713a_w-592518.jpg', 'New-York', 'Manhattan', 114, 3, 8, 'WIFI,PETS'),
(138, 'Millennium Hilton New York One UN Plaza', 'https://content.r9cdn.net/rimg/himg/3a/dc/91/ice-125379616-71986859_3XL-761571.jpg', 'New-York', 'Manhattan', 177, 4, 8.1, ''),
(139, 'The New Yorker A Wyndham Hotel', 'https://content.r9cdn.net/rimg/himg/bf/30/98/ice-31710-60138980_3XL-670482.jpg', 'New-York', 'Manhattan', 164, 4, 7.8, 'WIFI,PETS'),
(140, 'Hotel Edison Times Square', 'https://content.r9cdn.net/rimg/himg/b4/e6/dd/leonardo-1065871-Hotel_Edison_-_Presidential_Suite_-_1166028_O-848606.jpg', 'New-York', 'Manhattan', 178, 3, 7.7, ''),
(141, 'DoubleTree by Hilton New York Times Square West', 'https://content.r9cdn.net/rimg/himg/90/4b/ac/ice-86891-67862489_3XL-278603.jpg', 'New-York', 'Manhattan', 154, 4, 7.1, 'PETS'),
(142, 'Arlo Nomad', 'https://content.r9cdn.net/rimg/himg/83/4f/60/ice-237140750-70507841_3XL-149711.jpg', 'New-York', 'Manhattan', 205, 4, 8.3, 'WIFI'),
(143, 'Holiday Inn Manhattan-Financial District', 'https://content.r9cdn.net/rimg/himg/99/13/9f/leonardo-1957546-NYCWA_6318523278_O-569850.jpg', 'New-York', 'Manhattan', 133, 4, 8, 'WIFI'),
(144, 'Hotel Riu Plaza New York Times Square', 'https://content.r9cdn.net/rimg/himg/0a/47/ac/arbisoftimages-2354469-restaurante-2-hotel-riu-plaza-new-york-times-square_tcm55-178130-image.jpg', 'New-York', 'Manhattan', 228, 4, 8.5, ''),
(145, 'Radio City Apartments', 'https://content.r9cdn.net/rimg/kimg/80/3e/9ffcd881-15eca36429c.jpg', 'New-York', 'Manhattan', 158, 0, 8.6, 'WIFI'),
(146, 'The Standard High Line', 'https://content.r9cdn.net/rimg/himg/c3/f2/88/leonardo-1153331-standard-hotel-high-line-guest-rooms-corner-view_O-570050.jpg', 'New-York', 'Manhattan', 294, 4, 8.3, 'WIFI,PETS,SPA'),
(147, 'InterContinental New York Barclay', 'https://content.r9cdn.net/rimg/himg/16/21/97/leonardo-1050597-NYCHA_4940895740_O-155920.jpg', 'New-York', 'Manhattan', 289, 5, 8.4, 'WIFI,PETS'),
(148, 'The Plaza Hotel', 'https://content.r9cdn.net/rimg/himg/1f/16/49/ice-217644138-79160469_3XL-602187.jpg', 'New-York', 'Manhattan', 802, 5, 8.4, 'PETS,SPA'),
(149, 'Arlo SoHo', 'https://content.r9cdn.net/rimg/himg/02/55/d6/ice-237140752-70458697_3XL-228204.jpg', 'New-York', 'Manhattan', 186, 4, 8.3, 'WIFI'),
(150, 'Eastin Grand Hotel Sathorn', 'https://content.r9cdn.net/rimg/himg/78/eb/28/revato-13524-11992523-665263.jpg', 'Bangkok', 'Sathon', 72, 5, 9.3, 'PARKING,WIFI,POOL'),
(151, 'Baiyoke Sky Hotel', 'https://content.r9cdn.net/rimg/kimg/13/29/0ac0998195aed1c8.jpg', 'Bangkok', 'Ratchathewi', 39, 4, 7.9, 'PARKING,WIFI,POOL,SPA'),
(152, 'Prince Palace Hotel', 'https://content.r9cdn.net/rimg/himg/4c/d5/dd/revato-2990-12378491-473076.jpg', 'Bangkok', 'Old Town', 24, 5, 7.4, 'PARKING,WIFI,POOL,SPA'),
(153, 'Millennium Hilton Bangkok', 'https://content.r9cdn.net/rimg/himg/20/71/5d/ice-59048-72689546_3XL-130047.jpg', 'Bangkok', 'Khlong San', 76, 5, 8.5, 'PARKING,POOL,SPA'),
(154, 'Sheraton Grande Sukhumvit, a Luxury Collection Hotel, Bangkok', 'https://content.r9cdn.net/rimg/kimg/76/91/a5b2e06b3b9c2bf4.jpg', 'Bangkok', 'Sukhumvit', 108, 5, 9.3, 'PARKING,WIFI,POOL,PETS,SPA'),
(155, 'Chatrium Hotel Riverside Bangkok', 'https://content.r9cdn.net/rimg/himg/c3/2c/21/revato-2683-12146794-370315.jpg', 'Bangkok', 'Bang Kho Laem', 99, 5, 9.1, 'PARKING,WIFI,POOL'),
(156, 'Shangri-La Bangkok', 'https://content.r9cdn.net/rimg/himg/31/d1/38/ice-73972-0759123_3XL-114059.jpg', 'Bangkok', 'Bang Rak', 124, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(157, 'Bangkok Marriott Hotel Sukhumvit', 'https://content.r9cdn.net/rimg/himg/28/40/d0/leonardo-1290070-bkkms-rooftop-0204-hor-clsc_O-213919.jpg', 'Bangkok', 'Watthana', 90, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(158, 'Skyview Hotel Bangkok', 'https://content.r9cdn.net/rimg/himg/cd/78/97/hotelsdotcom-617058-4b132fc6_w-561450.jpg', 'Bangkok', 'Sukhumvit', 68, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(159, 'Banyan Tree Bangkok', 'https://content.r9cdn.net/rimg/himg/c2/2a/43/ice-142515-72170693_3XL-207665.jpg', 'Bangkok', 'Sathon', 113, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(160, 'Sofitel Bangkok Sukhumvit', 'https://content.r9cdn.net/rimg/himg/5e/c5/02/ice-85674504-68636088_3XL-851140.jpg', 'Bangkok', 'Sukhumvit', 81, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(161, 'Pathumwan Princess Hotel', 'https://content.r9cdn.net/rimg/himg/3c/ed/4e/arbisoftimages-19395-Executive-Suite_03-2-551085.jpg', 'Bangkok', 'Pathum Wan', 59, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(162, 'lebua at State Tower - SHA Plus', 'https://content.r9cdn.net/rimg/himg/63/52/08/revato-2972-12526069-855710.jpg', 'Bangkok', 'Bang Rak', 134, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(163, 'The Raweekanlaya Bangkok', 'https://content.r9cdn.net/rimg/kimg/bc/06/1499f15f-175d1c7b55d.jpg', 'Bangkok', 'Old Town', 36, 5, 8.6, 'PARKING,WIFI,POOL'),
(164, 'Rambuttri Village Inn &amp; Plaza', 'https://content.r9cdn.net/rimg/himg/95/6a/03/arbisoftimages-140739-head-slide-rambutri009-image.jpg', 'Bangkok', 'Old Town', 15, 2, 7.6, 'WIFI,SPA'),
(165, 'Centara Grand At Centralworld - Sha Plus', 'https://content.r9cdn.net/rimg/himg/ff/19/c9/leonardo-1144239-cgcw-cru-champagne-bar-04_O-386728.jpg', 'Bangkok', 'Pathum Wan', 101, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(166, 'M Social Singapore', 'https://content.r9cdn.net/rimg/himg/28/98/d2/revato-1281622-12354453-688232.jpg', 'Singapore', 'Central Area', 147, 4, 8, 'WIFI,POOL'),
(167, 'PARKROYAL COLLECTION Marina Bay, Singapore', 'https://content.r9cdn.net/rimg/himg/f2/a4/b7/revato-8136-13040836-837680.jpg', 'Singapore', 'Central Area', 242, 5, 8.4, 'WIFI,POOL,SPA'),
(168, 'The Fullerton Hotel Singapore', 'https://content.r9cdn.net/rimg/himg/90/30/59/ice-201063888-65008532_3XL-790691.jpg', 'Singapore', 'Central Area', 375, 5, 9, 'PARKING,WIFI,POOL,SPA'),
(169, 'Carlton Hotel Singapore', 'https://content.r9cdn.net/rimg/himg/19/b1/bb/hotelsdotcom-163779584-35a4350c_w-639402.jpg', 'Singapore', 'Central Area', 226, 4, 8.7, 'WIFI,POOL,SPA'),
(170, 'Porcelain Hotel (Sg Clean)', 'https://content.r9cdn.net/rimg/himg/00/c0/f0/revato-298998-173739-651849.jpg', 'Singapore', 'Central Area', 81, 3, 7.3, 'WIFI,SPA'),
(171, 'Fairmont Singapore', 'https://content.r9cdn.net/rimg/himg/c7/37/1f/ice-221706252-79701773_3XL-747540.jpg', 'Singapore', 'Central Area', 250, 5, 8.6, 'WIFI,POOL,SPA'),
(172, 'Amara Sanctuary Resort Sentosa', 'https://content.r9cdn.net/rimg/himg/99/0f/90/leonardo-2685134-villa-living-room_41478387880_o_O-217249.jpg', 'Singapore', 'Southern Islands', 252, 5, 7.2, 'PARKING,WIFI,POOL,SPA'),
(173, 'Hotel G Singapore', 'https://content.r9cdn.net/rimg/himg/22/02/77/revato-504936-12727513-920646.jpg', 'Singapore', 'Central Area', 129, 4, 8.1, 'WIFI'),
(174, 'PARKROYAL COLLECTION Pickering, Singapore', 'https://content.r9cdn.net/rimg/himg/e1/eb/7f/ice-202958602-4671193_3XL-528570.jpg', 'Singapore', 'Central Area', 250, 5, 8.9, 'WIFI,POOL,SPA'),
(175, 'Sofitel Singapore Sentosa Resort &amp; Spa', 'https://content.r9cdn.net/rimg/himg/f3/2f/24/ice-39023-68653446_3XL-249288.jpg', 'Singapore', 'Southern Islands', 309, 5, 7.6, 'PARKING,WIFI,POOL,SPA'),
(176, 'One Farrer Hotel (Sg Clean)', 'https://content.r9cdn.net/rimg/himg/5a/22/8b/arbisoftimages-731582-Peony_Living_1600px-image.jpg', 'Singapore', 'Central Area', 177, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(177, 'Hotel Boss', 'https://content.r9cdn.net/rimg/himg/e6/d0/1d/arbisoftimages-2492248-hb-05-image.jpg', 'Singapore', 'Kallang', 93, 4, 7.5, 'WIFI,POOL'),
(178, 'Pan Pacific Singapore', 'https://content.r9cdn.net/rimg/himg/38/f9/04/ice-202958572-62787576_3XL-791377.jpg', 'Singapore', 'Central Area', 233, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(179, 'W Singapore - Sentosa Cove', 'https://content.r9cdn.net/rimg/himg/23/26/e1/leonardo-125231034-sinwh-wow-suite-8789-hor-clsc_O-789166.jpg', 'Singapore', 'Southern Islands', 411, 5, 8.6, 'WIFI,POOL,SPA'),
(180, 'York Hotel (Sg Clean)', 'https://content.r9cdn.net/rimg/himg/37/3f/21/hotelsdotcom-115868-6a831a41_w-548031.jpg', 'Singapore', 'Central Area', 146, 4, 8.1, 'PARKING,WIFI,POOL'),
(181, 'Goodwood Park Hotel (Sg Clean)', '', 'Singapore', 'Central Area', 236, 5, 8.6, 'PARKING,WIFI,POOL,SPA'),
(182, 'Vivanta Goa, Panaji', 'https://content.r9cdn.net/rimg/himg/34/82/f4/revato-241384-12442330-788364.jpg', 'Panaji', '', 124, 5, 8.9, 'PARKING,WIFI,POOL,PETS,SPA'),
(183, 'The Crown Goa', 'https://content.r9cdn.net/rimg/himg/7d/af/77/hotelsdotcom-261007-ed5c7960_w-415161.jpg', 'Panaji', '', 90, 4, 8, 'PARKING,WIFI,POOL,SPA'),
(184, 'The Hawaii Comforts', 'https://content.r9cdn.net/rimg/himg/fd/93/8d/hotelsdotcom-76520580-ec61ef6b_w-173802.jpg', 'Panaji', '', 44, 3, 8.3, 'PARKING,WIFI'),
(185, 'Country Inn &amp; Suites by Radisson Goa Panjim', 'https://content.r9cdn.net/rimg/himg/41/d4/fc/ice-114462-63771764_3XL-178678.jpg', 'Panaji', '', 76, 4, 5.4, 'WIFI,POOL'),
(186, 'Fortune Miramar - Member Itc Hotel Group', 'https://content.r9cdn.net/rimg/himg/18/e4/22/hotelsdotcom-664851-w9983h6099x29y24-611114dd_w-744106.jpg', 'Panaji', '', 100, 5, 8.5, 'PARKING,WIFI,POOL'),
(187, 'Kenilworth Resort &amp; Spa', 'https://content.r9cdn.net/rimg/himg/e7/95/e3/hotelsdotcom-261849-033247ff_w-289882.jpg', 'Panaji', '', 159, 5, 8, 'PARKING,WIFI,POOL,SPA'),
(188, 'Varanda Do Mar', 'https://content.r9cdn.net/rimg/himg/6e/76/c1/hotelsdotcom-468934-48c7fa00_w-097376.jpg', 'Panaji', '', 70, 4, 8.5, 'PARKING,WIFI'),
(189, 'Campal Beach Resort', 'https://content.r9cdn.net/rimg/himg/ae/09/d6/ostrovok-6572997-a03b516d50e9acfd4cee54ef7c6e165436d508c1-446999.jpg', 'Panaji', '', 23, 3, 6.7, 'PARKING'),
(190, 'Aguada Anchorage - The Villa Resort', 'https://content.r9cdn.net/rimg/himg/c8/fb/06/hotelsdotcom-376570-28a9bf45_w-863866.jpg', 'Panaji', '', 211, 4, 8.4, 'PARKING,WIFI,POOL'),
(191, 'Lemon Tree Amarante Beach Resort, Goa', 'https://content.r9cdn.net/rimg/himg/fe/dd/5f/leonardo-2670918-2_Lobby_O-382597.jpg', 'Panaji', '', 158, 4, 7.9, 'WIFI,POOL,SPA'),
(192, 'Country Inn &amp; Suites By Radisson, Goa Candolim', 'https://content.r9cdn.net/rimg/himg/aa/12/63/hotelsdotcom-397389-14677aa5_w-571964.jpg', 'Panaji', '', 82, 4, 7.3, 'PARKING,WIFI,POOL,SPA'),
(193, 'Hotel Campal', 'https://content.r9cdn.net/rimg/himg/9f/87/2d/hotelsdotcom-444425-6f80b206_w-431813.jpg', 'Panaji', '', 36, 3, 6.6, 'PARKING,WIFI'),
(194, 'Welcomheritage Panjim Inn', 'https://content.r9cdn.net/rimg/himg/07/cf/fb/hotelsdotcom-307310-3710ed12_w-184248.jpg', 'Panaji', 'Altinho', 76, 3, 8.2, 'PARKING,WIFI,SPA'),
(195, 'The Baga Beach Resort', 'https://content.r9cdn.net/rimg/himg/64/38/69/hotelsdotcom-537163-1a82b2f7_w-313511.jpg', 'Panaji', '', 106, 3, 7.6, 'PARKING,WIFI,POOL'),
(196, 'Sandalwood Hotel &amp; Retreat', '', 'Panaji', '', 58, 3, 7, 'PARKING,WIFI,POOL'),
(197, 'Living Room by Seasons Hotels', '', 'Panaji', '', 48, 4, 6.8, 'PARKING,WIFI,POOL'),
(198, 'Tulips Elkhill Resorts', 'https://content.r9cdn.net/rimg/kimg/36/99/5f0596f1-58bd29d1.jpg', 'Ooty', '', 23, 3, 6, 'PARKING,WIFI,PETS'),
(199, 'Savoy - Ihcl Seleqtions', 'https://content.r9cdn.net/rimg/himg/28/d2/de/leonardo-1124395-201.3_room_O-697525.jpg', 'Ooty', '', 276, 4, 8.5, 'PARKING,WIFI,SPA'),
(200, 'Hotel Preethi Palace', 'https://content.r9cdn.net/rimg/himg/c2/6e/e3/hotelsdotcom-430662-98aecad0_w-195620.jpg', 'Ooty', '', 17, 1, 5.2, 'PARKING,WIFI'),
(201, 'Sterling Ooty Elk Hill', 'https://content.r9cdn.net/rimg/himg/05/5f/5b/hotelsdotcom-248904884-4426800c_w-867584.jpg', 'Ooty', '', 87, 4, 7.8, 'PARKING'),
(202, 'Sterling Ooty Fern Hill', 'https://content.r9cdn.net/rimg/himg/e6/4d/01/hotelsdotcom-359954-146f4c32_w-571350.jpg', 'Ooty', '', 99, 4, 6.4, 'PARKING,PETS,SPA'),
(203, 'Kstdc Hotel Mayura Sudarshan', '', 'Ooty', '', 44, 3, 0, 'POOL,SPA'),
(204, 'Hotel Lakeview', 'https://content.r9cdn.net/rimg/himg/dd/b1/f0/hotelsdotcom-248904530-da10f7f7_w-200271.jpg', 'Ooty', '', 45, 3, 6.8, ''),
(205, 'Highland Hotel Ooty', 'https://content.r9cdn.net/rimg/himg/4a/a8/5b/hotelsdotcom-418408-1801890a_w-099686.jpg', 'Ooty', '', 95, 3, 8.4, 'PARKING,WIFI'),
(206, 'Fortune Resort Sullivan Court-Member Itc Hotel Group', 'https://content.r9cdn.net/rimg/himg/6f/8d/4b/hotelsdotcom-425875-b24e8691_w-705145.jpg', 'Ooty', '', 98, 4, 8.3, 'PARKING,WIFI'),
(207, 'Gem Park Ooty', 'https://content.r9cdn.net/rimg/himg/86/eb/2a/hotelsdotcom-194710-b1170ee1_w-639343.jpg', 'Ooty', '', 70, 4, 7.6, 'WIFI,POOL,SPA'),
(208, 'Club Mahindra Derby Green, Ooty', 'https://content.r9cdn.net/rimg/himg/13/6c/ea/hotelsdotcom-372147-9984eeb4_w-225623.jpg', 'Ooty', '', 91, 4, 7.4, 'PARKING,SPA'),
(209, 'Fortune Retreats', 'https://content.r9cdn.net/rimg/himg/19/b3/a7/hotelsdotcom-422617-f1349e79_w-061270.jpg', 'Ooty', '', 33, 2, 7.6, 'PARKING,AIRPORT_SHUTTLE,WIFI'),
(210, 'Ponmari Residency', 'https://content.r9cdn.net/rimg/himg/15/10/ed/hotelsdotcom-354688-0ff3f1fa_w-107882.jpg', 'Ooty', '', 33, 2, 7.6, 'PARKING,WIFI'),
(211, 'Sinclairs Retreat Ooty', '', 'Ooty', '', 91, 3, 6.8, 'PARKING,WIFI,SPA'),
(212, 'Mount \'N\' Mist Hotel', 'https://content.r9cdn.net/rimg/himg/c5/7f/90/ostrovok-8569090-d8a1464e99c05d8f3fcfe554efe7fddfbbf427b7-533356.jpg', 'Ooty', '', 36, 2, 6.4, 'WIFI'),
(213, 'Fabhotel Khems Ooty', 'https://content.r9cdn.net/rimg/himg/93/16/4a/hotelsdotcom-627944-8929e70e_w-114846.jpg', 'Ooty', '', 35, 3, 2, 'WIFI'),
(214, 'Hotel Maneck', 'https://content.r9cdn.net/rimg/himg/15/d9/40/ostrovok-7747880-c04f2c3da67340711dbf173cae5c96330176921c-874511.jpg', 'Ooty', '', 19, 2, 6.5, 'WIFI'),
(215, 'Rainbow Cottages', 'https://content.r9cdn.net/rimg/himg/80/22/4d/hotelsdotcom-1345020064-e88d45d2_w-721787.jpg', 'Ooty', '', 10, 1, 5.8, 'PARKING,WIFI'),
(216, 'Sherlock Hotel', 'https://content.r9cdn.net/rimg/himg/e4/4c/72/hotelsdotcom-422722-55b8e4a1_w-685903.jpg', 'Ooty', '', 71, 3, 7.8, 'PARKING,WIFI,PETS'),
(217, 'Destiny The Farmstay', 'https://content.r9cdn.net/rimg/himg/99/e7/4b/hotelsdotcom-422724-94356f17_w-395242.jpg', 'Ooty', '', 173, 0, 7.5, 'WIFI,PETS,SPA'),
(218, 'Fairmont Jaipur', 'https://content.r9cdn.net/rimg/himg/f4/44/d7/leonardo-177363706-a5g0_ba_01_p_3000x2250_O-346149.jpg', 'Jaipur', '', 318, 5, 8.4, 'PARKING,WIFI,POOL,SPA'),
(219, 'ITC Rajputana, a Luxury Collection Hotel, Jaipur', 'https://content.r9cdn.net/rimg/himg/5d/f1/cd/leonardo-1124323-jailc-sheesh-mahal-6612-hor-clsc_O-335942.jpg', 'Jaipur', '', 126, 5, 8.3, 'PARKING,WIFI,POOL,PETS,SPA'),
(220, 'Hilton Jaipur', 'https://content.r9cdn.net/rimg/himg/1b/bf/62/ice-59791-72359867_3XL-310609.jpg', 'Jaipur', '', 141, 5, 8.1, 'PARKING,WIFI,POOL,SPA'),
(221, 'Holiday Inn Jaipur City Centre', 'https://content.r9cdn.net/rimg/himg/04/c3/78/leonardo-1315893-JAICC_3551794154_O-366681.jpg', 'Jaipur', '', 140, 5, 8.3, 'PARKING,WIFI,POOL,SPA'),
(222, 'Hotel Kalyan', '', 'Jaipur', '', 17, 3, 8, 'PARKING,WIFI'),
(223, 'Rambagh Palace', 'https://content.r9cdn.net/rimg/himg/aa/5f/e9/leonardo-2671057-005_The_Palace_Courtyard_(Chandani_Chowk)_O-239270.jpg', 'Jaipur', '', 681, 5, 9.5, 'PARKING,WIFI,POOL,SPA'),
(224, 'Crowne Plaza Jaipur Tonk Road', 'https://content.r9cdn.net/rimg/himg/cf/31/73/leonardo-1299389-JAITR_4737249208_O-064267.jpg', 'Jaipur', '', 197, 5, 8.3, 'PARKING,WIFI,POOL,SPA'),
(225, 'Jaipur Marriott Hotel', 'https://content.r9cdn.net/rimg/himg/c6/b3/8b/leonardo-4999819-jaimc-pool-5326-hor-clsc_O-940046.jpg', 'Jaipur', '', 128, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(226, 'Trident, Jaipur', 'https://content.r9cdn.net/rimg/himg/be/8f/47/leonardo-1071103-Trident_Jaipur_-_Lobby_O-308987.jpg', 'Jaipur', '', 100, 5, 8.7, 'PARKING,WIFI,POOL,SPA'),
(227, 'Umaid Bhawan - A Heritage Style Boutique Hotel', 'https://content.r9cdn.net/rimg/himg/a8/c5/fe/revato-2369-48986-739255.jpg', 'Jaipur', '', 64, 4, 8.5, 'PARKING,WIFI,POOL,PETS'),
(228, 'Radisson Blu Jaipur', 'https://content.r9cdn.net/rimg/himg/ce/7c/4e/ice-116522-64874267_3XL-214921.jpg', 'Jaipur', '', 113, 4, 5.9, 'WIFI,POOL,SPA'),
(229, 'Le M&eacute;ridien Jaipur Resort &amp; Spa', 'https://content.r9cdn.net/rimg/himg/98/b6/b8/leonardo-125229292-jaimd-lobby-5665-hor-clsc_O-634941.jpg', 'Jaipur', '', 208, 5, 8.1, 'PARKING,WIFI,POOL,SPA'),
(230, 'The Oberoi Rajvilas', 'https://content.r9cdn.net/rimg/himg/00/8e/ee/leonardo-2671055-Kohinoor_Villa_pool_O-297474.jpg', 'Jaipur', '', 451, 5, 9.4, 'PARKING,POOL,SPA'),
(231, 'Jai Mahal Palace', 'https://content.r9cdn.net/rimg/himg/33/74/4a/revato-19246-12447679-501883.jpg', 'Jaipur', '', 287, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(232, 'Radisson Jaipur City Center', 'https://content.r9cdn.net/rimg/himg/95/a2/83/ice-114088-63763795_3XL-370631.jpg', 'Jaipur', '', 68, 4, 8.1, 'PARKING,WIFI,POOL,SPA'),
(233, 'Four Points by Sheraton Jaipur City Square', 'https://content.r9cdn.net/rimg/himg/34/2e/07/leonardo-1213745-jaifp-king-cityview-guestroom-4245-hor-clsc_O-622044.jpg', 'Jaipur', '', 103, 5, 7.1, 'PARKING,WIFI,POOL,SPA'),
(234, 'The Lalit Jaipur', 'https://content.r9cdn.net/rimg/himg/97/1c/60/leonardo-1268976-THE_LALIT_JAIPUR_O-755201.jpg', 'Jaipur', '', 90, 5, 6.8, 'WIFI,POOL,SPA'),
(235, 'Atithi Guest House', 'https://content.r9cdn.net/rimg/himg/31/6e/07/hotelsdotcom-961413440-9b8a4591_w-277817.jpg', 'Jaipur', '', 13, 3, 8.7, 'PARKING,WIFI'),
(236, 'Umaid Mahal - A Heritage Style Boutique Hotel', 'https://content.r9cdn.net/rimg/himg/08/2d/c7/revato-2370-12383290-727748.jpg', 'Jaipur', '', 51, 3, 8.4, 'PARKING,WIFI,POOL,PETS'),
(237, 'Samode Haveli', 'https://content.r9cdn.net/rimg/himg/91/cf/50/hotelsdotcom-449893-0cd5e917_w-585220.jpg', 'Jaipur', '', 274, 4, 8.9, 'PARKING,WIFI,POOL,SPA'),
(238, 'Taj Club House', 'https://content.r9cdn.net/rimg/himg/34/74/79/leonardo-1138923-Kefi_Restaurant_O-521350.jpg', 'Chennai', '', 77, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(239, 'The Raintree, Anna Salai', 'https://content.r9cdn.net/rimg/himg/5e/82/8d/ice-123486-65013723_3XL-808729.jpg', 'Chennai', '', 77, 5, 8.5, 'PARKING,WIFI,POOL'),
(240, 'Citadines Omr Chennai', 'https://content.r9cdn.net/rimg/himg/20/00/78/leonardo-2013364-Roof_top_Swimming_Pool_S-496920.jpg', 'Chennai', '', 48, 4, 8.5, 'PARKING,WIFI,POOL,SPA'),
(241, 'Novotel Chennai Chamiers Road', 'https://content.r9cdn.net/rimg/himg/6a/2d/2b/ice-103439-62527681_3XL-342314.jpg', 'Chennai', '', 68, 4, 8.1, 'PARKING,WIFI,POOL,PETS'),
(242, 'Hilton Chennai', 'https://content.r9cdn.net/rimg/himg/57/06/66/ice-59976-66031021_3XL-818193.jpg', 'Chennai', '', 71, 5, 8.4, 'PARKING,POOL'),
(243, 'Somerset Greenways Chennai', 'https://content.r9cdn.net/rimg/himg/ec/19/bb/leonardo-1256348-SGC_Facade_O-551023.jpg', 'Chennai', '', 64, 4, 8.1, 'PARKING,WIFI,POOL,PETS'),
(244, 'The Accord Metropolitan', 'https://content.r9cdn.net/rimg/himg/4d/5d/c0/leonardo-1124468-Room-presidential-1_O-228256.jpg', 'Chennai', '', 87, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(245, 'Vivanta Chennai It Expressway', 'https://content.r9cdn.net/rimg/himg/b3/9b/8f/revato-550852-12386707-632586.jpg', 'Chennai', '', 57, 4, 8.1, 'PARKING,WIFI,POOL,PETS,SPA'),
(246, 'Vijaya Residency - Porur', '', 'Chennai', '', 29, 0, 7, 'PARKING'),
(247, 'Aloft Chennai OMR - IT Expressway', 'https://content.r9cdn.net/rimg/himg/fd/9c/ae/leonardo-1228265-maaal-aloha-desk-1984-hor-clsc_O-217000.jpg', 'Chennai', '', 44, 4, 8.1, 'PARKING,WIFI,POOL,SPA'),
(248, 'Courtyard by Marriott Chennai', 'https://content.r9cdn.net/rimg/himg/15/e1/98/leonardo-1067678-maacy-executive-0034-hor-clsc_O-667109.jpg', 'Chennai', '', 72, 4, 8.4, 'PARKING,WIFI,SPA'),
(249, 'Ibis Chennai OMR', 'https://content.r9cdn.net/rimg/himg/66/0e/ed/ice-81663-70361924_3XL-080411.jpg', 'Chennai', '', 35, 3, 8.6, 'PARKING,WIFI,POOL,PETS'),
(250, 'Le Royal Meridien Chennai', 'https://content.r9cdn.net/rimg/himg/b5/ea/08/leonardo-125230480-maamd-lounge-7106-hor-clsc_O-903322.jpg', 'Chennai', '', 68, 5, 7.2, 'PARKING,WIFI,POOL,SPA'),
(251, 'Novotel Chennai Omr', 'https://content.r9cdn.net/rimg/himg/89/0e/45/ice-81664-68890790_3XL-348954.jpg', 'Chennai', '', 61, 4, 8.7, 'PARKING,WIFI,POOL,PETS,SPA'),
(252, 'Park Hyatt Chennai', 'https://content.r9cdn.net/rimg/himg/0d/7e/cd/ice-49807-62096420_3XL-595981.jpg', 'Chennai', '', 93, 5, 8.7, 'PARKING,WIFI,POOL,PETS,SPA'),
(253, 'Samudra Residency', '', 'Chennai', '', 9, 0, 6.4, 'PARKING,WIFI'),
(254, 'Ramada by Wyndham Alleppey', 'https://content.r9cdn.net/rimg/himg/e7/6b/36/ice-34667-60152278_3XL-114644.jpg', 'Alappuzha', '', 58, 4, 7.3, 'PARKING,WIFI,POOL,SPA'),
(255, 'Sterling Lake Palace Alleppey', '', 'Alappuzha', '', 103, 5, 8.5, 'PARKING,WIFI,POOL,PETS,SPA'),
(256, 'Baywatch Beach Resort', '', 'Alappuzha', '', 13, 2, 7.7, 'PARKING,WIFI,PETS'),
(257, 'Deshadan Backwater Resort', 'https://content.r9cdn.net/rimg/himg/9f/31/99/hotelsdotcom-428293-ce9add16_w-149480.jpg', 'Alappuzha', '', 64, 4, 8.5, 'WIFI,SPA'),
(258, 'Kondai Lip Backwater Heritage Resort', 'https://content.r9cdn.net/rimg/himg/ad/59/24/ostrovok-6490560-4c68b9ae8c563d782a42fb3073bdc7e5b166b7f6-414528.jpg', 'Alappuzha', '', 68, 3, 8.8, 'PARKING,WIFI,POOL,SPA'),
(259, 'Kayaloram Heritage Lake Resort', 'https://content.r9cdn.net/rimg/himg/6b/48/b8/hotelsdotcom-327466-2b931936_w-502519.jpg', 'Alappuzha', '', 174.03, 3, 0, 'WIFI,POOL'),
(260, 'Raheem Residency', 'https://content.r9cdn.net/rimg/himg/e8/00/66/hotelsdotcom-395108-c87e0613_w-804368.jpg', 'Alappuzha', '', 60, 3, 8.1, 'PARKING,WIFI,POOL,SPA'),
(261, 'Pagoda Resorts', 'https://content.r9cdn.net/rimg/himg/4a/1c/88/hotelsdotcom-76478592-6f5c2204_w-294252.jpg', 'Alappuzha', '', 39, 3, 4.8, 'POOL'),
(262, 'Punnamada Resort', 'https://content.r9cdn.net/rimg/himg/f7/e4/cf/hotelsdotcom-351465-9033898f_w-995411.jpg', 'Alappuzha', '', 155, 4, 8.6, 'PARKING,WIFI,POOL,SPA'),
(263, 'Alleppey Prince Hotel', 'https://content.r9cdn.net/rimg/himg/c7/22/7c/agoda-109966-109966_130604145307797-255824.jpg', 'Alappuzha', '', 24, 3, 5.4, 'WIFI,POOL'),
(264, 'Pine Beach Residency', 'https://content.r9cdn.net/rimg/kimg/30/12/ab8c62cc-59ec573d.jpg', 'Alappuzha', '', 15, 1, 8.6, 'WIFI,PETS'),
(265, 'Cosy Houseboats', 'https://content.r9cdn.net/rimg/kimg/96/27/f89d1218-5a994722-5.jpg', 'Alappuzha', '', 78, 2, 10, 'WIFI'),
(266, 'Springs Inn', '', 'Alappuzha', '', 12.09, 2, 0, 'WIFI'),
(267, 'Xandari Riverscapes', '', 'Alappuzha', '', 282, 0, 0, ''),
(268, 'The Wind n Waves', 'https://content.r9cdn.net/rimg/himg/32/e8/a1/hotelsdotcom-554612-7be145fc_w-453340.jpg', 'Alappuzha', '', 10, 2, 4.8, 'WIFI'),
(269, 'Atlantis, The Palm', 'https://content.r9cdn.net/rimg/himg/20/74/aa/revato-10251-12063420-871082.jpg', 'Dubai', '', 587, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(270, 'Five Palm Jumeirah Dubai', 'https://content.r9cdn.net/rimg/himg/67/c1/ec/ice-142152580-69922313_3XL-482635.jpg', 'Dubai', '', 592, 5, 8.9, 'PARKING,WIFI,POOL,SPA'),
(271, 'Atana Hotel', 'https://content.r9cdn.net/rimg/himg/84/a9/4d/revato-1042915-6948709-802926.jpg', 'Dubai', 'Barsha Heights', 102, 4, 8.2, 'PARKING,WIFI,POOL'),
(272, 'Burj Al Arab Jumeirah', 'https://content.r9cdn.net/rimg/himg/3f/d9/1d/leonardo-1125824-Burj_Al_Arab_-_Sky_One_Bedroom_Suite_-_Living_Room_O-673683.jpg', 'Dubai', '', 1618, 5, 9, 'PARKING,WIFI,POOL,SPA'),
(273, 'Sofitel Dubai Jumeirah Beach', 'https://content.r9cdn.net/rimg/himg/6c/09/87/ice-37787-65381522_3XL-654875.jpg', 'Dubai', 'Dubai Marina', 343, 5, 8.7, 'PARKING,WIFI,POOL'),
(274, 'Swiss&ocirc;tel Al Murooj Dubai', 'https://content.r9cdn.net/rimg/himg/3e/75/53/ice-194118074-66839183_3XL-067475.jpg', 'Dubai', 'Bur Dubai', 185, 5, 8, 'PARKING,WIFI,POOL'),
(275, 'Gevora Hotel', 'https://content.r9cdn.net/rimg/himg/6d/65/26/revato-2064383-13251780-037419.jpg', 'Dubai', '', 150, 4, 8, 'PARKING,WIFI,POOL,SPA'),
(276, 'Dubai International Hotel', 'https://content.r9cdn.net/rimg/himg/bb/bc/d1/ice-52418-3991571_3XL-674807.jpg', 'Dubai', '', 237, 5, 8.8, 'WIFI,POOL,SPA'),
(277, 'Anantara The Palm Dubai Resort', 'https://content.r9cdn.net/rimg/himg/a3/fb/20/ice-140656-71187444_3XL-664940.jpg', 'Dubai', '', 513, 5, 8.6, 'PARKING,WIFI,POOL,SPA'),
(278, 'Hyatt Regency Dubai Creek Heights', 'https://content.r9cdn.net/rimg/himg/78/13/09/ice-100205434-63003489_3XL-863362.jpg', 'Dubai', 'Bur Dubai', 163, 5, 8, 'PARKING,WIFI,POOL,SPA'),
(279, 'Fairmont The Palm', 'https://content.r9cdn.net/rimg/himg/70/88/fa/ice-73711-71718621_3XL-344307.jpg', 'Dubai', '', 401, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(280, 'Rixos Premium Dubai Jbr', 'https://content.r9cdn.net/rimg/himg/d7/eb/0e/ice-132447516-79316389_3XL-813729.jpg', 'Dubai', 'Dubai Marina', 437, 5, 9.1, 'PARKING,WIFI,POOL,SPA'),
(281, 'Jumeirah Beach Hotel', 'https://content.r9cdn.net/rimg/himg/6a/5e/b7/leonardo-1125825-Jumeirah_Beach_Hotel__Pearl_Lounge_O-919309.jpg', 'Dubai', '', 658, 5, 8.5, 'PARKING,WIFI,POOL,SPA'),
(282, 'JW Marriott Marquis Hotel Dubai', 'https://content.r9cdn.net/rimg/himg/cc/07/d0/leonardo-67279111-dxbjw-dubai-9676-hor-clsc_O-260179.jpg', 'Dubai', 'Business Bay', 248, 5, 8.7, 'WIFI,POOL,SPA'),
(283, 'Dukes The Palm, a Royal Hideaway Hotel', 'https://content.r9cdn.net/rimg/himg/92/57/dc/ice-206164074-65956866_3XL-049879.jpg', 'Dubai', '', 283, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(284, 'Hyatt Regency Dubai', 'https://content.r9cdn.net/rimg/himg/c3/a7/23/ice-49823-62410044_3XL-342957.jpg', 'Dubai', 'Deira', 158, 5, 8.1, 'PARKING,WIFI,POOL,SPA'),
(285, 'Taj Dubai', 'https://content.r9cdn.net/rimg/himg/63/57/9d/revato-875940-12291951-253506.jpg', 'Dubai', 'Business Bay', 276, 5, 9, 'PARKING,WIFI,POOL,SPA'),
(286, 'Britannia The International Hotel London, Canary Wharf', 'https://content.r9cdn.net/rimg/kimg/8b/1d/23c8e99a8ce80328.jpg', 'London', 'Tower Hamlets', 94, 4, 6.6, 'WIFI,PETS'),
(287, 'The Tower Hotel', 'https://content.r9cdn.net/rimg/himg/95/e3/fd/leonardo-1113067-VICINITY_0048_1__O-779880.jpg', 'London', 'Tower Hamlets', 190, 4, 8.3, 'WIFI'),
(288, 'DoubleTree by Hilton Hotel London -Tower of London', 'https://content.r9cdn.net/rimg/himg/fc/ee/a4/ice-122328974-67296709_3XL-255998.jpg', 'London', 'City of London', 146, 4, 8.1, 'WIFI,PETS,SPA'),
(289, 'Copthorne Tara Hotel London Kensington', 'https://content.r9cdn.net/rimg/himg/4a/43/cb/revato-7074-12295047-786558.jpg', 'London', 'Kensington and Chelsea', 103, 4, 7.2, 'WIFI'),
(290, 'The Strand Palace Hotel', 'https://content.r9cdn.net/rimg/kimg/ab/ca/c735ba33-5ad0c718-33.jpg', 'London', 'City of Westminster', 224, 4, 8.2, 'WIFI'),
(291, 'Sunborn London', 'https://content.r9cdn.net/rimg/himg/a8/d7/ab/arbisoftimages-37083-Sky-Lounge-Lunch-Event-image.jpg', 'London', 'Newham', 258, 4, 8.3, 'WIFI,SPA'),
(292, 'Generator London', 'https://content.r9cdn.net/rimg/kimg/3f/6b/643a1337aa8f4837.jpg', 'London', 'Camden', 100, 3, 7.4, 'WIFI,PETS'),
(293, 'Shangri-La The Shard, London', 'https://content.r9cdn.net/rimg/himg/ae/b8/4e/ice-100053250-68528282_3XL-298102.jpg', 'London', 'Southwark', 768, 5, 9.1, 'WIFI,POOL,SPA'),
(294, 'Ramada London North M1', 'https://content.r9cdn.net/rimg/himg/73/c9/b2/ice-32163-64399425_3XL-263111.jpg', 'London', '', 56, 4, 7.2, 'PARKING,WIFI,PETS'),
(295, 'Smart Hyde Park View - Hostel', 'https://content.r9cdn.net/rimg/himg/b1/52/db/revato-15200-13258275-863676.jpg', 'London', 'City of Westminster', 69, 1, 7.3, 'WIFI'),
(296, 'Safestay London Kensington Holland Park', 'https://content.r9cdn.net/rimg/himg/55/5e/e6/hotelsdotcom-557618-86253f02_w-117056.jpg', 'London', 'Kensington and Chelsea', 57, 4, 7.7, 'WIFI'),
(297, 'Montcalm Royal London House - City Of London', 'https://content.r9cdn.net/rimg/himg/4a/ab/42/arbisoftimages-2662298-CD1_6310-HDR-image.jpg', 'London', 'Islington', 229, 5, 8.6, 'WIFI,POOL,SPA'),
(298, 'Smart Hyde Park Inn', 'https://content.r9cdn.net/rimg/himg/10/42/1e/arbisoftimages-390923-98662f_949e7e0d62a64c6192079f3ae970a9cf_mv2__1_-image.jpg', 'London', 'City of Westminster', 65, 1, 6.9, 'WIFI'),
(299, 'The Chilworth London Paddington', 'https://content.r9cdn.net/rimg/himg/cf/3e/b7/revato-13238-13080678-485188.jpg', 'London', 'City of Westminster', 143, 5, 8, 'WIFI'),
(300, 'Intercontinental London - The O2', 'https://content.r9cdn.net/rimg/himg/a3/df/69/leonardo-95245104-LONIC_5468941293_O-173985.jpg', 'London', 'Greenwich', 270, 5, 9.2, 'WIFI,POOL,SPA'),
(301, 'St. James\' Court, A Taj Hotel, London', 'https://content.r9cdn.net/rimg/himg/29/3e/06/leonardo-1297763-St._James__Court_A_Taj_Hotel_-_Lobby_O-464992.jpg', 'London', 'City of Westminster', 277, 4, 8.9, 'WIFI,SPA'),
(302, 'Grange St Pauls', 'https://content.r9cdn.net/rimg/himg/fa/63/df/leonardo-2100238-Terrace_evening_2_O-455994.jpg', 'London', 'City of London', 260, 5, 7.8, 'WIFI,POOL,SPA'),
(303, 'Itc Windsor, A Luxury Collection Hotel, Bengaluru', 'https://content.r9cdn.net/rimg/himg/8a/8a/c4/leonardo-1124230-blrlc-atrium-0347-ver-clsc_O-608608.jpg', 'Bengaluru', '', 143, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(304, 'Radisson Blu Atria Bengaluru', 'https://content.r9cdn.net/rimg/himg/e8/41/61/ice-116518-64878095_3XL-882177.jpg', 'Bengaluru', '', 78, 5, 8.2, 'PARKING,WIFI,POOL,SPA');
INSERT INTO `best_hotels` (`id`, `name`, `image`, `location`, `neighborhoodName`, `price`, `stars`, `score`, `amenities`) VALUES
(305, 'Welcomhotel By Itc Hotels, Richmond Road, Bengaluru', 'https://content.r9cdn.net/rimg/himg/dc/97/55/hotelsdotcom-460981-7b18cbb5_w-116147.jpg', 'Bengaluru', '', 86, 5, 8.4, 'PARKING,WIFI,POOL,SPA'),
(306, 'The Park, Bangalore', 'https://content.r9cdn.net/rimg/himg/a4/3a/1a/ice-233787596-70649124_3XL-313353.jpg', 'Bengaluru', '', 85, 5, 7.9, 'PARKING,WIFI,POOL,SPA'),
(307, 'The Oberoi, Bengaluru', 'https://content.r9cdn.net/rimg/himg/24/aa/71/leonardo-1124247-TOBL_The_Lobby_new_big_O-266132.jpg', 'Bengaluru', '', 151, 5, 9.4, 'PARKING,POOL,SPA'),
(308, 'ITC Gardenia, a Luxury Collection Hotel, Bengaluru', 'https://content.r9cdn.net/rimg/himg/1f/55/00/leonardo-125230690-blrgl-bathroom-9923-hor-clsc_O-677574.jpg', 'Bengaluru', '', 128, 5, 8.6, 'PARKING,WIFI,POOL,SPA'),
(309, 'Gokulam Grand Hotel &amp; Spa Bangalore', 'https://content.r9cdn.net/rimg/himg/e0/c9/8a/ice-123003-65960146_3XL-749103.jpg', 'Bengaluru', '', 84, 5, 8, 'PARKING,WIFI,POOL,SPA'),
(310, 'Conrad Bengaluru', 'https://content.r9cdn.net/rimg/himg/25/ed/8d/ice-122324430-67648497_3XL-518173.jpg', 'Bengaluru', 'Ulsoor', 131, 5, 8.6, 'POOL,SPA'),
(311, 'DoubleTree Suites by Hilton Bangalore', 'https://content.r9cdn.net/rimg/himg/29/3e/ba/ice-122332046-68031530_3XL-792467.jpg', 'Bengaluru', '', 83, 5, 8.2, 'PARKING,POOL,SPA'),
(312, 'Vivanta by Taj - MG Road', 'https://content.r9cdn.net/rimg/himg/74/78/b8/leonardo-1124401-Deluxe_Room_King_Size_Bed_O-698642.jpg', 'Bengaluru', '', 128, 5, 8.8, 'PARKING,WIFI,POOL,SPA'),
(313, 'Golden Palms Hotel And Spa', 'https://content.r9cdn.net/rimg/himg/60/db/59/hotelsdotcom-217736-c8fafcd0_w-823650.jpg', 'Bengaluru', '', 156, 4, 6.5, 'WIFI,POOL,SPA'),
(314, 'The Chancery Pavilion', 'https://content.r9cdn.net/rimg/himg/30/54/54/hotelsdotcom-250700-ee3ff194_w-926030.jpg', 'Bengaluru', '', 45, 4, 6.8, 'PARKING,WIFI,POOL,SPA'),
(315, 'Taj West End', 'https://content.r9cdn.net/rimg/himg/39/68/0c/revato-161963-12390305-672974.jpg', 'Bengaluru', '', 169, 5, 8.4, 'PARKING,WIFI,POOL,SPA'),
(316, 'Vivanta Bengaluru, Whitefield', 'https://content.r9cdn.net/rimg/himg/76/49/45/leonardo-2670743-Room_331_-_06_O-343279.jpg', 'Bengaluru', 'Whitefield', 55, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(317, 'Taj Yeshwantpur, Bengaluru', 'https://content.r9cdn.net/rimg/himg/fc/26/85/leonardo-5016490-POOL_43_O-540058.jpg', 'Bengaluru', '', 135, 5, 8.7, 'PARKING,POOL,PETS,SPA'),
(318, 'Hotel Royal Orchid Bangalore', 'https://content.r9cdn.net/rimg/himg/66/14/c6/leonardo-205824900-Pool_Side_O-447854.jpg', 'Bengaluru', '', 90, 5, 7.3, 'PARKING,WIFI,POOL,SPA'),
(319, 'Holiday Inn New Delhi International Airport, An IHG Hotel', 'https://content.r9cdn.net/rimg/himg/dd/cd/82/leonardo-1252636-DELAP_3215939325_O-029319.jpg', 'New-Delhi', '', 91, 5, 8.2, 'PARKING,WIFI,POOL,SPA'),
(320, 'Radisson Blu Plaza Delhi', 'https://content.r9cdn.net/rimg/himg/7a/70/62/ice-114048-72183831_3XL-105259.jpg', 'New-Delhi', 'Mahipalpur Village', 107, 5, 8.3, 'PARKING,WIFI,POOL,SPA'),
(321, 'Taj Palace, New Delhi', 'https://content.r9cdn.net/rimg/himg/60/73/81/leonardo-5013121-IMG_1043_O-534157.jpg', 'New-Delhi', '', 159, 5, 8.8, 'PARKING,WIFI,POOL,PETS,SPA'),
(322, 'Novotel New Delhi Aerocity', 'https://content.r9cdn.net/rimg/himg/6d/c6/6d/ice-49389-68655821_3XL-443623.jpg', 'New-Delhi', '', 96, 5, 7.8, 'PARKING,WIFI,POOL,PETS,SPA'),
(323, 'The Lalit New Delhi', 'https://content.r9cdn.net/rimg/himg/42/32/b5/agoda-43775-43775_15082616120035116082-448025.jpg', 'New-Delhi', '', 105, 5, 8.1, 'WIFI,POOL,SPA'),
(324, 'Shangri-La Eros, New Delhi', 'https://content.r9cdn.net/rimg/himg/1a/9e/e3/ice-73944-63297923_3XL-679134.jpg', 'New-Delhi', '', 141, 5, 8.6, 'PARKING,WIFI,POOL,SPA'),
(325, 'The Leela Ambience Convention Hotel Delhi', 'https://content.r9cdn.net/rimg/himg/cb/64/dd/ice-78843-1583269_3XL-947418.jpg', 'New-Delhi', 'Shahdara', 107, 5, 8.4, 'PARKING,WIFI,POOL,SPA'),
(326, 'The Metropolitan Hotel and Spa New Delhi', 'https://content.r9cdn.net/rimg/himg/44/65/84/arbisoftimages-99124-20180424112144_craft_house1-image.jpg', 'New-Delhi', '', 88, 5, 7.8, 'PARKING,WIFI,POOL,SPA'),
(327, 'Roseate House', 'https://content.r9cdn.net/rimg/himg/85/fa/d9/leonardo-2021258-01.pres.suite_bathroom_opt2_O-064683.jpg', 'New-Delhi', '', 165, 5, 8.6, 'PARKING,WIFI,POOL,SPA'),
(328, 'JW Marriott Hotel New Delhi Aerocity', 'https://content.r9cdn.net/rimg/himg/09/37/67/leonardo-1306287-delap-guestroom-0036-hor-clsc_O-719644.jpg', 'New-Delhi', '', 209, 5, 8.7, 'PARKING,WIFI,POOL,PETS,SPA'),
(329, 'The Park New Delhi', 'https://content.r9cdn.net/rimg/himg/f7/97/d7/ice-140106-70631222_3XL-467176.jpg', 'New-Delhi', '', 86, 5, 6.1, 'PARKING,WIFI,POOL,SPA'),
(330, 'Andaz Delhi Aerocity- Concept by Hyatt', 'https://content.r9cdn.net/rimg/himg/b1/87/1d/hotelsdotcom-424539360-91d05645_w-311648.jpg', 'New-Delhi', '', 140, 5, 8.2, 'PARKING,WIFI,POOL,PETS,SPA'),
(331, 'Vivanta New Delhi, Dwarka', 'https://content.r9cdn.net/rimg/himg/2b/ae/6c/leonardo-94034066-TIPPLE_1_O-344066.jpg', 'New-Delhi', 'Dwarka', 124, 5, 8.4, 'PARKING,WIFI,POOL,PETS,SPA'),
(332, 'Le M&eacute;ridien New Delhi', 'https://content.r9cdn.net/rimg/himg/24/a2/0e/leonardo-125229294-delmd-suite-2197-hor-clsc_O-108902.jpg', 'New-Delhi', '', 135, 5, 7.9, 'PARKING,WIFI,POOL,SPA'),
(333, 'The Leela Palace New Delhi', 'https://content.r9cdn.net/rimg/himg/e7/37/01/ice-157685056-0754606_3XL-338167.jpg', 'New-Delhi', '', 243, 5, 9.2, 'PARKING,WIFI,POOL,SPA'),
(334, 'Airport Hotel Mayank Residency', 'https://content.r9cdn.net/rimg/himg/6a/4b/96/revato-1405-13254413-684628.jpg', 'New-Delhi', '', 12, 3, 7.4, 'PARKING,WIFI');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Saklain', 'tonmoysaklain@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-01-15', '2022-01-15'),
(11, 'tonmoy', 'saklain@w3engineers.com', 'pbkdf2:sha256:260000$FNa0vug5vV7MvvNB$de57f16c85a240ad3d9702548ee9850a961c7455f4feae862c6c7e2fa801e4ff', '2022-01-16', '2022-01-16'),
(12, 'usernamex', 'tonmoy@w3engineers.com', 'pbkdf2:sha256:260000$1SDw5eIgzqeBdWQN$5c336e586b4a9dd0620f7c2a1febf05cec838e6fed0d6a1452ef6037f25630c8', '2022-01-16', '2022-01-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `best_hotels`
--
ALTER TABLE `best_hotels`
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
-- AUTO_INCREMENT for table `best_hotels`
--
ALTER TABLE `best_hotels`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
