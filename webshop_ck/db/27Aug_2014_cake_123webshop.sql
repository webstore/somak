-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2014 at 06:19 PM
-- Server version: 5.5.38
-- PHP Version: 5.3.10-1ubuntu3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cake_123webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `email`) VALUES
(1, 'vharbers', '9a36aab7fa1e9e097d435ced49fad9d5848483ea', 'info@webshopdiscounter.nl'),
(8, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@admin.com'),
(6, 'info@jevy.nl', '67097d891fcee031e6ad572d896cc409', 'info@jevy.nl');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `banner_id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `language` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `name`, `content`, `language`) VALUES
(11, 'banner_B1.php', '<p><img class=\\"ls-bg\\" style=\\"width: 1706px; height: 494px; padding: 0px; border-width: 0px; margin-left: -853px; margin-top: -247px;\\" src=\\"/templates/design-13/images/slider1.jpg\\" alt=\\"\\" /></p>\r\n<div class=\\"ls-s2 l1-s1 ls-s\\" style=\\"padding: 19.751098096632504px; background-color: rgba(0, 0, 0, 0.498039); position: absolute; left: 185.5px; top: 79.00439238653001px; width: auto; height: auto; font-size: 12.838213762811128px; border-width: 0px; margin-left: 0px; margin-top: 444.6px; display: block; visibility: visible; background-position: initial initial; background-repeat: initial initial;\\">\r\n<h1 style=\\"margin: 0px 0px 13px 0px; font-size: 29px; color: #fff; text-transform: uppercase; font-weight: 900; letter-spacing: -1.2px;\\">Lorem ipsum dolor sit amet</h1>\r\n<div style=\\"color: #d2d2d2; font-size: 13px; font-style: italic;\\">Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet</div>\r\n</div>', 'NL'),
(12, 'banner_B2.php', '<p><img class=\\"ls-bg\\" style=\\"width: 1710px; height: 494px; padding: 0px; border-width: 0px; margin-left: -855px; margin-top: -247px;\\" src=\\"/templates/design-13/images/slider3.jpg\\" alt=\\"\\" /></p>\r\n<div class=\\"ls-s2 l2-s1 ls-s\\" style=\\"padding: 19.751098096632504px; background-color: rgba(0, 0, 0, 0.498039); position: absolute; left: 185.5px; top: 79.00439238653001px; width: auto; height: auto; font-size: 12.838213762811128px; border-width: 0px; margin-left: 0px; margin-top: 0px; display: block; visibility: visible; background-position: initial initial; background-repeat: initial initial;\\">\r\n<h1 style=\\"margin: 0px 0px 13px 0px; font-size: 29px; color: #fff; text-transform: uppercase; font-weight: 900; letter-spacing: -1.2px;\\">Lorem ipsum dolor sit amet</h1>\r\n<div style=\\"color: #d2d2d2; font-size: 13px; font-style: italic;\\">Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet</div>\r\n</div>', 'NL'),
(14, 'banner_B3.php', '<p><img class=\\"ls-bg\\" style=\\"width: 1710px; height: 494px; padding: 0px; border-width: 0px; margin-left: -855px; margin-top: -247px; visibility: visible;\\" src=\\"/templates/design-13/images/slider2.jpg\\" alt=\\"\\" /></p>\r\n<div class=\\"ls-s2 l3-s1 ls-s\\" style=\\"padding: 19.751098096632504px; background-color: rgba(0, 0, 0, 0.498039); position: absolute; left: 185.5px; top: 79.00439238653001px; width: auto; height: auto; font-size: 12.838213762811128px; border-width: 0px; margin-left: 0px; margin-top: 444.6px; display: block; visibility: visible; background-position: initial initial; background-repeat: initial initial;\\">\r\n<h1 style=\\"margin: 0px 0px 13px 0px; font-size: 29px; color: #fff; text-transform: uppercase; font-weight: 900; letter-spacing: -1.2px;\\">Lorem ipsum dolor sit amet</h1>\r\n<div style=\\"color: #d2d2d2; font-size: 13px; font-style: italic;\\">Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet</div>\r\n</div>', 'NL'),
(15, 'banner_english1.php', '<p><img class=\\"ls-bg\\" style=\\"width: 1710px; height: 494px; padding: 0px; border-width: 0px; margin-left: -855px; margin-top: -247px; visibility: visible;\\" src=\\"/templates/design-13/images/slider2.jpg\\" alt=\\"\\" /></p>\r\n<div class=\\"ls-s2 l3-s1 ls-s\\" style=\\"padding: 19.751098096632504px; background-color: rgba(0, 0, 0, 0.498039); position: absolute; left: 185.5px; top: 79.00439238653001px; width: auto; height: auto; font-size: 12.838213762811128px; border-width: 0px; margin-left: 0px; margin-top: 444.6px; display: block; visibility: visible; background-position: initial initial; background-repeat: initial initial;\\">\r\n<h1 style=\\"margin: 0px 0px 13px 0px; font-size: 29px; color: #fff; text-transform: uppercase; font-weight: 900; letter-spacing: -1.2px;\\">Lorem ipsum dolor sit amet</h1>\r\n<div style=\\"color: #d2d2d2; font-size: 13px; font-style: italic;\\">Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet</div>\r\n</div>', 'GB'),
(16, 'banner_english2.php', '<p><img class=\\"ls-bg\\" style=\\"width: 1710px; height: 494px; padding: 0px; border-width: 0px; margin-left: -855px; margin-top: -247px; visibility: visible;\\" src=\\"/templates/design-13/images/slider2.jpg\\" alt=\\"\\" /></p>\r\n<div class=\\"ls-s2 l3-s1 ls-s\\" style=\\"padding: 19.751098096632504px; background-color: rgba(0, 0, 0, 0.498039); position: absolute; left: 185.5px; top: 79.00439238653001px; width: auto; height: auto; font-size: 12.838213762811128px; border-width: 0px; margin-left: 0px; margin-top: 444.6px; display: block; visibility: visible; background-position: initial initial; background-repeat: initial initial;\\">\r\n<h1 style=\\"margin: 0px 0px 13px 0px; font-size: 29px; color: #fff; text-transform: uppercase; font-weight: 900; letter-spacing: -1.2px;\\">Lorem ipsum dolor sit amet</h1>\r\n<div style=\\"color: #d2d2d2; font-size: 13px; font-style: italic;\\">Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet</div>\r\n</div>', 'GB');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `iso3` char(3) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso2`, `iso3`, `name`) VALUES
(1, 'AF', 'AFG', 'Afghanistan'),
(2, 'AX', 'ALA', 'Åland Islands'),
(4, 'DZ', 'DZA', 'Algeria (El Djazaïr)'),
(3, 'AL', 'ALB', 'Albania'),
(5, 'AS', 'ASM', 'American Samoa'),
(6, 'AD', 'AND', 'Andorra'),
(7, 'AO', 'AGO', 'Angola'),
(8, 'AI', 'AIA', 'Anguilla'),
(9, 'AQ', 'ATA', 'Antarctica'),
(10, 'AG', 'ATG', 'Antigua and Barbuda'),
(11, 'AR', 'ARG', 'Argentina'),
(12, 'AM', 'ARM', 'Armenia'),
(13, 'AW', 'ABW', 'Aruba'),
(14, 'AU', 'AUS', 'Australia'),
(15, 'AT', 'AUT', 'Austria'),
(16, 'AZ', 'AZE', 'Azerbaijan'),
(17, 'BS', 'BHS', 'Bahamas'),
(18, 'BH', 'BHR', 'Bahrain'),
(19, 'BD', 'BGD', 'Bangladesh'),
(20, 'BB', 'BRB', 'Barbados'),
(21, 'BY', 'BLR', 'Belarus'),
(22, 'BE', 'BEL', 'Belgium'),
(23, 'BZ', 'BLZ', 'Belize'),
(24, 'BJ', 'BEN', 'Benin'),
(25, 'BM', 'BMU', 'Bermuda'),
(26, 'BT', 'BTN', 'Bhutan'),
(27, 'BO', 'BOL', 'Bolivia'),
(28, 'BA', 'BIH', 'Bosnia and Herzegovina'),
(29, 'BW', 'BWA', 'Botswana'),
(30, 'BV', 'BVT', 'Bouvet Island'),
(31, 'BR', 'BRA', 'Brazil'),
(32, 'IO', 'IOT', 'British Indian Ocean Territory'),
(33, 'BN', 'BRN', 'Brunei Darussalam'),
(34, 'BG', 'BGR', 'Bulgaria'),
(35, 'BF', 'BFA', 'Burkina Faso'),
(36, 'BI', 'BDI', 'Burundi'),
(37, 'KH', 'KHM', 'Cambodia'),
(38, 'CM', 'CMR', 'Cameroon'),
(39, 'CA', 'CAN', 'Canada'),
(40, 'CV', 'CPV', 'Cape Verde'),
(41, 'KY', 'CYM', 'Cayman Islands'),
(42, 'CF', 'CAF', 'Central African Republic'),
(43, 'TD', 'TCD', 'Chad (T''Chad)'),
(44, 'CL', 'CHL', 'Chile'),
(45, 'CN', 'CHN', 'China'),
(46, 'CX', 'CXR', 'Christmas Island'),
(47, 'CC', 'CCK', 'Cocos (Keeling) Islands'),
(48, 'CO', 'COL', 'Colombia'),
(49, 'KM', 'COM', 'Comoros'),
(50, 'CG', 'COG', 'Congo, Republic Of'),
(51, 'CD', 'COD', 'Congo, The Democratic Republic of the (formerly Zaire)'),
(52, 'CK', 'COK', 'Cook Islands'),
(53, 'CR', 'CRI', 'Costa Rica'),
(54, 'CI', 'CIV', 'CÔte D''Ivoire (Ivory Coast)'),
(55, 'HR', 'HRV', 'Croatia (hrvatska)'),
(56, 'CU', 'CUB', 'Cuba'),
(57, 'CY', 'CYP', 'Cyprus'),
(58, 'CZ', 'CZE', 'Czech Republic'),
(59, 'DK', 'DNK', 'Denmark'),
(60, 'DJ', 'DJI', 'Djibouti'),
(61, 'DM', 'DMA', 'Dominica'),
(62, 'DO', 'DOM', 'Dominican Republic'),
(63, 'EC', 'ECU', 'Ecuador'),
(64, 'EG', 'EGY', 'Egypt'),
(65, 'SV', 'SLV', 'El Salvador'),
(66, 'GQ', 'GNQ', 'Equatorial Guinea'),
(67, 'ER', 'ERI', 'Eritrea'),
(68, 'EE', 'EST', 'Estonia'),
(69, 'ET', 'ETH', 'Ethiopia'),
(70, 'FO', 'FRO', 'Faeroe Islands'),
(71, 'FK', 'FLK', 'Falkland Islands (Malvinas)'),
(72, 'FJ', 'FJI', 'Fiji'),
(73, 'FI', 'FIN', 'Finland'),
(74, 'FR', 'FRA', 'France'),
(75, 'GF', 'GUF', 'French Guiana'),
(76, 'PF', 'PYF', 'French Polynesia'),
(77, 'TF', 'ATF', 'French Southern Territories'),
(78, 'GA', 'GAB', 'Gabon'),
(79, 'GM', 'GMB', 'Gambia, The'),
(80, 'GE', 'GEO', 'Georgia'),
(81, 'DE', 'DEU', 'Germany (Deutschland)'),
(82, 'GH', 'GHA', 'Ghana'),
(83, 'GI', 'GIB', 'Gibraltar'),
(84, 'GB', 'GBR', 'Great Britain'),
(85, 'GR', 'GRC', 'Greece'),
(86, 'GL', 'GRL', 'Greenland'),
(87, 'GD', 'GRD', 'Grenada'),
(88, 'GP', 'GLP', 'Guadeloupe'),
(89, 'GU', 'GUM', 'Guam'),
(90, 'GT', 'GTM', 'Guatemala'),
(91, 'GN', 'GIN', 'Guinea'),
(92, 'GW', 'GNB', 'Guinea-bissau'),
(93, 'GY', 'GUY', 'Guyana'),
(94, 'HT', 'HTI', 'Haiti'),
(95, 'HM', 'HMD', 'Heard Island and Mcdonald Islands'),
(96, 'HN', 'HND', 'Honduras'),
(97, 'HK', 'HKG', 'Hong Kong (Special Administrative Region of China)'),
(98, 'HU', 'HUN', 'Hungary'),
(99, 'IS', 'ISL', 'Iceland'),
(100, 'IN', 'IND', 'India'),
(101, 'ID', 'IDN', 'Indonesia'),
(102, 'IR', 'IRN', 'Iran (Islamic Republic of Iran)'),
(103, 'IQ', 'IRQ', 'Iraq'),
(104, 'IE', 'IRL', 'Ireland'),
(105, 'IL', 'ISR', 'Israel'),
(106, 'IT', 'ITA', 'Italy'),
(107, 'JM', 'JAM', 'Jamaica'),
(108, 'JP', 'JPN', 'Japan'),
(109, 'JO', 'JOR', 'Jordan (Hashemite Kingdom of Jordan)'),
(110, 'KZ', 'KAZ', 'Kazakhstan'),
(111, 'KE', 'KEN', 'Kenya'),
(112, 'KI', 'KIR', 'Kiribati'),
(113, 'KP', 'PRK', 'Korea (Democratic Peoples Republic pf [North] Korea)'),
(114, 'KR', 'KOR', 'Korea (Republic of [South] Korea)'),
(115, 'KW', 'KWT', 'Kuwait'),
(116, 'KG', 'KGZ', 'Kyrgyzstan'),
(117, 'LA', 'LAO', 'Lao People''s Democratic Republic'),
(118, 'LV', 'LVA', 'Latvia'),
(119, 'LB', 'LBN', 'Lebanon'),
(120, 'LS', 'LSO', 'Lesotho'),
(121, 'LR', 'LBR', 'Liberia'),
(122, 'LY', 'LBY', 'Libya (Libyan Arab Jamahirya)'),
(123, 'LI', 'LIE', 'Liechtenstein (Fürstentum Liechtenstein)'),
(124, 'LT', 'LTU', 'Lithuania'),
(125, 'LU', 'LUX', 'Luxembourg'),
(126, 'MO', 'MAC', 'Macao (Special Administrative Region of China)'),
(127, 'MK', 'MKD', 'Macedonia (Former Yugoslav Republic of Macedonia)'),
(128, 'MG', 'MDG', 'Madagascar'),
(129, 'MW', 'MWI', 'Malawi'),
(130, 'MY', 'MYS', 'Malaysia'),
(131, 'MV', 'MDV', 'Maldives'),
(132, 'ML', 'MLI', 'Mali'),
(133, 'MT', 'MLT', 'Malta'),
(134, 'MH', 'MHL', 'Marshall Islands'),
(135, 'MQ', 'MTQ', 'Martinique'),
(136, 'MR', 'MRT', 'Mauritania'),
(137, 'MU', 'MUS', 'Mauritius'),
(138, 'YT', 'MYT', 'Mayotte'),
(139, 'MX', 'MEX', 'Mexico'),
(140, 'FM', 'FSM', 'Micronesia (Federated States of Micronesia)'),
(141, 'MD', 'MDA', 'Moldova'),
(142, 'MC', 'MCO', 'Monaco'),
(143, 'MN', 'MNG', 'Mongolia'),
(144, 'MS', 'MSR', 'Montserrat'),
(145, 'MA', 'MAR', 'Morocco'),
(146, 'MZ', 'MOZ', 'Mozambique (Moçambique)'),
(147, 'MM', 'MMR', 'Myanmar (formerly Burma)'),
(148, 'NA', 'NAM', 'Namibia'),
(149, 'NR', 'NRU', 'Nauru'),
(150, 'NP', 'NPL', 'Nepal'),
(151, 'NL', 'NLD', 'Netherlands'),
(152, 'AN', 'ANT', 'Netherlands Antilles'),
(153, 'NC', 'NCL', 'New Caledonia'),
(154, 'NZ', 'NZL', 'New Zealand'),
(155, 'NI', 'NIC', 'Nicaragua'),
(156, 'NE', 'NER', 'Niger'),
(157, 'NG', 'NGA', 'Nigeria'),
(158, 'NU', 'NIU', 'Niue'),
(159, 'NF', 'NFK', 'Norfolk Island'),
(160, 'MP', 'MNP', 'Northern Mariana Islands'),
(161, 'NO', 'NOR', 'Norway'),
(162, 'OM', 'OMN', 'Oman'),
(163, 'PK', 'PAK', 'Pakistan'),
(164, 'PW', 'PLW', 'Palau'),
(165, 'PS', 'PSE', 'Palestinian Territories'),
(166, 'PA', 'PAN', 'Panama'),
(167, 'PG', 'PNG', 'Papua New Guinea'),
(168, 'PY', 'PRY', 'Paraguay'),
(169, 'PE', 'PER', 'Peru'),
(170, 'PH', 'PHL', 'Philippines'),
(171, 'PN', 'PCN', 'Pitcairn'),
(172, 'PL', 'POL', 'Poland'),
(173, 'PT', 'PRT', 'Portugal'),
(174, 'PR', 'PRI', 'Puerto Rico'),
(175, 'QA', 'QAT', 'Qatar'),
(176, 'RE', 'REU', 'RÉunion'),
(177, 'RO', 'ROU', 'Romania'),
(178, 'RU', 'RUS', 'Russian Federation'),
(179, 'RW', 'RWA', 'Rwanda'),
(180, 'SH', 'SHN', 'Saint Helena'),
(181, 'KN', 'KNA', 'Saint Kitts and Nevis'),
(182, 'LC', 'LCA', 'Saint Lucia'),
(183, 'PM', 'SPM', 'Saint Pierre and Miquelon'),
(184, 'VC', 'VCT', 'Saint Vincent and the Grenadines'),
(185, 'WS', 'WSM', 'Samoa (formerly Western Samoa)'),
(186, 'SM', 'SMR', 'San Marino (Republic of)'),
(187, 'ST', 'STP', 'Sao Tome and Principe'),
(188, 'SA', 'SAU', 'Saudi Arabia (Kingdom of Saudi Arabia)'),
(189, 'SN', 'SEN', 'Senegal'),
(190, 'CS', 'SCG', 'Serbia and Montenegro (formerly Yugoslavia)'),
(191, 'SC', 'SYC', 'Seychelles'),
(192, 'SL', 'SLE', 'Sierra Leone'),
(193, 'SG', 'SGP', 'Singapore'),
(194, 'SK', 'SVK', 'Slovakia (Slovak Republic)'),
(195, 'SI', 'SVN', 'Slovenia'),
(196, 'SB', 'SLB', 'Solomon Islands'),
(197, 'SO', 'SOM', 'Somalia'),
(198, 'ZA', 'ZAF', 'South Africa (zuid Afrika)'),
(199, 'GS', 'SGS', 'South Georgia and the South Sandwich Islands'),
(200, 'ES', 'ESP', 'Spain (españa)'),
(201, 'LK', 'LKA', 'Sri Lanka'),
(202, 'SD', 'SDN', 'Sudan'),
(203, 'SR', 'SUR', 'Suriname'),
(204, 'SJ', 'SJM', 'Svalbard and Jan Mayen'),
(205, 'SZ', 'SWZ', 'Swaziland'),
(206, 'SE', 'SWE', 'Sweden'),
(207, 'CH', 'CHE', 'Switzerland (Confederation of Helvetia)'),
(208, 'SY', 'SYR', 'Syrian Arab Republic'),
(209, 'TW', 'TWN', 'Taiwan ("Chinese Taipei" for IOC)'),
(210, 'TJ', 'TJK', 'Tajikistan'),
(211, 'TZ', 'TZA', 'Tanzania'),
(212, 'TH', 'THA', 'Thailand'),
(213, 'TL', 'TLS', 'Timor-Leste (formerly East Timor)'),
(214, 'TG', 'TGO', 'Togo'),
(215, 'TK', 'TKL', 'Tokelau'),
(216, 'TO', 'TON', 'Tonga'),
(217, 'TT', 'TTO', 'Trinidad and Tobago'),
(218, 'TN', 'TUN', 'Tunisia'),
(219, 'TR', 'TUR', 'Turkey'),
(220, 'TM', 'TKM', 'Turkmenistan'),
(221, 'TC', 'TCA', 'Turks and Caicos Islands'),
(222, 'TV', 'TUV', 'Tuvalu'),
(223, 'UG', 'UGA', 'Uganda'),
(224, 'UA', 'UKR', 'Ukraine'),
(225, 'AE', 'ARE', 'United Arab Emirates'),
(226, 'GB', 'GBR', 'United Kingdom (Great Britain)'),
(227, 'US', 'USA', 'United States'),
(228, 'UM', 'UMI', 'United States Minor Outlying Islands'),
(229, 'UY', 'URY', 'Uruguay'),
(230, 'UZ', 'UZB', 'Uzbekistan'),
(231, 'VU', 'VUT', 'Vanuatu'),
(232, 'VA', 'VAT', 'Vatican City (Holy See)'),
(233, 'VE', 'VEN', 'Venezuela'),
(234, 'VN', 'VNM', 'Viet Nam'),
(235, 'VG', 'VGB', 'Virgin Islands, British'),
(236, 'VI', 'VIR', 'Virgin Islands, U.S.'),
(237, 'WF', 'WLF', 'Wallis and Futuna'),
(238, 'EH', 'ESH', 'Western Sahara (formerly Spanish Sahara)'),
(239, 'YE', 'YEM', 'Yemen (Arab Republic)'),
(240, 'ZM', 'ZMB', 'Zambia'),
(241, 'ZW', 'ZWE', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE IF NOT EXISTS `forms` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `show_in_sidebar` int(11) NOT NULL DEFAULT '0',
  `sidebar_size` int(11) NOT NULL DEFAULT '0',
  `email_this` int(11) NOT NULL,
  `mail_to` varchar(250) NOT NULL,
  `thankyou_url` varchar(255) NOT NULL,
  `thankyou_message` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`form_id`, `name`, `url`, `description`, `show_in_sidebar`, `sidebar_size`, `email_this`, `mail_to`, `thankyou_url`, `thankyou_message`, `status`) VALUES
(20, 'Sample Contact Form 2', 'sample', '<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 14px; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><br>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>', 0, 0, 1, 'info@jevy.nl', '', '', 0),
(21, 'Contact', 'contactform_sidebar', ' ', 0, 0, 1, 'soumyajyoti@hire-developer.co.uk', 'contact.html', 'Thank you for contacting us', 1),
(22, 'Footer Contact', 'footer_contact', '', 0, 0, 1, 'soumyajyoti@hire-developer.co.uk', 'work.html', 'Thank you for contacting us', 1),
(24, 'Newsletter', 'newsletter', '', 1, 240, 0, '', '', '', 1),
(25, 'ImageForm', 'imageform_fullpage', '<br>', 0, 0, 1, 'info@jevy.nl', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_data`
--

CREATE TABLE IF NOT EXISTS `form_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `fieldset_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `form_data`
--

INSERT INTO `form_data` (`id`, `form_id`, `fieldset_id`, `field_id`, `value`, `time`) VALUES
(43, 20, 25, 49, 'Hosting Services', 1359539438),
(44, 20, 25, 50, 'str. Nicopole Nordi', 1359539438),
(45, 20, 25, 49, 'Huni2', 1359539498),
(46, 20, 25, 50, 'str. Nicopole Nordi', 1359539498),
(47, 20, 25, 49, 'Huni2', 1359539629),
(48, 20, 25, 50, 'str. Nicopole Nordi', 1359539629),
(49, 20, 25, 49, 'Huni2', 1359541909),
(50, 20, 25, 50, 'str. Nicopole Nordi', 1359541909),
(51, 20, 25, 49, 'Huni2', 1359541924),
(52, 20, 25, 50, 'str. Nicopole Nordi', 1359541924),
(53, 20, 25, 49, 'Huni2', 1359541947),
(54, 20, 25, 50, 'str. Nicopole Nordi', 1359541947),
(55, 20, 25, 49, 'Huni2', 1359542388),
(56, 20, 25, 50, 'str. Nicopole Nordi', 1359542388),
(57, 20, 25, 51, '', 1359542388),
(58, 20, 25, 49, 'Gyorgy Hunor - Arpad', 1359542421),
(59, 20, 25, 50, 'str. Nicopole Nordi', 1359542421),
(60, 20, 25, 51, 'gyorgy.hunor.arpad@gmail.com', 1359542421),
(61, 20, 25, 49, 'Gyorgy Hunor - Arpad', 1359545990),
(62, 20, 25, 50, 'str. Nicopole Nordi', 1359545990),
(63, 20, 25, 51, 'gyorgy.hunor.arpad@gmail.com', 1359545990),
(64, 20, 26, 52, 'Technical University, Cluj Napoca', 1359545990),
(65, 21, 27, 53, 'Gyorgy Hunor - Arpad', 1359546003),
(66, 21, 27, 54, '8905920348523', 1359546003),
(68, 21, 27, 53, 'Virgil Harbers', 1359554066),
(69, 21, 27, 54, 'info@webshops-startpagina.nl', 1359554066),
(72, 21, 27, 53, '', 1359959476),
(73, 21, 27, 54, '', 1359959476),
(75, 21, 27, 53, '', 1359959504),
(76, 21, 27, 54, '', 1359959504),
(78, 21, 27, 53, 'Virgil Harbers', 1359959962),
(79, 21, 27, 54, 'info@jevy.nl', 1359959962),
(82, 22, 35, 64, 'Soumyajyoti Dutta', 1362471842),
(83, 22, 35, 65, 'soumyajyoti@hire-developer.co.uk', 1362471842),
(84, 22, 35, 66, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', 1362471842),
(85, 21, 27, 53, 'Gyorgy Hunor - Arpad - TEST!!', 1362740326),
(86, 21, 27, 54, 'hunika49@yahoo.com', 1362740326),
(87, 25, 37, 70, 'OptionID:2', 1375974040),
(88, 25, 38, 71, 'TEST TEST', 1375974040),
(89, 25, 38, 72, '8795738', 1375974040),
(90, 25, 38, 73, 'hunika49@yahoo.com', 1375974040),
(91, 25, 39, 74, 'TEST ADDRESS', 1375974040),
(92, 25, 39, 75, 'TEST POSTCODE', 1375974040);

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE IF NOT EXISTS `form_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `fieldset_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `label` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `required` int(11) NOT NULL DEFAULT '0',
  `email_validation` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`field_id`, `form_id`, `fieldset_id`, `position`, `type`, `label`, `name`, `required`, `email_validation`, `status`) VALUES
(49, 20, 25, 1, 'text', 'Name', 'name', 1, 0, 1),
(50, 20, 25, 2, 'text', 'Address', 'address', 1, 0, 1),
(51, 20, 25, 3, 'text', 'E-mail', 'e-nail', 1, 1, 1),
(52, 20, 26, 1, 'text', 'Institution', 'institution', 1, 0, 1),
(53, 21, 27, 1, 'text', 'Naam', 'naam', 1, 0, 1),
(54, 21, 27, 2, 'text', 'Email', 'email', 1, 1, 1),
(58, 20, 29, 1, 'text', 'Occupation / Domain:', 'occupation', 1, 0, 1),
(64, 22, 35, 1, 'text', 'Name', 'name', 1, 0, 1),
(65, 22, 35, 2, 'text', 'Email', 'email-address', 1, 1, 1),
(66, 22, 35, 3, 'textarea', 'Message', 'message', 1, 0, 1),
(68, 24, 36, 1, 'text', 'Sign up to receive Special Offers', 'e-mail', 1, 1, 1),
(69, 21, 34, 3, 'textarea', 'Comment', 'comment', 1, 0, 1),
(70, 25, 37, 1, 'uploadRadio', 'Image options', 'image-options', 1, 0, 1),
(71, 25, 38, 1, 'text', 'Name', 'name', 1, 0, 1),
(72, 25, 38, 2, 'text', 'Telefoonnummer', 'telefoonnummer', 1, 0, 1),
(73, 25, 38, 3, 'text', 'E-mail address', 'e-mail-address', 1, 1, 1),
(74, 25, 39, 1, 'text', 'Address', 'address', 1, 0, 1),
(75, 25, 39, 2, 'text', 'Postcode', 'postcode', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_fieldsets`
--

CREATE TABLE IF NOT EXISTS `form_fieldsets` (
  `fieldset_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`fieldset_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `form_fieldsets`
--

INSERT INTO `form_fieldsets` (`fieldset_id`, `form_id`, `name`, `position`, `status`) VALUES
(25, 20, 'General Contact Information', 1, 1),
(26, 20, 'Studies', 2, 1),
(27, 21, 'Persoonlijke gegevens', 1, 1),
(29, 20, 'Occupation', 3, 1),
(34, 21, 'Modules', 2, 1),
(35, 22, 'Persoonlijke gegevens', 1, 1),
(36, 24, 'General Contact Information', 1, 1),
(37, 25, 'Options', 1, 1),
(38, 25, 'Persoonlijke gegevens', 2, 1),
(39, 25, 'Adres gegevens', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `form_field_option`
--

CREATE TABLE IF NOT EXISTS `form_field_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `fieldset_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `form_field_option`
--

INSERT INTO `form_field_option` (`option_id`, `form_id`, `fieldset_id`, `field_id`, `label`, `value`) VALUES
(1, 25, 37, 70, './option_images/70_house.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.|House|Enabled'),
(2, 25, 37, 70, './option_images/70_street.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.|Street|Enabled'),
(3, 25, 37, 70, './option_images/70_rainbow.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.|Rainbow|Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `image` text CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sorder` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`image`, `url`, `id`, `sorder`) VALUES
('D-sense.png', 'D-sense', 2, 6),
('Babies en kids.png', 'http://www.facebook-shopper.nl', 3, 1),
('Veiling-webshop.png', 'http://www.facebook-shopper.nl', 5, 0),
('Schoolwebshop.png', 'http://www.facebook-shopper.nl', 6, 0),
('Speciale-Taarten.png', 'http://www.facebook-shopper.nl', 7, 4),
('Multimediadiscounter.png', 'sadsadfs', 8, 11),
('BestBuyGadgets.png', 'http://www.google.com', 10, 2),
('onderdelenwebshop.png', 'http://www.proalpin.ro', 13, 12);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL,
  `safe_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `safe_name`) VALUES
(1, 'Main Menu NL', 'main_menu'),
(4, 'Footer Menu', 'footer_menu'),
(5, 'Left Navigation', 'left_navigation'),
(6, 'Main Menu GB', 'main_menu_gb');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(3) NOT NULL,
  `lft` int(3) NOT NULL,
  `rgt` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_safe` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `type` varchar(12) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `lft`, `rgt`, `title`, `title_safe`, `class_name`, `type`, `content`) VALUES
(28, 4, 1, 2, 'Home', 'home', '', 'url', 'home.html'),
(29, 4, 3, 4, 'Affiliate', 'affiliate', '', 'url', 'affiliate.html'),
(30, 4, 5, 6, 'About Us', 'about-us', '', 'url', 'aboutus.html'),
(31, 4, 7, 8, 'Services', 'services', '', 'url', 'services.html'),
(74, 5, 1, 2, 'Home', 'home', '', 'url', 'home.html'),
(75, 5, 3, 6, 'Service', 'service', '', 'url', 'service.html'),
(76, 5, 4, 5, 'Pricing', 'pricing', '', 'url', 'pricing.html'),
(77, 5, 7, 8, 'Contact', 'contact', '', 'url', 'contact.html'),
(108, 6, 1, 2, 'Home', 'home', '', 'url', 'home.html'),
(109, 6, 3, 4, 'About Us', 'about-us', '', 'url', 'about-us.html'),
(110, 6, 5, 6, 'Contact', 'contact', '', 'url', 'contact.html'),
(111, 1, 1, 2, 'Home', 'home', '', 'url', 'home.html'),
(112, 1, 3, 4, 'About Us', 'about-us', '', 'url', 'aboutus.html'),
(113, 1, 5, 6, 'Werk', 'werk', '', 'url', 'work.html'),
(114, 1, 7, 8, 'Prijzen', 'prijzen', '', 'url', 'pricing.html'),
(115, 1, 9, 10, 'Service', 'service', '', 'url', 'service.html'),
(116, 1, 11, 12, 'Contact', 'contact', '', 'url', 'contact.html'),
(117, 1, 13, 14, 'ImageForm', 'imageform', '', 'url', 'imageform.html');

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE IF NOT EXISTS `webpages` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `page_label` varchar(128) CHARACTER SET utf8 NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL,
  `meta_t` varchar(3000) CHARACTER SET utf8 NOT NULL,
  `meta_d` text CHARACTER SET utf8 NOT NULL,
  `meta_k` varchar(3000) CHARACTER SET utf8 NOT NULL,
  `is_home` int(2) unsigned NOT NULL DEFAULT '0',
  `urlinput` varchar(256) CHARACTER SET utf8 NOT NULL,
  `template` varchar(128) NOT NULL,
  `language` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `page_label`, `text`, `meta_t`, `meta_d`, `meta_k`, `is_home`, `urlinput`, `template`, `language`) VALUES
(5, 'Home', '<p>home page</p>', 'Meta Title', 'Meta Descriptionssss', 'Meta Keywords', 1, 'home.html', 'NA', ''),
(6, 'About Us', '<p><strong>sdfsdf</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p>sdfsdf<strong><br /></strong></p>\r\n<p>&nbsp;</p>', 'Meta Title:', '', '', 0, 'about.html', 'blank', ''),
(7, 'Contact', '', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `webpages_elements`
--

CREATE TABLE IF NOT EXISTS `webpages_elements` (
  `id` int(4) NOT NULL,
  `footer` text CHARACTER SET utf8 NOT NULL,
  `social` text CHARACTER SET utf8 NOT NULL,
  `slider` text CHARACTER SET utf8 NOT NULL,
  `sidebar` text CHARACTER SET utf8 NOT NULL,
  `header` text CHARACTER SET utf8 NOT NULL,
  `gen_settings` text CHARACTER SET utf8 NOT NULL,
  `custom_menu` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webpages_elements`
--

INSERT INTO `webpages_elements` (`id`, `footer`, `social`, `slider`, `sidebar`, `header`, `gen_settings`, `custom_menu`) VALUES
(1, '<div class="footer_ext"><div class="projects-container" style="background: url(''./images/backgrounds/footer_footer-brown.png'') repeat-x scroll 0 0 transparent;">    	<div class="footer-wrap">\r\n        	<div class="outerOneFourth">\r\n                <div class="title"><h4>Pages</h4></div>\r\n                <div class="clear20"></div>\r\n                <ul class="bullet4">\r\n                    <li><p><a href="#">Lorem ipsum dolor sit amet</a></p></li>\r\n                    <li><p><a href="#">Fusce accumsan mollis eros</a></p></li>\r\n                    <li><p><a href="#">Nullam quis massa</a></p></li>\r\n                    <li><p><a href="#">Ut scelerisque hendrerit</a></p></li>\r\n                    <li><p><a href="#">Vivamus imperdiet nibh feugiat</a></p></li>\r\n                    <li><p><a href="#">Integer eu magna sit amet</a></p></li>\r\n                    <li><p><a href="#">Cum sociis natoque penatibus</a></p></li>\r\n                </ul>\r\n            </div>\r\n        	<div class="outerOneFourth">\r\n                <div class="title"><h4>Twitter</h4></div>\r\n                <div class="clear"></div>\r\n                \r\n                <div id="twitter">\r\n                </div>\r\n                \r\n                <script type="text/javascript">\r\n                $("#twitter").jTweetsAnywhere({\r\n                    username: "envato",\r\n                    count: 3,\r\n                    showFollowButton: false\r\n                });\r\n                </script>\r\n               \r\n            </div>\r\n        	<div class="outerOneFourth">\r\n                <div class="title"><h4>About Us</h4></div>\r\n                <div class="clear"></div>\r\n                <div id="about-us">\r\n                    <p><img src="images/building.png" alt="" class="fl" />Sed fringilla dui id ante volutpat ut pellentesque lacus semper. \r\n                    Duis laoreet congue consectetur. Aliquam volutpat scelerisque dui ac fringilla. \r\n                    Praesent et volutpat urna. Sed ipsum dolor.</p><br />\r\n                    <p>Praesent et volutpat urna. Sed ipsum dolor, dapibus a ultrices a, \r\n                    pellentesque eget metus.</p><br />\r\n                    <ul class="socialNav">\r\n                        <li><a href="#" title="Facebook"><img src="images/facebook_icon.png" alt="Delicious" /></a></li>\r\n                        <li><a href="#" title="Twitter"><img src="images/twitter_icon.png" alt="Twitter" /></a></li>\r\n                        <li><a href="#" title="Dribble"><img src="images/dribble_icon.png" alt="Drible" /></a></li>\r\n                        <li><a href="#" title="StumbleUpon"><img src="images/su_icon.png" alt="StumbleUpon" /></a></li>\r\n                        <li><a href="#" title="RSS"><img src="images/rss_icon.png" alt="Rss" /></a></li>\r\n					</ul>\r\n                </div>\r\n            </div>\r\n        	<div class="outerOneFourth last">\r\n                <div class="title"><h4>Contact</h4></div>\r\n                <div class="clear"></div>\r\n                <div id="contactWrap">\r\n                    <iframe src="/templates/design-4/footerForm.php?url=footer_contact" width="207" height="306"></iframe>\r\n                </div>\r\n                <div class="clear"></div>\r\n            </div>\r\n            \r\n        </div>\r\n		<div class="clear"></div>\r\n        <div class="post-footer">\r\n            <div class="post-footer-wrap">\r\n            <p class="fl"><a href="http://www.123website-online.nl/" target="_blank">Powered by 123website-online.nl</a></p>\r\n            <ol id="the_footer_menu" class="simple_menu simple_menu_css horizontal foot_nav"><li class=""><a href="home.html">Home</a></li><li class=""><a href="affiliate.html">Affiliate</a></li><li class=""><a href="aboutus.html">About Us</a></li><li class="last"><a href="services.html">Services</a></li></ol><script type=''text/javascript''>\r\n							$(''ol#the_footer_menu'').simpleMenu();\r\n						</script>\r\n            </div>\r\n        </div></div></div></div></div>	<div class="clear"></div>\r\n		<div id="footerShadow" class="boxed boxed">\r\n<div class="shadowHolderflat">\r\n<img alt="" src="images/big-shadow.png" />\r\n</div>\r\n</div>', '<div class="social_ext"><div class="socials"></div></div>', '<div id="slides" style="background: #FFFFFF;" height:px; ">', '<div class="sidebar_ext"><div class="body-left"><div class="form-container"><iframe src="form.php?url=contactform_sidebar" width="274" height="395"></iframe></div></div></div>', '</head><body style="margin: 0 auto;"><div class="responsive-image"></div><div class="wrap"><div class="inner-wrap"><div class="header_ext" style="background:#FFFFFF; "><div class="customheader" style=" height:100px; background:#FFFFFF; "><a class="logo" href="./" style="float:left; overflow:hidden;"><img src = "./product_images/logo.jpg" style="float:left; padding:0; border:0;" alt="" /></a><div id="search-wrap">\r\n            \r\n            <div class="search">\r\n                <form class="searchForm" method="post" action="">\r\n                    <input type="text" value="Start Searching..." title="Search" class="searchInput" />\r\n                    <input type="submit" title="Go" value="Go" name="action_results" class="searchBtn" />\r\n                </form>\r\n            </div>\r\n            \r\n           \r\n            <div class="call">\r\n                Call Information: <br />\r\n                <h2>0800-888-888</h2>\r\n            </div>\r\n        </div></div>', '<style type="text/css"> body {background-color: #202020; } </style>', '<div class="custommenu1" style="background: url(''./images/backgrounds/navigbar_nav-bg.png '');"><div class="nav-shadow-left"></div><ul id="nav" class="drop"><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./Home.html">Home</a><ul></ul></li><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./facebook.html">facebook</a><ul><li><a style="background: url(''./images/backgrounds/navigbar_nav-bg.png '') repeat scroll  -10px 0 transparent; text-decoration:none; color:#F6FAF0 " href="./Facebook website.html">Facebook website</a></li></ul></li><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./GroupDeals Module.html">GroupDeals Module</a><ul></ul></li><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./Facebook Shop.html">Facebook Shop</a><ul></ul></li><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./Hoe werkt het.html">Hoe werkt het</a><ul></ul></li><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./Contact.html">Contact</a><ul></ul></li><li><a style="text-decoration:none; color:#F6FAF0 " onmouseover="this.style.background=''#9BC3FF''; this.style.color=''#3E2C70''" onmouseout="this.style.background=''none''; this.style.color=''#F6FAF0''" href="./.html"></a><ul></ul></li></ul><div class="nav-shadow-right"></div></div>');

-- --------------------------------------------------------

--
-- Table structure for table `webpages_settings`
--

CREATE TABLE IF NOT EXISTS `webpages_settings` (
  `header_bg` varchar(256) CHARACTER SET utf8 NOT NULL,
  `banner_slider_bg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `banner_slider_height` varchar(255) NOT NULL,
  `banner_slider_location` varchar(256) CHARACTER SET utf8 NOT NULL,
  `header_height` int(3) NOT NULL,
  `header_text` varchar(256) CHARACTER SET utf8 NOT NULL,
  `header_img` varchar(256) CHARACTER SET utf8 NOT NULL,
  `footer_bg` varchar(256) CHARACTER SET utf8 NOT NULL,
  `footer_text` varchar(256) CHARACTER SET utf8 NOT NULL,
  `footer_textc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `footer_textc_hover` varchar(10) CHARACTER SET utf8 NOT NULL,
  `footer_link` varchar(256) CHARACTER SET utf8 NOT NULL,
  `id` int(2) NOT NULL,
  `colour` varchar(6) CHARACTER SET utf8 NOT NULL,
  `twitterUrl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `youtubeUrl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `facebookUrl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `blogUrl` varchar(255) CHARACTER SET utf8 NOT NULL,
  `menu_bg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `menu_bg_hover` varchar(10) CHARACTER SET utf8 NOT NULL,
  `menu_textc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `menu_textc_hover` varchar(10) CHARACTER SET utf8 NOT NULL,
  `slider_bg` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sidebar1` varchar(128) CHARACTER SET utf8 NOT NULL,
  `sidebar2` varchar(128) CHARACTER SET utf8 NOT NULL,
  `side1_urls` text CHARACTER SET utf8 NOT NULL,
  `side2_urls` text CHARACTER SET utf8 NOT NULL,
  `side1_labels` text CHARACTER SET utf8 NOT NULL,
  `side2_labels` text CHARACTER SET utf8 NOT NULL,
  `side_titlec` varchar(10) CHARACTER SET utf8 NOT NULL,
  `side_linkc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `side_linkc_hover` varchar(10) CHARACTER SET utf8 NOT NULL,
  `iframe_form` varchar(255) NOT NULL,
  `iframe_width` int(11) NOT NULL DEFAULT '0',
  `iframe_height` int(11) NOT NULL DEFAULT '0',
  `tooltip_status` int(2) NOT NULL,
  `frontend_languages` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `default_language` varchar(128) CHARACTER SET utf8 NOT NULL,
  `google_analytics` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webpages_settings`
--

INSERT INTO `webpages_settings` (`header_bg`, `banner_slider_bg`, `banner_slider_height`, `banner_slider_location`, `header_height`, `header_text`, `header_img`, `footer_bg`, `footer_text`, `footer_textc`, `footer_textc_hover`, `footer_link`, `id`, `colour`, `twitterUrl`, `youtubeUrl`, `facebookUrl`, `blogUrl`, `menu_bg`, `menu_bg_hover`, `menu_textc`, `menu_textc_hover`, `slider_bg`, `sidebar1`, `sidebar2`, `side1_urls`, `side2_urls`, `side1_labels`, `side2_labels`, `side_titlec`, `side_linkc`, `side_linkc_hover`, `iframe_form`, `iframe_width`, `iframe_height`, `tooltip_status`, `frontend_languages`, `default_language`, `google_analytics`) VALUES
('FFFFFF', 'FFFFFF', '', '1|32', 100, 'www.facebook-shopper.nl', 'site_logo.png', '202020', 'Sitemap', 'FFFFFF', '', 'http://www.facebook-shopper.nl/website/Contact.html', 1, '202020', '', '', '', '', 'navigbar_navigbar_light-blue.png', 'FFE063', 'FACC37', '010103', 'footer_footer-brown.png', 'Nuttige Links', 'Snel Menu', 'www.google.com|www.yahoo.com|www.facebook.com|www.facebook-shopper.nl', 'www.facebook-shopper.nl/website/website.html|www.facebook-shopper.nl/website/webshop.html|www.facebook-shopper.nl/website/groupdeals.html|www.facebook-shopper.nl/website/contact.html', 'Google|Yahoo|Facebook|Facebook-Shopper', 'Website module|Facebook Webshop |Facebook Group Deals|Prijzen', '3261A9', '3261A9', '1D4279', 'contactform_sidebar', 274, 395, 0, 'NL|GB', 'NL', '<script>\r\n  var ga= ''google analytics code'';\r\n\r\n</script>');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identificator` varchar(128) CHARACTER SET utf8 NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `is_home` int(2) NOT NULL,
  `position` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `wid_position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `identificator`, `name`, `content`, `is_home`, `position`, `wid_position`) VALUES
(1, 'newsletter', 'Newsletter Box', '<p><input id=\\"mce-EMAIL\\" class=\\"email\\" style=\\"box-sizing: border-box; border: 1px solid #dddddd; margin: 0px -0.375rem 0px 0px; padding: 1rem 0px 1rem 2.5rem; vertical-align: baseline; font-family: Helvetica, Arial, sans-serif; color: #999999; background-color: #f5f5f5; -webkit-box-shadow: #dddddd 0px 0px 5px inset; box-shadow: #dddddd 0px 0px 5px inset; font-size: 0.875rem; width: 338.03125px; background-image: url(\\''http://www.briangardner.com/wp-content/themes/avalanche/images/newsletter-box.png\\''); font-style: normal; font-variant: normal; orphans: 2; white-space: normal; widows: 2; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-position: 0% 50%; background-repeat: no-repeat no-repeat;\\" type=\\"email\\" name=\\"EMAIL\\" value=\\"\\" /><span style=\\"color: #222222; font-family: Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 24px; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\\"><span class=\\"Apple-converted-space\\">&nbsp;</span></span><input id=\\"mc-embedded-subscribe\\" class=\\"button\\" style=\\"box-sizing: border-box; border: 1px solid #333333; margin: 0px; padding: 1rem; vertical-align: baseline; font-family: Helvetica, Arial, sans-serif; color: #ffffff; background-color: #333333; -webkit-box-shadow: none; box-shadow: none; font-size: 0.875rem; width: auto; -webkit-transition: all 0.1s ease-in-out; cursor: pointer; font-weight: 400; text-decoration: initial; text-transform: uppercase; font-style: normal; font-variant: normal; orphans: 2; widows: 2; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;\\" type=\\"submit\\" name=\\"subscribe\\" value=\\"Sign Up\\" /></p>', 0, '', 0),
(5, 'contact_data', 'Contact Data', '<div class=\\"foot1\\">\r\n<div class=\\"foot_menu\\">\r\n<p style=\\"text-align: center;\\"><span style=\\"font-size: medium;\\"><strong>Algemene Contact</strong></span></p>\r\n<p style=\\"text-align: center;\\">Lorem-ipsum.nl</p>\r\n<p style=\\"text-align: center;\\">Lorem ipsum45</p>\r\n<p style=\\"text-align: center;\\">1652 CT Lorem ipsum</p>\r\n</div>\r\n</div>', 0, '', 0),
(6, 'h_banner', 'Home Banner', '<p><img style=\\"margin: 0 0 0 15px;\\" src=\\"/uploads/images/logo-goes-here.jpg\\" alt=\\"\\" /></p>', 0, '', 0),
(8, 'sidebar-menu', 'Sidebar menu', '<div class=\\"sidebar_ext\\">\r\n<div class=\\"body-left\\">\r\n<div class=\\"link-block\\">\r\n<h2 style=\\"color: #3261a9;\\">Snel Menu</h2>\r\n<ul>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.google-adwordsmarketing.nl/\\" target=\\"_self\\">Adwords Campagnes</a></li>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.google-adwordsmarketing.nl/\\" target=\\"_self\\">Kosten Adwords</a></li>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.google-adwordsmarketing.nl/\\" target=\\"_self\\">Termijnen</a></li>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.google-adwordsmarketing.nl/\\" target=\\"_self\\">Direct aanvragen</a></li>\r\n</ul>\r\n</div>\r\n<div class=\\"link-block\\">\r\n<h2 style=\\"color: #3261a9;\\">Nuttige Links</h2>\r\n<ul>\r\n<li><a style=\\"color: #3261a9;\\" target=\\"_blank\\">Website beginnen</a></li>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.magentoplaza.nl\\" target=\\"_blank\\">Magento Webshop</a></li>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.hosting4webshops.nl\\" target=\\"_blank\\">Snelle Hosting</a></li>\r\n<li><a style=\\"color: #3261a9;\\" href=\\"http://www.onderdelenwebshop.eu\\" target=\\"_blank\\">Alles voor om huis</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 0, '', 0),
(9, 'upcoming_events', 'Upcoming Events', '<ul class=\\"upcoming-events\\">\r\n<li>\r\n<p class=\\"small-event-data\\"><strong>01</strong><span>Mar</span></p>\r\n<a class=\\"event-title\\" href=\\"#\\">Bistro Classic Wine Dinner</a> <span>at 9AM, Thursday 22th </span> <span><strong>$4.00 Per Person</strong></span></li>\r\n<li>\r\n<p class=\\"small-event-data\\"><strong>23</strong><span>Mar</span></p>\r\n<a class=\\"event-title\\" href=\\"#\\">Barbaresco Piedmonte Wines</a> <span>at ALL DAY, Thursday 22th </span> <span><strong>$4.00 Per Person</strong></span></li>\r\n<li>\r\n<p class=\\"small-event-data\\"><strong>31</strong><span>Mar</span></p>\r\n<a class=\\"event-title\\" href=\\"#\\">Mother day sunday lunch</a> <span>at ALL DAY, Thursday 22th </span> <span><strong>$14.95 per child under 12</strong></span></li>\r\n</ul>', 0, '', 0),
(10, 'our_rooms', 'Take a look at Our Rooms', '<ul>\r\n<li><a href=\\"#\\">Donec volutpat purus ut</a></li>\r\n<li><a href=\\"#\\">Donec volutpat </a></li>\r\n<li><a href=\\"#\\">Donec volutpat ut</a></li>\r\n<li><a href=\\"#\\">Donec volutpat puru</a></li>\r\n<li><a href=\\"#\\">Donec volutpat </a></li>\r\n<li><a href=\\"#\\">Donec volutpa</a></li>\r\n<li><a href=\\"#\\">Donec volutpat </a></li>\r\n<li><a href=\\"#\\">Donec volutpat </a></li>\r\n</ul>', 0, '', 0),
(11, 'latest_news_promos', 'Latest News & Promos', '<ul>\r\n<li class=\\"event\\"><img class=\\"thumbnail\\" src=\\"/templates/design-13/images/post_thumb_small_01.jpg\\" alt=\\"DOUBLE ROOM STANDARD\\" width=\\"50\\" height=\\"50\\" /> <a href=\\"#\\">Donec volutpat purus ut urna elementum</a> <span class=\\"recent-date\\">july 26, 2013</span>\r\n<div class=\\"clear\\">&nbsp;</div>\r\n</li>\r\n<li><img class=\\"thumbnail\\" src=\\"/templates/design-13/images/post_thumb_small_02.jpg\\" alt=\\"DOUBLE ROOM STANDARD\\" width=\\"50\\" height=\\"50\\" /> <a href=\\"#\\">Donec volutpat purus ut urna elementum</a> <span class=\\"recent-date\\">july 26, 2013</span>\r\n<div class=\\"clear\\">&nbsp;</div>\r\n</li>\r\n<li class=\\"event\\"><img class=\\"thumbnail\\" src=\\"/templates/design-13/images/post_thumb_small_03.jpg\\" alt=\\"DOUBLE ROOM STANDARD\\" width=\\"50\\" height=\\"50\\" /> <a href=\\"#\\">Donec volutpat purus ut urna elementum</a> <span class=\\"recent-date\\">july 26, 2013</span>\r\n<div class=\\"clear\\">&nbsp;</div>\r\n</li>\r\n<li><img class=\\"thumbnail\\" src=\\"/templates/design-13/images/post_thumb_small_01.jpg\\" alt=\\"DOUBLE ROOM STANDARD\\" width=\\"50\\" height=\\"50\\" /> <a href=\\"#\\">Donec volutpat purus ut urna elementum</a> <span class=\\"recent-date\\">july 26, 2013</span>\r\n<div class=\\"clear\\">&nbsp;</div>\r\n</li>\r\n</ul>', 0, '', 0),
(12, 'footer_buttom', 'Footer Buttom', '<div class=\\"footer-copyright-wrapper row\\">\r\n<div class=\\"twelve columns\\">\r\n<div class=\\"footer-copyright\\">\r\n<div class=\\"copy-left left\\">Copyright @ 2013 Hotel ltd. All Rights Reserved</div>\r\n<div class=\\"copy-social right\\">\r\n<ul class=\\"footer-social\\">\r\n<li class=\\"stay_connected\\">Stay Connected</li>\r\n<li class=\\"social-twitter\\"><a href=\\"#\\" target=\\"_blank\\">Twitter</a></li>\r\n<li class=\\"social-facebook\\"><a href=\\"#\\" target=\\"_blank\\">Facebook</a></li>\r\n<li class=\\"social-google-plus\\"><a href=\\"#\\" target=\\"_blank\\">Google Plus</a></li>\r\n<li class=\\"social-youtube\\"><a href=\\"#\\" target=\\"_blank\\">Youtube</a></li>\r\n<li class=\\"social-skype\\"><a href=\\"#\\" target=\\"_blank\\">Skype</a></li>\r\n</ul>\r\n</div>\r\n<div class=\\"clear\\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\\"clear\\">&nbsp;</div>\r\n</div>', 0, '', 0),
(13, 'home_top', 'Home Top', '<div class=\\"banner-item-wrapper four columns\\">\r\n<div class=\\"banner-item\\">\r\n<div class=\\"banner-details\\">\r\n<h3 class=\\"banner-title\\">hotel is the key to a wonderful stay</h3>\r\n<a class=\\"banner-more\\" href=\\"#\\">View Hotel History +</a></div>\r\n<img class=\\"banner-image\\" src=\\"/templates/design-13/images/banner_3.jpg\\" alt=\\"\\" /></div>\r\n</div>\r\n<div class=\\"banner-item-wrapper four columns\\">\r\n<div class=\\"banner-item\\">\r\n<div class=\\"banner-details\\">\r\n<h3 class=\\"banner-title\\">Breakfast stay in a participating hotel</h3>\r\n<a class=\\"banner-more\\" href=\\"#\\">View Details +</a></div>\r\n<img class=\\"banner-image\\" src=\\"/templates/design-13/images/banner_2.jpg\\" alt=\\"\\" /></div>\r\n</div>\r\n<div class=\\"banner-item-wrapper four columns\\">\r\n<div class=\\"banner-item\\">\r\n<div class=\\"banner-details\\">\r\n<h3 class=\\"banner-title\\">Bekijk de prijzen en reserveer</h3>\r\n<a class=\\"banner-more\\" href=\\"#\\">Make A Reservation +</a></div>\r\n<img class=\\"banner-image\\" src=\\"/templates/design-13/images/banner_1.jpg\\" alt=\\"\\" /></div>\r\n</div>', 1, 'Top', 1),
(15, 'home_middle', ' LUXURY and BOUTIQUE HOTEL', '<p><img class=\\"hotel-thumb\\" src=\\"/templates/design-13/images/hotel-thumb.jpg\\" alt=\\"\\" /></p>\r\n<p>Laculis diam eu tortor euismodolo. Vestib ulum antipsum primis inicibu orci luctus edloret ultrices et posuere cubil sed odiocinialor it matis ed.</p>\r\n<p>Eu tortor euismodolo. Vestibulum ant psu meop primis inicibu orci luctus ed ultrices et posuere cubil. Cura sed quis nibhut odiocinialor matis ed iaculis ante sed vel laciniate. Eu tortor euismodolo. Vestibulum ant psu meop primis inicibu orci luctus ed ultrices et posuere cubil. Cura sed quis nibhut odiocinialor matis ed iaculis ante sed vel laciniate.</p>', 1, 'Middle-Center', 2),
(16, 'home_upcoming_events', 'Upcoming Events', '<ul class=\\"upcoming-events\\">\r\n<li>\r\n<p class=\\"small-event-data\\"><strong>01</strong><span>Mar</span></p>\r\n<a class=\\"event-title\\" href=\\"#\\">Bistro Classic Wine Dinner</a> <span>at 9AM, Thursday 22th </span> <span><strong>$4.00 Per Person</strong></span></li>\r\n<li>\r\n<p class=\\"small-event-data\\"><strong>23</strong><span>Mar</span></p>\r\n<a class=\\"event-title\\" href=\\"#\\">Barbaresco Piedmonte Wines</a> <span>at ALL DAY, Thursday 22th </span> <span><strong>$4.00 Per Person</strong></span></li>\r\n<li>\r\n<p class=\\"small-event-data\\"><strong>31</strong><span>Mar</span></p>\r\n<a class=\\"event-title\\" href=\\"#\\">Mother day sunday lunch</a> <span>at ALL DAY, Thursday 22th </span> <span><strong>$14.95 per child under 12</strong></span></li>\r\n</ul>', 1, 'Middle-Right', 3),
(17, 'home_highlight_rooms', 'Highlight Rooms', '<div class=\\"cpt-item four columns isotope-item rooms\\">\r\n<div class=\\"thumb-wrapper\\"><img src=\\"/templates/design-13/images/room_1.jpg\\" alt=\\"\\" />\r\n<div class=\\"thumb-control-wrapper\\" style=\\"width: 286px; height: 140px;\\">\r\n<ul class=\\"thumb-control clearfix\\">\r\n<ul class=\\"thumb-control clearfix\\">\r\n<li><a class=\\"go-detail\\" title=\\"View Detail\\" href=\\"#\\">Open Detail</a></li>\r\n<li><a class=\\"go-gallery\\" title=\\"Room 1 Gallery 1\\" href=\\"/templates/design-13/images/room_1.jpg\\" rel=\\"prettyPhoto[gallery1]\\">Open Gallery</a></li>\r\n</ul>\r\n</ul>\r\n<div style=\\"display: none;\\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\\"cpt-detail\\">\r\n<h2 class=\\"cpt-title\\"><a href=\\"#\\">DOUBLE ROOM STANDARD</a></h2>\r\n<div class=\\"cpt-desc\\">from $99 per night</div>\r\n</div>\r\n</div>\r\n<div class=\\"cpt-item four columns isotope-item suites\\">\r\n<div class=\\"thumb-wrapper\\"><img src=\\"/templates/design-13/images/suite_1.jpg\\" alt=\\"\\" />\r\n<div class=\\"thumb-control-wrapper\\" style=\\"width: 286px; height: 140px;\\">\r\n<ul class=\\"thumb-control clearfix\\">\r\n<li><a class=\\"go-detail\\" title=\\"View Detail\\" href=\\"#\\">Open Detail</a></li>\r\n<li><a class=\\"go-gallery\\" title=\\"#\\" href=\\"/templates/design-13/images/suite_1.jpg\\" rel=\\"prettyPhoto\\">Open Gallery</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\\"cpt-detail\\">\r\n<h2 class=\\"cpt-title\\"><a href=\\"#\\">Junior Suite</a></h2>\r\n<div class=\\"cpt-desc\\">from $299 per night</div>\r\n</div>\r\n</div>\r\n<div class=\\"cpt-item four columns isotope-item rooms\\">\r\n<div class=\\"thumb-wrapper\\"><img src=\\"/templates/design-13/images/room_3.jpg\\" alt=\\"\\" />\r\n<div class=\\"thumb-control-wrapper\\" style=\\"width: 286px; height: 140px;\\">\r\n<ul class=\\"thumb-control clearfix\\">\r\n<li><a class=\\"go-detail\\" title=\\"View Detail\\" href=\\"#\\">Open Detail</a></li>\r\n<li><a class=\\"go-gallery\\" title=\\"Room 3 Gallery\\" href=\\"/templates/design-13/images/room_3.jpg\\" rel=\\"prettyPhoto\\">Open Gallery</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\\"cpt-detail\\">\r\n<h2 class=\\"cpt-title\\"><a href=\\"#\\">Business ROOM SUPERIOR</a></h2>\r\n<div class=\\"cpt-desc\\">from $199 per night</div>\r\n</div>\r\n</div>', 1, 'Buttom', 4);

-- --------------------------------------------------------

--
-- Table structure for table `widgets_pages`
--

CREATE TABLE IF NOT EXISTS `widgets_pages` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_type` varchar(128) CHARACTER SET utf8 NOT NULL,
  `column_width` int(4) unsigned NOT NULL,
  `page_width` int(4) unsigned NOT NULL,
  `identificator` varchar(128) CHARACTER SET utf8 NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `widgets` varchar(256) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `widgets_pages`
--

INSERT INTO `widgets_pages` (`page_id`, `template_type`, `column_width`, `page_width`, `identificator`, `name`, `widgets`) VALUES
(1, '2columns-right', 30, 780, 'product_page', 'Product Page', 'C_h_banner|C_syst_gallery|C_syst_contact_form|C_syst_gallery_14'),
(2, '2columns-left', 26, 1000, 'category', 'Category Page', 'L_h_banner|L_syst_contact_form'),
(5, '1column', 0, 800, 'home', 'Home Page', ''),
(6, '2columns-left', 30, 800, 'default', 'Default Page', 'L_upcoming_events|L_our_rooms|L_latest_news_promos'),
(7, '3columns', 30, 800, 'col3', 'Three Column Page', 'L_syst_left_navigation|L_syst_newsletter|L_syst_flexbanner|C_syst_gallery|R_syst_flexbanner2|R_contact_data');

-- --------------------------------------------------------

--
-- Table structure for table `widgets_settings`
--

CREATE TABLE IF NOT EXISTS `widgets_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `head_bg_color` varchar(10) NOT NULL,
  `head_text_color` varchar(10) NOT NULL,
  `content_bg_color` varchar(10) NOT NULL,
  `content_text_color` varchar(12) NOT NULL,
  `border_radius` int(3) NOT NULL,
  `widget_border_color` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `widgets_settings`
--

INSERT INTO `widgets_settings` (`id`, `head_bg_color`, `head_text_color`, `content_bg_color`, `content_text_color`, `border_radius`, `widget_border_color`) VALUES
(1, 'FFFFFF', 'FFFFFF', 'FFFFFF', 'FFFFFF', 0, 'FFFFFF');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
