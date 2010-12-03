-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 14, 2010 at 09:03 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `utakara`
--

-- --------------------------------------------------------

--
-- Table structure for table `public_fstd_origin`
--

CREATE TABLE IF NOT EXISTS `public_fstd_origin` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `origin` varchar(64) NOT NULL,
  `date` int(9) NOT NULL,
  `note` int(11) DEFAULT '0',
  `accepted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `public_fstd_origin`
--

INSERT INTO `public_fstd_origin` (`id`, `title`, `origin`, `date`, `note`, `accepted`) VALUES
(1, 'Karma', 'Tales of the Abyss', 2010, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_acl_groups`
--

CREATE TABLE IF NOT EXISTS `uta_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_acl_groups`
--

INSERT INTO `uta_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 85, 0, 1),
(1, 0, 93, 0, 1),
(1, 0, 111, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 0, 0, 23, 0),
(7, 2, 0, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_acl_options`
--

CREATE TABLE IF NOT EXISTS `uta_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=118 ;

--
-- Dumping data for table `uta_acl_options`
--

INSERT INTO `uta_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'm_', 1, 1, 0),
(32, 'm_approve', 1, 1, 0),
(33, 'm_chgposter', 1, 1, 0),
(34, 'm_delete', 1, 1, 0),
(35, 'm_edit', 1, 1, 0),
(36, 'm_info', 1, 1, 0),
(37, 'm_lock', 1, 1, 0),
(38, 'm_merge', 1, 1, 0),
(39, 'm_move', 1, 1, 0),
(40, 'm_report', 1, 1, 0),
(41, 'm_split', 1, 1, 0),
(42, 'm_ban', 1, 0, 0),
(43, 'm_warn', 1, 0, 0),
(44, 'a_', 1, 0, 0),
(45, 'a_aauth', 1, 0, 0),
(46, 'a_attach', 1, 0, 0),
(47, 'a_authgroups', 1, 0, 0),
(48, 'a_authusers', 1, 0, 0),
(49, 'a_backup', 1, 0, 0),
(50, 'a_ban', 1, 0, 0),
(51, 'a_bbcode', 1, 0, 0),
(52, 'a_board', 1, 0, 0),
(53, 'a_bots', 1, 0, 0),
(54, 'a_clearlogs', 1, 0, 0),
(55, 'a_email', 1, 0, 0),
(56, 'a_fauth', 1, 0, 0),
(57, 'a_forum', 1, 0, 0),
(58, 'a_forumadd', 1, 0, 0),
(59, 'a_forumdel', 1, 0, 0),
(60, 'a_group', 1, 0, 0),
(61, 'a_groupadd', 1, 0, 0),
(62, 'a_groupdel', 1, 0, 0),
(63, 'a_icons', 1, 0, 0),
(64, 'a_jabber', 1, 0, 0),
(65, 'a_language', 1, 0, 0),
(66, 'a_mauth', 1, 0, 0),
(67, 'a_modules', 1, 0, 0),
(68, 'a_names', 1, 0, 0),
(69, 'a_phpinfo', 1, 0, 0),
(70, 'a_profile', 1, 0, 0),
(71, 'a_prune', 1, 0, 0),
(72, 'a_ranks', 1, 0, 0),
(73, 'a_reasons', 1, 0, 0),
(74, 'a_roles', 1, 0, 0),
(75, 'a_search', 1, 0, 0),
(76, 'a_server', 1, 0, 0),
(77, 'a_styles', 1, 0, 0),
(78, 'a_switchperm', 1, 0, 0),
(79, 'a_uauth', 1, 0, 0),
(80, 'a_user', 1, 0, 0),
(81, 'a_userdel', 1, 0, 0),
(82, 'a_viewauth', 1, 0, 0),
(83, 'a_viewlogs', 1, 0, 0),
(84, 'a_words', 1, 0, 0),
(85, 'u_', 1, 0, 0),
(86, 'u_attach', 1, 0, 0),
(87, 'u_chgavatar', 1, 0, 0),
(88, 'u_chgcensors', 1, 0, 0),
(89, 'u_chgemail', 1, 0, 0),
(90, 'u_chggrp', 1, 0, 0),
(91, 'u_chgname', 1, 0, 0),
(92, 'u_chgpasswd', 1, 0, 0),
(93, 'u_download', 1, 0, 0),
(94, 'u_hideonline', 1, 0, 0),
(95, 'u_ignoreflood', 1, 0, 0),
(96, 'u_masspm', 1, 0, 0),
(97, 'u_masspm_group', 1, 0, 0),
(98, 'u_pm_attach', 1, 0, 0),
(99, 'u_pm_bbcode', 1, 0, 0),
(100, 'u_pm_delete', 1, 0, 0),
(101, 'u_pm_download', 1, 0, 0),
(102, 'u_pm_edit', 1, 0, 0),
(103, 'u_pm_emailpm', 1, 0, 0),
(104, 'u_pm_flash', 1, 0, 0),
(105, 'u_pm_forward', 1, 0, 0),
(106, 'u_pm_img', 1, 0, 0),
(107, 'u_pm_printpm', 1, 0, 0),
(108, 'u_pm_smilies', 1, 0, 0),
(109, 'u_readpm', 1, 0, 0),
(110, 'u_savedrafts', 1, 0, 0),
(111, 'u_search', 1, 0, 0),
(112, 'u_sendemail', 1, 0, 0),
(113, 'u_sendim', 1, 0, 0),
(114, 'u_sendpm', 1, 0, 0),
(115, 'u_sig', 1, 0, 0),
(116, 'u_viewonline', 1, 0, 0),
(117, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_acl_roles`
--

CREATE TABLE IF NOT EXISTS `uta_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dumping data for table `uta_acl_roles`
--

INSERT INTO `uta_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `uta_acl_roles_data`
--

CREATE TABLE IF NOT EXISTS `uta_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_acl_roles_data`
--

INSERT INTO `uta_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 44, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 66, 1),
(1, 68, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(2, 44, 1),
(2, 47, 1),
(2, 48, 1),
(2, 56, 1),
(2, 57, 1),
(2, 58, 1),
(2, 59, 1),
(2, 66, 1),
(2, 71, 1),
(2, 79, 1),
(2, 82, 1),
(2, 83, 1),
(3, 44, 1),
(3, 47, 1),
(3, 48, 1),
(3, 50, 1),
(3, 60, 1),
(3, 61, 1),
(3, 62, 1),
(3, 72, 1),
(3, 79, 1),
(3, 80, 1),
(3, 82, 1),
(3, 83, 1),
(4, 44, 1),
(4, 45, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(5, 85, 1),
(5, 86, 1),
(5, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 1),
(6, 89, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 117, 1),
(7, 85, 1),
(7, 87, 1),
(7, 88, 1),
(7, 89, 1),
(7, 92, 1),
(7, 93, 1),
(7, 94, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 105, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 114, 1),
(7, 115, 1),
(7, 117, 1),
(8, 85, 1),
(8, 87, 1),
(8, 88, 1),
(8, 89, 1),
(8, 92, 1),
(8, 93, 1),
(8, 94, 1),
(8, 115, 1),
(8, 117, 1),
(8, 96, 0),
(8, 97, 0),
(8, 109, 0),
(8, 114, 0),
(9, 85, 1),
(9, 88, 1),
(9, 89, 1),
(9, 92, 1),
(9, 93, 1),
(9, 94, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 105, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 114, 1),
(9, 115, 1),
(9, 117, 1),
(9, 87, 0),
(9, 96, 0),
(9, 97, 0),
(10, 31, 1),
(10, 32, 1),
(10, 42, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 43, 1),
(11, 31, 1),
(11, 32, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 43, 1),
(12, 31, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 40, 1),
(13, 31, 1),
(13, 32, 1),
(13, 35, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(20, 15, 0),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1),
(23, 96, 0),
(23, 97, 0),
(23, 114, 0),
(24, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_acl_users`
--

CREATE TABLE IF NOT EXISTS `uta_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_acl_users`
--

INSERT INTO `uta_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_attachments`
--

CREATE TABLE IF NOT EXISTS `uta_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_banlist`
--

CREATE TABLE IF NOT EXISTS `uta_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_banlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_bbcodes`
--

CREATE TABLE IF NOT EXISTS `uta_bbcodes` (
  `bbcode_id` tinyint(3) NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_bbcodes`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_bookmarks`
--

CREATE TABLE IF NOT EXISTS `uta_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_bookmarks`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_bots`
--

CREATE TABLE IF NOT EXISTS `uta_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `uta_bots`
--

INSERT INTO `uta_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider+(', ''),
(6, 1, 'Exabot [Bot]', 8, 'Exabot/', ''),
(7, 1, 'FAST Enterprise [Crawler]', 9, 'FAST Enterprise Crawler', ''),
(8, 1, 'FAST WebCrawler [Crawler]', 10, 'FAST-WebCrawler/', ''),
(9, 1, 'Francis [Bot]', 11, 'http://www.neomo.de/', ''),
(10, 1, 'Gigabot [Bot]', 12, 'Gigabot/', ''),
(11, 1, 'Google Adsense [Bot]', 13, 'Mediapartners-Google', ''),
(12, 1, 'Google Desktop', 14, 'Google Desktop', ''),
(13, 1, 'Google Feedfetcher', 15, 'Feedfetcher-Google', ''),
(14, 1, 'Google [Bot]', 16, 'Googlebot', ''),
(15, 1, 'Heise IT-Markt [Crawler]', 17, 'heise-IT-Markt-Crawler', ''),
(16, 1, 'Heritrix [Crawler]', 18, 'heritrix/1.', ''),
(17, 1, 'IBM Research [Bot]', 19, 'ibm.com/cs/crawler', ''),
(18, 1, 'ICCrawler - ICjobs', 20, 'ICCrawler - ICjobs', ''),
(19, 1, 'ichiro [Crawler]', 21, 'ichiro/', ''),
(20, 1, 'Majestic-12 [Bot]', 22, 'MJ12bot/', ''),
(21, 1, 'Metager [Bot]', 23, 'MetagerBot/', ''),
(22, 1, 'MSN NewsBlogs', 24, 'msnbot-NewsBlogs/', ''),
(23, 1, 'MSN [Bot]', 25, 'msnbot/', ''),
(24, 1, 'MSNbot Media', 26, 'msnbot-media/', ''),
(25, 1, 'NG-Search [Bot]', 27, 'NG-Search/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Nutch/CVS [Bot]', 29, 'NutchCVS/', ''),
(28, 1, 'OmniExplorer [Bot]', 30, 'OmniExplorer_Bot/', ''),
(29, 1, 'Online link [Validator]', 31, 'online link validator', ''),
(30, 1, 'psbot [Picsearch]', 32, 'psbot/0', ''),
(31, 1, 'Seekport [Bot]', 33, 'Seekbot/', ''),
(32, 1, 'Sensis [Crawler]', 34, 'Sensis Web Crawler', ''),
(33, 1, 'SEO Crawler', 35, 'SEO search Crawler/', ''),
(34, 1, 'Seoma [Crawler]', 36, 'Seoma [SEO Crawler]', ''),
(35, 1, 'SEOSearch [Crawler]', 37, 'SEOsearch/', ''),
(36, 1, 'Snappy [Bot]', 38, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(37, 1, 'Steeler [Crawler]', 39, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(38, 1, 'Synoo [Bot]', 40, 'SynooBot/', ''),
(39, 1, 'Telekom [Bot]', 41, 'crawleradmin.t-info@telekom.de', ''),
(40, 1, 'TurnitinBot [Bot]', 42, 'TurnitinBot/', ''),
(41, 1, 'Voyager [Bot]', 43, 'voyager/1.0', ''),
(42, 1, 'W3 [Sitesearch]', 44, 'W3 SiteSearch Crawler', ''),
(43, 1, 'W3C [Linkcheck]', 45, 'W3C-checklink/', ''),
(44, 1, 'W3C [Validator]', 46, 'W3C_*Validator', ''),
(45, 1, 'WiseNut [Bot]', 47, 'http://www.WISEnutbot.com', ''),
(46, 1, 'YaCy [Bot]', 48, 'yacybot', ''),
(47, 1, 'Yahoo MMCrawler [Bot]', 49, 'Yahoo-MMCrawler/', ''),
(48, 1, 'Yahoo Slurp [Bot]', 50, 'Yahoo! DE Slurp', ''),
(49, 1, 'Yahoo [Bot]', 51, 'Yahoo! Slurp', ''),
(50, 1, 'YahooSeeker [Bot]', 52, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `uta_config`
--

CREATE TABLE IF NOT EXISTS `uta_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_config`
--

INSERT INTO `uta_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_upload', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '168877a19b847354d703b76a00679f72', 0),
('board_contact', 'yohdono27@gmail.com', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_dst', '0', 0),
('board_email', 'yohdono27@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_timezone', '0', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('captcha_plugin', 'phpbb_captcha_gd', 0),
('captcha_gd', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('confirm_refresh', '1', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_izylr', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('database_gc', '604800', 0),
('dbms_version', '5.1.36-community-log', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_style', '3', 0),
('display_last_edited', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('delete_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_package_size', '50', 0),
('enable_confirm', '1', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('feed_enable', '0', 0),
('feed_limit', '10', 0),
('feed_overall_forums', '1', 0),
('feed_overall_forums_limit', '15', 0),
('feed_overall_topics', '0', 0),
('feed_overall_topics_limit', '15', 0),
('feed_forum', '1', 0),
('feed_topic', '1', 0),
('feed_item_statistics', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_password', '', 0),
('jab_package_size', '20', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('new_member_post_limit', '3', 0),
('new_member_group_default', '0', 0),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('queue_interval', '600', 0),
('ranks_path', 'images/ranks', 0),
('require_activation', '0', 0),
('referer_validation', '1', 0),
('script_path', '/Utakara', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_interval', '0', 0),
('search_anonymous_interval', '0', 0),
('search_type', 'fulltext_native', 0),
('search_store_results', '1800', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_length', '3600', 0),
('site_desc', 'Karaoke gestionnary', 0),
('sitename', 'Utakara', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '25', 0),
('smtp_username', '', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('version', '3.0.6', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('cache_last_gc', '1279140602', 1),
('cron_lock', '0', 1),
('database_last_gc', '1278599412', 1),
('last_queue_run', '0', 1),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '2', 1),
('newest_username', 'admin', 1),
('num_files', '0', 1),
('num_posts', '1', 1),
('num_topics', '1', 1),
('num_users', '1', 1),
('rand_seed', 'cf00a308f2ea3da091550eb215e32e5a', 1),
('rand_seed_last_update', '1279141206', 1),
('record_online_date', '1278762239', 1),
('record_online_users', '2', 1),
('search_indexing_state', '', 1),
('search_last_gc', '1279140765', 1),
('session_last_gc', '1279141206', 1),
('upload_dir_size', '0', 1),
('warnings_last_gc', '1279138904', 1),
('board_startdate', '1272966744', 0),
('default_lang', 'fr', 0),
('questionnaire_unique_id', 'e9f9d0543a21664b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_confirm`
--

CREATE TABLE IF NOT EXISTS `uta_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_confirm`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_disallow`
--

CREATE TABLE IF NOT EXISTS `uta_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_disallow`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_drafts`
--

CREATE TABLE IF NOT EXISTS `uta_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_drafts`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_extensions`
--

CREATE TABLE IF NOT EXISTS `uta_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `uta_extensions`
--

INSERT INTO `uta_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `uta_extension_groups`
--

CREATE TABLE IF NOT EXISTS `uta_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `uta_extension_groups`
--

INSERT INTO `uta_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'Images', 1, 1, 1, '', 0, '', 0),
(2, 'Archives', 0, 1, 1, '', 0, '', 0),
(3, 'Plain Text', 0, 0, 1, '', 0, '', 0),
(4, 'Documents', 0, 0, 1, '', 0, '', 0),
(5, 'Real Media', 3, 0, 1, '', 0, '', 0),
(6, 'Windows Media', 2, 0, 1, '', 0, '', 0),
(7, 'Flash Files', 5, 0, 1, '', 0, '', 0),
(8, 'Quicktime Media', 6, 0, 1, '', 0, '', 0),
(9, 'Downloadable Files', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_forums`
--

CREATE TABLE IF NOT EXISTS `uta_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `uta_forums`
--

INSERT INTO `uta_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts`, `forum_topics`, `forum_topics_real`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `forum_options`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 1, 4, '', 'Your first category', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1272966744, 'admin', 'AA0000', 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:19:"Your first category";i:1;i:0;}}', 'Your first forum', 'Description of your first forum.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 1, 1, 1, 2, 'Welcome to phpBB3', 1272966744, 'admin', 'AA0000', 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_forums_access`
--

CREATE TABLE IF NOT EXISTS `uta_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_forums_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_forums_track`
--

CREATE TABLE IF NOT EXISTS `uta_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_forums_track`
--

INSERT INTO `uta_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1275951148);

-- --------------------------------------------------------

--
-- Table structure for table `uta_forums_watch`
--

CREATE TABLE IF NOT EXISTS `uta_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_forums_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_groups`
--

CREATE TABLE IF NOT EXISTS `uta_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `uta_groups`
--

INSERT INTO `uta_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, '00AA00', 0, 0, 0, 0, 1),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_icons`
--

CREATE TABLE IF NOT EXISTS `uta_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `uta_icons`
--

INSERT INTO `uta_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_lang`
--

CREATE TABLE IF NOT EXISTS `uta_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `uta_lang`
--

INSERT INTO `uta_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group'),
(2, 'fr', 'fr', 'French (Formal Honorifics)', 'Français (Vouvoiement)', 'Maël Soucaze');

-- --------------------------------------------------------

--
-- Table structure for table `uta_log`
--

CREATE TABLE IF NOT EXISTS `uta_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `log_time` (`log_time`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=242 ;

--
-- Dumping data for table `uta_log`
--

INSERT INTO `uta_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 2, 2, 0, 0, 0, '127.0.0.1', 1272966751, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:417:"<strong>EMAIL/PHP/mail()</strong><br /><em>/Utakara/install/index.php</em><br /><br /><b>[phpBB Debug] PHP Notice</b>: in file <b>/includes/functions_messenger.php</b> on line <b>1552</b>: <b>mail() [<a href=''function.mail''>function.mail</a>]: Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()</b><br />\n<br />";}'),
(2, 0, 2, 0, 0, 0, '127.0.0.1', 1272966751, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:"3.0.6";}'),
(3, 0, 2, 0, 0, 0, '127.0.0.1', 1272973642, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(4, 0, 2, 0, 0, 0, '127.0.0.1', 1272974345, 'LOG_MODULE_ADD', 'a:1:{i:0;s:7:"utakara";}'),
(5, 0, 2, 0, 0, 0, '127.0.0.1', 1272974528, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:7:"utakara";}'),
(6, 0, 2, 0, 0, 0, '127.0.0.1', 1272974546, 'LOG_MODULE_ADD', 'a:1:{i:0;s:7:"Utakara";}'),
(7, 0, 2, 0, 0, 0, '127.0.0.1', 1272974794, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:7:"Utakara";}'),
(8, 0, 2, 0, 0, 0, '127.0.0.1', 1272974810, 'LOG_MODULE_ADD', 'a:1:{i:0;s:7:"Utakara";}'),
(9, 0, 2, 0, 0, 0, '127.0.0.1', 1273062594, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(10, 0, 2, 0, 0, 0, '127.0.0.1', 1276011807, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(11, 0, 2, 0, 0, 0, '127.0.0.1', 1276011973, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"UCP_UTAKARA_LIST";}'),
(12, 0, 2, 0, 0, 0, '127.0.0.1', 1276012010, 'LOG_MODULE_REMOVED', 'a:1:{i:0;s:16:"UCP_UTAKARA_LIST";}'),
(13, 0, 2, 0, 0, 0, '127.0.0.1', 1276012029, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:7:"Utakara";}'),
(14, 0, 2, 0, 0, 0, '127.0.0.1', 1276012048, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"UCP_UTAKARA_LIST";}'),
(15, 0, 2, 0, 0, 0, '127.0.0.1', 1276012068, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:16:"UCP_UTAKARA_LIST";}'),
(16, 0, 2, 0, 0, 0, '127.0.0.1', 1276012094, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:"UCP_UTAKARA_CREATE";}'),
(17, 0, 2, 0, 0, 0, '127.0.0.1', 1276012104, 'LOG_MODULE_ADD', 'a:1:{i:0;s:16:"UCP_UTAKARA_EDIT";}'),
(18, 0, 2, 0, 0, 0, '127.0.0.1', 1276012115, 'LOG_MODULE_ADD', 'a:1:{i:0;s:18:"UCP_UTAKARA_DELETE";}'),
(19, 0, 2, 0, 0, 0, '127.0.0.1', 1276012126, 'LOG_MODULE_EDIT', 'a:1:{i:0;s:18:"UCP_UTAKARA_CREATE";}'),
(20, 0, 2, 0, 0, 0, '127.0.0.1', 1276089923, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(21, 0, 2, 0, 0, 0, '127.0.0.1', 1276089978, 'LOG_TEMPLATE_ADD_FS', 'a:1:{i:0;s:10:"subsilver2";}'),
(22, 0, 2, 0, 0, 0, '127.0.0.1', 1276089978, 'LOG_THEME_ADD_FS', 'a:1:{i:0;s:10:"subsilver2";}'),
(23, 0, 2, 0, 0, 0, '127.0.0.1', 1276089978, 'LOG_IMAGESET_ADD_FS', 'a:1:{i:0;s:10:"subsilver2";}'),
(24, 0, 2, 0, 0, 0, '127.0.0.1', 1276089978, 'LOG_STYLE_ADD', 'a:1:{i:0;s:10:"subsilver2";}'),
(25, 0, 2, 0, 0, 0, '127.0.0.1', 1276090009, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:10:"subsilver2";}'),
(26, 0, 2, 0, 0, 0, '127.0.0.1', 1276090053, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:9:"prosilver";}'),
(27, 0, 2, 0, 0, 0, '127.0.0.1', 1277906448, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(28, 0, 2, 0, 0, 0, '127.0.0.1', 1277906467, 'LOG_TEMPLATE_ADD_FS', 'a:1:{i:0;s:11:"coffee_time";}'),
(29, 0, 2, 0, 0, 0, '127.0.0.1', 1277906467, 'LOG_THEME_ADD_DB', 'a:1:{i:0;s:11:"coffee_time";}'),
(30, 0, 2, 0, 0, 0, '127.0.0.1', 1277906467, 'LOG_IMAGESET_ADD_FS', 'a:1:{i:0;s:11:"coffee_time";}'),
(31, 0, 2, 0, 0, 0, '127.0.0.1', 1277906467, 'LOG_STYLE_ADD', 'a:1:{i:0;s:11:"coffee_time";}'),
(32, 0, 2, 0, 0, 0, '127.0.0.1', 1277908566, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(33, 0, 2, 0, 0, 0, '127.0.0.1', 1277908566, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(34, 0, 2, 0, 0, 0, '127.0.0.1', 1277908607, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(35, 0, 2, 0, 0, 0, '127.0.0.1', 1277908607, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(36, 0, 2, 0, 0, 0, '127.0.0.1', 1277988306, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(37, 0, 2, 0, 0, 0, '127.0.0.1', 1277988626, 'LOG_CONFIG_SETTINGS', ''),
(38, 0, 2, 0, 0, 0, '127.0.0.1', 1277991330, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(39, 0, 2, 0, 0, 0, '127.0.0.1', 1277991553, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(40, 0, 2, 0, 0, 0, '127.0.0.1', 1277994937, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(41, 0, 2, 0, 0, 0, '127.0.0.1', 1278013937, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(42, 0, 2, 0, 0, 0, '127.0.0.1', 1278013994, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(43, 0, 2, 0, 0, 0, '127.0.0.1', 1278014067, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(44, 0, 2, 0, 0, 0, '127.0.0.1', 1278014188, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(45, 0, 2, 0, 0, 0, '127.0.0.1', 1278509032, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(46, 0, 2, 0, 0, 0, '127.0.0.1', 1278509090, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(47, 0, 2, 0, 0, 0, '127.0.0.1', 1278510512, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(48, 0, 2, 0, 0, 0, '127.0.0.1', 1278510639, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(49, 0, 2, 0, 0, 0, '127.0.0.1', 1278600055, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(50, 0, 2, 0, 0, 0, '127.0.0.1', 1278600378, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(51, 0, 2, 0, 0, 0, '127.0.0.1', 1278600378, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(52, 0, 2, 0, 0, 0, '127.0.0.1', 1278600739, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(53, 0, 2, 0, 0, 0, '127.0.0.1', 1278600739, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(54, 0, 2, 0, 0, 0, '127.0.0.1', 1278600771, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(55, 0, 2, 0, 0, 0, '127.0.0.1', 1278600771, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(56, 0, 2, 0, 0, 0, '127.0.0.1', 1278601111, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(57, 0, 2, 0, 0, 0, '127.0.0.1', 1278601111, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(58, 0, 2, 0, 0, 0, '127.0.0.1', 1278602017, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(59, 0, 2, 0, 0, 0, '127.0.0.1', 1278602017, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(60, 0, 2, 0, 0, 0, '127.0.0.1', 1278602094, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(61, 0, 2, 0, 0, 0, '127.0.0.1', 1278602094, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(62, 0, 2, 0, 0, 0, '127.0.0.1', 1278602165, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(63, 0, 2, 0, 0, 0, '127.0.0.1', 1278602165, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(64, 0, 2, 0, 0, 0, '127.0.0.1', 1278602238, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(65, 0, 2, 0, 0, 0, '127.0.0.1', 1278602238, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(66, 0, 2, 0, 0, 0, '127.0.0.1', 1278602316, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(67, 0, 2, 0, 0, 0, '127.0.0.1', 1278602316, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(68, 0, 2, 0, 0, 0, '127.0.0.1', 1278602349, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(69, 0, 2, 0, 0, 0, '127.0.0.1', 1278602349, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(70, 0, 2, 0, 0, 0, '127.0.0.1', 1278602380, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(71, 0, 2, 0, 0, 0, '127.0.0.1', 1278602380, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(72, 0, 2, 0, 0, 0, '127.0.0.1', 1278602490, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(73, 0, 2, 0, 0, 0, '127.0.0.1', 1278602490, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(74, 0, 2, 0, 0, 0, '127.0.0.1', 1278602629, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(75, 0, 2, 0, 0, 0, '127.0.0.1', 1278602629, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(76, 0, 2, 0, 0, 0, '127.0.0.1', 1278602684, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(77, 0, 2, 0, 0, 0, '127.0.0.1', 1278602684, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(78, 0, 2, 0, 0, 0, '127.0.0.1', 1278602982, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(79, 0, 2, 0, 0, 0, '127.0.0.1', 1278602982, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(80, 0, 2, 0, 0, 0, '127.0.0.1', 1278603080, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(81, 0, 2, 0, 0, 0, '127.0.0.1', 1278603080, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(82, 0, 2, 0, 0, 0, '127.0.0.1', 1278603109, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(83, 0, 2, 0, 0, 0, '127.0.0.1', 1278603109, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(84, 0, 2, 0, 0, 0, '127.0.0.1', 1278603195, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(85, 0, 2, 0, 0, 0, '127.0.0.1', 1278603195, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(86, 0, 2, 0, 0, 0, '127.0.0.1', 1278603722, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(87, 0, 2, 0, 0, 0, '127.0.0.1', 1278603722, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(88, 0, 2, 0, 0, 0, '127.0.0.1', 1278606869, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(89, 0, 2, 0, 0, 0, '127.0.0.1', 1278606869, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(90, 0, 2, 0, 0, 0, '127.0.0.1', 1278606995, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(91, 0, 2, 0, 0, 0, '127.0.0.1', 1278606995, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(92, 0, 2, 0, 0, 0, '127.0.0.1', 1278607096, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(93, 0, 2, 0, 0, 0, '127.0.0.1', 1278607158, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(94, 0, 2, 0, 0, 0, '127.0.0.1', 1278607306, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(95, 0, 2, 0, 0, 0, '127.0.0.1', 1278607568, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(96, 0, 2, 0, 0, 0, '127.0.0.1', 1278607638, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(97, 0, 2, 0, 0, 0, '127.0.0.1', 1278607698, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(98, 0, 2, 0, 0, 0, '127.0.0.1', 1278677964, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(99, 0, 2, 0, 0, 0, '127.0.0.1', 1278678034, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:5:"u_faq";}'),
(100, 0, 2, 0, 0, 0, '127.0.0.1', 1278678034, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:10:"u_faq.html";}'),
(101, 0, 2, 0, 0, 0, '127.0.0.1', 1278678059, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:5:"u_faq";}'),
(102, 0, 2, 0, 0, 0, '127.0.0.1', 1278678059, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:10:"u_faq.html";}'),
(103, 0, 2, 0, 0, 0, '127.0.0.1', 1278678182, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(104, 0, 2, 0, 0, 0, '127.0.0.1', 1278678182, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(105, 0, 2, 0, 0, 0, '127.0.0.1', 1278678290, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(106, 0, 2, 0, 0, 0, '127.0.0.1', 1278678290, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(107, 0, 2, 0, 0, 0, '127.0.0.1', 1278679411, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_footer";}'),
(108, 0, 2, 0, 0, 0, '127.0.0.1', 1278679411, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_footer.html";}'),
(109, 0, 2, 0, 0, 0, '127.0.0.1', 1278679466, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(110, 0, 2, 0, 0, 0, '127.0.0.1', 1278679492, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(111, 0, 2, 0, 0, 0, '127.0.0.1', 1278679531, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(112, 0, 2, 0, 0, 0, '127.0.0.1', 1278679713, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(113, 0, 2, 0, 0, 0, '127.0.0.1', 1278679869, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(114, 0, 2, 0, 0, 0, '127.0.0.1', 1278679920, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(115, 0, 2, 0, 0, 0, '127.0.0.1', 1278680333, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(116, 0, 2, 0, 0, 0, '127.0.0.1', 1278680333, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(117, 0, 2, 0, 0, 0, '127.0.0.1', 1278680391, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(118, 0, 2, 0, 0, 0, '127.0.0.1', 1278680391, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(119, 0, 2, 0, 0, 0, '127.0.0.1', 1278686378, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(120, 0, 2, 0, 0, 0, '127.0.0.1', 1278686815, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(121, 0, 2, 0, 0, 0, '127.0.0.1', 1278686815, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(122, 0, 2, 0, 0, 0, '127.0.0.1', 1278687292, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(123, 0, 2, 0, 0, 0, '127.0.0.1', 1278687292, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(124, 0, 2, 0, 0, 0, '127.0.0.1', 1278687533, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(125, 0, 2, 0, 0, 0, '127.0.0.1', 1278687533, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(126, 0, 2, 0, 0, 0, '127.0.0.1', 1278687744, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(127, 0, 2, 0, 0, 0, '127.0.0.1', 1278687768, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(128, 0, 2, 0, 0, 0, '127.0.0.1', 1278687800, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(129, 0, 2, 0, 0, 0, '127.0.0.1', 1278690196, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(130, 0, 2, 0, 0, 0, '127.0.0.1', 1278690738, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(131, 0, 2, 0, 0, 0, '127.0.0.1', 1278690898, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(132, 0, 2, 0, 0, 0, '127.0.0.1', 1278690998, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(133, 0, 2, 0, 0, 0, '127.0.0.1', 1278691037, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(134, 0, 2, 0, 0, 0, '127.0.0.1', 1278691433, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(135, 0, 2, 0, 0, 0, '127.0.0.1', 1278691480, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(136, 0, 2, 0, 0, 0, '127.0.0.1', 1278691517, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(137, 0, 2, 0, 0, 0, '127.0.0.1', 1278691601, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(138, 0, 2, 0, 0, 0, '127.0.0.1', 1278691691, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(139, 0, 2, 0, 0, 0, '127.0.0.1', 1278694010, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(140, 0, 2, 0, 0, 0, '127.0.0.1', 1278694848, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(141, 0, 2, 0, 0, 0, '127.0.0.1', 1278694989, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(142, 0, 2, 0, 0, 0, '127.0.0.1', 1278694996, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(143, 0, 2, 0, 0, 0, '127.0.0.1', 1278695043, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(144, 0, 2, 0, 0, 0, '127.0.0.1', 1278695507, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(145, 0, 2, 0, 0, 0, '127.0.0.1', 1278695679, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(146, 0, 2, 0, 0, 0, '127.0.0.1', 1278695750, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(147, 0, 2, 0, 0, 0, '127.0.0.1', 1278695810, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(148, 0, 2, 0, 0, 0, '127.0.0.1', 1278695835, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:4:"home";}'),
(149, 0, 2, 0, 0, 0, '127.0.0.1', 1278695835, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"home.html";}'),
(150, 0, 2, 0, 0, 0, '127.0.0.1', 1278701511, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(151, 0, 2, 0, 0, 0, '127.0.0.1', 1278701524, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(152, 0, 2, 0, 0, 0, '127.0.0.1', 1278701748, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(153, 0, 2, 0, 0, 0, '127.0.0.1', 1278701777, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(154, 0, 2, 0, 0, 0, '127.0.0.1', 1278702458, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(155, 0, 2, 0, 0, 0, '127.0.0.1', 1278702470, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(156, 0, 2, 0, 0, 0, '127.0.0.1', 1278702513, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(157, 0, 2, 0, 0, 0, '127.0.0.1', 1278702545, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(158, 0, 2, 0, 0, 0, '127.0.0.1', 1278702629, 'LOG_CONFIG_SETTINGS', ''),
(159, 0, 2, 0, 0, 0, '127.0.0.1', 1278702662, 'LOG_CONFIG_SETTINGS', ''),
(160, 0, 2, 0, 0, 0, '127.0.0.1', 1278702698, 'LOG_CONFIG_SETTINGS', ''),
(161, 0, 2, 0, 0, 0, '127.0.0.1', 1278702707, 'LOG_CONFIG_SETTINGS', ''),
(162, 0, 2, 0, 0, 0, '127.0.0.1', 1278702726, 'LOG_CONFIG_SETTINGS', ''),
(163, 0, 2, 0, 0, 0, '127.0.0.1', 1278746641, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(164, 0, 2, 0, 0, 0, '127.0.0.1', 1278761657, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(165, 0, 2, 0, 0, 0, '127.0.0.1', 1278761683, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(166, 0, 2, 0, 0, 0, '127.0.0.1', 1279026468, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(167, 0, 2, 0, 0, 0, '127.0.0.1', 1279027468, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(168, 0, 2, 0, 0, 0, '127.0.0.1', 1279027468, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(169, 0, 2, 0, 0, 0, '127.0.0.1', 1279034993, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(170, 0, 2, 0, 0, 0, '127.0.0.1', 1279035210, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(171, 0, 2, 0, 0, 0, '127.0.0.1', 1279035210, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(172, 0, 2, 0, 0, 0, '127.0.0.1', 1279036286, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(173, 0, 2, 0, 0, 0, '127.0.0.1', 1279036286, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(174, 0, 2, 0, 0, 0, '127.0.0.1', 1279061969, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(175, 0, 2, 0, 0, 0, '127.0.0.1', 1279061983, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(176, 0, 2, 0, 0, 0, '127.0.0.1', 1279062051, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(177, 0, 2, 0, 0, 0, '127.0.0.1', 1279062393, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(178, 0, 2, 0, 0, 0, '127.0.0.1', 1279062855, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(179, 0, 2, 0, 0, 0, '127.0.0.1', 1279062912, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(180, 0, 2, 0, 0, 0, '127.0.0.1', 1279063019, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(181, 0, 2, 0, 0, 0, '127.0.0.1', 1279063084, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(182, 0, 2, 0, 0, 0, '127.0.0.1', 1279063137, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(183, 0, 2, 0, 0, 0, '127.0.0.1', 1279063191, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(184, 0, 2, 0, 0, 0, '127.0.0.1', 1279063191, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(185, 0, 2, 0, 0, 0, '127.0.0.1', 1279063582, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(186, 0, 2, 0, 0, 0, '127.0.0.1', 1279094389, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(187, 0, 2, 0, 0, 0, '127.0.0.1', 1279094401, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(188, 0, 2, 0, 0, 0, '127.0.0.1', 1279094471, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(189, 0, 2, 0, 0, 0, '127.0.0.1', 1279095115, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(190, 0, 2, 0, 0, 0, '127.0.0.1', 1279095150, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(191, 0, 2, 0, 0, 0, '127.0.0.1', 1279095284, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(192, 0, 2, 0, 0, 0, '127.0.0.1', 1279095526, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(193, 0, 2, 0, 0, 0, '127.0.0.1', 1279095773, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(194, 0, 2, 0, 0, 0, '127.0.0.1', 1279095869, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(195, 0, 2, 0, 0, 0, '127.0.0.1', 1279096314, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(196, 0, 2, 0, 0, 0, '127.0.0.1', 1279096415, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(197, 0, 2, 0, 0, 0, '127.0.0.1', 1279098181, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(198, 0, 2, 0, 0, 0, '127.0.0.1', 1279098462, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(199, 0, 2, 0, 0, 0, '127.0.0.1', 1279100354, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(200, 0, 2, 0, 0, 0, '127.0.0.1', 1279100376, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(201, 0, 2, 0, 0, 0, '127.0.0.1', 1279101081, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(202, 0, 2, 0, 0, 0, '127.0.0.1', 1279101090, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(203, 0, 2, 0, 0, 0, '127.0.0.1', 1279101194, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(204, 0, 2, 0, 0, 0, '127.0.0.1', 1279101271, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(205, 0, 2, 0, 0, 0, '127.0.0.1', 1279101356, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(206, 0, 2, 0, 0, 0, '127.0.0.1', 1279101425, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(207, 0, 2, 0, 0, 0, '127.0.0.1', 1279102696, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(208, 0, 2, 0, 0, 0, '127.0.0.1', 1279105288, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(209, 0, 2, 0, 0, 0, '127.0.0.1', 1279105720, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(210, 0, 2, 0, 0, 0, '127.0.0.1', 1279105822, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(211, 0, 2, 0, 0, 0, '127.0.0.1', 1279107712, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(212, 0, 2, 0, 0, 0, '127.0.0.1', 1279108043, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(213, 0, 2, 0, 0, 0, '127.0.0.1', 1279108273, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(214, 0, 2, 0, 0, 0, '127.0.0.1', 1279108684, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(215, 0, 2, 0, 0, 0, '127.0.0.1', 1279109053, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(216, 0, 2, 0, 0, 0, '127.0.0.1', 1279109414, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(217, 0, 2, 0, 0, 0, '127.0.0.1', 1279109838, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(218, 0, 2, 0, 0, 0, '127.0.0.1', 1279109838, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(219, 0, 2, 0, 0, 0, '127.0.0.1', 1279110765, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:14:"overall_header";}'),
(220, 0, 2, 0, 0, 0, '127.0.0.1', 1279110765, 'LOG_TEMPLATE_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:19:"overall_header.html";}'),
(221, 0, 2, 0, 0, 0, '127.0.0.1', 1279111010, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(222, 0, 2, 0, 0, 0, '127.0.0.1', 1279118898, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(223, 0, 2, 0, 0, 0, '127.0.0.1', 1279118921, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(224, 0, 2, 0, 0, 0, '127.0.0.1', 1279120826, 'LOG_LANGUAGE_PACK_INSTALLED', 'a:1:{i:0;s:26:"French (Formal Honorifics)";}'),
(225, 0, 2, 0, 0, 0, '127.0.0.1', 1279121543, 'LOG_CONFIG_SETTINGS', ''),
(226, 0, 2, 0, 0, 0, '127.0.0.1', 1279122157, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(227, 0, 2, 0, 0, 0, '127.0.0.1', 1279125777, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(228, 0, 2, 0, 0, 0, '127.0.0.1', 1279125925, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(229, 0, 2, 0, 0, 0, '127.0.0.1', 1279126227, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(230, 0, 2, 0, 0, 0, '127.0.0.1', 1279126269, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(231, 0, 2, 0, 0, 0, '127.0.0.1', 1279127631, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(232, 0, 2, 0, 0, 0, '127.0.0.1', 1279127773, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(233, 0, 2, 0, 0, 0, '127.0.0.1', 1279129843, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(234, 0, 2, 0, 0, 0, '127.0.0.1', 1279131303, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(235, 0, 2, 0, 0, 0, '127.0.0.1', 1279131485, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(236, 0, 2, 0, 0, 0, '127.0.0.1', 1279133324, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(237, 0, 2, 0, 0, 0, '127.0.0.1', 1279138154, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(238, 0, 2, 0, 0, 0, '127.0.0.1', 1279138171, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(239, 0, 2, 0, 0, 0, '127.0.0.1', 1279140395, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}'),
(240, 0, 2, 0, 0, 0, '127.0.0.1', 1279140756, 'LOG_THEME_EDIT', 'a:2:{i:0;s:11:"coffee_time";i:1;s:0:"";}'),
(241, 0, 2, 0, 0, 0, '127.0.0.1', 1279140762, 'LOG_TEMPLATE_CACHE_CLEARED', 'a:2:{i:0;s:11:"coffee_time";i:1;s:9:"All files";}');

-- --------------------------------------------------------

--
-- Table structure for table `uta_moderator_cache`
--

CREATE TABLE IF NOT EXISTS `uta_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_moderator_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_modules`
--

CREATE TABLE IF NOT EXISTS `uta_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=206 ;

--
-- Dumping data for table `uta_modules`
--

INSERT INTO `uta_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 64, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 41, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 42, 49, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 50, 63, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 65, 84, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 66, 71, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 72, 83, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 85, 108, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 86, 97, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 98, 107, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 109, 164, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 110, 143, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 144, 151, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 152, 163, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 165, 214, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 168, 177, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 178, 189, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 190, 199, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 200, 213, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 215, 228, 'ACP_CAT_STYLES', '', ''),
(22, 1, 1, '', 'acp', 21, 216, 219, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 220, 227, 'ACP_STYLE_COMPONENTS', '', ''),
(24, 1, 1, '', 'acp', 0, 229, 248, 'ACP_CAT_MAINTENANCE', '', ''),
(25, 1, 1, '', 'acp', 24, 230, 239, 'ACP_FORUM_LOGS', '', ''),
(26, 1, 1, '', 'acp', 24, 240, 247, 'ACP_CAT_DATABASE', '', ''),
(27, 1, 1, '', 'acp', 0, 249, 274, 'ACP_CAT_SYSTEM', '', ''),
(28, 1, 1, '', 'acp', 27, 250, 253, 'ACP_AUTOMATION', '', ''),
(29, 1, 1, '', 'acp', 27, 254, 265, 'ACP_GENERAL_TASKS', '', ''),
(30, 1, 1, '', 'acp', 27, 266, 273, 'ACP_MODULE_MANAGEMENT', '', ''),
(31, 1, 1, '', 'acp', 0, 275, 276, 'ACP_CAT_DOT_MODS', '', ''),
(32, 1, 1, 'attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(33, 1, 1, 'attachments', 'acp', 11, 99, 100, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'attachments', 'acp', 11, 101, 102, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(35, 1, 1, 'attachments', 'acp', 11, 103, 104, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(36, 1, 1, 'attachments', 'acp', 11, 105, 106, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(37, 1, 1, 'ban', 'acp', 15, 153, 154, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(38, 1, 1, 'ban', 'acp', 15, 155, 156, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(39, 1, 1, 'ban', 'acp', 15, 157, 158, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(40, 1, 1, 'bbcodes', 'acp', 10, 87, 88, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(41, 1, 1, 'board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(42, 1, 1, 'board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(43, 1, 1, 'board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(44, 1, 1, 'board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(45, 1, 1, 'board', 'acp', 10, 89, 90, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(46, 1, 1, 'board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(47, 1, 1, 'board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(48, 1, 1, 'board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(49, 1, 1, 'board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(50, 1, 1, 'board', 'acp', 4, 43, 44, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(51, 1, 1, 'board', 'acp', 4, 45, 46, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(52, 1, 1, 'board', 'acp', 5, 51, 52, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(53, 1, 1, 'board', 'acp', 5, 53, 54, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(54, 1, 1, 'board', 'acp', 5, 55, 56, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(55, 1, 1, 'board', 'acp', 5, 57, 58, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(56, 1, 1, 'bots', 'acp', 29, 255, 256, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(57, 1, 1, 'captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(58, 1, 0, 'captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(59, 1, 1, 'database', 'acp', 26, 241, 242, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(60, 1, 1, 'database', 'acp', 26, 243, 244, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(61, 1, 1, 'disallow', 'acp', 15, 159, 160, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(62, 1, 1, 'email', 'acp', 29, 257, 258, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(63, 1, 1, 'forums', 'acp', 7, 67, 68, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(64, 1, 1, 'groups', 'acp', 14, 145, 146, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(65, 1, 1, 'icons', 'acp', 10, 91, 92, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(66, 1, 1, 'icons', 'acp', 10, 93, 94, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(67, 1, 1, 'inactive', 'acp', 13, 113, 114, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(68, 1, 1, 'jabber', 'acp', 4, 47, 48, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(69, 1, 1, 'language', 'acp', 29, 259, 260, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(70, 1, 1, 'logs', 'acp', 25, 231, 232, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(71, 1, 1, 'logs', 'acp', 25, 233, 234, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(72, 1, 1, 'logs', 'acp', 25, 235, 236, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(73, 1, 1, 'logs', 'acp', 25, 237, 238, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(74, 1, 1, 'main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(75, 1, 1, 'modules', 'acp', 30, 267, 268, 'ACP', 'acp', 'acl_a_modules'),
(76, 1, 1, 'modules', 'acp', 30, 269, 270, 'UCP', 'ucp', 'acl_a_modules'),
(77, 1, 1, 'modules', 'acp', 30, 271, 272, 'MCP', 'mcp', 'acl_a_modules'),
(78, 1, 1, 'permission_roles', 'acp', 19, 191, 192, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(79, 1, 1, 'permission_roles', 'acp', 19, 193, 194, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(80, 1, 1, 'permission_roles', 'acp', 19, 195, 196, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(81, 1, 1, 'permission_roles', 'acp', 19, 197, 198, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(82, 1, 1, 'permissions', 'acp', 16, 166, 167, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(83, 1, 0, 'permissions', 'acp', 20, 201, 202, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(84, 1, 1, 'permissions', 'acp', 18, 179, 180, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(85, 1, 1, 'permissions', 'acp', 18, 181, 182, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(86, 1, 1, 'permissions', 'acp', 18, 183, 184, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(87, 1, 1, 'permissions', 'acp', 17, 169, 170, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(88, 1, 1, 'permissions', 'acp', 13, 115, 116, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(89, 1, 1, 'permissions', 'acp', 18, 185, 186, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(90, 1, 1, 'permissions', 'acp', 13, 117, 118, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(91, 1, 1, 'permissions', 'acp', 17, 171, 172, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(92, 1, 1, 'permissions', 'acp', 14, 147, 148, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(93, 1, 1, 'permissions', 'acp', 18, 187, 188, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(94, 1, 1, 'permissions', 'acp', 14, 149, 150, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(95, 1, 1, 'permissions', 'acp', 17, 173, 174, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(96, 1, 1, 'permissions', 'acp', 17, 175, 176, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(97, 1, 1, 'permissions', 'acp', 20, 203, 204, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(98, 1, 1, 'permissions', 'acp', 20, 205, 206, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(99, 1, 1, 'permissions', 'acp', 20, 207, 208, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(100, 1, 1, 'permissions', 'acp', 20, 209, 210, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(101, 1, 1, 'permissions', 'acp', 20, 211, 212, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(102, 1, 1, 'php_info', 'acp', 29, 261, 262, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(103, 1, 1, 'profile', 'acp', 13, 119, 120, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(104, 1, 1, 'prune', 'acp', 7, 69, 70, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(105, 1, 1, 'prune', 'acp', 15, 161, 162, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(106, 1, 1, 'ranks', 'acp', 13, 121, 122, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(107, 1, 1, 'reasons', 'acp', 29, 263, 264, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(108, 1, 1, 'search', 'acp', 5, 59, 60, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(109, 1, 1, 'search', 'acp', 26, 245, 246, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(110, 1, 1, 'send_statistics', 'acp', 5, 61, 62, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
(111, 1, 1, 'styles', 'acp', 22, 217, 218, 'ACP_STYLES', 'style', 'acl_a_styles'),
(112, 1, 1, 'styles', 'acp', 23, 221, 222, 'ACP_TEMPLATES', 'template', 'acl_a_styles'),
(113, 1, 1, 'styles', 'acp', 23, 223, 224, 'ACP_THEMES', 'theme', 'acl_a_styles'),
(114, 1, 1, 'styles', 'acp', 23, 225, 226, 'ACP_IMAGESETS', 'imageset', 'acl_a_styles'),
(115, 1, 1, 'update', 'acp', 28, 251, 252, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(116, 1, 1, 'users', 'acp', 13, 111, 112, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(117, 1, 0, 'users', 'acp', 13, 123, 124, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(118, 1, 0, 'users', 'acp', 13, 125, 126, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(119, 1, 0, 'users', 'acp', 13, 127, 128, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(120, 1, 0, 'users', 'acp', 13, 129, 130, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(121, 1, 0, 'users', 'acp', 13, 131, 132, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(122, 1, 0, 'users', 'acp', 13, 133, 134, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(123, 1, 0, 'users', 'acp', 13, 135, 136, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(124, 1, 0, 'users', 'acp', 13, 137, 138, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(125, 1, 0, 'users', 'acp', 13, 139, 140, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(126, 1, 0, 'users', 'acp', 13, 141, 142, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(127, 1, 1, 'words', 'acp', 10, 95, 96, 'ACP_WORDS', 'words', 'acl_a_words'),
(128, 1, 1, 'users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(129, 1, 1, 'groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(130, 1, 1, 'forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(131, 1, 1, 'logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(132, 1, 1, 'bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(133, 1, 1, 'php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(134, 1, 1, 'permissions', 'acp', 8, 73, 74, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(135, 1, 1, 'permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(136, 1, 1, 'permissions', 'acp', 8, 77, 78, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(137, 1, 1, 'permissions', 'acp', 8, 79, 80, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(138, 1, 1, 'permissions', 'acp', 8, 81, 82, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(139, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(140, 1, 1, '', 'mcp', 0, 11, 18, 'MCP_QUEUE', '', ''),
(141, 1, 1, '', 'mcp', 0, 19, 32, 'MCP_REPORTS', '', ''),
(142, 1, 1, '', 'mcp', 0, 33, 38, 'MCP_NOTES', '', ''),
(143, 1, 1, '', 'mcp', 0, 39, 48, 'MCP_WARN', '', ''),
(144, 1, 1, '', 'mcp', 0, 49, 56, 'MCP_LOGS', '', ''),
(145, 1, 1, '', 'mcp', 0, 57, 64, 'MCP_BAN', '', ''),
(146, 1, 1, 'ban', 'mcp', 145, 58, 59, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(147, 1, 1, 'ban', 'mcp', 145, 60, 61, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(148, 1, 1, 'ban', 'mcp', 145, 62, 63, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(149, 1, 1, 'logs', 'mcp', 144, 50, 51, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(150, 1, 1, 'logs', 'mcp', 144, 52, 53, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(151, 1, 1, 'logs', 'mcp', 144, 54, 55, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(152, 1, 1, 'main', 'mcp', 139, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(153, 1, 1, 'main', 'mcp', 139, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(154, 1, 1, 'main', 'mcp', 139, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(155, 1, 1, 'main', 'mcp', 139, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(156, 1, 1, 'notes', 'mcp', 142, 34, 35, 'MCP_NOTES_FRONT', 'front', ''),
(157, 1, 1, 'notes', 'mcp', 142, 36, 37, 'MCP_NOTES_USER', 'user_notes', ''),
(158, 1, 1, 'pm_reports', 'mcp', 141, 20, 21, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
(159, 1, 1, 'pm_reports', 'mcp', 141, 22, 23, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
(160, 1, 1, 'pm_reports', 'mcp', 141, 24, 25, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
(161, 1, 1, 'queue', 'mcp', 140, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(162, 1, 1, 'queue', 'mcp', 140, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(163, 1, 1, 'queue', 'mcp', 140, 16, 17, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(164, 1, 1, 'reports', 'mcp', 141, 26, 27, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(165, 1, 1, 'reports', 'mcp', 141, 28, 29, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(166, 1, 1, 'reports', 'mcp', 141, 30, 31, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(167, 1, 1, 'warn', 'mcp', 143, 40, 41, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(168, 1, 1, 'warn', 'mcp', 143, 42, 43, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(169, 1, 1, 'warn', 'mcp', 143, 44, 45, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(170, 1, 1, 'warn', 'mcp', 143, 46, 47, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(171, 1, 1, '', 'ucp', 0, 1, 12, 'UCP_MAIN', '', ''),
(172, 1, 1, '', 'ucp', 0, 13, 22, 'UCP_PROFILE', '', ''),
(173, 1, 1, '', 'ucp', 0, 23, 30, 'UCP_PREFS', '', ''),
(174, 1, 1, '', 'ucp', 0, 31, 42, 'UCP_PM', '', ''),
(175, 1, 1, '', 'ucp', 0, 43, 48, 'UCP_USERGROUPS', '', ''),
(176, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_ZEBRA', '', ''),
(177, 1, 1, 'attachments', 'ucp', 171, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(178, 1, 1, 'groups', 'ucp', 175, 44, 45, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(179, 1, 1, 'groups', 'ucp', 175, 46, 47, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(180, 1, 1, 'main', 'ucp', 171, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(181, 1, 1, 'main', 'ucp', 171, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(182, 1, 1, 'main', 'ucp', 171, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(183, 1, 1, 'main', 'ucp', 171, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(184, 1, 0, 'pm', 'ucp', 174, 32, 33, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(185, 1, 1, 'pm', 'ucp', 174, 34, 35, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(186, 1, 1, 'pm', 'ucp', 174, 36, 37, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(187, 1, 1, 'pm', 'ucp', 174, 38, 39, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(188, 1, 0, 'pm', 'ucp', 174, 40, 41, 'UCP_PM_POPUP_TITLE', 'popup', 'cfg_allow_privmsg'),
(189, 1, 1, 'prefs', 'ucp', 173, 24, 25, 'UCP_PREFS_PERSONAL', 'personal', ''),
(190, 1, 1, 'prefs', 'ucp', 173, 26, 27, 'UCP_PREFS_POST', 'post', ''),
(191, 1, 1, 'prefs', 'ucp', 173, 28, 29, 'UCP_PREFS_VIEW', 'view', ''),
(192, 1, 1, 'profile', 'ucp', 172, 14, 15, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', ''),
(193, 1, 1, 'profile', 'ucp', 172, 16, 17, 'UCP_PROFILE_SIGNATURE', 'signature', ''),
(194, 1, 1, 'profile', 'ucp', 172, 18, 19, 'UCP_PROFILE_AVATAR', 'avatar', ''),
(195, 1, 1, 'profile', 'ucp', 172, 20, 21, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(196, 1, 1, 'zebra', 'ucp', 176, 50, 51, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(197, 1, 1, 'zebra', 'ucp', 176, 52, 53, 'UCP_ZEBRA_FOES', 'foes', ''),
(200, 1, 1, '', 'ucp', 0, 55, 64, 'Utakara', '', ''),
(202, 1, 1, 'utakara', 'ucp', 200, 56, 57, 'UCP_UTAKARA_LIST', 'list', ''),
(203, 1, 1, 'utakara', 'ucp', 200, 58, 59, 'UCP_UTAKARA_CREATE', 'create', ''),
(204, 0, 1, 'utakara', 'ucp', 200, 60, 61, 'UCP_UTAKARA_EDIT', 'edit', ''),
(205, 0, 1, 'utakara', 'ucp', 200, 62, 63, 'UCP_UTAKARA_DELETE', 'delete', '');

-- --------------------------------------------------------

--
-- Table structure for table `uta_news`
--

CREATE TABLE IF NOT EXISTS `uta_news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `date` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `author` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uta_news`
--

INSERT INTO `uta_news` (`id`, `title`, `date`, `content`, `author`) VALUES
(1, 'Your first news', 16777215, 'Bienvenue sur le site du projet EIP: Utakara.\r\n<br/><br/>\r\nA ce jour il n''existe pas de solution clé en main pour la création de karaoké de A à Z.<br/>\r\nLe but de notre projet innovant est donc pour la toute première fois de créer et de regrouper dans une même suite logicielle les outils indispensables à leur réalisation.\r\n<br/><br/>\r\nLa suite Utakara permettra l''édition de fichier Karaoké avec divers effets, la lecture de karaoke à la volée, la centralisation des données sur un server entièrement accessible à partir de notre manager de listes de karaoké!\r\n<br/><br/><br/>\r\n\r\n\r\nWelcome to our website dedicated of our EIP project : Utakara.\r\n<br/><br/>\r\nUntil now there is no solution available for the Karaoke creation, edition and publication.<br/>\r\nSo the purpose of our innovative project is for the first time to create and to gather in the same software different essential tools to create them.\r\n<br/><br/>\r\nThe software suite Utakara will allow to edit karaoke file with effects, playing karaoke on live, centralization datas on a server fully reachable in our karaoke list manager only!', 2);

-- --------------------------------------------------------

--
-- Table structure for table `uta_poll_options`
--

CREATE TABLE IF NOT EXISTS `uta_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_poll_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_poll_votes`
--

CREATE TABLE IF NOT EXISTS `uta_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_poll_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_posts`
--

CREATE TABLE IF NOT EXISTS `uta_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_approved` (`post_approved`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uta_posts`
--

INSERT INTO `uta_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_approved`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`) VALUES
(1, 1, 2, 2, 0, '127.0.0.1', 1272966744, 1, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_privmsgs`
--

CREATE TABLE IF NOT EXISTS `uta_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_privmsgs`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_privmsgs_folder`
--

CREATE TABLE IF NOT EXISTS `uta_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_privmsgs_folder`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_privmsgs_rules`
--

CREATE TABLE IF NOT EXISTS `uta_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_privmsgs_rules`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_privmsgs_to`
--

CREATE TABLE IF NOT EXISTS `uta_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_privmsgs_to`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_profile_fields`
--

CREATE TABLE IF NOT EXISTS `uta_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_profile_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_profile_fields_data`
--

CREATE TABLE IF NOT EXISTS `uta_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_profile_fields_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_profile_fields_lang`
--

CREATE TABLE IF NOT EXISTS `uta_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_profile_fields_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_profile_lang`
--

CREATE TABLE IF NOT EXISTS `uta_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_profile_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_ranks`
--

CREATE TABLE IF NOT EXISTS `uta_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uta_ranks`
--

INSERT INTO `uta_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `uta_reports`
--

CREATE TABLE IF NOT EXISTS `uta_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_reports_reasons`
--

CREATE TABLE IF NOT EXISTS `uta_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `uta_reports_reasons`
--

INSERT INTO `uta_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `uta_search_results`
--

CREATE TABLE IF NOT EXISTS `uta_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_search_results`
--

INSERT INTO `uta_search_results` (`search_key`, `search_time`, `search_keywords`, `search_authors`) VALUES
('6ed82f562c135b2d3f47cd47aecd1e67', 1278694554, '', ' 2 ');

-- --------------------------------------------------------

--
-- Table structure for table `uta_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `uta_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

--
-- Dumping data for table `uta_search_wordlist`
--

INSERT INTO `uta_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'example', 0, 1),
(3, 'post', 0, 1),
(4, 'your', 0, 1),
(5, 'phpbb3', 0, 2),
(6, 'installation', 0, 1),
(7, 'everything', 0, 1),
(8, 'seems', 0, 1),
(9, 'working', 0, 1),
(10, 'you', 0, 1),
(11, 'may', 0, 1),
(12, 'delete', 0, 1),
(13, 'like', 0, 1),
(14, 'and', 0, 1),
(15, 'continue', 0, 1),
(16, 'set', 0, 1),
(17, 'board', 0, 1),
(18, 'during', 0, 1),
(19, 'the', 0, 1),
(20, 'process', 0, 1),
(21, 'first', 0, 1),
(22, 'category', 0, 1),
(23, 'forum', 0, 1),
(24, 'are', 0, 1),
(25, 'assigned', 0, 1),
(26, 'appropriate', 0, 1),
(27, 'permissions', 0, 1),
(28, 'for', 0, 1),
(29, 'predefined', 0, 1),
(30, 'usergroups', 0, 1),
(31, 'administrators', 0, 1),
(32, 'bots', 0, 1),
(33, 'global', 0, 1),
(34, 'moderators', 0, 1),
(35, 'guests', 0, 1),
(36, 'registered', 0, 1),
(37, 'users', 0, 1),
(38, 'coppa', 0, 1),
(39, 'also', 0, 1),
(40, 'choose', 0, 1),
(41, 'not', 0, 1),
(42, 'forget', 0, 1),
(43, 'assign', 0, 1),
(44, 'all', 0, 1),
(45, 'these', 0, 1),
(46, 'new', 0, 1),
(47, 'categories', 0, 1),
(48, 'forums', 0, 1),
(49, 'create', 0, 1),
(50, 'recommended', 0, 1),
(51, 'rename', 0, 1),
(52, 'copy', 0, 1),
(53, 'from', 0, 1),
(54, 'while', 0, 1),
(55, 'creating', 0, 1),
(56, 'have', 0, 1),
(57, 'fun', 0, 1),
(58, 'welcome', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_search_wordmatch`
--

CREATE TABLE IF NOT EXISTS `uta_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_search_wordmatch`
--

INSERT INTO `uta_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 5, 1),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_sessions`
--

CREATE TABLE IF NOT EXISTS `uta_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_sessions`
--

INSERT INTO `uta_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('d378e9893898790deef5b48d0a9ff927', 2, 0, 1279133523, 1279138154, 1279141265, '127.0.0.1', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.6) Gecko/20100625 Firefox/3.6.6 GTB7.0', '', 'home.php', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_sessions_keys`
--

CREATE TABLE IF NOT EXISTS `uta_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_sessions_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_sitelist`
--

CREATE TABLE IF NOT EXISTS `uta_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_sitelist`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_smilies`
--

CREATE TABLE IF NOT EXISTS `uta_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Dumping data for table `uta_smilies`
--

INSERT INTO `uta_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_styles`
--

CREATE TABLE IF NOT EXISTS `uta_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`),
  KEY `template_id` (`template_id`),
  KEY `theme_id` (`theme_id`),
  KEY `imageset_id` (`imageset_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `uta_styles`
--

INSERT INTO `uta_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `template_id`, `theme_id`, `imageset_id`) VALUES
(1, 'prosilver', '© phpBB Group', 1, 1, 1, 1),
(2, 'subsilver2', '© 2005 phpBB Group', 1, 2, 2, 2),
(3, 'coffee_time', '&copy; CoSa NoStrA DeSiGn, 2008', 1, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `uta_styles_imageset`
--

CREATE TABLE IF NOT EXISTS `uta_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `uta_styles_imageset`
--

INSERT INTO `uta_styles_imageset` (`imageset_id`, `imageset_name`, `imageset_copyright`, `imageset_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver'),
(2, 'subsilver2', '&copy; phpBB Group, 2003', 'subsilver2'),
(3, 'coffee_time', '&copy; CoSa NoStrA DeSiGn, 2008', 'coffee_time');

-- --------------------------------------------------------

--
-- Table structure for table `uta_styles_imageset_data`
--

CREATE TABLE IF NOT EXISTS `uta_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `i_d` (`imageset_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=250 ;

--
-- Dumping data for table `uta_styles_imageset_data`
--

INSERT INTO `uta_styles_imageset_data` (`image_id`, `image_name`, `image_filename`, `image_lang`, `image_height`, `image_width`, `imageset_id`) VALUES
(1, 'site_logo', 'site_logo.gif', '', 52, 139, 1),
(2, 'forum_link', 'forum_link.gif', '', 27, 27, 1),
(3, 'forum_read', 'forum_read.gif', '', 27, 27, 1),
(4, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 1),
(5, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 1),
(6, 'forum_unread', 'forum_unread.gif', '', 27, 27, 1),
(7, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 1),
(8, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 1),
(9, 'topic_moved', 'topic_moved.gif', '', 27, 27, 1),
(10, 'topic_read', 'topic_read.gif', '', 27, 27, 1),
(11, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 1),
(12, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 1),
(13, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 1),
(14, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 1),
(15, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 1),
(16, 'topic_unread', 'topic_unread.gif', '', 27, 27, 1),
(17, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 1),
(18, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 1),
(19, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 1),
(20, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 1),
(21, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 1),
(22, 'sticky_read', 'sticky_read.gif', '', 27, 27, 1),
(23, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 1),
(24, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 1),
(25, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 1),
(26, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 1),
(27, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 1),
(28, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 1),
(29, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 1),
(30, 'announce_read', 'announce_read.gif', '', 27, 27, 1),
(31, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(32, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(33, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(34, 'announce_unread', 'announce_unread.gif', '', 27, 27, 1),
(35, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(36, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(37, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(38, 'global_read', 'announce_read.gif', '', 27, 27, 1),
(39, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(40, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(41, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(42, 'global_unread', 'announce_unread.gif', '', 27, 27, 1),
(43, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(44, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(45, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(46, 'pm_read', 'topic_read.gif', '', 27, 27, 1),
(47, 'pm_unread', 'topic_unread.gif', '', 27, 27, 1),
(48, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 1),
(49, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 1),
(50, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 1),
(51, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 1),
(52, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 1),
(53, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 1),
(54, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 1),
(55, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 1),
(56, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 1),
(57, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 1),
(58, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 1),
(59, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 1),
(60, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 1),
(61, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 1),
(62, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 1),
(63, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 1),
(64, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 1),
(65, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 1),
(66, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 1),
(67, 'subforum_read', 'subforum_read.gif', '', 9, 11, 1),
(68, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 1),
(69, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 1),
(70, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 1),
(71, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 1),
(72, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 1),
(73, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 1),
(74, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 1),
(75, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 1),
(76, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 1),
(77, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 1),
(78, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 1),
(79, 'site_logo', 'site_logo.gif', '', 94, 170, 2),
(80, 'upload_bar', 'upload_bar.gif', '', 16, 280, 2),
(81, 'poll_left', 'poll_left.gif', '', 12, 4, 2),
(82, 'poll_center', 'poll_center.gif', '', 12, 1, 2),
(83, 'poll_right', 'poll_right.gif', '', 12, 4, 2),
(84, 'forum_link', 'forum_link.gif', '', 25, 46, 2),
(85, 'forum_read', 'forum_read.gif', '', 25, 46, 2),
(86, 'forum_read_locked', 'forum_read_locked.gif', '', 25, 46, 2),
(87, 'forum_read_subforum', 'forum_read_subforum.gif', '', 25, 46, 2),
(88, 'forum_unread', 'forum_unread.gif', '', 25, 46, 2),
(89, 'forum_unread_locked', 'forum_unread_locked.gif', '', 25, 46, 2),
(90, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 25, 46, 2),
(91, 'topic_moved', 'topic_moved.gif', '', 18, 19, 2),
(92, 'topic_read', 'topic_read.gif', '', 18, 19, 2),
(93, 'topic_read_mine', 'topic_read_mine.gif', '', 18, 19, 2),
(94, 'topic_read_hot', 'topic_read_hot.gif', '', 18, 19, 2),
(95, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 18, 19, 2),
(96, 'topic_read_locked', 'topic_read_locked.gif', '', 18, 19, 2),
(97, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 18, 19, 2),
(98, 'topic_unread', 'topic_unread.gif', '', 18, 19, 2),
(99, 'topic_unread_mine', 'topic_unread_mine.gif', '', 18, 19, 2),
(100, 'topic_unread_hot', 'topic_unread_hot.gif', '', 18, 19, 2),
(101, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 18, 19, 2),
(102, 'topic_unread_locked', 'topic_unread_locked.gif', '', 18, 19, 2),
(103, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 18, 19, 2),
(104, 'sticky_read', 'sticky_read.gif', '', 18, 19, 2),
(105, 'sticky_read_mine', 'sticky_read_mine.gif', '', 18, 19, 2),
(106, 'sticky_read_locked', 'sticky_read_locked.gif', '', 18, 19, 2),
(107, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 18, 19, 2),
(108, 'sticky_unread', 'sticky_unread.gif', '', 18, 19, 2),
(109, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 18, 19, 2),
(110, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 18, 19, 2),
(111, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 18, 19, 2),
(112, 'announce_read', 'announce_read.gif', '', 18, 19, 2),
(113, 'announce_read_mine', 'announce_read_mine.gif', '', 18, 19, 2),
(114, 'announce_read_locked', 'announce_read_locked.gif', '', 18, 19, 2),
(115, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 18, 19, 2),
(116, 'announce_unread', 'announce_unread.gif', '', 18, 19, 2),
(117, 'announce_unread_mine', 'announce_unread_mine.gif', '', 18, 19, 2),
(118, 'announce_unread_locked', 'announce_unread_locked.gif', '', 18, 19, 2),
(119, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 18, 19, 2),
(120, 'global_read', 'announce_read.gif', '', 18, 19, 2),
(121, 'global_read_mine', 'announce_read_mine.gif', '', 18, 19, 2),
(122, 'global_read_locked', 'announce_read_locked.gif', '', 18, 19, 2),
(123, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 18, 19, 2),
(124, 'global_unread', 'announce_unread.gif', '', 18, 19, 2),
(125, 'global_unread_mine', 'announce_unread_mine.gif', '', 18, 19, 2),
(126, 'global_unread_locked', 'announce_unread_locked.gif', '', 18, 19, 2),
(127, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 18, 19, 2),
(128, 'pm_read', 'topic_read.gif', '', 18, 19, 2),
(129, 'pm_unread', 'topic_unread.gif', '', 18, 19, 2),
(130, 'icon_post_target', 'icon_post_target.gif', '', 9, 12, 2),
(131, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 12, 2),
(132, 'icon_topic_attach', 'icon_topic_attach.gif', '', 18, 14, 2),
(133, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 18, 2),
(134, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 18, 2),
(135, 'icon_topic_reported', 'icon_topic_reported.gif', '', 18, 19, 2),
(136, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 18, 19, 2),
(137, 'icon_contact_aim', 'icon_contact_aim.gif', 'en', 0, 0, 2),
(138, 'icon_contact_email', 'icon_contact_email.gif', 'en', 0, 0, 2),
(139, 'icon_contact_icq', 'icon_contact_icq.gif', 'en', 0, 0, 2),
(140, 'icon_contact_jabber', 'icon_contact_jabber.gif', 'en', 0, 0, 2),
(141, 'icon_contact_msnm', 'icon_contact_msnm.gif', 'en', 0, 0, 2),
(142, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 0, 0, 2),
(143, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', 'en', 0, 0, 2),
(144, 'icon_contact_www', 'icon_contact_www.gif', 'en', 0, 0, 2),
(145, 'icon_post_delete', 'icon_post_delete.gif', 'en', 0, 0, 2),
(146, 'icon_post_edit', 'icon_post_edit.gif', 'en', 0, 0, 2),
(147, 'icon_post_info', 'icon_post_info.gif', 'en', 0, 0, 2),
(148, 'icon_post_quote', 'icon_post_quote.gif', 'en', 0, 0, 2),
(149, 'icon_post_report', 'icon_post_report.gif', 'en', 0, 0, 2),
(150, 'icon_user_online', 'icon_user_online.gif', 'en', 0, 0, 2),
(151, 'icon_user_offline', 'icon_user_offline.gif', 'en', 0, 0, 2),
(152, 'icon_user_profile', 'icon_user_profile.gif', 'en', 0, 0, 2),
(153, 'icon_user_search', 'icon_user_search.gif', 'en', 0, 0, 2),
(154, 'icon_user_warn', 'icon_user_warn.gif', 'en', 0, 0, 2),
(155, 'button_pm_new', 'button_pm_new.gif', 'en', 0, 0, 2),
(156, 'button_pm_reply', 'button_pm_reply.gif', 'en', 0, 0, 2),
(157, 'button_topic_locked', 'button_topic_locked.gif', 'en', 0, 0, 2),
(158, 'button_topic_new', 'button_topic_new.gif', 'en', 0, 0, 2),
(159, 'button_topic_reply', 'button_topic_reply.gif', 'en', 0, 0, 2),
(160, 'site_logo', 'site_logo.jpg', '', 198, 850, 3),
(161, 'forum_link', 'forum_link.gif', '', 27, 27, 3),
(162, 'forum_read', 'forum_read.gif', '', 27, 27, 3),
(163, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 3),
(164, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 3),
(165, 'forum_unread', 'forum_unread.gif', '', 27, 27, 3),
(166, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 3),
(167, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 3),
(168, 'topic_moved', 'topic_moved.gif', '', 27, 27, 3),
(169, 'topic_read', 'topic_read.gif', '', 27, 27, 3),
(170, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 3),
(171, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 3),
(172, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 3),
(173, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 3),
(174, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 3),
(175, 'topic_unread', 'topic_unread.gif', '', 27, 27, 3),
(176, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 3),
(177, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 3),
(178, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 3),
(179, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 3),
(180, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 3),
(181, 'sticky_read', 'sticky_read.gif', '', 27, 27, 3),
(182, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 3),
(183, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 3),
(184, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 3),
(185, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 3),
(186, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 3),
(187, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 3),
(188, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 3),
(189, 'announce_read', 'announce_read.gif', '', 27, 27, 3),
(190, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 3),
(191, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 3),
(192, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 3),
(193, 'announce_unread', 'announce_unread.gif', '', 27, 27, 3),
(194, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 3),
(195, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 3),
(196, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 3),
(197, 'global_read', 'announce_read.gif', '', 27, 27, 3),
(198, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 3),
(199, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 3),
(200, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 3),
(201, 'global_unread', 'announce_unread.gif', '', 27, 27, 3),
(202, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 3),
(203, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 3),
(204, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 3),
(205, 'subforum_read', 'subforum_read.gif', '', 9, 11, 3),
(206, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 3),
(207, 'pm_read', 'topic_read.gif', '', 27, 27, 3),
(208, 'pm_unread', 'topic_unread.gif', '', 27, 27, 3),
(209, 'icon_back_top', 'icon_back_top.png', '', 11, 11, 3),
(210, 'icon_contact_aim', 'icon_contact_aim.png', '', 20, 20, 3),
(211, 'icon_contact_email', 'icon_contact_email.png', '', 20, 20, 3),
(212, 'icon_contact_icq', 'icon_contact_icq.png', '', 20, 20, 3),
(213, 'icon_contact_jabber', 'icon_contact_jabber.png', '', 20, 20, 3),
(214, 'icon_contact_msnm', 'icon_contact_msnm.png', '', 20, 20, 3),
(215, 'icon_contact_www', 'icon_contact_www.png', '', 20, 20, 3),
(216, 'icon_contact_yahoo', 'icon_contact_yahoo.png', '', 20, 20, 3),
(217, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 3),
(218, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 3),
(219, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 3),
(220, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 3),
(221, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 3),
(222, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 3),
(223, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 3),
(224, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 3),
(225, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 3),
(226, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 3),
(227, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 3),
(228, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 20, 3),
(229, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 54, 3),
(230, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 3),
(231, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 3),
(232, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 3),
(233, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 96, 3),
(234, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 3),
(235, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 96, 3),
(236, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 3),
(237, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 3),
(238, 'icon_contact_pm', 'icon_contact_pm.png', 'fr', 20, 20, 3),
(239, 'icon_post_edit', 'icon_post_edit.gif', 'fr', 20, 54, 3),
(240, 'icon_post_quote', 'icon_post_quote.gif', 'fr', 20, 54, 3),
(241, 'icon_user_online', 'icon_user_online.gif', 'fr', 58, 58, 3),
(242, 'icon_user_offline', 'icon_user_offline.gif', 'fr', 0, 0, 3),
(243, 'icon_user_search', 'icon_user_search.gif', 'fr', 0, 0, 3),
(244, 'button_pm_forward', 'button_pm_forward.gif', 'fr', 25, 110, 3),
(245, 'button_pm_new', 'button_pm_new.gif', 'fr', 25, 96, 3),
(246, 'button_pm_reply', 'button_pm_reply.gif', 'fr', 25, 96, 3),
(247, 'button_topic_locked', 'button_topic_locked.gif', 'fr', 25, 96, 3),
(248, 'button_topic_new', 'button_topic_new.gif', 'fr', 25, 96, 3),
(249, 'button_topic_reply', 'button_topic_reply.gif', 'fr', 25, 96, 3);

-- --------------------------------------------------------

--
-- Table structure for table `uta_styles_template`
--

CREATE TABLE IF NOT EXISTS `uta_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) unsigned NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `uta_styles_template`
--

INSERT INTO `uta_styles_template` (`template_id`, `template_name`, `template_copyright`, `template_path`, `bbcode_bitfield`, `template_storedb`, `template_inherits_id`, `template_inherit_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 'lNg=', 0, 0, ''),
(2, 'subsilver2', '&copy; phpBB Group, 2003', 'subsilver2', '+Ng=', 0, 0, ''),
(3, 'coffee_time', '&copy; CoSa NoStrA DeSiGn, 2008', 'coffee_time', 'lNg=', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `uta_styles_template_data`
--

CREATE TABLE IF NOT EXISTS `uta_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `tid` (`template_id`),
  KEY `tfn` (`template_filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_styles_template_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_styles_theme`
--

CREATE TABLE IF NOT EXISTS `uta_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `uta_styles_theme`
--

INSERT INTO `uta_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 1, 1272967039, '/*  phpBB 3.0 Style Sheet\n    --------------------------------------------------------------\n	Style name:		proSilver\n	Based on style:	proSilver (this is the default phpBB 3 style)\n	Original author:	subBlue ( http://www.subBlue.com/ )\n	Modified by:		\n	\n	Copyright 2006 phpBB Group ( http://www.phpbb.com/ )\n    --------------------------------------------------------------\n*/\n\n/* General proSilver Markup Styles\n---------------------------------------- */\n\n* {\n	/* Reset browsers default margin, padding and font sizes */\n	margin: 0;\n	padding: 0;\n}\n\nhtml {\n	font-size: 100%;\n	/* Always show a scrollbar for short pages - stops the jump when the scrollbar appears. non-IE browsers */\n	height: 101%;\n}\n\nbody {\n	/* Text-Sizing with ems: http://www.clagnut.com/blog/348/ */\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	color: #828282;\n	background-color: #FFFFFF;\n	/*font-size: 62.5%;			 This sets the default font size to be equivalent to 10px */\n	font-size: 10px;\n	margin: 0;\n	padding: 12px 0;\n}\n\nh1 {\n	/* Forum name */\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n	margin-right: 200px;\n	color: #FFFFFF;\n	margin-top: 15px;\n	font-weight: bold;\n	font-size: 2em;\n}\n\nh2 {\n	/* Forum header titles */\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n	font-weight: normal;\n	color: #3f3f3f;\n	font-size: 2em;\n	margin: 0.8em 0 0.2em 0;\n}\n\nh2.solo {\n	margin-bottom: 1em;\n}\n\nh3 {\n	/* Sub-headers (also used as post headers, but defined later) */\n	font-family: Arial, Helvetica, sans-serif;\n	font-weight: bold;\n	text-transform: uppercase;\n	border-bottom: 1px solid #CCCCCC;\n	margin-bottom: 3px;\n	padding-bottom: 2px;\n	font-size: 1.05em;\n	color: #989898;\n	margin-top: 20px;\n}\n\nh4 {\n	/* Forum and topic list titles */\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, Sans-serif;\n	font-size: 1.3em;\n}\n\np {\n	line-height: 1.3em;\n	font-size: 1.1em;\n	margin-bottom: 1.5em;\n}\n\nimg {\n	border-width: 0;\n}\n\nhr {\n	/* Also see tweaks.css */\n	border: 0 none #FFFFFF;\n	border-top: 1px solid #CCCCCC;\n	height: 1px;\n	margin: 5px 0;\n	display: block;\n	clear: both;\n}\n\nhr.dashed {\n	border-top: 1px dashed #CCCCCC;\n	margin: 10px 0;\n}\n\nhr.divider {\n	display: none;\n}\n\np.right {\n	text-align: right;\n}\n\n/* Main blocks\n---------------------------------------- */\n#wrap {\n	padding: 0 20px;\n	min-width: 650px;\n}\n\n#simple-wrap {\n	padding: 6px 10px;\n}\n\n#page-body {\n	margin: 4px 0;\n	clear: both;\n}\n\n#page-footer {\n	clear: both;\n}\n\n#page-footer h3 {\n	margin-top: 20px;\n}\n\n#logo {\n	float: left;\n	width: auto;\n	padding: 10px 13px 0 10px;\n}\n\na#logo:hover {\n	text-decoration: none;\n}\n\n/* Search box\n--------------------------------------------- */\n#search-box {\n	color: #FFFFFF;\n	position: relative;\n	margin-top: 30px;\n	margin-right: 5px;\n	display: block;\n	float: right;\n	text-align: right;\n	white-space: nowrap; /* For Opera */\n}\n\n#search-box #keywords {\n	width: 95px;\n	background-color: #FFF;\n}\n\n#search-box input {\n	border: 1px solid #b0b0b0;\n}\n\n/* .button1 style defined later, just a few tweaks for the search button version */\n#search-box input.button1 {\n	padding: 1px 5px;\n}\n\n#search-box li {\n	text-align: right;\n	margin-top: 4px;\n}\n\n#search-box img {\n	vertical-align: middle;\n	margin-right: 3px;\n}\n\n/* Site description and logo */\n#site-description {\n	float: left;\n	width: 70%;\n}\n\n#site-description h1 {\n	margin-right: 0;\n}\n\n/* Round cornered boxes and backgrounds\n---------------------------------------- */\n.headerbar {\n	background: #ebebeb none repeat-x 0 0;\n	color: #FFFFFF;\n	margin-bottom: 4px;\n	padding: 0 5px;\n}\n\n.navbar {\n	background-color: #ebebeb;\n	padding: 0 10px;\n}\n\n.forabg {\n	background: #b1b1b1 none repeat-x 0 0;\n	margin-bottom: 4px;\n	padding: 0 5px;\n	clear: both;\n}\n\n.forumbg {\n	background: #ebebeb none repeat-x 0 0;\n	margin-bottom: 4px;\n	padding: 0 5px;\n	clear: both;\n}\n\n.panel {\n	margin-bottom: 4px;\n	padding: 0 10px;\n	background-color: #f3f3f3;\n	color: #3f3f3f;\n}\n\n.post {\n	padding: 0 10px;\n	margin-bottom: 4px;\n	background-repeat: no-repeat;\n	background-position: 100% 0;\n}\n\n.post:target .content {\n	color: #000000;\n}\n\n.post:target h3 a {\n	color: #000000;\n}\n\n.bg1	{ background-color: #f7f7f7;}\n.bg2	{ background-color: #f2f2f2; }\n.bg3	{ background-color: #ebebeb; }\n\n.rowbg {\n	margin: 5px 5px 2px 5px;\n}\n\n.ucprowbg {\n	background-color: #e2e2e2;\n}\n\n.fieldsbg {\n	/*border: 1px #DBDEE2 solid;*/\n	background-color: #eaeaea;\n}\n\nspan.corners-top, span.corners-bottom, span.corners-top span, span.corners-bottom span {\n	font-size: 1px;\n	line-height: 1px;\n	display: block;\n	height: 5px;\n	background-repeat: no-repeat;\n}\n\nspan.corners-top {\n	background-image: none;\n	background-position: 0 0;\n	margin: 0 -5px;\n}\n\nspan.corners-top span {\n	background-image: none;\n	background-position: 100% 0;\n}\n\nspan.corners-bottom {\n	background-image: none;\n	background-position: 0 100%;\n	margin: 0 -5px;\n	clear: both;\n}\n\nspan.corners-bottom span {\n	background-image: none;\n	background-position: 100% 100%;\n}\n\n.headbg span.corners-bottom {\n	margin-bottom: -1px;\n}\n\n.post span.corners-top, .post span.corners-bottom, .panel span.corners-top, .panel span.corners-bottom, .navbar span.corners-top, .navbar span.corners-bottom {\n	margin: 0 -10px;\n}\n\n.rules span.corners-top {\n	margin: 0 -10px 5px -10px;\n}\n\n.rules span.corners-bottom {\n	margin: 5px -10px 0 -10px;\n}\n\n/* Horizontal lists\n----------------------------------------*/\nul.linklist {\n	display: block;\n	margin: 0;\n}\n\nul.linklist li {\n	display: block;\n	list-style-type: none;\n	float: left;\n	width: auto;\n	margin-right: 5px;\n	font-size: 1.1em;\n	line-height: 2.2em;\n}\n\nul.linklist li.rightside, p.rightside {\n	float: right;\n	margin-right: 0;\n	margin-left: 5px;\n	text-align: right;\n}\n\nul.navlinks {\n	padding-bottom: 1px;\n	margin-bottom: 1px;\n	border-bottom: 1px solid #FFFFFF;\n	font-weight: bold;\n}\n\nul.leftside {\n	float: left;\n	margin-left: 0;\n	margin-right: 5px;\n	text-align: left;\n}\n\nul.rightside {\n	float: right;\n	margin-left: 5px;\n	margin-right: -5px;\n	text-align: right;\n}\n\n/* Table styles\n----------------------------------------*/\ntable.table1 {\n	/* See tweaks.css */\n}\n\n#ucp-main table.table1 {\n	padding: 2px;\n}\n\ntable.table1 thead th {\n	font-weight: normal;\n	text-transform: uppercase;\n	color: #FFFFFF;\n	line-height: 1.3em;\n	font-size: 1em;\n	padding: 0 0 4px 3px;\n}\n\ntable.table1 thead th span {\n	padding-left: 7px;\n}\n\ntable.table1 tbody tr {\n	border: 1px solid #cfcfcf;\n}\n\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\n	background-color: #f6f6f6;\n	color: #000;\n}\n\ntable.table1 td {\n	color: #6a6a6a;\n	font-size: 1.1em;\n}\n\ntable.table1 tbody td {\n	padding: 5px;\n	border-top: 1px solid #FAFAFA;\n}\n\ntable.table1 tbody th {\n	padding: 5px;\n	border-bottom: 1px solid #000000;\n	text-align: left;\n	color: #333333;\n	background-color: #FFFFFF;\n}\n\n/* Specific column styles */\ntable.table1 .name		{ text-align: left; }\ntable.table1 .posts		{ text-align: center !important; width: 7%; }\ntable.table1 .joined	{ text-align: left; width: 15%; }\ntable.table1 .active	{ text-align: left; width: 15%; }\ntable.table1 .mark		{ text-align: center; width: 7%; }\ntable.table1 .info		{ text-align: left; width: 30%; }\ntable.table1 .info div	{ width: 100%; white-space: normal; overflow: hidden; }\ntable.table1 .autocol	{ line-height: 2em; white-space: nowrap; }\ntable.table1 thead .autocol { padding-left: 1em; }\n\ntable.table1 span.rank-img {\n	float: right;\n	width: auto;\n}\n\ntable.info td {\n	padding: 3px;\n}\n\ntable.info tbody th {\n	padding: 3px;\n	text-align: right;\n	vertical-align: top;\n	color: #000000;\n	font-weight: normal;\n}\n\n.forumbg table.table1 {\n	margin: 0 -2px -1px -1px;\n}\n\n/* Misc layout styles\n---------------------------------------- */\n/* column[1-2] styles are containers for two column layouts \n   Also see tweaks.css */\n.column1 {\n	float: left;\n	clear: left;\n	width: 49%;\n}\n\n.column2 {\n	float: right;\n	clear: right;\n	width: 49%;\n}\n\n/* General classes for placing floating blocks */\n.left-box {\n	float: left;\n	width: auto;\n	text-align: left;\n}\n\n.right-box {\n	float: right;\n	width: auto;\n	text-align: right;\n}\n\ndl.details {\n	/*font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;*/\n	font-size: 1.1em;\n}\n\ndl.details dt {\n	float: left;\n	clear: left;\n	width: 30%;\n	text-align: right;\n	color: #000000;\n	display: block;\n}\n\ndl.details dd {\n	margin-left: 0;\n	padding-left: 5px;\n	margin-bottom: 5px;\n	color: #828282;\n	float: left;\n	width: 65%;\n}\n\n/* Pagination\n---------------------------------------- */\n.pagination {\n	height: 1%; /* IE tweak (holly hack) */\n	width: auto;\n	text-align: right;\n	margin-top: 5px;\n	float: right;\n}\n\n.pagination span.page-sep {\n	display: none;\n}\n\nli.pagination {\n	margin-top: 0;\n}\n\n.pagination strong, .pagination b {\n	font-weight: normal;\n}\n\n.pagination span strong {\n	padding: 0 2px;\n	margin: 0 2px;\n	font-weight: normal;\n	color: #FFFFFF;\n	background-color: #bfbfbf;\n	border: 1px solid #bfbfbf;\n	font-size: 0.9em;\n}\n\n.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {\n	font-weight: normal;\n	text-decoration: none;\n	color: #747474;\n	margin: 0 2px;\n	padding: 0 2px;\n	background-color: #eeeeee;\n	border: 1px solid #bababa;\n	font-size: 0.9em;\n	line-height: 1.5em;\n}\n\n.pagination span a:hover {\n	border-color: #d2d2d2;\n	background-color: #d2d2d2;\n	color: #FFF;\n	text-decoration: none;\n}\n\n.pagination img {\n	vertical-align: middle;\n}\n\n/* Pagination in viewforum for multipage topics */\n.row .pagination {\n	display: block;\n	float: right;\n	width: auto;\n	margin-top: 0;\n	padding: 1px 0 1px 15px;\n	font-size: 0.9em;\n	background: none 0 50% no-repeat;\n}\n\n.row .pagination span a, li.pagination span a {\n	background-color: #FFFFFF;\n}\n\n.row .pagination span a:hover, li.pagination span a:hover {\n	background-color: #d2d2d2;\n}\n\n/* Miscellaneous styles\n---------------------------------------- */\n#forum-permissions {\n	float: right;\n	width: auto;\n	padding-left: 5px;\n	margin-left: 5px;\n	margin-top: 10px;\n	text-align: right;\n}\n\n.copyright {\n	padding: 5px;\n	text-align: center;\n	color: #555555;\n}\n\n.small {\n	font-size: 0.9em !important;\n}\n\n.titlespace {\n	margin-bottom: 15px;\n}\n\n.headerspace {\n	margin-top: 20px;\n}\n\n.error {\n	color: #bcbcbc;\n	font-weight: bold;\n	font-size: 1em;\n}\n\n.reported {\n	background-color: #f7f7f7;\n}\n\nli.reported:hover {\n	background-color: #ececec;\n}\n\ndiv.rules {\n	background-color: #ececec;\n	color: #bcbcbc;\n	padding: 0 10px;\n	margin: 10px 0;\n	font-size: 1.1em;\n}\n\ndiv.rules ul, div.rules ol {\n	margin-left: 20px;\n}\n\np.rules {\n	background-color: #ececec;\n	background-image: none;\n	padding: 5px;\n}\n\np.rules img {\n	vertical-align: middle;\n	padding-top: 5px;\n}\n\np.rules a {\n	vertical-align: middle;\n	clear: both;\n}\n\n#top {\n	position: absolute;\n	top: -20px;\n}\n\n.clear {\n	display: block;\n	clear: both;\n	font-size: 1px;\n	line-height: 1px;\n	background: transparent;\n}\n/* proSilver Link Styles\n---------------------------------------- */\n\na:link	{ color: #898989; text-decoration: none; }\na:visited	{ color: #898989; text-decoration: none; }\na:hover	{ color: #d3d3d3; text-decoration: underline; }\na:active	{ color: #d2d2d2; text-decoration: none; }\n\n/* Coloured usernames */\n.username-coloured {\n	font-weight: bold;\n	display: inline !important;\n	padding: 0 !important;\n}\n\n/* Links on gradient backgrounds */\n#search-box a:link, .navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\n	color: #FFFFFF;\n	text-decoration: none;\n}\n\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\n	color: #FFFFFF;\n	text-decoration: none;\n}\n\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\n	color: #ffffff;\n	text-decoration: underline;\n}\n\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\n	color: #ffffff;\n	text-decoration: none;\n}\n\n/* Links for forum/topic lists */\na.forumtitle {\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\n	font-size: 1.2em;\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n/* a.forumtitle:visited { color: #898989; } */\n\na.forumtitle:hover {\n	color: #bcbcbc;\n	text-decoration: underline;\n}\n\na.forumtitle:active {\n	color: #898989;\n}\n\na.topictitle {\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\n	font-size: 1.2em;\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n/* a.topictitle:visited { color: #d2d2d2; } */\n\na.topictitle:hover {\n	color: #bcbcbc;\n	text-decoration: underline;\n}\n\na.topictitle:active {\n	color: #898989;\n}\n\n/* Post body links */\n.postlink {\n	text-decoration: none;\n	color: #d2d2d2;\n	border-bottom: 1px solid #d2d2d2;\n	padding-bottom: 0;\n}\n\n.postlink:visited {\n	color: #bdbdbd;\n	border-bottom-style: dotted;\n	border-bottom-color: #666666;\n}\n\n.postlink:active {\n	color: #d2d2d2;\n}\n\n.postlink:hover {\n	background-color: #f6f6f6;\n	text-decoration: none;\n	color: #404040;\n}\n\n.signature a, .signature a:visited, .signature a:active, .signature a:hover {\n	border: none;\n	text-decoration: underline;\n	background-color: transparent;\n}\n\n/* Profile links */\n.postprofile a:link, .postprofile a:active, .postprofile a:visited, .postprofile dt.author a {\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n.postprofile a:hover, .postprofile dt.author a:hover {\n	text-decoration: underline;\n	color: #d3d3d3;\n}\n\n\n/* Profile searchresults */	\n.search .postprofile a {\n	color: #898989;\n	text-decoration: none; \n	font-weight: normal;\n}\n\n.search .postprofile a:hover {\n	color: #d3d3d3;\n	text-decoration: underline; \n}\n\n/* Back to top of page */\n.back2top {\n	clear: both;\n	height: 11px;\n	text-align: right;\n}\n\na.top {\n	background: none no-repeat top left;\n	text-decoration: none;\n	width: {IMG_ICON_BACK_TOP_WIDTH}px;\n	height: {IMG_ICON_BACK_TOP_HEIGHT}px;\n	display: block;\n	float: right;\n	overflow: hidden;\n	letter-spacing: 1000px;\n	text-indent: 11px;\n}\n\na.top2 {\n	background: none no-repeat 0 50%;\n	text-decoration: none;\n	padding-left: 15px;\n}\n\n/* Arrow links  */\na.up		{ background: none no-repeat left center; }\na.down		{ background: none no-repeat right center; }\na.left		{ background: none no-repeat 3px 60%; }\na.right		{ background: none no-repeat 95% 60%; }\n\na.up, a.up:link, a.up:active, a.up:visited {\n	padding-left: 10px;\n	text-decoration: none;\n	border-bottom-width: 0;\n}\n\na.up:hover {\n	background-position: left top;\n	background-color: transparent;\n}\n\na.down, a.down:link, a.down:active, a.down:visited {\n	padding-right: 10px;\n}\n\na.down:hover {\n	background-position: right bottom;\n	text-decoration: none;\n}\n\na.left, a.left:active, a.left:visited {\n	padding-left: 12px;\n}\n\na.left:hover {\n	color: #d2d2d2;\n	text-decoration: none;\n	background-position: 0 60%;\n}\n\na.right, a.right:active, a.right:visited {\n	padding-right: 12px;\n}\n\na.right:hover {\n	color: #d2d2d2;\n	text-decoration: none;\n	background-position: 100% 60%;\n}\n\n/* invisible skip link, used for accessibility  */\n.skiplink {\n	position: absolute;\n	left: -999px;\n	width: 990px;\n}\n\n/* Feed icon in forumlist_body.html */\na.feed-icon-forum {\n	float: right;\n	margin: 3px;\n}\n/* proSilver Content Styles\n---------------------------------------- */\n\nul.topiclist {\n	display: block;\n	list-style-type: none;\n	margin: 0;\n}\n\nul.forums {\n	background: #f9f9f9 none repeat-x 0 0;\n}\n\nul.topiclist li {\n	display: block;\n	list-style-type: none;\n	color: #777777;\n	margin: 0;\n}\n\nul.topiclist dl {\n	position: relative;\n}\n\nul.topiclist li.row dl {\n	padding: 2px 0;\n}\n\nul.topiclist dt {\n	display: block;\n	float: left;\n	width: 50%;\n	font-size: 1.1em;\n	padding-left: 5px;\n	padding-right: 5px;\n}\n\nul.topiclist dd {\n	display: block;\n	float: left;\n	border-left: 1px solid #FFFFFF;\n	padding: 4px 0;\n}\n\nul.topiclist dfn {\n	/* Labels for post/view counts */\n	position: absolute;\n	left: -999px;\n	width: 990px;\n}\n\nul.topiclist li.row dt a.subforum {\n	background-image: none;\n	background-position: 0 50%;\n	background-repeat: no-repeat;\n	position: relative;\n	white-space: nowrap;\n	padding: 0 0 0 12px;\n}\n\n.forum-image {\n	float: left;\n	padding-top: 5px;\n	margin-right: 5px;\n}\n\nli.row {\n	border-top: 1px solid #FFFFFF;\n	border-bottom: 1px solid #8f8f8f;\n}\n\nli.row strong {\n	font-weight: normal;\n	color: #000000;\n}\n\nli.row:hover {\n	background-color: #f6f6f6;\n}\n\nli.row:hover dd {\n	border-left-color: #CCCCCC;\n}\n\nli.header dt, li.header dd {\n	line-height: 1em;\n	border-left-width: 0;\n	margin: 2px 0 4px 0;\n	color: #FFFFFF;\n	padding-top: 2px;\n	padding-bottom: 2px;\n	font-size: 1em;\n	font-family: Arial, Helvetica, sans-serif;\n	text-transform: uppercase;\n}\n\nli.header dt {\n	font-weight: bold;\n}\n\nli.header dd {\n	margin-left: 1px;\n}\n\nli.header dl.icon {\n	min-height: 0;\n}\n\nli.header dl.icon dt {\n	/* Tweak for headers alignment when folder icon used */\n	padding-left: 0;\n	padding-right: 50px;\n}\n\n/* Forum list column styles */\ndl.icon {\n	min-height: 35px;\n	background-position: 10px 50%;		/* Position of folder icon */\n	background-repeat: no-repeat;\n}\n\ndl.icon dt {\n	padding-left: 45px;					/* Space for folder icon */\n	background-repeat: no-repeat;\n	background-position: 5px 95%;		/* Position of topic icon */\n}\n\ndd.posts, dd.topics, dd.views {\n	width: 8%;\n	text-align: center;\n	line-height: 2.2em;\n	font-size: 1.2em;\n}\n\n/* List in forum description */\ndl.icon dt ol,\ndl.icon dt ul {\n	list-style-position: inside;\n	margin-left: 1em;\n}\n\ndl.icon dt li {\n	display: list-item;\n	list-style-type: inherit;\n}\n\ndd.lastpost {\n	width: 25%;\n	font-size: 1.1em;\n}\n\ndd.redirect {\n	font-size: 1.1em;\n	line-height: 2.5em;\n}\n\ndd.moderation {\n	font-size: 1.1em;\n}\n\ndd.lastpost span, ul.topiclist dd.searchby span, ul.topiclist dd.info span, ul.topiclist dd.time span, dd.redirect span, dd.moderation span {\n	display: block;\n	padding-left: 5px;\n}\n\ndd.time {\n	width: auto;\n	line-height: 200%;\n	font-size: 1.1em;\n}\n\ndd.extra {\n	width: 12%;\n	line-height: 200%;\n	text-align: center;\n	font-size: 1.1em;\n}\n\ndd.mark {\n	float: right !important;\n	width: 9%;\n	text-align: center;\n	line-height: 200%;\n	font-size: 1.2em;\n}\n\ndd.info {\n	width: 30%;\n}\n\ndd.option {\n	width: 15%;\n	line-height: 200%;\n	text-align: center;\n	font-size: 1.1em;\n}\n\ndd.searchby {\n	width: 47%;\n	font-size: 1.1em;\n	line-height: 1em;\n}\n\nul.topiclist dd.searchextra {\n	margin-left: 5px;\n	padding: 0.2em 0;\n	font-size: 1.1em;\n	color: #333333;\n	border-left: none;\n	clear: both;\n	width: 98%;\n	overflow: hidden;\n}\n\n/* Container for post/reply buttons and pagination */\n.topic-actions {\n	margin-bottom: 3px;\n	font-size: 1.1em;\n	height: 28px;\n	min-height: 28px;\n}\ndiv[class].topic-actions {\n	height: auto;\n}\n\n/* Post body styles\n----------------------------------------*/\n.postbody {\n	padding: 0;\n	line-height: 1.48em;\n	color: #333333;\n	width: 76%;\n	float: left;\n	clear: both;\n}\n\n.postbody .ignore {\n	font-size: 1.1em;\n}\n\n.postbody h3.first {\n	/* The first post on the page uses this */\n	font-size: 1.7em;\n}\n\n.postbody h3 {\n	/* Postbody requires a different h3 format - so change it here */\n	font-size: 1.5em;\n	padding: 2px 0 0 0;\n	margin: 0 0 0.3em 0 !important;\n	text-transform: none;\n	border: none;\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	line-height: 125%;\n}\n\n.postbody h3 img {\n	/* Also see tweaks.css */\n	vertical-align: bottom;\n}\n\n.postbody .content {\n	font-size: 1.3em;\n}\n\n.search .postbody {\n	width: 68%\n}\n\n/* Topic review panel\n----------------------------------------*/\n#review {\n	margin-top: 2em;\n}\n\n#topicreview {\n	padding-right: 5px;\n	overflow: auto;\n	height: 300px;\n}\n\n#topicreview .postbody {\n	width: auto;\n	float: none;\n	margin: 0;\n	height: auto;\n}\n\n#topicreview .post {\n	height: auto;\n}\n\n#topicreview h2 {\n	border-bottom-width: 0;\n}\n\n.post-ignore .postbody {\n	display: none;\n}\n\n/* Content container styles\n----------------------------------------*/\n.content {\n	min-height: 3em;\n	overflow: hidden;\n	line-height: 1.4em;\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1em;\n	color: #333333;\n	padding-bottom: 1px;\n}\n\n.content h2, .panel h2 {\n	font-weight: normal;\n	color: #989898;\n	border-bottom: 1px solid #CCCCCC;\n	font-size: 1.6em;\n	margin-top: 0.5em;\n	margin-bottom: 0.5em;\n	padding-bottom: 0.5em;\n}\n\n.panel h3 {\n	margin: 0.5em 0;\n}\n\n.panel p {\n	font-size: 1.2em;\n	margin-bottom: 1em;\n	line-height: 1.4em;\n}\n\n.content p {\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.2em;\n	margin-bottom: 1em;\n	line-height: 1.4em;\n}\n\ndl.faq {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.1em;\n	margin-top: 1em;\n	margin-bottom: 2em;\n	line-height: 1.4em;\n}\n\ndl.faq dt {\n	font-weight: bold;\n	color: #333333;\n}\n\n.content dl.faq {\n	font-size: 1.2em;\n	margin-bottom: 0.5em;\n}\n\n.content li {\n	list-style-type: inherit;\n}\n\n.content ul, .content ol {\n	margin-bottom: 1em;\n	margin-left: 3em;\n}\n\n.posthilit {\n	background-color: #f3f3f3;\n	color: #BCBCBC;\n	padding: 0 2px 1px 2px;\n}\n\n.announce, .unreadpost {\n	/* Highlight the announcements & unread posts box */\n	border-left-color: #BCBCBC;\n	border-right-color: #BCBCBC;\n}\n\n/* Post author */\np.author {\n	margin: 0 15em 0.6em 0;\n	padding: 0 0 5px 0;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1em;\n	line-height: 1.2em;\n}\n\n/* Post signature */\n.signature {\n	margin-top: 1.5em;\n	padding-top: 0.2em;\n	font-size: 1.1em;\n	border-top: 1px solid #CCCCCC;\n	clear: left;\n	line-height: 140%;\n	overflow: hidden;\n	width: 100%;\n}\n\ndd .signature {\n	margin: 0;\n	padding: 0;\n	clear: none;\n	border: none;\n}\n\n.signature li {\n	list-style-type: inherit;\n}\n\n.signature ul, .signature ol {\n	margin-bottom: 1em;\n	margin-left: 3em;\n}\n\n/* Post noticies */\n.notice {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	width: auto;\n	margin-top: 1.5em;\n	padding-top: 0.2em;\n	font-size: 1em;\n	border-top: 1px dashed #CCCCCC;\n	clear: left;\n	line-height: 130%;\n}\n\n/* Jump to post link for now */\nul.searchresults {\n	list-style: none;\n	text-align: right;\n	clear: both;\n}\n\n/* BB Code styles\n----------------------------------------*/\n/* Quote block */\nblockquote {\n	background: #ebebeb none 6px 8px no-repeat;\n	border: 1px solid #dbdbdb;\n	font-size: 0.95em;\n	margin: 0.5em 1px 0 25px;\n	overflow: hidden;\n	padding: 5px;\n}\n\nblockquote blockquote {\n	/* Nested quotes */\n	background-color: #bababa;\n	font-size: 1em;\n	margin: 0.5em 1px 0 15px;	\n}\n\nblockquote blockquote blockquote {\n	/* Nested quotes */\n	background-color: #e4e4e4;\n}\n\nblockquote cite {\n	/* Username/source of quoter */\n	font-style: normal;\n	font-weight: bold;\n	margin-left: 20px;\n	display: block;\n	font-size: 0.9em;\n}\n\nblockquote cite cite {\n	font-size: 1em;\n}\n\nblockquote.uncited {\n	padding-top: 25px;\n}\n\n/* Code block */\ndl.codebox {\n	padding: 3px;\n	background-color: #FFFFFF;\n	border: 1px solid #d8d8d8;\n	font-size: 1em;\n}\n\ndl.codebox dt {\n	text-transform: uppercase;\n	border-bottom: 1px solid #CCCCCC;\n	margin-bottom: 3px;\n	font-size: 0.8em;\n	font-weight: bold;\n	display: block;\n}\n\nblockquote dl.codebox {\n	margin-left: 0;\n}\n\ndl.codebox code {\n	/* Also see tweaks.css */\n	overflow: auto;\n	display: block;\n	height: auto;\n	max-height: 200px;\n	white-space: normal;\n	padding-top: 5px;\n	font: 0.9em Monaco, "Andale Mono","Courier New", Courier, mono;\n	line-height: 1.3em;\n	color: #8b8b8b;\n	margin: 2px 0;\n}\n\n.syntaxbg		{ color: #FFFFFF; }\n.syntaxcomment	{ color: #000000; }\n.syntaxdefault	{ color: #bcbcbc; }\n.syntaxhtml		{ color: #000000; }\n.syntaxkeyword	{ color: #585858; }\n.syntaxstring	{ color: #a7a7a7; }\n\n/* Attachments\n----------------------------------------*/\n.attachbox {\n	float: left;\n	width: auto; \n	margin: 5px 5px 5px 0;\n	padding: 6px;\n	background-color: #FFFFFF;\n	border: 1px dashed #d8d8d8;\n	clear: left;\n}\n\n.pm-message .attachbox {\n	background-color: #f3f3f3;\n}\n\n.attachbox dt {\n	font-family: Arial, Helvetica, sans-serif;\n	text-transform: uppercase;\n}\n\n.attachbox dd {\n	margin-top: 4px;\n	padding-top: 4px;\n	clear: left;\n	border-top: 1px solid #d8d8d8;\n}\n\n.attachbox dd dd {\n	border: none;\n}\n\n.attachbox p {\n	line-height: 110%;\n	color: #666666;\n	font-weight: normal;\n	clear: left;\n}\n\n.attachbox p.stats\n{\n	line-height: 110%;\n	color: #666666;\n	font-weight: normal;\n	clear: left;\n}\n\n.attach-image {\n	margin: 3px 0;\n	width: 100%;\n	max-height: 350px;\n	overflow: auto;\n}\n\n.attach-image img {\n	border: 1px solid #999999;\n/*	cursor: move; */\n	cursor: default;\n}\n\n/* Inline image thumbnails */\ndiv.inline-attachment dl.thumbnail, div.inline-attachment dl.file {\n	display: block;\n	margin-bottom: 4px;\n}\n\ndiv.inline-attachment p {\n	font-size: 100%;\n}\n\ndl.file {\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n	display: block;\n}\n\ndl.file dt {\n	text-transform: none;\n	margin: 0;\n	padding: 0;\n	font-weight: bold;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n}\n\ndl.file dd {\n	color: #666666;\n	margin: 0;\n	padding: 0;	\n}\n\ndl.thumbnail img {\n	padding: 3px;\n	border: 1px solid #666666;\n	background-color: #FFF;\n}\n\ndl.thumbnail dd {\n	color: #666666;\n	font-style: italic;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n}\n\n.attachbox dl.thumbnail dd {\n	font-size: 100%;\n}\n\ndl.thumbnail dt a:hover {\n	background-color: #EEEEEE;\n}\n\ndl.thumbnail dt a:hover img {\n	border: 1px solid #d2d2d2;\n}\n\n/* Post poll styles\n----------------------------------------*/\nfieldset.polls {\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n}\n\nfieldset.polls dl {\n	margin-top: 5px;\n	border-top: 1px solid #e2e2e2;\n	padding: 5px 0 0 0;\n	line-height: 120%;\n	color: #666666;\n}\n\nfieldset.polls dl.voted {\n	font-weight: bold;\n	color: #000000;\n}\n\nfieldset.polls dt {\n	text-align: left;\n	float: left;\n	display: block;\n	width: 30%;\n	border-right: none;\n	padding: 0;\n	margin: 0;\n	font-size: 1.1em;\n}\n\nfieldset.polls dd {\n	float: left;\n	width: 10%;\n	border-left: none;\n	padding: 0 5px;\n	margin-left: 0;\n	font-size: 1.1em;\n}\n\nfieldset.polls dd.resultbar {\n	width: 50%;\n}\n\nfieldset.polls dd input {\n	margin: 2px 0;\n}\n\nfieldset.polls dd div {\n	text-align: right;\n	font-family: Arial, Helvetica, sans-serif;\n	color: #FFFFFF;\n	font-weight: bold;\n	padding: 0 2px;\n	overflow: visible;\n	min-width: 2%;\n}\n\n.pollbar1 {\n	background-color: #aaaaaa;\n	border-bottom: 1px solid #747474;\n	border-right: 1px solid #747474;\n}\n\n.pollbar2 {\n	background-color: #bebebe;\n	border-bottom: 1px solid #8c8c8c;\n	border-right: 1px solid #8c8c8c;\n}\n\n.pollbar3 {\n	background-color: #D1D1D1;\n	border-bottom: 1px solid #aaaaaa;\n	border-right: 1px solid #aaaaaa;\n}\n\n.pollbar4 {\n	background-color: #e4e4e4;\n	border-bottom: 1px solid #bebebe;\n	border-right: 1px solid #bebebe;\n}\n\n.pollbar5 {\n	background-color: #f8f8f8;\n	border-bottom: 1px solid #D1D1D1;\n	border-right: 1px solid #D1D1D1;\n}\n\n/* Poster profile block\n----------------------------------------*/\n.postprofile {\n	/* Also see tweaks.css */\n	margin: 5px 0 10px 0;\n	min-height: 80px;\n	color: #666666;\n	border-left: 1px solid #FFFFFF;\n	width: 22%;\n	float: right;\n	display: inline;\n}\n.pm .postprofile {\n	border-left: 1px solid #DDDDDD;\n}\n\n.postprofile dd, .postprofile dt {\n	line-height: 1.2em;\n	margin-left: 8px;\n}\n\n.postprofile strong {\n	font-weight: normal;\n	color: #000000;\n}\n\n.avatar {\n	border: none;\n	margin-bottom: 3px;\n}\n\n.online {\n	background-image: none;\n	background-position: 100% 0;\n	background-repeat: no-repeat;\n}\n\n/* Poster profile used by search*/\n.search .postprofile {\n	width: 30%;\n}\n\n/* pm list in compose message if mass pm is enabled */\ndl.pmlist dt {\n	width: 60% !important;\n}\n\ndl.pmlist dt textarea {\n	width: 95%;\n}\n\ndl.pmlist dd {\n	margin-left: 61% !important;\n	margin-bottom: 2px;\n}\n/* proSilver Button Styles\n---------------------------------------- */\n\n/* Rollover buttons\n   Based on: http://wellstyled.com/css-nopreload-rollovers.html\n----------------------------------------*/\n.buttons {\n	float: left;\n	width: auto;\n	height: auto;\n}\n\n/* Rollover state */\n.buttons div {\n	float: left;\n	margin: 0 5px 0 0;\n	background-position: 0 100%;\n}\n\n/* Rolloff state */\n.buttons div a {\n	display: block;\n	width: 100%;\n	height: 100%;\n	background-position: 0 0;\n	position: relative;\n	overflow: hidden;\n}\n\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\n/*.buttons div span		{ display: none; }*/\n/*.buttons div a:hover	{ background-image: none; }*/\n.buttons div span			{ position: absolute; width: 100%; height: 100%; cursor: pointer;}\n.buttons div a:hover span	{ background-position: 0 100%; }\n\n/* Big button images */\n.reply-icon span	{ background: transparent none 0 0 no-repeat; }\n.post-icon span		{ background: transparent none 0 0 no-repeat; }\n.locked-icon span	{ background: transparent none 0 0 no-repeat; }\n.pmreply-icon span	{ background: none 0 0 no-repeat; }\n.newpm-icon span 	{ background: none 0 0 no-repeat; }\n.forwardpm-icon span 	{ background: none 0 0 no-repeat; }\n\n/* Set big button dimensions */\n.buttons div.reply-icon		{ width: {IMG_BUTTON_TOPIC_REPLY_WIDTH}px; height: {IMG_BUTTON_TOPIC_REPLY_HEIGHT}px; }\n.buttons div.post-icon		{ width: {IMG_BUTTON_TOPIC_NEW_WIDTH}px; height: {IMG_BUTTON_TOPIC_NEW_HEIGHT}px; }\n.buttons div.locked-icon	{ width: {IMG_BUTTON_TOPIC_LOCKED_WIDTH}px; height: {IMG_BUTTON_TOPIC_LOCKED_HEIGHT}px; }\n.buttons div.pmreply-icon	{ width: {IMG_BUTTON_PM_REPLY_WIDTH}px; height: {IMG_BUTTON_PM_REPLY_HEIGHT}px; }\n.buttons div.newpm-icon		{ width: {IMG_BUTTON_PM_NEW_WIDTH}px; height: {IMG_BUTTON_PM_NEW_HEIGHT}px; }\n.buttons div.forwardpm-icon	{ width: {IMG_BUTTON_PM_FORWARD_WIDTH}px; height: {IMG_BUTTON_PM_FORWARD_HEIGHT}px; }\n\n/* Sub-header (navigation bar)\n--------------------------------------------- */\na.print, a.sendemail, a.fontsize {\n	display: block;\n	overflow: hidden;\n	height: 18px;\n	text-indent: -5000px;\n	text-align: left;\n	background-repeat: no-repeat;\n}\n\na.print {\n	background-image: none;\n	width: 22px;\n}\n\na.sendemail {\n	background-image: none;\n	width: 22px;\n}\n\na.fontsize {\n	background-image: none;\n	background-position: 0 -1px;\n	width: 29px;\n}\n\na.fontsize:hover {\n	background-position: 0 -20px;\n	text-decoration: none;\n}\n\n/* Icon images\n---------------------------------------- */\n.sitehome, .icon-faq, .icon-members, .icon-home, .icon-ucp, .icon-register, .icon-logout,\n.icon-bookmark, .icon-bump, .icon-subscribe, .icon-unsubscribe, .icon-pages, .icon-search {\n	background-position: 0 50%;\n	background-repeat: no-repeat;\n	background-image: none;\n	padding: 1px 0 0 17px;\n}\n\n/* Poster profile icons\n----------------------------------------*/\nul.profile-icons {\n	padding-top: 10px;\n	list-style: none;\n}\n\n/* Rollover state */\nul.profile-icons li {\n	float: left;\n	margin: 0 6px 3px 0;\n	background-position: 0 100%;\n}\n\n/* Rolloff state */\nul.profile-icons li a {\n	display: block;\n	width: 100%;\n	height: 100%;\n	background-position: 0 0;\n}\n\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\nul.profile-icons li span { display:none; }\nul.profile-icons li a:hover { background: none; }\n\n/* Positioning of moderator icons */\n.postbody ul.profile-icons {\n	float: right;\n	width: auto;\n	padding: 0;\n}\n\n.postbody ul.profile-icons li {\n	margin: 0 3px;\n}\n\n/* Profile & navigation icons */\n.email-icon, .email-icon a		{ background: none top left no-repeat; }\n.aim-icon, .aim-icon a			{ background: none top left no-repeat; }\n.yahoo-icon, .yahoo-icon a		{ background: none top left no-repeat; }\n.web-icon, .web-icon a			{ background: none top left no-repeat; }\n.msnm-icon, .msnm-icon a			{ background: none top left no-repeat; }\n.icq-icon, .icq-icon a			{ background: none top left no-repeat; }\n.jabber-icon, .jabber-icon a		{ background: none top left no-repeat; }\n.pm-icon, .pm-icon a				{ background: none top left no-repeat; }\n.quote-icon, .quote-icon a		{ background: none top left no-repeat; }\n\n/* Moderator icons */\n.report-icon, .report-icon a		{ background: none top left no-repeat; }\n.warn-icon, .warn-icon a			{ background: none top left no-repeat; }\n.edit-icon, .edit-icon a			{ background: none top left no-repeat; }\n.delete-icon, .delete-icon a		{ background: none top left no-repeat; }\n.info-icon, .info-icon a			{ background: none top left no-repeat; }\n\n/* Set profile icon dimensions */\nul.profile-icons li.email-icon		{ width: {IMG_ICON_CONTACT_EMAIL_WIDTH}px; height: {IMG_ICON_CONTACT_EMAIL_HEIGHT}px; }\nul.profile-icons li.aim-icon	{ width: {IMG_ICON_CONTACT_AIM_WIDTH}px; height: {IMG_ICON_CONTACT_AIM_HEIGHT}px; }\nul.profile-icons li.yahoo-icon	{ width: {IMG_ICON_CONTACT_YAHOO_WIDTH}px; height: {IMG_ICON_CONTACT_YAHOO_HEIGHT}px; }\nul.profile-icons li.web-icon	{ width: {IMG_ICON_CONTACT_WWW_WIDTH}px; height: {IMG_ICON_CONTACT_WWW_HEIGHT}px; }\nul.profile-icons li.msnm-icon	{ width: {IMG_ICON_CONTACT_MSNM_WIDTH}px; height: {IMG_ICON_CONTACT_MSNM_HEIGHT}px; }\nul.profile-icons li.icq-icon	{ width: {IMG_ICON_CONTACT_ICQ_WIDTH}px; height: {IMG_ICON_CONTACT_ICQ_HEIGHT}px; }\nul.profile-icons li.jabber-icon	{ width: {IMG_ICON_CONTACT_JABBER_WIDTH}px; height: {IMG_ICON_CONTACT_JABBER_HEIGHT}px; }\nul.profile-icons li.pm-icon		{ width: {IMG_ICON_CONTACT_PM_WIDTH}px; height: {IMG_ICON_CONTACT_PM_HEIGHT}px; }\nul.profile-icons li.quote-icon	{ width: {IMG_ICON_POST_QUOTE_WIDTH}px; height: {IMG_ICON_POST_QUOTE_HEIGHT}px; }\nul.profile-icons li.report-icon	{ width: {IMG_ICON_POST_REPORT_WIDTH}px; height: {IMG_ICON_POST_REPORT_HEIGHT}px; }\nul.profile-icons li.edit-icon	{ width: {IMG_ICON_POST_EDIT_WIDTH}px; height: {IMG_ICON_POST_EDIT_HEIGHT}px; }\nul.profile-icons li.delete-icon	{ width: {IMG_ICON_POST_DELETE_WIDTH}px; height: {IMG_ICON_POST_DELETE_HEIGHT}px; }\nul.profile-icons li.info-icon	{ width: {IMG_ICON_POST_INFO_WIDTH}px; height: {IMG_ICON_POST_INFO_HEIGHT}px; }\nul.profile-icons li.warn-icon	{ width: {IMG_ICON_USER_WARN_WIDTH}px; height: {IMG_ICON_USER_WARN_HEIGHT}px; }\n\n/* Fix profile icon default margins */\nul.profile-icons li.edit-icon	{ margin: 0 0 0 3px; }\nul.profile-icons li.quote-icon	{ margin: 0 0 0 10px; }\nul.profile-icons li.info-icon, ul.profile-icons li.report-icon	{ margin: 0 3px 0 0; }\n/* proSilver Control Panel Styles\n---------------------------------------- */\n\n\n/* Main CP box\n----------------------------------------*/\n#cp-menu {\n	float:left;\n	width: 19%;\n	margin-top: 1em;\n	margin-bottom: 5px;\n}\n\n#cp-main {\n	float: left;\n	width: 81%;\n}\n\n#cp-main .content {\n	padding: 0;\n}\n\n#cp-main h3, #cp-main hr, #cp-menu hr {\n	border-color: #bfbfbf;\n}\n\n#cp-main .panel p {\n	font-size: 1.1em;\n}\n\n#cp-main .panel ol {\n	margin-left: 2em;\n	font-size: 1.1em;\n}\n\n#cp-main .panel li.row {\n	border-bottom: 1px solid #cbcbcb;\n	border-top: 1px solid #F9F9F9;\n}\n\nul.cplist {\n	margin-bottom: 5px;\n	border-top: 1px solid #cbcbcb;\n}\n\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\n	color: #000000;\n	margin-bottom: 2px;\n}\n\n#cp-main table.table1 {\n	margin-bottom: 1em;\n}\n\n#cp-main table.table1 thead th {\n	color: #333333;\n	font-weight: bold;\n	border-bottom: 1px solid #333333;\n	padding: 5px;\n}\n\n#cp-main table.table1 tbody th {\n	font-style: italic;\n	background-color: transparent !important;\n	border-bottom: none;\n}\n\n#cp-main .pagination {\n	float: right;\n	width: auto;\n	padding-top: 1px;\n}\n\n#cp-main .postbody p {\n	font-size: 1.1em;\n}\n\n#cp-main .pm-message {\n	border: 1px solid #e2e2e2;\n	margin: 10px 0;\n	background-color: #FFFFFF;\n	width: auto;\n	float: none;\n}\n\n.pm-message h2 {\n	padding-bottom: 5px;\n}\n\n#cp-main .postbody h3, #cp-main .box2 h3 {\n	margin-top: 0;\n}\n\n#cp-main .buttons {\n	margin-left: 0;\n}\n\n#cp-main ul.linklist {\n	margin: 0;\n}\n\n/* MCP Specific tweaks */\n.mcp-main .postbody {\n	width: 100%;\n}\n\n/* CP tabbed menu\n----------------------------------------*/\n#tabs {\n	line-height: normal;\n	margin: 20px 0 -1px 7px;\n	min-width: 570px;\n}\n\n#tabs ul {\n	margin:0;\n	padding: 0;\n	list-style: none;\n}\n\n#tabs li {\n	display: inline;\n	margin: 0;\n	padding: 0;\n	font-size: 1em;\n	font-weight: bold;\n}\n\n#tabs a {\n	float: left;\n	background: none no-repeat 0% -35px;\n	margin: 0 1px 0 0;\n	padding: 0 0 0 5px;\n	text-decoration: none;\n	position: relative;\n	cursor: pointer;\n}\n\n#tabs a span {\n	float: left;\n	display: block;\n	background: none no-repeat 100% -35px;\n	padding: 6px 10px 6px 5px;\n	color: #828282;\n	white-space: nowrap;\n}\n\n#tabs a:hover span {\n	color: #bcbcbc;\n}\n\n#tabs .activetab a {\n	background-position: 0 0;\n	border-bottom: 1px solid #ebebeb;\n}\n\n#tabs .activetab a span {\n	background-position: 100% 0;\n	padding-bottom: 7px;\n	color: #333333;\n}\n\n#tabs a:hover {\n	background-position: 0 -70px;\n}\n\n#tabs a:hover span {\n	background-position:100% -70px;\n}\n\n#tabs .activetab a:hover {\n	background-position: 0 0;\n}\n\n#tabs .activetab a:hover span {\n	color: #000000;\n	background-position: 100% 0;\n}\n\n/* Mini tabbed menu used in MCP\n----------------------------------------*/\n#minitabs {\n	line-height: normal;\n	margin: -20px 7px 0 0;\n}\n\n#minitabs ul {\n	margin:0;\n	padding: 0;\n	list-style: none;\n}\n\n#minitabs li {\n	display: block;\n	float: right;\n	padding: 0 10px 4px 10px;\n	font-size: 1em;\n	font-weight: bold;\n	background-color: #f2f2f2;\n	margin-left: 2px;\n}\n\n#minitabs a {\n}\n\n#minitabs a:hover {\n	text-decoration: none;\n}\n\n#minitabs li.activetab {\n	background-color: #F9F9F9;\n}\n\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\n	color: #333333;\n}\n\n/* UCP navigation menu\n----------------------------------------*/\n/* Container for sub-navigation list */\n#navigation {\n	width: 100%;\n	padding-top: 36px;\n}\n\n#navigation ul {\n	list-style:none;\n}\n\n/* Default list state */\n#navigation li {\n	margin: 1px 0;\n	padding: 0;\n	font-weight: bold;\n	display: inline;\n}\n\n/* Link styles for the sub-section links */\n#navigation a {\n	display: block;\n	padding: 5px;\n	margin: 1px 0;\n	text-decoration: none;\n	font-weight: bold;\n	color: #333;\n	background: #cfcfcf none repeat-y 100% 0;\n}\n\n#navigation a:hover {\n	text-decoration: none;\n	background-color: #c6c6c6;\n	color: #bcbcbc;\n	background-image: none;\n}\n\n#navigation #active-subsection a {\n	display: block;\n	color: #d3d3d3;\n	background-color: #F9F9F9;\n	background-image: none;\n}\n\n#navigation #active-subsection a:hover {\n	color: #d3d3d3;\n}\n\n/* Preferences pane layout\n----------------------------------------*/\n#cp-main h2 {\n	border-bottom: none;\n	padding: 0;\n	margin-left: 10px;\n	color: #333333;\n}\n\n#cp-main .panel {\n	background-color: #F9F9F9;\n}\n\n#cp-main .pm {\n	background-color: #FFFFFF;\n}\n\n#cp-main span.corners-top, #cp-menu span.corners-top {\n	background-image: none;\n}\n\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\n	background-image: none;\n}\n\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\n	background-image: none;\n}\n\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\n	background-image: none;\n}\n\n/* Topicreview */\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\n	background-image: none;\n}\n\n/* Friends list */\n.cp-mini {\n	background-color: #f9f9f9;\n	padding: 0 5px;\n	margin: 10px 15px 10px 5px;\n}\n\n.cp-mini span.corners-top, .cp-mini span.corners-bottom {\n	margin: 0 -5px;\n}\n\ndl.mini dt {\n	font-weight: bold;\n	color: #676767;\n}\n\ndl.mini dd {\n	padding-top: 4px;\n}\n\n.friend-online {\n	font-weight: bold;\n}\n\n.friend-offline {\n	font-style: italic;\n}\n\n/* PM Styles\n----------------------------------------*/\n#pm-menu {\n	line-height: 2.5em;\n}\n\n/* PM panel adjustments */\n.pm-panel-header {\n	margin: 0; \n	padding-bottom: 10px; \n	border-bottom: 1px dashed #A4B3BF;\n}\n\n.reply-all {\n	display: block; \n	padding-top: 4px; \n	clear: both;\n	float: left;\n}\n\n.pm-panel-message {\n	padding-top: 10px;\n}\n\n.pm-return-to {\n	padding-top: 23px;\n}\n\n#cp-main .pm-message-nav {\n	margin: 0; \n	padding: 2px 10px 5px 10px; \n	border-bottom: 1px dashed #A4B3BF;\n}\n\n/* PM Message history */\n.current {\n	color: #999999;\n}\n\n/* Defined rules list for PM options */\nol.def-rules {\n	padding-left: 0;\n}\n\nol.def-rules li {\n	line-height: 180%;\n	padding: 1px;\n}\n\n/* PM marking colours */\n.pmlist li.bg1 {\n	border: solid 3px transparent;\n	border-width: 0 3px;\n}\n\n.pmlist li.bg2 {\n	border: solid 3px transparent;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\n	border-left-color: #bcbcbc;\n	border-right-color: #bcbcbc;\n}\n\n.pmlist li.pm_marked_colour, .pm_marked_colour {\n	border: solid 3px #ffffff;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_replied_colour, .pm_replied_colour {\n	border: solid 3px #c2c2c2;\n	border-width: 0 3px;	\n}\n\n.pmlist li.pm_friend_colour, .pm_friend_colour {\n	border: solid 3px #bdbdbd;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_foe_colour, .pm_foe_colour {\n	border: solid 3px #000000;\n	border-width: 0 3px;\n}\n\n.pm-legend {\n	border-left-width: 10px;\n	border-left-style: solid;\n	border-right-width: 0;\n	margin-bottom: 3px;\n	padding-left: 3px;\n}\n\n/* Avatar gallery */\n#gallery label {\n	position: relative;\n	float: left;\n	margin: 10px;\n	padding: 5px;\n	width: auto;\n	background: #FFFFFF;\n	border: 1px solid #CCC;\n	text-align: center;\n}\n\n#gallery label:hover {\n	background-color: #EEE;\n}\n/* proSilver Form Styles\n---------------------------------------- */\n\n/* General form styles\n----------------------------------------*/\nfieldset {\n	border-width: 0;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.1em;\n}\n\ninput {\n	font-weight: normal;\n	cursor: pointer;\n	vertical-align: middle;\n	padding: 0 3px;\n	font-size: 1em;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n}\n\nselect {\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-weight: normal;\n	cursor: pointer;\n	vertical-align: middle;\n	border: 1px solid #666666;\n	padding: 1px;\n	background-color: #FAFAFA;\n}\n\noption {\n	padding-right: 1em;\n}\n\noption.disabled-option {\n	color: graytext;\n}\n\ntextarea {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	width: 60%;\n	padding: 2px;\n	font-size: 1em;\n	line-height: 1.4em;\n}\n\nlabel {\n	cursor: default;\n	padding-right: 5px;\n	color: #676767;\n}\n\nlabel input {\n	vertical-align: middle;\n}\n\nlabel img {\n	vertical-align: middle;\n}\n\n/* Definition list layout for forms\n---------------------------------------- */\nfieldset dl {\n	padding: 4px 0;\n}\n\nfieldset dt {\n	float: left;	\n	width: 40%;\n	text-align: left;\n	display: block;\n}\n\nfieldset dd {\n	margin-left: 41%;\n	vertical-align: top;\n	margin-bottom: 3px;\n}\n\n/* Specific layout 1 */\nfieldset.fields1 dt {\n	width: 15em;\n	border-right-width: 0;\n}\n\nfieldset.fields1 dd {\n	margin-left: 15em;\n	border-left-width: 0;\n}\n\nfieldset.fields1 {\n	background-color: transparent;\n}\n\nfieldset.fields1 div {\n	margin-bottom: 3px;\n}\n\n/* Specific layout 2 */\nfieldset.fields2 dt {\n	width: 15em;\n	border-right-width: 0;\n}\n\nfieldset.fields2 dd {\n	margin-left: 16em;\n	border-left-width: 0;\n}\n\n/* Form elements */\ndt label {\n	font-weight: bold;\n	text-align: left;\n}\n\ndd label {\n	white-space: nowrap;\n	color: #333;\n}\n\ndd input, dd textarea {\n	margin-right: 3px;\n}\n\ndd select {\n	width: auto;\n}\n\ndd textarea {\n	width: 85%;\n}\n\n/* Hover effects */\nfieldset dl:hover dt label {\n	color: #000000;\n}\n\nfieldset.fields2 dl:hover dt label {\n	color: inherit;\n}\n\n#timezone {\n	width: 95%;\n}\n\n* html #timezone {\n	width: 50%;\n}\n\n/* Quick-login on index page */\nfieldset.quick-login {\n	margin-top: 5px;\n}\n\nfieldset.quick-login input {\n	width: auto;\n}\n\nfieldset.quick-login input.inputbox {\n	width: 15%;\n	vertical-align: middle;\n	margin-right: 5px;\n	background-color: #f3f3f3;\n}\n\nfieldset.quick-login label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\n/* Display options on viewtopic/viewforum pages  */\nfieldset.display-options {\n	text-align: center;\n	margin: 3px 0 5px 0;\n}\n\nfieldset.display-options label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\nfieldset.display-options a {\n	margin-top: 3px;\n}\n\n/* Display actions for ucp and mcp pages */\nfieldset.display-actions {\n	text-align: right;\n	line-height: 2em;\n	white-space: nowrap;\n	padding-right: 1em;\n}\n\nfieldset.display-actions label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\nfieldset.sort-options {\n	line-height: 2em;\n}\n\n/* MCP forum selection*/\nfieldset.forum-selection {\n	margin: 5px 0 3px 0;\n	float: right;\n}\n\nfieldset.forum-selection2 {\n	margin: 13px 0 3px 0;\n	float: right;\n}\n\n/* Jumpbox */\nfieldset.jumpbox {\n	text-align: right;\n	margin-top: 15px;\n	height: 2.5em;\n}\n\nfieldset.quickmod {\n	width: 50%;\n	float: right;\n	text-align: right;\n	height: 2.5em;\n}\n\n/* Submit button fieldset */\nfieldset.submit-buttons {\n	text-align: center;\n	vertical-align: middle;\n	margin: 5px 0;\n}\n\nfieldset.submit-buttons input {\n	vertical-align: middle;\n	padding-top: 3px;\n	padding-bottom: 3px;\n}\n\n/* Posting page styles\n----------------------------------------*/\n\n/* Buttons used in the editor */\n#format-buttons {\n	margin: 15px 0 2px 0;\n}\n\n#format-buttons input, #format-buttons select {\n	vertical-align: middle;\n}\n\n/* Main message box */\n#message-box {\n	width: 80%;\n}\n\n#message-box textarea {\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	width: 100%;\n	font-size: 1.2em;\n	color: #333333;\n}\n\n/* Emoticons panel */\n#smiley-box {\n	width: 18%;\n	float: right;\n}\n\n#smiley-box img {\n	margin: 3px;\n}\n\n/* Input field styles\n---------------------------------------- */\n.inputbox {\n	background-color: #FFFFFF;\n	border: 1px solid #c0c0c0;\n	color: #333333;\n	padding: 2px;\n	cursor: text;\n}\n\n.inputbox:hover {\n	border: 1px solid #eaeaea;\n}\n\n.inputbox:focus {\n	border: 1px solid #eaeaea;\n	color: #4b4b4b;\n}\n\ninput.inputbox	{ width: 85%; }\ninput.medium	{ width: 50%; }\ninput.narrow	{ width: 25%; }\ninput.tiny		{ width: 125px; }\n\ntextarea.inputbox {\n	width: 85%;\n}\n\n.autowidth {\n	width: auto !important;\n}\n\n/* Form button styles\n---------------------------------------- */\ninput.button1, input.button2 {\n	font-size: 1em;\n}\n\na.button1, input.button1, input.button3, a.button2, input.button2 {\n	width: auto !important;\n	padding-top: 1px;\n	padding-bottom: 1px;\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	color: #000;\n	background: #FAFAFA none repeat-x top;\n}\n\na.button1, input.button1 {\n	font-weight: bold;\n	border: 1px solid #666666;\n}\n\ninput.button3 {\n	padding: 0;\n	margin: 0;\n	line-height: 5px;\n	height: 12px;\n	background-image: none;\n	font-variant: small-caps;\n}\n\n/* Alternative button */\na.button2, input.button2, input.button3 {\n	border: 1px solid #666666;\n}\n\n/* <a> button in the style of the form buttons */\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\n	text-decoration: none;\n	color: #000000;\n	padding: 2px 8px;\n	line-height: 250%;\n	vertical-align: text-bottom;\n	background-position: 0 1px;\n}\n\n/* Hover states */\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\n	border: 1px solid #BCBCBC;\n	background-position: 0 100%;\n	color: #BCBCBC;\n}\n\ninput.disabled {\n	font-weight: normal;\n	color: #666666;\n}\n\n/* Topic and forum Search */\n.search-box {\n	margin-top: 3px;\n	margin-left: 5px;\n	float: left;\n}\n\n.search-box input {\n}\n\ninput.search {\n	background-image: none;\n	background-repeat: no-repeat;\n	background-position: left 1px;\n	padding-left: 17px;\n}\n\n.full { width: 95%; }\n.medium { width: 50%;}\n.narrow { width: 25%;}\n.tiny { width: 10%;}\n/* proSilver Style Sheet Tweaks\n\nThese style definitions are mainly IE specific \ntweaks required due to its poor CSS support.\n-------------------------------------------------*/\n\n* html table, * html select, * html input { font-size: 100%; }\n* html hr { margin: 0; }\n* html span.corners-top, * html span.corners-bottom { background-image: url("{T_THEME_PATH}/images/corners_left.gif"); }\n* html span.corners-top span, * html span.corners-bottom span { background-image: url("{T_THEME_PATH}/images/corners_right.gif"); }\n\ntable.table1 {\n	width: 99%;		/* IE < 6 browsers */\n	/* Tantek hack */\n	voice-family: "\\"}\\"";\n	voice-family: inherit;\n	width: 100%;\n}\nhtml>body table.table1 { width: 100%; }	/* Reset 100% for opera */\n\n* html ul.topiclist li { position: relative; }\n* html .postbody h3 img { vertical-align: middle; }\n\n/* Form styles */\nhtml>body dd label input { vertical-align: text-bottom; }	/* Align checkboxes/radio buttons nicely */\n\n* html input.button1, * html input.button2 {\n	padding-bottom: 0;\n	margin-bottom: 1px;\n}\n\n/* Misc layout styles */\n* html .column1, * html .column2 { width: 45%; }\n\n/* Nice method for clearing floated blocks without having to insert any extra markup (like spacer above)\n   From http://www.positioniseverything.net/easyclearing.html \n#tabs:after, #minitabs:after, .post:after, .navbar:after, fieldset dl:after, ul.topiclist dl:after, ul.linklist:after, dl.polls:after {\n	content: "."; \n	display: block; \n	height: 0; \n	clear: both; \n	visibility: hidden;\n}*/\n\n.clearfix, #tabs, #minitabs, fieldset dl, ul.topiclist dl, dl.polls {\n	height: 1%;\n	overflow: hidden;\n}\n\n/* viewtopic fix */\n* html .post {\n	height: 25%;\n	overflow: hidden;\n}\n\n/* navbar fix */\n* html .clearfix, * html .navbar, ul.linklist {\n	height: 4%;\n	overflow: hidden;\n}\n\n/* Simple fix so forum and topic lists always have a min-height set, even in IE6\n	From http://www.dustindiaz.com/min-height-fast-hack */\ndl.icon {\n	min-height: 35px;\n	height: auto !important;\n	height: 35px;\n}\n\n* html li.row dl.icon dt {\n	height: 35px;\n	overflow: visible;\n}\n\n* html #search-box {\n	width: 25%;\n}\n\n/* Correctly clear floating for details on profile view */\n*:first-child+html dl.details dd {\n	margin-left: 30%;\n	float: none;\n}\n\n* html dl.details dd {\n	margin-left: 30%;\n	float: none;\n}\n\n* html .forumbg table.table1 {\n	margin: 0 -2px 0px -1px;\n}\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for common.css\n-------------------------------------------------------------- */\n\nhtml, body {\n	color: #536482;\n	background-color: #FFFFFF;\n}\n\nh1 {\n	color: #FFFFFF;\n}\n\nh2 {\n	color: #28313F;\n}\n\nh3 {\n	border-bottom-color: #CCCCCC;\n	color: #115098;\n}\n\nhr {\n	border-color: #FFFFFF;\n	border-top-color: #CCCCCC;\n}\n\nhr.dashed {\n	border-top-color: #CCCCCC;\n}\n\n/* Search box\n--------------------------------------------- */\n\n#search-box {\n	color: #FFFFFF;\n}\n\n#search-box #keywords {\n	background-color: #FFF;\n}\n\n#search-box input {\n	border-color: #0075B0;\n}\n\n/* Round cornered boxes and backgrounds\n---------------------------------------- */\n.headerbar {\n	background-color: #12A3EB;\n	background-image: url("{T_THEME_PATH}/images/bg_header.gif");\n	color: #FFFFFF;\n}\n\n.navbar {\n	background-color: #cadceb;\n}\n\n.forabg {\n	background-color: #0076b1;\n	background-image: url("{T_THEME_PATH}/images/bg_list.gif");\n}\n\n.forumbg {\n	background-color: #12A3EB;\n	background-image: url("{T_THEME_PATH}/images/bg_header.gif");\n}\n\n.panel {\n	background-color: #ECF1F3;\n	color: #28313F;\n}\n\n.post:target .content {\n	color: #000000;\n}\n\n.post:target h3 a {\n	color: #000000;\n}\n\n.bg1	{ background-color: #ECF3F7; }\n.bg2	{ background-color: #e1ebf2;  }\n.bg3	{ background-color: #cadceb; }\n\n.ucprowbg {\n	background-color: #DCDEE2;\n}\n\n.fieldsbg {\n	background-color: #E7E8EA;\n}\n\nspan.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\n}\n\nspan.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\n}\n\nspan.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\n}\n\nspan.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\n}\n\n/* Horizontal lists\n----------------------------------------*/\n\nul.navlinks {\n	border-bottom-color: #FFFFFF;\n}\n\n/* Table styles\n----------------------------------------*/\ntable.table1 thead th {\n	color: #FFFFFF;\n}\n\ntable.table1 tbody tr {\n	border-color: #BFC1CF;\n}\n\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\n	background-color: #CFE1F6;\n	color: #000;\n}\n\ntable.table1 td {\n	color: #536482;\n}\n\ntable.table1 tbody td {\n	border-top-color: #FAFAFA;\n}\n\ntable.table1 tbody th {\n	border-bottom-color: #000000;\n	color: #333333;\n	background-color: #FFFFFF;\n}\n\ntable.info tbody th {\n	color: #000000;\n}\n\n/* Misc layout styles\n---------------------------------------- */\ndl.details dt {\n	color: #000000;\n}\n\ndl.details dd {\n	color: #536482;\n}\n\n.sep {\n	color: #1198D9;\n}\n\n/* Pagination\n---------------------------------------- */\n\n.pagination span strong {\n	color: #FFFFFF;\n	background-color: #4692BF;\n	border-color: #4692BF;\n}\n\n.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {\n	color: #5C758C;\n	background-color: #ECEDEE;\n	border-color: #B4BAC0;\n}\n\n.pagination span a:hover {\n	border-color: #368AD2;\n	background-color: #368AD2;\n	color: #FFF;\n}\n\n/* Pagination in viewforum for multipage topics */\n.row .pagination {\n	background-image: url("{T_THEME_PATH}/images/icon_pages.gif");\n}\n\n.row .pagination span a, li.pagination span a {\n	background-color: #FFFFFF;\n}\n\n.row .pagination span a:hover, li.pagination span a:hover {\n	background-color: #368AD2;\n}\n\n/* Miscellaneous styles\n---------------------------------------- */\n\n.copyright {\n	color: #555555;\n}\n\n.error {\n	color: #BC2A4D;\n}\n\n.reported {\n	background-color: #F7ECEF;\n}\n\nli.reported:hover {\n	background-color: #ECD5D8 !important;\n}\n.sticky, .announce {\n	/* you can add a background for stickies and announcements*/\n}\n\ndiv.rules {\n	background-color: #ECD5D8;\n	color: #BC2A4D;\n}\n\np.rules {\n	background-color: #ECD5D8;\n	background-image: none;\n}\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for links.css\n-------------------------------------------------------------- */\n\na:link	{ color: #105289; }\na:visited	{ color: #105289; }\na:hover	{ color: #D31141; }\na:active	{ color: #368AD2; }\n\n/* Links on gradient backgrounds */\n#search-box a:link, .navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\n	color: #FFFFFF;\n}\n\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\n	color: #FFFFFF;\n}\n\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\n	color: #A8D8FF;\n}\n\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\n	color: #C8E6FF;\n}\n\n/* Links for forum/topic lists */\na.forumtitle {\n	color: #105289;\n}\n\n/* a.forumtitle:visited { color: #105289; } */\n\na.forumtitle:hover {\n	color: #BC2A4D;\n}\n\na.forumtitle:active {\n	color: #105289;\n}\n\na.topictitle {\n	color: #105289;\n}\n\n/* a.topictitle:visited { color: #368AD2; } */\n\na.topictitle:hover {\n	color: #BC2A4D;\n}\n\na.topictitle:active {\n	color: #105289;\n}\n\n/* Post body links */\n.postlink {\n	color: #368AD2;\n	border-bottom-color: #368AD2;\n}\n\n.postlink:visited {\n	color: #5D8FBD;\n	border-bottom-color: #666666;\n}\n\n.postlink:active {\n	color: #368AD2;\n}\n\n.postlink:hover {\n	background-color: #D0E4F6;\n	color: #0D4473;\n}\n\n.signature a, .signature a:visited, .signature a:active, .signature a:hover {\n	background-color: transparent;\n}\n\n/* Profile links */\n.postprofile a:link, .postprofile a:active, .postprofile a:visited, .postprofile dt.author a {\n	color: #105289;\n}\n\n.postprofile a:hover, .postprofile dt.author a:hover {\n	color: #D31141;\n}\n\n/* Profile searchresults */	\n.search .postprofile a {\n	color: #105289;\n}\n\n.search .postprofile a:hover {\n	color: #D31141;\n}\n\n/* Back to top of page */\na.top {\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\n}\n\na.top2 {\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\n}\n\n/* Arrow links  */\na.up		{ background-image: url("{T_THEME_PATH}/images/arrow_up.gif") }\na.down		{ background-image: url("{T_THEME_PATH}/images/arrow_down.gif") }\na.left		{ background-image: url("{T_THEME_PATH}/images/arrow_left.gif") }\na.right		{ background-image: url("{T_THEME_PATH}/images/arrow_right.gif") }\n\na.up:hover {\n	background-color: transparent;\n}\n\na.left:hover {\n	color: #368AD2;\n}\n\na.right:hover {\n	color: #368AD2;\n}\n\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for content.css\n-------------------------------------------------------------- */\n\nul.forums {\n	background-color: #eef5f9;\n	background-image: url("{T_THEME_PATH}/images/gradient.gif");\n}\n\nul.topiclist li {\n	color: #4C5D77;\n}\n\nul.topiclist dd {\n	border-left-color: #FFFFFF;\n}\n\n.rtl ul.topiclist dd {\n	border-right-color: #fff;\n	border-left-color: transparent;\n}\n\nul.topiclist li.row dt a.subforum.read {\n	background-image: url("{IMG_SUBFORUM_READ_SRC}");\n}\n\nul.topiclist li.row dt a.subforum.unread {\n	background-image: url("{IMG_SUBFORUM_UNREAD_SRC}");\n}\n\nli.row {\n	border-top-color:  #FFFFFF;\n	border-bottom-color: #00608F;\n}\n\nli.row strong {\n	color: #000000;\n}\n\nli.row:hover {\n	background-color: #F6F4D0;\n}\n\nli.row:hover dd {\n	border-left-color: #CCCCCC;\n}\n\n.rtl li.row:hover dd {\n	border-right-color: #CCCCCC;\n	border-left-color: transparent;\n}\n\nli.header dt, li.header dd {\n	color: #FFFFFF;\n}\n\n/* Forum list column styles */\nul.topiclist dd.searchextra {\n	color: #333333;\n}\n\n/* Post body styles\n----------------------------------------*/\n.postbody {\n	color: #333333;\n}\n\n/* Content container styles\n----------------------------------------*/\n.content {\n	color: #333333;\n}\n\n.content h2, .panel h2 {\n	color: #115098;\n	border-bottom-color:  #CCCCCC;\n}\n\ndl.faq dt {\n	color: #333333;\n}\n\n.posthilit {\n	background-color: #F3BFCC;\n	color: #BC2A4D;\n}\n\n/* Post signature */\n.signature {\n	border-top-color: #CCCCCC;\n}\n\n/* Post noticies */\n.notice {\n	border-top-color:  #CCCCCC;\n}\n\n/* BB Code styles\n----------------------------------------*/\n/* Quote block */\nblockquote {\n	background-color: #EBEADD;\n	background-image: url("{T_THEME_PATH}/images/quote.gif");\n	border-color:#DBDBCE;\n}\n\n.rtl blockquote {\n	background-image: url("{T_THEME_PATH}/images/quote_rtl.gif");\n}\n\nblockquote blockquote {\n	/* Nested quotes */\n	background-color:#EFEED9;\n}\n\nblockquote blockquote blockquote {\n	/* Nested quotes */\n	background-color: #EBEADD;\n}\n\n/* Code block */\ndl.codebox {\n	background-color: #FFFFFF;\n	border-color: #C9D2D8;\n}\n\ndl.codebox dt {\n	border-bottom-color:  #CCCCCC;\n}\n\ndl.codebox code {\n	color: #2E8B57;\n}\n\n.syntaxbg		{ color: #FFFFFF; }\n.syntaxcomment	{ color: #FF8000; }\n.syntaxdefault	{ color: #0000BB; }\n.syntaxhtml		{ color: #000000; }\n.syntaxkeyword	{ color: #007700; }\n.syntaxstring	{ color: #DD0000; }\n\n/* Attachments\n----------------------------------------*/\n.attachbox {\n	background-color: #FFFFFF;\n	border-color:  #C9D2D8;\n}\n\n.pm-message .attachbox {\n	background-color: #F2F3F3;\n}\n\n.attachbox dd {\n	border-top-color: #C9D2D8;\n}\n\n.attachbox p {\n	color: #666666;\n}\n\n.attachbox p.stats {\n	color: #666666;\n}\n\n.attach-image img {\n	border-color: #999999;\n}\n\n/* Inline image thumbnails */\n\ndl.file dd {\n	color: #666666;\n}\n\ndl.thumbnail img {\n	border-color: #666666;\n	background-color: #FFFFFF;\n}\n\ndl.thumbnail dd {\n	color: #666666;\n}\n\ndl.thumbnail dt a:hover {\n	background-color: #EEEEEE;\n}\n\ndl.thumbnail dt a:hover img {\n	border-color: #368AD2;\n}\n\n/* Post poll styles\n----------------------------------------*/\n\nfieldset.polls dl {\n	border-top-color: #DCDEE2;\n	color: #666666;\n}\n\nfieldset.polls dl.voted {\n	color: #000000;\n}\n\nfieldset.polls dd div {\n	color: #FFFFFF;\n}\n\n.rtl .pollbar1, .rtl .pollbar2, .rtl .pollbar3, .rtl .pollbar4, .rtl .pollbar5 {\n	border-right-color: transparent;\n}\n\n.pollbar1 {\n	background-color: #AA2346;\n	border-bottom-color: #74162C;\n	border-right-color: #74162C;\n}\n\n.rtl .pollbar1 {\n	border-left-color: #74162C;\n}\n\n.pollbar2 {\n	background-color: #BE1E4A;\n	border-bottom-color: #8C1C38;\n	border-right-color: #8C1C38;\n}\n\n.rtl .pollbar2 {\n	border-left-color: #8C1C38;\n}\n\n.pollbar3 {\n	background-color: #D11A4E;\n	border-bottom-color: #AA2346;\n	border-right-color: #AA2346;\n}\n\n.rtl .pollbar3 {\n	border-left-color: #AA2346;\n}\n\n.pollbar4 {\n	background-color: #E41653;\n	border-bottom-color: #BE1E4A;\n	border-right-color: #BE1E4A;\n}\n\n.rtl .pollbar4 {\n	border-left-color: #BE1E4A;\n}\n\n.pollbar5 {\n	background-color: #F81157;\n	border-bottom-color: #D11A4E;\n	border-right-color: #D11A4E;\n}\n\n.rtl .pollbar5 {\n	border-left-color: #D11A4E;\n}\n\n/* Poster profile block\n----------------------------------------*/\n.postprofile {\n	color: #666666;\n	border-left-color: #FFFFFF;\n}\n\n.rtl .postprofile {\n	border-right-color: #FFFFFF;\n	border-left-color: transparent;\n}\n\n.pm .postprofile {\n	border-left-color: #DDDDDD;\n}\n\n.rtl .pm .postprofile {\n	border-right-color: #DDDDDD;\n	border-left-color: transparent;\n}\n\n.postprofile strong {\n	color: #000000;\n}\n\n.online {\n	background-image: url("{T_IMAGESET_LANG_PATH}/icon_user_online.gif");\n}\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for buttons.css\n-------------------------------------------------------------- */\n\n/* Big button images */\n.reply-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_REPLY_SRC}"); }\n.post-icon span		{ background-image: url("{IMG_BUTTON_TOPIC_NEW_SRC}"); }\n.locked-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_LOCKED_SRC}"); }\n.pmreply-icon span	{ background-image: url("{IMG_BUTTON_PM_REPLY_SRC}") ;}\n.newpm-icon span 	{ background-image: url("{IMG_BUTTON_PM_NEW_SRC}") ;}\n.forwardpm-icon span	{ background-image: url("{IMG_BUTTON_PM_FORWARD_SRC}") ;}\n\na.print {\n	background-image: url("{T_THEME_PATH}/images/icon_print.gif");\n}\n\na.sendemail {\n	background-image: url("{T_THEME_PATH}/images/icon_sendemail.gif");\n}\n\na.fontsize {\n	background-image: url("{T_THEME_PATH}/images/icon_fontsize.gif");\n}\n\n/* Icon images\n---------------------------------------- */\n.sitehome						{ background-image: url("{T_THEME_PATH}/images/icon_home.gif"); }\n.icon-faq						{ background-image: url("{T_THEME_PATH}/images/icon_faq.gif"); }\n.icon-members					{ background-image: url("{T_THEME_PATH}/images/icon_members.gif"); }\n.icon-home						{ background-image: url("{T_THEME_PATH}/images/icon_home.gif"); }\n.icon-ucp						{ background-image: url("{T_THEME_PATH}/images/icon_ucp.gif"); }\n.icon-register					{ background-image: url("{T_THEME_PATH}/images/icon_register.gif"); }\n.icon-logout					{ background-image: url("{T_THEME_PATH}/images/icon_logout.gif"); }\n.icon-bookmark					{ background-image: url("{T_THEME_PATH}/images/icon_bookmark.gif"); }\n.icon-bump						{ background-image: url("{T_THEME_PATH}/images/icon_bump.gif"); }\n.icon-subscribe					{ background-image: url("{T_THEME_PATH}/images/icon_subscribe.gif"); }\n.icon-unsubscribe				{ background-image: url("{T_THEME_PATH}/images/icon_unsubscribe.gif"); }\n.icon-pages						{ background-image: url("{T_THEME_PATH}/images/icon_pages.gif"); }\n.icon-search					{ background-image: url("{T_THEME_PATH}/images/icon_search.gif"); }\n\n/* Profile & navigation icons */\n.email-icon, .email-icon a		{ background-image: url("{IMG_ICON_CONTACT_EMAIL_SRC}"); }\n.aim-icon, .aim-icon a			{ background-image: url("{IMG_ICON_CONTACT_AIM_SRC}"); }\n.yahoo-icon, .yahoo-icon a		{ background-image: url("{IMG_ICON_CONTACT_YAHOO_SRC}"); }\n.web-icon, .web-icon a			{ background-image: url("{IMG_ICON_CONTACT_WWW_SRC}"); }\n.msnm-icon, .msnm-icon a			{ background-image: url("{IMG_ICON_CONTACT_MSNM_SRC}"); }\n.icq-icon, .icq-icon a			{ background-image: url("{IMG_ICON_CONTACT_ICQ_SRC}"); }\n.jabber-icon, .jabber-icon a		{ background-image: url("{IMG_ICON_CONTACT_JABBER_SRC}"); }\n.pm-icon, .pm-icon a				{ background-image: url("{IMG_ICON_CONTACT_PM_SRC}"); }\n.quote-icon, .quote-icon a		{ background-image: url("{IMG_ICON_POST_QUOTE_SRC}"); }\n\n/* Moderator icons */\n.report-icon, .report-icon a		{ background-image: url("{IMG_ICON_POST_REPORT_SRC}"); }\n.edit-icon, .edit-icon a			{ background-image: url("{IMG_ICON_POST_EDIT_SRC}"); }\n.delete-icon, .delete-icon a		{ background-image: url("{IMG_ICON_POST_DELETE_SRC}"); }\n.info-icon, .info-icon a			{ background-image: url("{IMG_ICON_POST_INFO_SRC}"); }\n.warn-icon, .warn-icon a			{ background-image: url("{IMG_ICON_USER_WARN_SRC}"); } /* Need updated warn icon */\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for cp.css\n-------------------------------------------------------------- */\n\n/* Main CP box\n----------------------------------------*/\n\n#cp-main h3, #cp-main hr, #cp-menu hr {\n	border-color: #A4B3BF;\n}\n\n#cp-main .panel li.row {\n	border-bottom-color: #B5C1CB;\n	border-top-color: #F9F9F9;\n}\n\nul.cplist {\n	border-top-color: #B5C1CB;\n}\n\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\n	color: #000000;\n}\n\n#cp-main table.table1 thead th {\n	color: #333333;\n	border-bottom-color: #333333;\n}\n\n#cp-main .pm-message {\n	border-color: #DBDEE2;\n	background-color: #FFFFFF;\n}\n\n/* CP tabbed menu\n----------------------------------------*/\n#tabs a {\n	background-image: url("{T_THEME_PATH}/images/bg_tabs1.gif");\n}\n\n#tabs a span {\n	background-image: url("{T_THEME_PATH}/images/bg_tabs2.gif");\n	color: #536482;\n}\n\n#tabs a:hover span {\n	color: #BC2A4D;\n}\n\n#tabs .activetab a {\n	border-bottom-color: #CADCEB;\n}\n\n#tabs .activetab a span {\n	color: #333333;\n}\n\n#tabs .activetab a:hover span {\n	color: #000000;\n}\n\n/* Mini tabbed menu used in MCP\n----------------------------------------*/\n#minitabs li {\n	background-color: #E1EBF2;\n}\n\n#minitabs li.activetab {\n	background-color: #F9F9F9;\n}\n\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\n	color: #333333;\n}\n\n/* UCP navigation menu\n----------------------------------------*/\n\n/* Link styles for the sub-section links */\n#navigation a {\n	color: #333;\n	background-color: #B2C2CF;\n	background-image: url("{T_THEME_PATH}/images/bg_menu.gif");\n}\n\n.rtl #navigation a {\n	background-image: url("{T_THEME_PATH}/images/bg_menu_rtl.gif");\n	background-position: 0 100%;\n}\n\n#navigation a:hover {\n	background-color: #aabac6;\n	color: #BC2A4D;\n}\n\n#navigation #active-subsection a {\n	color: #D31141;\n	background-color: #F9F9F9;\n	background-image: none;\n}\n\n#navigation #active-subsection a:hover {\n	color: #D31141;\n}\n\n/* Preferences pane layout\n----------------------------------------*/\n#cp-main h2 {\n	color: #333333;\n}\n\n#cp-main .panel {\n	background-color: #F9F9F9;\n}\n\n#cp-main .pm {\n	background-color: #FFFFFF;\n}\n\n#cp-main span.corners-top, #cp-menu span.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\n}\n\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\n}\n\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\n}\n\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\n}\n\n/* Topicreview */\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\n}\n\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\n}\n\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\n}\n\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\n}\n\n/* Friends list */\n.cp-mini {\n	background-color: #eef5f9;\n}\n\ndl.mini dt {\n	color: #425067;\n}\n\n/* PM Styles\n----------------------------------------*/\n/* PM Message history */\n.current {\n	color: #000000 !important;\n}\n\n/* PM panel adjustments */\n.pm-panel-header,\n#cp-main .pm-message-nav {\n	border-bottom-color: #A4B3BF;\n}\n\n/* PM marking colours */\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\n	border-left-color: #BC2A4D;\n	border-right-color: #BC2A4D;\n}\n\n.pmlist li.pm_marked_colour, .pm_marked_colour {\n	border-color: #FF6600;\n}\n\n.pmlist li.pm_replied_colour, .pm_replied_colour {\n	border-color: #A9B8C2;\n}\n\n.pmlist li.pm_friend_colour, .pm_friend_colour {\n	border-color: #5D8FBD;\n}\n\n.pmlist li.pm_foe_colour, .pm_foe_colour {\n	border-color: #000000;\n}\n\n/* Avatar gallery */\n#gallery label {\n	background-color: #FFFFFF;\n	border-color: #CCC;\n}\n\n#gallery label:hover {\n	background-color: #EEE;\n}\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for forms.css\n-------------------------------------------------------------- */\n\n/* General form styles\n----------------------------------------*/\nselect {\n	border-color: #666666;\n	background-color: #FAFAFA;\n	color: #000;\n}\n\nlabel {\n	color: #425067;\n}\n\noption.disabled-option {\n	color: graytext;\n}\n\n/* Definition list layout for forms\n---------------------------------------- */\ndd label {\n	color: #333;\n}\n\n/* Hover effects */\nfieldset dl:hover dt label {\n	color: #000000;\n}\n\nfieldset.fields2 dl:hover dt label {\n	color: inherit;\n}\n\n/* Quick-login on index page */\nfieldset.quick-login input.inputbox {\n	background-color: #F2F3F3;\n}\n\n/* Posting page styles\n----------------------------------------*/\n\n#message-box textarea {\n	color: #333333;\n}\n\n/* Input field styles\n---------------------------------------- */\n.inputbox {\n	background-color: #FFFFFF; \n	border-color: #B4BAC0;\n	color: #333333;\n}\n\n.inputbox:hover {\n	border-color: #11A3EA;\n}\n\n.inputbox:focus {\n	border-color: #11A3EA;\n	color: #0F4987;\n}\n\n/* Form button styles\n---------------------------------------- */\n\na.button1, input.button1, input.button3, a.button2, input.button2 {\n	color: #000;\n	background-color: #FAFAFA;\n	background-image: url("{T_THEME_PATH}/images/bg_button.gif");\n}\n\na.button1, input.button1 {\n	border-color: #666666;\n}\n\ninput.button3 {\n	background-image: none;\n}\n\n/* Alternative button */\na.button2, input.button2, input.button3 {\n	border-color: #666666;\n}\n\n/* <a> button in the style of the form buttons */\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\n	color: #000000;\n}\n\n/* Hover states */\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\n	border-color: #BC2A4D;\n	color: #BC2A4D;\n}\n\ninput.search {\n	background-image: url("{T_THEME_PATH}/images/icon_textbox_search.gif");\n}\n\ninput.disabled {\n	color: #666666;\n}\n');
INSERT INTO `uta_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(2, 'subsilver2', '&copy; phpBB Group, 2003', 'subsilver2', 0, 1258387834, '');
INSERT INTO `uta_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(3, 'coffee_time', '&copy; CoSa NoStrA DeSiGn, 2008', 'coffee_time', 1, 1279140756, '/*  phpBB 3.0 Style Sheet\n    --------------------------------------------------------------\n	phpBB style name: coffee_time\n	Based on style:   prosilver (this is the default phpBB3 style)\n	Original author:  Tom Beddard ( http://www.subBlue.com/ )\n	Modified by:      CoSa NoStrA DeSiGn ( http://www.cosa-nostra-design.com/ )\n\n	Copyright 2006 phpBB Group ( http://www.phpbb.com/ )\n    --------------------------------------------------------------\n*/\n\n/* General proSilver Markup Styles\n---------------------------------------- */\n\n* {\n	/* Reset browsers default margin, padding and font sizes */\n	margin: 0;\n	padding: 0;\n}\n\nhtml {\n	font-size: 100%;\n	/* Always show a scrollbar for short pages - stops the jump when the scrollbar appears. non-IE browsers */\n	height: 101%;\n}\n\nbody {\n	/* Text-Sizing with ems: http://www.clagnut.com/blog/348/ */\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	color: #828282;\n	background-color: #F8EFF8;\n	/*font-size: 62.5%;			 This sets the default font size to be equivalent to 10px */\n	font-size: 10px;\n	margin: 0;\n	padding: 12px 0 0 0;\n}\n\nh1 {\n	/* Forum name */\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n	margin-right: 200px;\n	color: #FFFFFF;\n	margin-top: 15px;\n	font-weight: bold;\n	font-size: 2em;\n}\n\nh2 {\n	/* Forum header titles */\n	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;\n	font-weight: normal;\n	color: #000;\n	font-size: 2em;\n	margin: 0.8em 0 0.2em 0;\n	letter-spacing: -0.5pt;\n}\n\nh2.solo {\n	margin-bottom: 1em;\n}\n\nh3 {\n	/* Sub-headers (also used as post headers, but defined later) */\n	font-family: Arial, Helvetica, sans-serif;\n	font-weight: bold;\n	text-transform: uppercase;\n	border-bottom: 1px solid #CCCCCC;\n	margin-bottom: 3px;\n	padding-bottom: 2px;\n	font-size: 1.05em;\n	color: #989898;\n	margin-top: 20px;\n}\n\nh4 {\n	/* Forum and topic list titles */\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, Sans-serif;\n	font-size: 1.3em;\n}\n\np {\n	line-height: 1.3em;\n	font-size: 1.1em;\n	margin-bottom: 1.5em;\n}\n\nimg {\n	border-width: 0;\n}\n\nhr {\n	/* Also see tweaks.css */\n	border: 0 none #FFFFFF;\n	border-top: 1px solid #CCCCCC;\n	height: 1px;\n	margin: 5px 0;\n	display: block;\n	clear: both;\n}\n\nhr.dashed {\n	border-top: 1px dashed #CCCCCC;\n	margin: 10px 0;\n}\n\nhr.divider {\n	display: none;\n}\n\np.right {\n	text-align: right;\n}\n\n/* Main blocks\n---------------------------------------- */\n#wrap {\n	padding: 0 20px;\n	min-width: 650px;\n	width: 850px;\n	margin: 0 auto;\n}\n\n#simple-wrap {\n	padding: 6px 10px;\n	min-width: 650px;\n	width: 850px;\n	margin: 0 auto;\n}\n\n#page-body {\n	margin-top: 20px;\n	padding: 10px 15px;\n	clear: both;\n}\n\n#page-footer {\n	margin-top: 5px;\n	min-height: 100px;\n	clear: both;\n}\n\n#page-footer h3 {\n	margin-top: 20px;\n}\n\n#page-footer .navbar {\n	min-width: 650px;\n	width: 850px;\n	margin: 0 auto;\n} \n\n#logo {\n	width: auto;\n	padding: 0;\n}\n\na#logo:hover {\n	text-decoration: none;\n}\n\n/* Search box\n--------------------------------------------- */\n#search-box {\n	position: relative;\n	width: 250px;\n	height: 30px;\n	float: left;\n	margin-left: 8px;\n	display: block;\n	color: #FFFFFF;\n	text-align: right;\n	white-space: nowrap; /* For Opera */\n}\n\n#search-box #keywords {\n	width: 95px;\n}\n\n#search-box input {\n	border: 1px solid #b0b0b0;\n	margin: 5px 5px;\n}\n\n/* .button1 style defined later, just a few tweaks for the search button version */\n#search-box input.button1 {\n	padding: 1px 2px;\n}\n\n#search-box li {\n	text-align: right;\n	margin-top: 4px;\n}\n\n#search-box img {\n	vertical-align: middle;\n	margin-right: 3px;\n}\n\n/* Site description and logo */\n#site-description {\n	width: 850px;\n	height: 198px;\n	clear: both;\n}\n\n#site-description h1 {\n	font-size: 3.5em;\n	padding: 55px 0 0 40px;\n	letter-spacing: -2.1pt;\n}\n\n#site-description p {\n	font-size: 2em;\n	padding: 0 0 0 40px;\n	color: #fff;\n	letter-spacing: -1pt;\n}\n\n/* Round cornered boxes and backgrounds\n---------------------------------------- */\n.headerbar {\n	background: #ebebeb none repeat-x 0 0;\n	color: #FFFFFF;\n	margin-bottom: 0;\n	padding: 0;\n}\n\n.navbar {\n	padding: 0 10px;\n	background-color: transparent;\n	clear: both;\n	color: #fff;\n	border-bottom: 1px #ccc solid;\n}\n\n.forabg, .forumbg {\n	font-weight: bold;\n	width: 820px;\n	background: #b1b1b1 none repeat-x 0 0;\n	margin-bottom: 4px;\n	clear: both;\n}\n\n.forabg {\n	padding: 14px 5px 0 0;\n}\n\n.forumbg {\n	padding: 10px 5px 0 0;\n}\n\n.panel {\n	margin: 10px 0 4px 0;\n	padding: 0 10px;\n	background-color: #f3f3f3;\n	color: #3f3f3f;\n}\n\n.post {\n	padding: 0 10px;\n	margin-bottom: 4px;\n	background-repeat: no-repeat;\n	background-position: 100% 0;\n}\n\n.post:target .content {\n	color: #000000;\n}\n\n.post:target h3 a {\n	color: #000000;\n}\n\n.bg1	{ background-color: #f7f7f7;}\n.bg2	{ background-color: #f2f2f2; }\n.bg3	{ background-color: #ebebeb; }\n\n.rowbg {\n	margin: 5px 5px 2px 5px;\n}\n\n.ucprowbg {\n	background-color: #e2e2e2;\n}\n\n.fieldsbg {\n	/*border: 1px #DBDEE2 solid;*/\n	background-color: #eaeaea;\n}\n\nspan.corners-top, span.corners-bottom, span.corners-top span, span.corners-bottom span {\n	font-size: 1px;\n	line-height: 1px;\n	display: block;\n	height: 5px;\n	background-repeat: no-repeat;\n}\n\nspan.corners-top {\n	background-image: none;\n	background-position: 0 0;\n	margin: 0 -5px;\n}\n\nspan.corners-top span {\n	background-image: none;\n	background-position: 100% 0;\n}\n\nspan.corners-bottom {\n	background-image: none;\n	background-position: 0 100%;\n	margin: 0 -5px;\n	clear: both;\n}\n\nspan.corners-bottom span {\n	background-image: none;\n	background-position: 100% 100%;\n}\n\n.headbg span.corners-bottom {\n	margin-bottom: -1px;\n}\n\n.post span.corners-top, .post span.corners-bottom, .panel span.corners-top, .panel span.corners-bottom, .navbar span.corners-top, .navbar span.corners-bottom {\n	margin: 0 -10px;\n}\n\n.rules span.corners-top {\n	margin: 0 -10px 5px -10px;\n}\n\n.rules span.corners-bottom {\n	margin: 5px -10px 0 -10px;\n}\n\n/* Horizontal lists\n----------------------------------------*/\nul.linklist {\n	display: block;\n	margin: 0;\n}\n\nul.linklist li {\n	display: block;\n	list-style-type: none;\n	float: left;\n	width: auto;\n	margin-right: 5px;\n	font-size: 1.1em;\n	line-height: 2.2em;\n}\n\nul.linklist li.rightside, p.rightside {\n	float: right;\n	margin-right: 0;\n	margin-left: 5px;\n	text-align: right;\n}\n\nul.navlinks {\n	padding-bottom: 1px;\n	margin-bottom: 1px;\n	border-bottom: 1px solid #FFFFFF;\n	font-weight: bold;\n}\n\nul.leftside {\n	float: left;\n	margin-left: 0;\n	margin-right: 5px;\n	text-align: left;\n}\n\nul.rightside {\n	float: right;\n	margin-left: 5px;\n	margin-right: -5px;\n	text-align: right;\n}\n\n/* Table styles\n----------------------------------------*/\ntable.table1 {\n	/* See tweaks.css */\n}\n\n#ucp-main table.table1 {\n	padding: 2px;\n}\n\ntable.table1 thead th {\n	letter-spacing: -0.5pt;\n	font-weight: bold;\n	text-transform: uppercase;\n	color: #FFFFFF;\n	line-height: 1.3em;\n	font-size: 1em;\n	padding: 0 0 10px 3px;\n}\n\ntable.table1 thead th span {\n	padding-left: 5px;\n}\n\ntable.table1 tbody tr {\n	border: 1px solid #cfcfcf;\n}\n\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\n	background-color: #f6f6f6;\n	color: #000;\n}\n\ntable.table1 td {\n	color: #6a6a6a;\n	font-size: 1.1em;\n}\n\ntable.table1 tbody td {\n	padding: 5px;\n	border-top: 1px solid #FAFAFA;\n}\n\ntable.table1 tbody th {\n	padding: 8px;\n	border-bottom: 1px solid #000000;\n	text-align: left;\n	color: #333333;\n	background-color: #FFFFFF;\n}\n\n/* Specific column styles */\ntable.table1 .name		{ text-align: left; padding-left: 7px; }\ntable.table1 .posts		{ text-align: center !important; width: 7%; }\ntable.table1 .joined	{ text-align: left; width: 15%; }\ntable.table1 .active	{ text-align: left; width: 15%; }\ntable.table1 .mark		{ text-align: center; width: 7%; }\ntable.table1 .info		{ text-align: left; width: 30%; }\ntable.table1 .info div { width: 100%; white-space: normal; overflow: hidden; }\ntable.table1 .autocol	{ line-height: 2em; white-space: nowrap; }\ntable.table1 thead .autocol { padding-left: 1em; }\n\ntable.table1 span.rank-img {\n	float: right;\n	width: auto;\n}\n\ntable.info td {\n	padding: 3px;\n}\n\ntable.info tbody th {\n	padding: 3px;\n	text-align: right;\n	vertical-align: top;\n	color: #000000;\n	font-weight: normal;\n}\n\n.forumbg table.table1 {\n	display: inline;\n	margin: -4px -1px -1px 0;\n}\n\n/* Misc layout styles\n---------------------------------------- */\n/* column[1-2] styles are containers for two column layouts \n   Also see tweaks.css */\n.column1 {\n	float: left;\n	clear: left;\n	width: 45%;\n}\n\n.column2 {\n	float: right;\n	clear: right;\n	width: 55%;\n}\n\n/* General classes for placing floating blocks */\n.left-box {\n	float: left;\n	width: auto;\n	text-align: left;\n}\n\n.right-box {\n	float: right;\n	width: auto;\n	text-align: right;\n}\n\ndl.details {\n	/*font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;*/\n	font-size: 1.1em;\n}\n\ndl.details dt {\n	float: left;\n	clear: left;\n	width: 30%;\n	text-align: right;\n	color: #000000;\n	display: block;\n}\n\ndl.details dd {\n	margin-left: 0;\n	padding-left: 5px;\n	margin-bottom: 5px;\n	color: #828282;\n	float: left;\n	width: 65%;\n}\n\n/* Pagination\n---------------------------------------- */\n.pagination {\n	height: 1%; /* IE tweak (holly hack) */\n	width: auto;\n	text-align: right;\n	margin-top: 5px;\n	float: right;\n}\n\n.pagination span.page-sep {\n	display: none;\n}\n\nli.pagination {\n	margin-top: 0;\n}\n\n.pagination strong, .pagination b {\n	font-weight: normal;\n}\n\n.pagination span strong {\n	padding: 0 2px;\n	margin: 0 2px;\n	font-weight: normal;\n	color: #FFFFFF;\n	background-color: #bfbfbf;\n	border: 1px solid #bfbfbf;\n	font-size: 0.9em;\n}\n\n.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {\n	font-weight: normal;\n	text-decoration: none;\n	color: #747474;\n	margin: 0 2px;\n	padding: 0 2px;\n	background-color: #eeeeee;\n	border: 1px solid #bababa;\n	font-size: 0.9em;\n	line-height: 1.5em;\n}\n\n.pagination span a:hover {\n	border-color: #d2d2d2;\n	background-color: #d2d2d2;\n	color: #FFF;\n	text-decoration: none;\n}\n\n.pagination img {\n	vertical-align: middle;\n}\n\n/* Pagination in viewforum for multipage topics */\n.row .pagination {\n	display: block;\n	float: right;\n	width: auto;\n	margin-top: 0;\n	padding: 1px 0 1px 15px;\n	font-size: 0.9em;\n	background: none 0 50% no-repeat;\n}\n\n.row .pagination span a, li.pagination span a {\n	background-color: #FFFFFF;\n}\n\n.row .pagination span a:hover, li.pagination span a:hover {\n	background-color: #d2d2d2;\n}\n\n/* Miscellaneous styles\n---------------------------------------- */\n#forum-permissions {\n	float: right;\n	width: auto;\n	padding-left: 5px;\n	margin-left: 5px;\n	margin-top: 10px;\n	text-align: right;\n}\n\n#copyright {\n	padding: 5px;\n	text-align: center;\n	color: #555555;\n}\n\n.small {\n	font-size: 0.9em !important;\n}\n\n.titlespace {\n	margin-bottom: 15px;\n}\n\n.headerspace {\n	margin-top: 20px;\n}\n\n.error {\n	color: #bcbcbc;\n	font-weight: bold;\n	font-size: 1em;\n}\n\n.reported {\n	background-color: #f7f7f7;\n}\n\nli.reported:hover {\n	background-color: #ececec;\n}\n\ndiv.rules {\n	background-color: #ececec;\n	color: #bcbcbc;\n	padding: 0 10px;\n	margin: 10px 0;\n	font-size: 1.1em;\n}\n\ndiv.rules ul, div.rules ol {\n	margin-left: 20px;\n}\n\np.rules {\n	background-color: #ececec;\n	background-image: none;\n	padding: 5px;\n}\n\np.rules img {\n	vertical-align: middle;\n	padding-top: 5px;\n}\n\np.rules a {\n	vertical-align: middle;\n	clear: both;\n}\n\n#top {\n	position: absolute;\n	top: -20px;\n}\n\n.clear {\n	display: block;\n	clear: both;\n	font-size: 1px;\n	line-height: 1px;\n	background: transparent;\n}\n/* proSilver Link Styles\n---------------------------------------- */\n\na:link	{ color: #898989; text-decoration: none; }\na:visited	{ color: #898989; text-decoration: none; }\na:hover	{ color: #d3d3d3; text-decoration: underline; }\na:active	{ color: #d2d2d2; text-decoration: none; }\n\n/* Coloured usernames */\n.username-coloured {\n	font-weight: bold;\n	display: inline !important;\n	padding: 0 !important;\n}\n\n/* Links on gradient backgrounds */\n.navbg a:link, .forumbg .header a:link, .forabg .header a:link, th a:link {\n	color: #FFFFFF;\n	text-decoration: none;\n}\n\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .forabg .header a:visited, th a:visited {\n	color: #000000;\n	text-decoration: none;\n}\n\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .forabg .header a:hover, th a:hover {\n	color: #000;\n	text-decoration: underline;\n}\n\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, th a:active {\n	color: #ffffff;\n	text-decoration: none;\n}\n\n/* Links for forum/topic lists */\na.forumtitle {\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\n	font-size: 1.2em;\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n/* a.forumtitle:visited { color: #898989; } */\n\na.forumtitle:hover {\n	color: #bcbcbc;\n	text-decoration: underline;\n}\n\na.forumtitle:active {\n	color: #898989;\n}\n\na.topictitle {\n	font-family: "Trebuchet MS", Helvetica, Arial, Sans-serif;\n	font-size: 1.2em;\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n/* a.topictitle:visited { color: #d2d2d2; } */\n\na.topictitle:hover {\n	color: #bcbcbc;\n	text-decoration: underline;\n}\n\na.topictitle:active {\n	color: #898989;\n}\n\n/* Post body links */\n.postlink {\n	text-decoration: none;\n	color: #d2d2d2;\n	border-bottom: 1px solid #d2d2d2;\n	padding-bottom: 0;\n}\n\n.postlink:visited {\n	color: #bdbdbd;\n	border-bottom-style: dotted;\n	border-bottom-color: #666666;\n}\n\n.postlink:active {\n	color: #d2d2d2;\n}\n\n.postlink:hover {\n	background-color: #f6f6f6;\n	text-decoration: none;\n	color: #404040;\n}\n\n.signature a, .signature a:visited, .signature a:active, .signature a:hover {\n	border: none;\n	text-decoration: underline;\n	background-color: transparent;\n}\n\n/* Profile links */\n.postprofile a:link, .postprofile a:active, .postprofile a:visited, .postprofile dt.author a {\n	font-weight: bold;\n	color: #898989;\n	text-decoration: none;\n}\n\n.postprofile a:hover, .postprofile dt.author a:hover {\n	text-decoration: underline;\n	color: #d3d3d3;\n}\n\n\n/* Profile searchresults */	\n.search .postprofile a {\n	color: #898989;\n	text-decoration: none; \n	font-weight: normal;\n}\n\n.search .postprofile a:hover {\n	color: #d3d3d3;\n	text-decoration: underline; \n}\n\n/* Back to top of page */\n.back2top {\n	clear: both;\n	height: 11px;\n	text-align: right;\n}\n\na.top {\n	background: none no-repeat top left;\n	text-decoration: none;\n	width: {IMG_ICON_BACK_TOP_WIDTH}px;\n	height: {IMG_ICON_BACK_TOP_HEIGHT}px;\n	display: block;\n	float: right;\n	overflow: hidden;\n	letter-spacing: 1000px;\n	text-indent: 11px;\n}\n\na.top2 {\n	background: none no-repeat 0 50%;\n	text-decoration: none;\n	padding-left: 15px;\n}\n\n/* Arrow links  */\na.up		{ background: none no-repeat left center; }\na.down		{ background: none no-repeat right center; }\na.left		{ background: none no-repeat 3px 60%; }\na.right		{ background: none no-repeat 95% 60%; }\n\na.up, a.up:link, a.up:active, a.up:visited {\n	padding-left: 10px;\n	text-decoration: none;\n	border-bottom-width: 0;\n}\n\na.up:hover {\n	background-position: left top;\n	background-color: transparent;\n}\n\na.down, a.down:link, a.down:active, a.down:visited {\n	padding-right: 10px;\n}\n\na.down:hover {\n	background-position: right bottom;\n	text-decoration: none;\n}\n\na.left, a.left:active, a.left:visited {\n	padding-left: 12px;\n}\n\na.left:hover {\n	color: #d2d2d2;\n	text-decoration: none;\n	background-position: 0 60%;\n}\n\na.right, a.right:active, a.right:visited {\n	padding-right: 12px;\n}\n\na.right:hover {\n	color: #d2d2d2;\n	text-decoration: none;\n	background-position: 100% 60%;\n}\n\n/* invisible skip link, used for accessibility */\n.skiplink {\n	position: absolute;\n	left: -999px;\n	width: 990px;\n}\n\n/* Feed icon in forumlist_body.html */\na.feed-icon-forum {\n	float: right;\n	margin: 3px;\n}\n/* proSilver Content Styles\n---------------------------------------- */\n\nul.topiclist {\n	display: block;\n	list-style-type: none;\n	margin: 0;\n}\n\nul.forums {\n	background: #f9f9f9 none repeat-x 0 0;\n	width: 810px;\n	margin: 2px auto 0 auto;\n}\n\nul.topics {\n	background: #f9f9f9 none repeat-x 0 0;\n	width: 810px;\n	margin: 3px auto 0 auto;\n}\n\nul.topiclist li {\n	display: block;\n	list-style-type: none;\n	color: #777777;\n	margin: 0;\n}\n\nul.topiclist li.news {\n	display: table;\n}\n\nul.topiclist dl {\n	position: relative;\n}\n\nul.topiclist li.row dl {\n	padding: 2px 0;\n}\n\nul.topiclist li.rows {\n        min-height: 35px;\n}\n\nul.topiclist dt {\n	display: block;\n	float: left;\n	width: 50%;\n	font-size: 1.1em;\n	padding-left: 5px;\n	padding-right: 5px;\n}\n\nul.topiclist dt.news {\n        width: 85%;\n}\n\nul.topiclist dt.content {\n        width: 70%;\n}\nul.topiclist dd.date{\n        width:34%;\n}\n\nul.topiclist dd {\n	display: block;\n	float: left;\n	border-left: 1px solid #FFFFFF;\n	padding: 4px 0;\n}\n\nul.topiclist dd.poster {\n        padding-left: 5px;\n}\n\nul.topiclist dfn {\n	/* Labels for post/view counts */\n	position: absolute;\n	left: -999px;\n	width: 990px;\n}\n\nul.topiclist li.row dt a.subforum {\n	background-image: none;\n	background-position: 0 50%;\n	background-repeat: no-repeat;\n	position: relative;\n	white-space: nowrap;\n	padding: 0 0 0 12px;\n}\n\n.forum-image {\n	float: left;\n	padding-top: 5px;\n	margin-right: 5px;\n}\n\nli.row {\n	border-left: 5px double #8f8f8f;\n	border-right: 5px double #8f8f8f;\n	border-bottom: 5px double #8f8f8f;\n}\n\nli.row strong {\n	font-weight: normal;\n	color: #000000;\n}\n\nli.row:hover {\n	background-color: #f6f6f6;\n}\n\nli.row:hover dd {\n	border-left-color: #CCCCCC;\n}\n\nli.header dt, li.header dd {\n	letter-spacing: -0.5pt;\n	font-weight: bold;\n	line-height: 1.1em;\n	border-left-width: 0;\n	margin: 2px 0 4px 8px;\n	color: #FFFFFF;\n	padding-top: 2px;\n	padding-bottom: 2px;\n	font-size: 1.0em;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n	text-transform: uppercase;\n}\n\nli.header dt {\n	font-weight: bold;\n}\n\nli.header dd {\n	margin-left: 1px;\n}\n\nli.header dl.icon {\n	min-height: 29px;\n}\n\nli.header dl.icon dt {\n	/* Tweak for headers alignment when folder icon used */\n	padding-left: 0;\n	padding-right: 50px;\n}\n\n/* Forum list column styles */\ndl.icon {\n	margin-top: 1px;\n	min-height: 35px;\n	background-position: 10px 50%;		/* Position of folder icon */\n	background-repeat: no-repeat;\n}\n\ndl.icon dt {\n	padding-left: 45px;					/* Space for folder icon */\n	background-repeat: no-repeat;\n	background-position: 5px 95%;		/* Position of topic icon */\n}\n\ndd.posts, dd.topics, dd.views {\n	width: 8%;\n	text-align: center;\n	line-height: 2.2em;\n	font-size: 1.2em;\n}\n\n/* List in forum description */\ndl.icon dt ol,\ndl.icon dt ul {\n	list-style-position: inside;\n	margin-left: 1em;\n}\n\ndl.icon dt li {\n	display: list-item;\n	list-style-type: inherit;\n}\n\ndd.lastpost {\n	width: 25%;\n	font-size: 1.1em;\n}\n\ndd.redirect {\n	font-size: 1.1em;\n	line-height: 2.5em;\n}\n\ndd.moderation {\n	font-size: 1.1em;\n}\n\ndd.lastpost span, ul.topiclist dd.searchby span, ul.topiclist dd.info span, ul.topiclist dd.time span, dd.redirect span, dd.moderation span {\n	display: block;\n	padding-left: 5px;\n}\n\ndd.time {\n	width: auto;\n	line-height: 200%;\n	font-size: 1.1em;\n}\n\ndd.extra {\n	width: 12%;\n	line-height: 200%;\n	text-align: center;\n	font-size: 1.1em;\n}\n\ndd.mark {\n	float: right !important;\n	width: 9%;\n	text-align: center;\n	line-height: 200%;\n	font-size: 1.2em;\n}\n\ndd.info {\n	width: 30%;\n}\n\ndd.option {\n	width: 15%;\n	line-height: 200%;\n	text-align: center;\n	font-size: 1.1em;\n}\n\ndd.searchby {\n	width: 47%;\n	font-size: 1.1em;\n	line-height: 1em;\n}\n\nul.topiclist dd.searchextra {\n	margin-left: 5px;\n	padding: 0.2em 0;\n	font-size: 1.1em;\n	color: #333333;\n	border-left: none;\n	clear: both;\n	width: 98%;\n	overflow: hidden;\n}\n\n/* Container for post/reply buttons and pagination */\n.topic-actions {\n	margin-bottom: 3px;\n	font-size: 1.1em;\n	height: 28px;\n	min-height: 28px;\n}\ndiv[class].topic-actions {\n	height: auto;\n}\n\n/* Post body styles\n----------------------------------------*/\n.postbody {\n	padding: 0 0 0 10px;\n	line-height: 1.48em;\n	color: #333333;\n	width: 76%;\n	float: left;\n	clear: both;\n}\n\n.postbody .ignore {\n	font-size: 1.1em;\n}\n\n.postbody h3.first {\n	/* The first post on the page uses this */\n	font-size: 1.7em;\n}\n\n.postbody h3 {\n	/* Postbody requires a different h3 format - so change it here */\n	font-size: 1.5em;\n	padding: 2px 0 0 0;\n	margin: 0 0 0.3em 0 !important;\n	text-transform: none;\n	border: none;\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	line-height: 125%;\n}\n\n.postbody h3 img {\n	/* Also see tweaks.css */\n	vertical-align: bottom;\n}\n\n.postbody .content {\n	font-size: 1.3em;\n}\n\n.search .postbody {\n	width: 68%\n}\n\n/* Topic review panel\n----------------------------------------*/\n#review {\n	margin-top: 2em;\n}\n\n#topicreview {\n	padding-right: 5px;\n	overflow: auto;\n	height: 300px;\n}\n\n#topicreview .postbody {\n	width: auto;\n	float: none;\n	margin: 0;\n	height: auto;\n}\n\n#topicreview .post {\n	height: auto;\n}\n\n.post-ignore .postbody {\n	display: none;\n}\n\n/* Content container styles\n----------------------------------------*/\n.content {\n	min-height: 3em;\n	overflow: hidden;\n	line-height: 1.4em;\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1em;\n	color: #333333;\n	padding-bottom: 1px;\n}\n\n.content h2, .panel h2 {\n	font-weight: normal;\n	color: #989898;\n	border-bottom: 1px solid #CCCCCC;\n	font-size: 1.6em;\n	margin-top: 0.5em;\n	margin-bottom: 0.5em;\n	padding-bottom: 0.5em;\n}\n\n.panel h3 {\n	margin: 0.5em 0;\n}\n\n.panel p {\n	font-size: 1.2em;\n	margin-bottom: 1em;\n	line-height: 1.4em;\n}\n\n.content p {\n	font-family: "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.2em;\n	margin-bottom: 1em;\n	line-height: 1.4em;\n}\n\ndl.faq {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.1em;\n	margin-top: 1em;\n	margin-bottom: 2em;\n	line-height: 1.4em;\n}\n\ndl.faq dt {\n	font-weight: bold;\n	color: #333333;\n}\n\n.content dl.faq {\n	font-size: 1.2em;\n	margin-bottom: 0.5em;\n}\n\n.content li {\n	list-style-type: inherit;\n}\n\n.content ul, .content ol {\n	margin-bottom: 1em;\n	margin-left: 3em;\n}\n\n.posthilit {\n	background-color: #f3f3f3;\n	color: #BCBCBC;\n	padding: 0 2px 1px 2px;\n}\n\n.announce, .unreadpost {\n	/* Highlight the announcements & unread posts box */\n	border-left-color: #BCBCBC;\n	border-right-color: #BCBCBC;\n}\n\n/* Post author */\np.author {\n	margin: 0 15em 0.6em 0;\n	padding: 0 0 5px 0;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1em;\n	line-height: 1.2em;\n}\n\n/* Post signature */\n.signature {\n	margin-top: 1.5em;\n	padding-top: 0.2em;\n	font-size: 1.1em;\n	border-top: 1px solid #CCCCCC;\n	clear: left;\n	line-height: 140%;\n	overflow: hidden;\n	width: 100%;\n}\n\ndd .signature {\n	margin: 0;\n	padding: 0;\n	clear: none;\n	border: none;\n}\n.signature li {\n	list-style-type: inherit;\n}\n\n.signature ul, .signature ol {\n	margin-bottom: 1em;\n	margin-left: 3em;\n}\n\n/* Post noticies */\n.notice {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	width: auto;\n	margin-top: 1.5em;\n	padding-top: 0.2em;\n	font-size: 1em;\n	border-top: 1px dashed #CCCCCC;\n	clear: left;\n	line-height: 130%;\n}\n\n/* Jump to post link for now */\nul.searchresults {\n	list-style: none;\n	text-align: right;\n	clear: both;\n}\n\n/* BB Code styles\n----------------------------------------*/\n/* Quote block */\nblockquote {\n	background: #ebebeb none 6px 8px no-repeat;\n	border: 1px solid #dbdbdb;\n	font-size: 0.95em;\n	margin: 0.5em 1px 0 25px;\n	overflow: hidden;\n	padding: 5px;\n}\n\nblockquote blockquote {\n	/* Nested quotes */\n	background-color: #bababa;\n	font-size: 1em;\n	margin: 0.5em 1px 0 15px;	\n}\n\nblockquote blockquote blockquote {\n	/* Nested quotes */\n	background-color: #e4e4e4;\n}\n\nblockquote cite {\n	/* Username/source of quoter */\n	font-style: normal;\n	font-weight: bold;\n	margin-left: 20px;\n	display: block;\n	font-size: 0.9em;\n}\n\nblockquote cite cite {\n	font-size: 1em;\n}\n\nblockquote.uncited {\n	padding-top: 25px;\n}\n\n/* Code block */\ndl.codebox {\n	padding: 3px;\n	background-color: #FFFFFF;\n	border: 1px solid #d8d8d8;\n	font-size: 1em;\n}\n\ndl.codebox dt {\n	text-transform: uppercase;\n	border-bottom: 1px solid #CCCCCC;\n	margin-bottom: 3px;\n	font-size: 0.8em;\n	font-weight: bold;\n	display: block;\n}\n\nblockquote dl.codebox {\n	margin-left: 0;\n}\n\ndl.codebox code {\n	/* Also see tweaks.css */\n	overflow: auto;\n	display: block;\n	height: auto;\n	max-height: 200px;\n	white-space: normal;\n	padding-top: 5px;\n	font: 0.9em Monaco, "Andale Mono","Courier New", Courier, mono;\n	line-height: 1.3em;\n	color: #8b8b8b;\n	margin: 2px 0;\n}\n\n.syntaxbg		{ color: #FFFFFF; }\n.syntaxcomment	{ color: #000000; }\n.syntaxdefault	{ color: #bcbcbc; }\n.syntaxhtml		{ color: #000000; }\n.syntaxkeyword	{ color: #585858; }\n.syntaxstring	{ color: #a7a7a7; }\n\n/* Attachments\n----------------------------------------*/\n.attachbox {\n	float: left;\n	width: auto; \n	margin: 5px 5px 5px 0;\n	padding: 6px;\n	background-color: #FFFFFF;\n	border: 1px dashed #d8d8d8;\n	clear: left;\n}\n\n.pm-message .attachbox {\n	background-color: #f3f3f3;\n}\n\n.attachbox dt {\n	font-family: Arial, Helvetica, sans-serif;\n	text-transform: uppercase;\n}\n\n.attachbox dd {\n	margin-top: 4px;\n	padding-top: 4px;\n	clear: left;\n	border-top: 1px solid #d8d8d8;\n}\n\n.attachbox dd dd {\n	border: none;\n}\n\n.attachbox p {\n	line-height: 110%;\n	color: #666666;\n	font-weight: normal;\n	clear: left;\n}\n\n.attachbox p.stats\n{\n	line-height: 110%;\n	color: #666666;\n	font-weight: normal;\n	clear: left;\n}\n\n.attach-image {\n	margin: 3px 0;\n	width: 100%;\n	max-height: 350px;\n	overflow: auto;\n}\n\n.attach-image img {\n	border: 1px solid #999999;\n/*	cursor: move; */\n	cursor: default;\n}\n\n/* Inline image thumbnails */\ndiv.inline-attachment dl.thumbnail, div.inline-attachment dl.file {\n	display: block;\n	margin-bottom: 4px;\n}\n\ndiv.inline-attachment p {\n	font-size: 100%;\n}\n\ndl.file {\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n	display: block;\n}\n\ndl.file dt {\n	text-transform: none;\n	margin: 0;\n	padding: 0;\n	font-weight: bold;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n}\n\ndl.file dd {\n	color: #666666;\n	margin: 0;\n	padding: 0;	\n}\n\ndl.thumbnail img {\n	padding: 3px;\n	border: 1px solid #666666;\n	background-color: #FFF;\n}\n\ndl.thumbnail dd {\n	color: #666666;\n	font-style: italic;\n	font-family: Verdana, Arial, Helvetica, sans-serif;\n}\n\n.attachbox dl.thumbnail dd {\n	font-size: 100%;\n}\n\ndl.thumbnail dt a:hover {\n	background-color: #EEEEEE;\n}\n\ndl.thumbnail dt a:hover img {\n	border: 1px solid #d2d2d2;\n}\n\n/* Post poll styles\n----------------------------------------*/\nfieldset.polls {\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n}\n\nfieldset.polls dl {\n	margin-top: 5px;\n	border-top: 1px solid #e2e2e2;\n	padding: 5px 0 0 0;\n	line-height: 120%;\n	color: #666666;\n}\n\nfieldset.polls dl.voted {\n	font-weight: bold;\n	color: #000000;\n}\n\nfieldset.polls dt {\n	text-align: left;\n	float: left;\n	display: block;\n	width: 30%;\n	border-right: none;\n	padding: 0;\n	margin: 0;\n	font-size: 1.1em;\n}\n\nfieldset.polls dd {\n	float: left;\n	width: 10%;\n	border-left: none;\n	padding: 0 5px;\n	margin-left: 0;\n	font-size: 1.1em;\n}\n\nfieldset.polls dd.resultbar {\n	width: 50%;\n}\n\nfieldset.polls dd input {\n	margin: 2px 0;\n}\n\nfieldset.polls dd div {\n	text-align: right;\n	font-family: Arial, Helvetica, sans-serif;\n	color: #FFFFFF;\n	font-weight: bold;\n	padding: 0 2px;\n	overflow: visible;\n	min-width: 2%;\n}\n\n.pollbar1 {\n	background-color: #aaaaaa;\n	border-bottom: 1px solid #747474;\n	border-right: 1px solid #747474;\n}\n\n.pollbar2 {\n	background-color: #bebebe;\n	border-bottom: 1px solid #8c8c8c;\n	border-right: 1px solid #8c8c8c;\n}\n\n.pollbar3 {\n	background-color: #D1D1D1;\n	border-bottom: 1px solid #aaaaaa;\n	border-right: 1px solid #aaaaaa;\n}\n\n.pollbar4 {\n	background-color: #e4e4e4;\n	border-bottom: 1px solid #bebebe;\n	border-right: 1px solid #bebebe;\n}\n\n.pollbar5 {\n	background-color: #f8f8f8;\n	border-bottom: 1px solid #D1D1D1;\n	border-right: 1px solid #D1D1D1;\n}\n\n/* Poster profile block\n----------------------------------------*/\n.postprofile {\n	/* Also see tweaks.css */\n	margin: 5px 0 10px 0;\n	min-height: 80px;\n	color: #666666;\n	border-left: 1px solid #FFFFFF;\n	width: 22%;\n	float: right;\n	display: inline;\n}\n.pm .postprofile {\n	border-left: 1px solid #DDDDDD;\n}\n\n.postprofile dd, .postprofile dt {\n	line-height: 1.2em;\n	margin-left: 8px;\n}\n\n.postprofile strong {\n	font-weight: normal;\n	color: #000000;\n}\n\n.avatar {\n	border: none;\n	margin-bottom: 3px;\n}\n\n.online {\n	background-image: none;\n	background-position: 100% 0;\n	background-repeat: no-repeat;\n}\n\n/* Poster profile used by search*/\n.search .postprofile {\n	width: 30%;\n}\n\n/* pm list in compose message if mass pm is enabled */\ndl.pmlist dt {\n	width: 60% !important;\n}\n\ndl.pmlist dt textarea {\n	width: 95%;\n}\n\ndl.pmlist dd {\n	margin-left: 61% !important;\n	margin-bottom: 2px;\n}\n/* proSilver Button Styles\n---------------------------------------- */\n\n/* Rollover buttons\n   Based on: http://wellstyled.com/css-nopreload-rollovers.html\n----------------------------------------*/\n.buttons {\n	float: left;\n	width: auto;\n	height: auto;\n}\n\n/* Rollover state */\n.buttons div {\n	float: left;\n	margin: 0 5px 0 0;\n	background-position: 0 100%;\n}\n\n/* Rolloff state */\n.buttons div a {\n	display: block;\n	width: 100%;\n	height: 100%;\n	background-position: 0 0;\n	position: relative;\n	overflow: hidden;\n}\n\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\n/*.buttons div span		{ display: none; }*/\n/*.buttons div a:hover	{ background-image: none; }*/\n.buttons div span			{ position: absolute; width: 100%; height: 100%; cursor: pointer;}\n.buttons div a:hover span	{ background-position: 0 100%; }\n\n/* Big button images */\n.reply-icon span	{ background: transparent none 0 0 no-repeat; }\n.post-icon span		{ background: transparent none 0 0 no-repeat; }\n.locked-icon span	{ background: transparent none 0 0 no-repeat; }\n.pmreply-icon span	{ background: none 0 0 no-repeat; }\n.newpm-icon span 	{ background: none 0 0 no-repeat; }\n.forwardpm-icon span 	{ background: none 0 0 no-repeat; }\n\n/* Set big button dimensions */\n.buttons div.reply-icon		{ width: {IMG_BUTTON_TOPIC_REPLY_WIDTH}px; height: {IMG_BUTTON_TOPIC_REPLY_HEIGHT}px; }\n.buttons div.post-icon		{ width: {IMG_BUTTON_TOPIC_NEW_WIDTH}px; height: {IMG_BUTTON_TOPIC_NEW_HEIGHT}px; }\n.buttons div.locked-icon	{ width: {IMG_BUTTON_TOPIC_LOCKED_WIDTH}px; height: {IMG_BUTTON_TOPIC_LOCKED_HEIGHT}px; }\n.buttons div.pmreply-icon	{ width: {IMG_BUTTON_PM_REPLY_WIDTH}px; height: {IMG_BUTTON_PM_REPLY_HEIGHT}px; }\n.buttons div.newpm-icon		{ width: {IMG_BUTTON_PM_NEW_WIDTH}px; height: {IMG_BUTTON_PM_NEW_HEIGHT}px; }\n.buttons div.forwardpm-icon	{ width: {IMG_BUTTON_PM_FORWARD_WIDTH}px; height: {IMG_BUTTON_PM_FORWARD_HEIGHT}px; }\n\n/* Sub-header (navigation bar)\n--------------------------------------------- */\na.print, a.sendemail, a.fontsize {\n	display: block;\n	overflow: hidden;\n	height: 20px;\n	text-indent: -5000px;\n	text-align: left;\n	background-repeat: no-repeat;\n}\n\na.print {\n	background-image: none;\n	width: 23px;\n}\n\na.print:hover {\n	background-position: 0 -20px;\n	text-decoration: none;\n}\n\na.sendemail {\n	background-image: none;\n	width: 23px;\n}\n\na.sendemail:hover {\n	background-position: 0 -20px;\n	text-decoration: none;\n}\n\na.fontsize {\n	background-image: none;\n	background-position: 0 0;\n	width: 29px;\n}\n\na.fontsize:hover {\n	background-position: 0 -20px;\n	text-decoration: none;\n}\n\n/* Icon images\n---------------------------------------- */\n.sitehome, .icon-faq, .icon-members, .icon-home, .icon-ucp, .icon-register, .icon-logout,\n.icon-bookmark, .icon-bump, .icon-subscribe, .icon-unsubscribe, .icon-pages, .icon-search {\n	background-position: 0 50%;\n	background-repeat: no-repeat;\n	background-image: none;\n	padding: 1px 0 0 17px;\n}\n\n/* Poster profile icons\n----------------------------------------*/\nul.profile-icons {\n	padding-top: 10px;\n	list-style: none;\n}\n\n/* Rollover state */\nul.profile-icons li {\n	float: left;\n	margin: 0 6px 3px 0;\n	background-position: 0 100%;\n}\n\n/* Rolloff state */\nul.profile-icons li a {\n	display: block;\n	width: 100%;\n	height: 100%;\n	background-position: 0 0;\n}\n\n/* Hide <a> text and hide off-state image when rolling over (prevents flicker in IE) */\nul.profile-icons li span { display:none; }\nul.profile-icons li a:hover { background: none; }\n\n/* Positioning of moderator icons */\n.postbody ul.profile-icons {\n	float: right;\n	width: auto;\n	padding: 0;\n}\n\n.postbody ul.profile-icons li {\n	margin: 0 3px;\n}\n\n/* Profile & navigation icons */\n.email-icon, .email-icon a		{ background: none top left no-repeat; }\n.aim-icon, .aim-icon a			{ background: none top left no-repeat; }\n.yahoo-icon, .yahoo-icon a		{ background: none top left no-repeat; }\n.web-icon, .web-icon a			{ background: none top left no-repeat; }\n.msnm-icon, .msnm-icon a			{ background: none top left no-repeat; }\n.icq-icon, .icq-icon a			{ background: none top left no-repeat; }\n.jabber-icon, .jabber-icon a		{ background: none top left no-repeat; }\n.pm-icon, .pm-icon a				{ background: none top left no-repeat; }\n.quote-icon, .quote-icon a		{ background: none top left no-repeat; }\n\n/* Moderator icons */\n.report-icon, .report-icon a		{ background: none top left no-repeat; }\n.warn-icon, .warn-icon a			{ background: none top left no-repeat; }\n.edit-icon, .edit-icon a			{ background: none top left no-repeat; }\n.delete-icon, .delete-icon a		{ background: none top left no-repeat; }\n.info-icon, .info-icon a			{ background: none top left no-repeat; }\n\n/* Set profile icon dimensions */\nul.profile-icons li.email-icon		{ width: {IMG_ICON_CONTACT_EMAIL_WIDTH}px; height: {IMG_ICON_CONTACT_EMAIL_HEIGHT}px; }\nul.profile-icons li.aim-icon	{ width: {IMG_ICON_CONTACT_AIM_WIDTH}px; height: {IMG_ICON_CONTACT_AIM_HEIGHT}px; }\nul.profile-icons li.yahoo-icon	{ width: {IMG_ICON_CONTACT_YAHOO_WIDTH}px; height: {IMG_ICON_CONTACT_YAHOO_HEIGHT}px; }\nul.profile-icons li.web-icon	{ width: {IMG_ICON_CONTACT_WWW_WIDTH}px; height: {IMG_ICON_CONTACT_WWW_HEIGHT}px; }\nul.profile-icons li.msnm-icon	{ width: {IMG_ICON_CONTACT_MSNM_WIDTH}px; height: {IMG_ICON_CONTACT_MSNM_HEIGHT}px; }\nul.profile-icons li.icq-icon	{ width: {IMG_ICON_CONTACT_ICQ_WIDTH}px; height: {IMG_ICON_CONTACT_ICQ_HEIGHT}px; }\nul.profile-icons li.jabber-icon	{ width: {IMG_ICON_CONTACT_JABBER_WIDTH}px; height: {IMG_ICON_CONTACT_JABBER_HEIGHT}px; }\nul.profile-icons li.pm-icon		{ width: {IMG_ICON_CONTACT_PM_WIDTH}px; height: {IMG_ICON_CONTACT_PM_HEIGHT}px; }\nul.profile-icons li.quote-icon	{ width: {IMG_ICON_POST_QUOTE_WIDTH}px; height: {IMG_ICON_POST_QUOTE_HEIGHT}px; }\nul.profile-icons li.report-icon	{ width: {IMG_ICON_POST_REPORT_WIDTH}px; height: {IMG_ICON_POST_REPORT_HEIGHT}px; }\nul.profile-icons li.edit-icon	{ width: {IMG_ICON_POST_EDIT_WIDTH}px; height: {IMG_ICON_POST_EDIT_HEIGHT}px; }\nul.profile-icons li.delete-icon	{ width: {IMG_ICON_POST_DELETE_WIDTH}px; height: {IMG_ICON_POST_DELETE_HEIGHT}px; }\nul.profile-icons li.info-icon	{ width: {IMG_ICON_POST_INFO_WIDTH}px; height: {IMG_ICON_POST_INFO_HEIGHT}px; }\nul.profile-icons li.warn-icon	{ width: {IMG_ICON_USER_WARN_WIDTH}px; height: {IMG_ICON_USER_WARN_HEIGHT}px; }\n\n/* Fix profile icon default margins */\nul.profile-icons li.edit-icon	{ margin: -7px 3px 0 3px; }\nul.profile-icons li.quote-icon	{ margin: -7px 0 0 3px; }\nul.profile-icons li.info-icon, ul.profile-icons li.report-icon, ul.profile-icons li.delete-icon, ul.profile-icons li.warn-icon { margin: -6px 3px 0 0; }\n/* proSilver Control Panel Styles\n---------------------------------------- */\n\n\n/* Main CP box\n----------------------------------------*/\n#cp-menu {\n	float: right;\n	width: 19%;\n	margin-top: 1em;\n	margin-bottom: 5px;\n}\n\n#cp-main {\n	float: left;\n	width: 81%;\n}\n\n#cp-main .content {\n	padding: 0;\n}\n\n#cp-main h3, #cp-main hr, #cp-menu hr {\n	border-color: #bfbfbf;\n}\n\n#cp-main .panel p {\n	font-size: 1.1em;\n}\n\n#cp-main .panel ol {\n	margin-left: 2em;\n	font-size: 1.1em;\n}\n\n#cp-main .panel li.row {\n	border-bottom: 1px solid #cbcbcb;\n	border-top: 1px solid #F9F9F9;\n}\n\nul.cplist {\n	margin-bottom: 5px;\n	border-top: 1px solid #cbcbcb;\n}\n\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\n	color: #000000;\n	margin-bottom: 2px;\n}\n\n#cp-main table.table1 {\n	margin-bottom: 1em;\n}\n\n#cp-main table.table1 thead th {\n	color: #333333;\n	font-weight: bold;\n	border-bottom: 1px solid #333333;\n	padding: 5px;\n}\n\n#cp-main table.table1 tbody th {\n	font-style: italic;\n	background-color: transparent !important;\n	border-bottom: none;\n}\n\n#cp-main .pagination {\n	float: right;\n	width: auto;\n	padding-top: 1px;\n}\n\n#cp-main .postbody p {\n	font-size: 1.1em;\n}\n\n#cp-main .pm-message {\n	border: 1px solid #e2e2e2;\n	margin: 10px 0;\n	background-color: #FFFFFF;\n	width: auto;\n	float: none;\n}\n\n.pm-message h2 {\n	padding-bottom: 5px;\n}\n\n#cp-main .postbody h3, #cp-main .box2 h3 {\n	margin-top: 0;\n}\n\n#cp-main .buttons {\n	margin-left: 0;\n}\n\n#cp-main ul.linklist {\n	margin: 0;\n}\n\n/* MCP Specific tweaks */\n.mcp-main .postbody {\n	width: 100%;\n}\n\n/* CP tabbed menu\n----------------------------------------*/\n#tabs {\n	line-height: normal;\n	margin: 20px -1px -11px 7px;\n	min-width: 570px;\n}\n\n#tabs ul {\n	margin:0;\n	padding: 0;\n	list-style: none;\n}\n\n#tabs li {\n	display: inline;\n	margin: 0;\n	padding: 0;\n	font-size: 1em;\n	font-weight: bold;\n}\n\n#tabs a {\n	float: right;\n	background: none no-repeat 0% -35px;\n	margin: 0 1px 0 0;\n	padding: 0 0 0 5px;\n	text-decoration: none;\n	position: relative;\n	cursor: pointer;\n}\n\n#tabs a span {\n	float: left;\n	display: block;\n	background: none no-repeat 100% -35px;\n	padding: 6px 10px 6px 5px;\n	color: #828282;\n	white-space: nowrap;\n}\n\n#tabs a:hover span {\n	color: #bcbcbc;\n}\n\n#tabs .activetab a {\n	background-position: 0 0;\n	border-bottom: 1px solid #ebebeb;\n}\n\n#tabs .activetab a span {\n	background-position: 100% 0;\n	padding-bottom: 7px;\n	color: #333333;\n}\n\n#tabs a:hover {\n	background-position: 0 -70px;\n}\n\n#tabs a:hover span {\n	background-position:100% -70px;\n}\n\n#tabs .activetab a:hover {\n	background-position: 0 0;\n}\n\n#tabs .activetab a:hover span {\n	color: #000000;\n	background-position: 100% 0;\n}\n\n/* Mini tabbed menu used in MCP\n----------------------------------------*/\n#minitabs {\n	line-height: normal;\n	margin: -20px 7px 0 0;\n}\n\n#minitabs ul {\n	margin:0;\n	padding: 0;\n	list-style: none;\n}\n\n#minitabs li {\n	display: block;\n	float: right;\n	padding: 0 10px 4px 10px;\n	font-size: 1em;\n	font-weight: bold;\n	background-color: #f2f2f2;\n	margin-left: 2px;\n}\n\n#minitabs a {\n}\n\n#minitabs a:hover {\n	text-decoration: none;\n}\n\n#minitabs li.activetab {\n	background-color: #F9F9F9;\n}\n\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\n	color: #333333;\n}\n\n/* UCP navigation menu\n----------------------------------------*/\n/* Container for sub-navigation list */\n#navigation {\n	width: 100%;\n	padding-top: 36px;\n}\n\n#navigation ul {\n	list-style:none;\n}\n\n/* Default list state */\n#navigation li {\n	margin: 1px 0;\n	padding: 0;\n	font-weight: bold;\n	display: inline;\n}\n\n/* Link styles for the sub-section links */\n#navigation a {\n	display: block;\n	padding: 5px;\n	margin: 1px 0;\n	text-decoration: none;\n	font-weight: bold;\n	color: #333;\n	background: #cfcfcf none repeat-y 100% 0;\n}\n\n#navigation a:hover {\n	text-decoration: none;\n	background-color: #c6c6c6;\n	color: #bcbcbc;\n	background-image: none;\n}\n\n#navigation #active-subsection a {\n	display: block;\n	color: #d3d3d3;\n	background-color: #F9F9F9;\n	background-image: none;\n}\n\n#navigation #active-subsection a:hover {\n	color: #d3d3d3;\n}\n\n/* Preferences pane layout\n----------------------------------------*/\n#cp-main h2 {\n	border-bottom: none;\n	padding: 0;\n	margin-left: 10px;\n	color: #333333;\n}\n\n#cp-main .panel {\n	background-color: #F9F9F9;\n}\n\n#cp-main .pm {\n	background-color: #FFFFFF;\n}\n\n#cp-main span.corners-top, #cp-menu span.corners-top {\n	background-image: none;\n}\n\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\n	background-image: none;\n}\n\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\n	background-image: none;\n}\n\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\n	background-image: none;\n}\n\n/* Topicreview */\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\n	background-image: none;\n}\n\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\n	background-image: none;\n}\n\n/* Friends list */\n.cp-mini {\n	background-color: #f9f9f9;\n	padding: 0 5px;\n	margin: 10px 15px 10px 5px;\n}\n\n.cp-mini span.corners-top, .cp-mini span.corners-bottom {\n	margin: 0 -5px;\n}\n\ndl.mini dt {\n	font-weight: bold;\n	color: #676767;\n}\n\ndl.mini dd {\n	padding-top: 4px;\n}\n\n.friend-online {\n	font-weight: bold;\n}\n\n.friend-offline {\n	font-style: italic;\n}\n\n/* PM Styles\n----------------------------------------*/\n#pm-menu {\n	line-height: 2.5em;\n}\n\n/* PM panel adjustments */\n.pm-panel-header {\n	margin: 0; \n	padding-bottom: 10px; \n	border-bottom: 1px dashed #A4B3BF;\n}\n\n.reply-all {\n	display: block; \n	padding-top: 4px; \n	clear: both;\n	float: left;\n}\n\n.pm-panel-message {\n	padding-top: 10px;\n}\n\n.pm-return-to {\n	padding-top: 23px;\n}\n\n#cp-main .pm-message-nav {\n	margin: 0; \n	padding: 2px 10px 5px 10px; \n	border-bottom: 1px dashed #A4B3BF;\n}\n\n/* PM Message history */\n.current {\n	color: #999999;\n}\n\n/* Defined rules list for PM options */\nol.def-rules {\n	padding-left: 0;\n}\n\nol.def-rules li {\n	line-height: 180%;\n	padding: 1px;\n}\n\n/* PM marking colours */\n.pmlist li.bg1 {\n	border: solid 3px transparent;\n	border-width: 0 3px;\n}\n\n.pmlist li.bg2 {\n	border: solid 3px transparent;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\n	border-left-color: #bcbcbc;\n	border-right-color: #bcbcbc;\n}\n\n.pmlist li.pm_marked_colour, .pm_marked_colour {\n	border: solid 3px #ffffff;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_replied_colour, .pm_replied_colour {\n	border: solid 3px #c2c2c2;\n	border-width: 0 3px;	\n}\n\n.pmlist li.pm_friend_colour, .pm_friend_colour {\n	border: solid 3px #bdbdbd;\n	border-width: 0 3px;\n}\n\n.pmlist li.pm_foe_colour, .pm_foe_colour {\n	border: solid 3px #000000;\n	border-width: 0 3px;\n}\n\n.pm-legend {\n	border-left-width: 10px;\n	border-left-style: solid;\n	border-right-width: 0;\n	margin-bottom: 3px;\n	padding-left: 3px;\n}\n\n/* Avatar gallery */\n#gallery label {\n	position: relative;\n	float: left;\n	margin: 10px;\n	padding: 5px;\n	width: auto;\n	background: #FFFFFF;\n	border: 1px solid #CCC;\n	text-align: center;\n}\n\n#gallery label:hover {\n	background-color: #EEE;\n}\n/* proSilver Form Styles\n---------------------------------------- */\n\n/* General form styles\n----------------------------------------*/\nfieldset {\n	border-width: 0;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-size: 1.1em;\n}\n\ninput {\n	font-weight: normal;\n	cursor: pointer;\n	vertical-align: middle;\n	padding: 0 3px;\n	font-size: 1em;\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n}\n\nselect {\n	font-family: Verdana, Helvetica, Arial, sans-serif;\n	font-weight: normal;\n	cursor: pointer;\n	vertical-align: middle;\n	border: 1px solid #666666;\n	padding: 1px;\n	background-color: #FAFAFA;\n}\n\noption {\n	padding-right: 1em;\n}\n\noption.disabled-option {\n	color: graytext;\n}\n\ntextarea {\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	width: 60%;\n	padding: 2px;\n	font-size: 1em;\n	line-height: 1.4em;\n}\n\nlabel {\n	cursor: default;\n	padding-right: 5px;\n	color: #676767;\n}\n\nlabel input {\n	vertical-align: middle;\n}\n\nlabel img {\n	vertical-align: middle;\n}\n\n/* Definition list layout for forms\n---------------------------------------- */\nfieldset dl {\n	padding: 4px 0;\n}\n\nfieldset dt {\n	float: left;	\n	width: 40%;\n	text-align: left;\n	display: block;\n}\n\nfieldset dd {\n	margin-left: 41%;\n	vertical-align: top;\n	margin-bottom: 3px;\n}\n\n/* Specific layout 1 */\nfieldset.fields1 dt {\n	width: 15em;\n	border-right-width: 0;\n}\n\nfieldset.fields1 dd {\n	margin-left: 15em;\n	border-left-width: 0;\n}\n\nfieldset.fields1 {\n	background-color: transparent;\n}\n\nfieldset.fields1 div {\n	margin-bottom: 3px;\n}\n\n/* Specific layout 2 */\nfieldset.fields2 dt {\n	width: 15em;\n	border-right-width: 0;\n}\n\nfieldset.fields2 dd {\n	margin-left: 16em;\n	border-left-width: 0;\n}\n\n/* Form elements */\ndt label {\n	font-weight: bold;\n	text-align: left;\n}\n\ndd label {\n	white-space: nowrap;\n	color: #333;\n}\n\ndd input, dd textarea {\n	margin-right: 3px;\n}\n\ndd select {\n	width: auto;\n}\n\ndd textarea {\n	width: 85%;\n}\n\n/* Hover effects */\nfieldset dl:hover dt label {\n	color: #000000;\n}\n\nfieldset.fields2 dl:hover dt label {\n	color: inherit;\n}\n\n#timezone {\n	width: 95%;\n}\n\n* html #timezone {\n	width: 50%;\n}\n\n/* Quick-login on index page */\nfieldset.quick-login {\n	margin-top: 5px;\n}\n\nfieldset.quick-login input {\n	width: auto;\n}\n\nfieldset.quick-login input.inputbox {\n	width: 15%;\n	vertical-align: middle;\n	margin-right: 5px;\n	background-color: #f3f3f3;\n}\n\nfieldset.quick-login label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\n/* Display options on viewtopic/viewforum pages  */\nfieldset.display-options {\n	text-align: center;\n	margin: 3px 0 5px 0;\n}\n\nfieldset.display-options label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\nfieldset.display-options a {\n	margin-top: 3px;\n}\n\n/* Display actions for ucp and mcp pages */\nfieldset.display-actions {\n	text-align: right;\n	line-height: 2em;\n	white-space: nowrap;\n	padding-right: 1em;\n}\n\nfieldset.display-actions label {\n	white-space: nowrap;\n	padding-right: 2px;\n}\n\nfieldset.sort-options {\n	line-height: 2em;\n}\n\n/* MCP forum selection*/\nfieldset.forum-selection {\n	margin: 5px 0 3px 0;\n	float: right;\n}\n\nfieldset.forum-selection2 {\n	margin: 13px 0 3px 0;\n	float: right;\n}\n\n/* Jumpbox */\nfieldset.jumpbox {\n	text-align: right;\n	margin-top: 15px;\n	height: 2.5em;\n}\n\nfieldset.quickmod {\n	width: 80%;\n	float: right;\n	text-align: right;\n	height: 2.5em;\n	white-space: nowrap;\n}\n\n/* Submit button fieldset */\nfieldset.submit-buttons {\n	text-align: center;\n	vertical-align: middle;\n	margin: 5px 0;\n}\n\nfieldset.submit-buttons input {\n	vertical-align: middle;\n	padding-top: 3px;\n	padding-bottom: 3px;\n}\n\n/* Posting page styles\n----------------------------------------*/\n\n/* Buttons used in the editor */\n#format-buttons {\n	margin: 15px 0 2px 0;\n}\n\n#format-buttons input, #format-buttons select {\n	vertical-align: middle;\n}\n\n/* Main message box */\n#message-box {\n	width: 80%;\n}\n\n#message-box textarea {\n	font-family: "Trebuchet MS", Verdana, Helvetica, Arial, sans-serif;\n	width: 100%;\n	font-size: 1.2em;\n	color: #333333;\n}\n\n/* Emoticons panel */\n#smiley-box {\n	width: 18%;\n	float: right;\n}\n\n#smiley-box img {\n	margin: 3px;\n}\n\n/* Input field styles\n---------------------------------------- */\n.inputbox {\n	background-color: #FFFFFF;\n	border: 1px solid #c0c0c0;\n	color: #333333;\n	padding: 2px;\n	cursor: text;\n}\n\n.inputbox:hover {\n	border: 1px solid #eaeaea;\n}\n\n.inputbox:focus {\n	border: 1px solid #eaeaea;\n	color: #4b4b4b;\n}\n\ninput.inputbox	{ width: 85%; }\ninput.medium	{ width: 50%; }\ninput.narrow	{ width: 25%; }\ninput.tiny		{ width: 125px; }\n\ntextarea.inputbox {\n	width: 85%;\n}\n\n.autowidth {\n	width: auto !important;\n}\n\n/* Form button styles\n---------------------------------------- */\ninput.button1, input.button2 {\n	font-size: 1em;\n}\n\na.button1, input.button1, input.button3, a.button2, input.button2 {\n	width: auto !important;\n	padding: 1px;\n	font-family: "Lucida Grande", Verdana, Helvetica, Arial, sans-serif;\n	color: #000;\n	background: #FAFAFA none repeat-x top;\n}\n\na.button1, input.button1 {\n	font-weight: bold;\n	border: 1px solid #666666;\n}\n\ninput.button3 {\n	padding: 0;\n	margin: 0;\n	line-height: 5px;\n	height: 12px;\n	background-image: none;\n	font-variant: small-caps;\n}\n\n/* Alternative button */\na.button2, input.button2, input.button3 {\n	border: 1px solid #666666;\n}\n\n/* <a> button in the style of the form buttons */\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\n	text-decoration: none;\n	color: #000000;\n	padding: 2px 8px;\n	line-height: 250%;\n	vertical-align: text-bottom;\n	background-position: 0 1px;\n}\n\n/* Hover states */\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\n	border: 1px solid #66cc00;\n	background-position: 0 100%;\n	color: #66cc00;\n}\n\ninput.disabled {\n	font-weight: normal;\n	color: #666666;\n}\n\n/* Topic and forum Search */\n.search-box {\n	margin-top: 3px;\n	margin-left: 5px;\n	float: left;\n}\n\n.search-box input {\n}\n\ninput.search {\n	background-image: none;\n	background-repeat: no-repeat;\n	background-position: left 1px;\n	padding-left: 17px;\n}\n\n.full { width: 95%; }\n.medium { width: 50%;}\n.narrow { width: 25%;}\n.tiny { width: 10%;}\n/* proSilver Style Sheet Tweaks\n\nThese style definitions are mainly IE specific \ntweaks required due to its poor CSS support.\n-------------------------------------------------*/\n\n* html table, * html select, * html input { font-size: 100%; }\n* html hr { margin: 0; }\n* html span.corners-top, * html span.corners-bottom { background-image: url("{T_THEME_PATH}/images/corners_left.gif"); }\n* html span.corners-top span, * html span.corners-bottom span { background-image: url("{T_THEME_PATH}/images/corners_right.gif"); }\n\ntable.table1 {\n	width: 99%;		/* IE < 6 browsers */\n	/* Tantek hack */\n	voice-family: "\\"}\\"";\n	voice-family: inherit;\n	width: 100%;\n}\n\nhtml>body table.table1 { width: 100%; }	/* Reset 100% for opera */\n\n* html ul.topiclist li { position: relative; }\n* html .postbody h3 img { vertical-align: middle; }\n\n/* Form styles */\nhtml>body dd label input { vertical-align: text-bottom; }	/* Align checkboxes/radio buttons nicely */\n\n* html input.button1, * html input.button2 {\n	padding-bottom: 0;\n	margin-bottom: 1px;\n}\n\n/* Misc layout styles */\n* html .column1, * html .column2 { width: 45%; }\n\n/* Nice method for clearing floated blocks without having to insert any extra markup (like spacer above)\n   From http://www.positioniseverything.net/easyclearing.html \n#tabs:after, #minitabs:after, .post:after, .navbar:after, fieldset dl:after, ul.topiclist dl:after, ul.linklist:after, dl.polls:after {\n	content: "."; \n	display: block; \n	height: 0; \n	clear: both; \n	visibility: hidden;\n}*/\n\n.clearfix, #tabs, #minitabs, fieldset dl, ul.topiclist dl, dl.polls {\n	height: 1%;\n	overflow: hidden;\n}\n\n/* viewtopic fix */\n* html .post {\n	height: 25%;\n	overflow: hidden;\n}\n\n/* navbar fix */\n* html .clearfix, * html .navbar, ul.linklist {\n	height: 4%;\n	overflow: hidden;\n}\n\n/* Simple fix so forum and topic lists always have a min-height set, even in IE6\n	From http://www.dustindiaz.com/min-height-fast-hack */\ndl.icon {\n	min-height: 35px;\n	height: auto !important;\n	height: 35px;\n}\n\n* html li.row dl.icon dt {\n	height: 35px;\n	overflow: visible;\n}\n\n* html #search-box {\n	width: 25%;\n}\n\n/* Correctly clear floating for details on profile view */\n*:first-child+html dl.details dd {\n	margin-left: 30%;\n	float: none;\n}\n\n* html dl.details dd {\n	margin-left: 30%;\n	float: none;\n}\n\n* html .forumbg table.table1 {\n	margin: 0 -2px 0px -1px;\n}\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for common.css\n-------------------------------------------------------------- */\n\nhtml, body {\n	color: #000;\n}\n\nh1 {\n	color: #FFFFFF;\n}\n\nh2 {\n	color: #333333;\n}\n\nh3 {\n	border-bottom-color: #CCCCCC;\n	color: #000;\n}\n\nhr {\n	border-color: #FFFFFF;\n	border-top-color: #CCCCCC;\n}\n\nhr.dashed {\n	border-top-color: #CCCCCC;\n}\n\n/* Main blocks\n---------------------------------------- */\n#page-body {\n	background-color: #fff;\n        border: 1px solid #bdbdbd;\n        border-bottom: none;\n	min-height: 68px;\n}\n\n/* Site description and logo */\n#site-description {\n	background-image: url("{T_THEME_PATH}/images/site_logo.jpg");\n}\n\n/* Search box\n--------------------------------------------- */\n\n#search-box {\n	color: #FFFFFF;\n}\n\n#search-box #keywords {\n	background-color: transparent;\n}\n\n/* Round cornered boxes and backgrounds\n---------------------------------------- */\n.headerbar {\n	background-color: transparent;\n	color: #FFFFFF;\n}\n\n.forabg {\n	background: url("{T_THEME_PATH}/images/bg_list.png") no-repeat 0 0;\n}\n\n.forumbg {\n	background: url("{T_THEME_PATH}/images/bg_list2.png") no-repeat 0 0;\n}\n\n.panel {\n	background-color: #ccc;\n	color: #000;\n}\n\n.panel h2 {\n	color: #333333;\n}\n\n.post:target .content {\n	color: #000000;\n}\n\n.post:target h3 a {\n	color: #000000;\n}\n\n.bg1	{ background-color: #ccc; }\n.bg2	{ background-color: #BDBCBC;  }\n.bg3	{ background-color: #ccc; }\n\n.ucprowbg {\n	background-color: #DCDEE2;\n}\n\n.fieldsbg {\n	background-color: #E7E8EA;\n}\n\nspan.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\n}\n\nspan.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\n}\n\nspan.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left.png");\n}\n\nspan.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.png");\n}\n\n/* Horizontal lists\n----------------------------------------*/\n\nul.navlinks {\n	border-bottom-color: #FFFFFF;\n}\n\n/* Table styles\n----------------------------------------*/\ntable.table1 thead th {\n	color: #FFFFFF;\n	padding-top: 10px;\n}\n\ntable.table1 tbody tr {\n	border-color: transparent;\n}\n\ntable.table1 tbody tr:hover, table.table1 tbody tr.hover {\n	background-color: #ebebeb;\n	color: #000;\n}\n\ntable.table1 td {\n	color: #333;\n}\n\ntable.table1 tbody td {\n	border-top-color: #FAFAFA;\n}\n\ntable.table1 tbody th {\n	border-bottom-color: #000000;\n	color: #333333;\n	background-color: #FFFFFF;\n}\n\ntable.info tbody th {\n	color: #000000;\n}\n\n/* Misc layout styles\n---------------------------------------- */\ndl.details dt {\n	color: #000000;\n}\n\ndl.details dd {\n	color: #333;\n}\n\n.sep {\n	color: #1198D9;\n}\n\n/* Pagination\n---------------------------------------- */\n\n.pagination span strong {\n	color: #FFFFFF;\n	background-color: #66cc00;\n	border-color: #ccc;\n}\n\n.pagination span a, .pagination span a:link, .pagination span a:visited, .pagination span a:active {\n	color: #5C758C;\n	background-color: #ECEDEE;\n	border-color: #B4BAC0;\n}\n\n.pagination span a:hover {\n	border-color: #66cc00;\n	background-color: #66cc00;\n	color: #FFF;\n}\n\n/* Pagination in viewforum for multipage topics */\n.row .pagination {\n	background-image: url("{T_THEME_PATH}/images/icon_pages.gif");\n}\n\n.row .pagination span a, li.pagination span a {\n	background-color: #FFFFFF;\n}\n\n.row .pagination span a:hover, li.pagination span a:hover {\n	background-color: #66cc00;\n}\n\n/* Miscellaneous styles\n---------------------------------------- */\n\n#copyright a {\n	font-weight: bold;\n}\n\n#copyright a:visited {\n	font-weight: bold;\n}\n\n#copyright a:active {\n	font-weight: bold;\n}\n\n.error {\n	color: #BC2A4D;\n}\n\n.reported {\n	background-color: #94D1F4;\n}\n\nli.reported:hover {\n	background-color: #52BCF9 !important;\n}\n.sticky, .announce {\n	/* you can add a background for stickies and announcements*/\n}\n\ndiv.rules {\n	background-color: #ccc;\n	color: #000;\n}\n\np.rules {\n	background-color: #ccc;\n	background-image: none;\n}\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for links.css\n-------------------------------------------------------------- */\n\na:link	{ color: #000; }\na:visited	{ color: #000; }\na:hover	{ color: #7e0b0b; }\na:active	{ color: #7e0b0b; }\n\n/* Links on gradient backgrounds */\n.navbg a:link, .forumbg .header a:link, .navbar a, .forabg .header a:link, th a:link {\n	color: #FFFFFF;\n}\n\n#search-box a:visited, .navbg a:visited, .forumbg .header a:visited, .navbar a:visited, .forabg .header a:visited, th a:visited {\n	color: #000000;\n}\n\n#search-box a:hover, .navbg a:hover, .forumbg .header a:hover, .navbar a:hover, .forabg .header a:hover, th a:hover {\n	color: #000;\n}\n\n#search-box a:active, .navbg a:active, .forumbg .header a:active, .forabg .header a:active, .navbar a:active, th a:active {\n	color: #C8E6FF;\n}\n\n/* Links for forum/topic lists */\na.forumtitle {\n	color: #66cc00;\n}\n\n/* a.forumtitle:visited { color: #105289; } */\n\na.forumtitle:hover {\n	color: #ccc;\n}\n\na.forumtitle:active {\n	color: #66cc00;\n}\n\na.topictitle {\n	color: #66cc00;\n}\n\n/* a.topictitle:visited { color: #000; } */\n\na.topictitle:hover {\n	color: #ccc;\n}\n\na.topictitle:active {\n	color: #66cc00;\n}\n\n/* Post body links */\n.postlink {\n	color: #66cc00;\n	border-bottom-color: #7e0b0b;\n}\n\n.postlink:visited {\n	color: #66cc00;\n	border-bottom-color: #666666;\n}\n\n.postlink:active {\n	color: #66cc00;\n}\n\n.postlink:hover {\n	background-color: #D0E4F6;\n	color: #0D4473;\n}\n\n.signature a, .signature a:visited, .signature a:active, .signature a:hover {\n	background-color: transparent;\n}\n\n/* Profile links */\n.postprofile a:link, .postprofile a:active, .postprofile a:visited, .postprofile dt.author a {\n	color: #000;\n}\n\n.postprofile a:hover, .postprofile dt.author a:hover {\n	color: #D31141;\n}\n\n/* Profile searchresults */	\n.search .postprofile a {\n	color: #105289;\n}\n\n.search .postprofile a:hover {\n	color: #D31141;\n}\n\n/* Back to top of page */\na.top {\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\n}\n\na.top2 {\n	background-image: url("{IMG_ICON_BACK_TOP_SRC}");\n}\n\n/* Arrow links  */\na.up		{ background-image: url("{T_THEME_PATH}/images/arrow_up.gif") }\na.down		{ background-image: url("{T_THEME_PATH}/images/arrow_down.gif") }\na.left		{ background-image: url("{T_THEME_PATH}/images/arrow_left.gif") }\na.right		{ background-image: url("{T_THEME_PATH}/images/arrow_right.gif") }\n\na.up:hover {\n	background-color: transparent;\n}\n\na.left:hover {\n	color: #7e0b0b;\n}\n\na.right:hover {\n	color: #7e0b0b;\n}\n\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for content.css\n-------------------------------------------------------------- */\n\nul.forums {\n	background-color: #D6D6D6;\n}\n\nul.topiclist li {\n	color: #333;\n}\n\nul.topiclist dd {\n	border-left-color: #FFFFFF;\n}\n\n.rtl ul.topiclist dd {\n	border-right-color: #fff;\n	border-left-color: transparent;\n}\n\nul.topiclist li.row dt a.subforum.read {\n	background-image: url("{IMG_SUBFORUM_READ_SRC}");\n}\n\nul.topiclist li.row dt a.subforum.unread {\n	background-image: url("{IMG_SUBFORUM_UNREAD_SRC}");\n}\n\nli.row {\n	border-color: #ebebeb;\n}\n\nli.row strong {\n	color: #000000;\n}\n\nli.row:hover {\n	background-color: #fafafa;\n}\n\nli.row:hover dd {\n	border-left-color: #CCCCCC;\n}\n\n.rtl li.row:hover dd {\n	border-right-color: #CCCCCC;\n	border-left-color: transparent;\n}\n\nli.header dt, li.header dd {\n	color: #FFFFFF;\n}\n\n/* Forum list column styles */\nul.topiclist dd.searchextra {\n	color: #333333;\n}\n\n/* Post body styles\n----------------------------------------*/\n.postbody {\n	color: #333333;\n}\n\n/* Content container styles\n----------------------------------------*/\n.content {\n	color: #333333;\n}\n\n.content h2, .panel h2 {\n	color: #333333;\n	border-bottom-color:  #CCCCCC;\n}\n\ndl.faq dt {\n	color: #333333;\n}\n\n.posthilit {\n	background-color: #F3BFCC;\n	color: #66cc00;\n}\n\n/* Post signature */\n.signature {\n	border-top-color: #fff;\n}\n\n/* Post noticies */\n.notice {\n	border-top-color:  #CCCCCC;\n}\n\n/* BB Code styles\n----------------------------------------*/\n/* Quote block */\nblockquote {\n	background-color: #EBEADD;\n	background-image: url("{T_THEME_PATH}/images/quote.gif");\n	border-color:#DBDBCE;\n}\n\n.rtl blockquote {\n	background-image: url("{T_THEME_PATH}/images/quote_rtl.gif");\n}\n\nblockquote blockquote {\n	/* Nested quotes */\n	background-color:#EFEED9;\n}\n\nblockquote blockquote blockquote {\n	/* Nested quotes */\n	background-color: #EBEADD;\n}\n\n/* Code block */\ndl.codebox {\n	background-color: #FFFFFF;\n	border-color: #C9D2D8;\n}\n\ndl.codebox dt {\n	border-bottom-color:  #CCCCCC;\n}\n\ndl.codebox code {\n	color: #2E8B57;\n}\n\n.syntaxbg		{ color: #FFFFFF; }\n.syntaxcomment	{ color: #FF8000; }\n.syntaxdefault	{ color: #0000BB; }\n.syntaxhtml		{ color: #000000; }\n.syntaxkeyword	{ color: #007700; }\n.syntaxstring	{ color: #DD0000; }\n\n/* Attachments\n----------------------------------------*/\n.attachbox {\n	background-color: #FFFFFF;\n	border-color:  #C9D2D8;\n}\n\n.pm-message .attachbox {\n	background-color: #F2F3F3;\n}\n\n.attachbox dd {\n	border-top-color: #C9D2D8;\n}\n\n.attachbox p {\n	color: #666666;\n}\n\n.attachbox p.stats {\n	color: #666666;\n}\n\n.attach-image img {\n	border-color: #999999;\n}\n\n/* Inline image thumbnails */\n\ndl.file dd {\n	color: #666666;\n}\n\ndl.thumbnail img {\n	border-color: #666666;\n	background-color: #FFFFFF;\n}\n\ndl.thumbnail dd {\n	color: #666666;\n}\n\ndl.thumbnail dt a:hover {\n	background-color: #EEEEEE;\n}\n\ndl.thumbnail dt a:hover img {\n	border-color: #7e0b0b;\n}\n\n/* Post poll styles\n----------------------------------------*/\n\nfieldset.polls dl {\n	border-top-color: #DCDEE2;\n	color: #666666;\n}\n\nfieldset.polls dl.voted {\n	color: #000000;\n}\n\nfieldset.polls dd div {\n	color: #FFFFFF;\n}\n\n.rtl .pollbar1, .rtl .pollbar2, .rtl .pollbar3, .rtl .pollbar4, .rtl .pollbar5 {\n	border-right-color: transparent;\n}\n\n.pollbar1 {\n	background-color: #AA2346;\n	border-bottom-color: #74162C;\n	border-right-color: #74162C;\n}\n\n.rtl .pollbar1 {\n	border-left-color: #74162C;\n}\n\n.pollbar2 {\n	background-color: #BE1E4A;\n	border-bottom-color: #8C1C38;\n	border-right-color: #8C1C38;\n}\n\n.rtl .pollbar2 {\n	border-left-color: #8C1C38;\n}\n\n.pollbar3 {\n	background-color: #D11A4E;\n	border-bottom-color: #AA2346;\n	border-right-color: #AA2346;\n}\n\n.rtl .pollbar3 {\n	border-left-color: #AA2346;\n}\n\n.pollbar4 {\n	background-color: #E41653;\n	border-bottom-color: #BE1E4A;\n	border-right-color: #BE1E4A;\n}\n\n.rtl .pollbar4 {\n	border-left-color: #BE1E4A;\n}\n\n.pollbar5 {\n	background-color: #F81157;\n	border-bottom-color: #D11A4E;\n	border-right-color: #D11A4E;\n}\n\n.rtl .pollbar5 {\n	border-left-color: #D11A4E;\n}\n\n/* Poster profile block\n----------------------------------------*/\n.postprofile {\n	color: #666666;\n	border-left-color: #FFFFFF;\n}\n\n.rtl .postprofile {\n	border-right-color: #FFFFFF;\n	border-left-color: transparent;\n}\n\n.pm .postprofile {\n	border-left-color: #DDDDDD;\n}\n\n.rtl .pm .postprofile {\n	border-right-color: #DDDDDD;\n	border-left-color: transparent;\n}\n\n.postprofile strong {\n	color: #000000;\n}\n\n.online {\n	background-image: url("{T_IMAGESET_LANG_PATH}/icon_user_online.gif");\n}\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for buttons.css\n-------------------------------------------------------------- */\n\n/* Big button images */\n.reply-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_REPLY_SRC}"); }\n.post-icon span		{ background-image: url("{IMG_BUTTON_TOPIC_NEW_SRC}"); }\n.locked-icon span	{ background-image: url("{IMG_BUTTON_TOPIC_LOCKED_SRC}"); }\n.pmreply-icon span	{ background-image: url("{IMG_BUTTON_PM_REPLY_SRC}") ;}\n.newpm-icon span 	{ background-image: url("{IMG_BUTTON_PM_NEW_SRC}") ;}\n.forwardpm-icon span	{ background-image: url("{IMG_BUTTON_PM_FORWARD_SRC}") ;}\n\na.print {\n	background-image: url("{T_THEME_PATH}/images/icon_print.png");\n}\n\na.sendemail {\n	background-image: url("{T_THEME_PATH}/images/icon_sendemail.png");\n}\n\na.fontsize {\n	background-image: url("{T_THEME_PATH}/images/icon_fontsize.png");\n}\n\n/* Icon images\n---------------------------------------- */\n.sitehome						{ background-image: url("{T_THEME_PATH}/images/icon_home.png"); }\n.icon-home						{ background-image: url("{T_THEME_PATH}/images/icon_home.png"); }\n.icon-bookmark					{ background-image: url("{T_THEME_PATH}/images/icon_bookmark.png"); }\n.icon-bump						{ background-image: url("{T_THEME_PATH}/images/icon_bump.png"); }\n.icon-subscribe					{ background-image: url("{T_THEME_PATH}/images/icon_subscribe.png"); }\n.icon-unsubscribe				{ background-image: url("{T_THEME_PATH}/images/icon_unsubscribe.png"); }\n.icon-pages						{ background-image: url("{T_THEME_PATH}/images/icon_pages.gif"); }\n.icon-search					{ background-image: url("{T_THEME_PATH}/images/icon_search.gif"); }\n\n/* Profile & navigation icons */\n.email-icon, .email-icon a		{ background-image: url("{IMG_ICON_CONTACT_EMAIL_SRC}"); }\n.aim-icon, .aim-icon a			{ background-image: url("{IMG_ICON_CONTACT_AIM_SRC}"); }\n.yahoo-icon, .yahoo-icon a		{ background-image: url("{IMG_ICON_CONTACT_YAHOO_SRC}"); }\n.web-icon, .web-icon a			{ background-image: url("{IMG_ICON_CONTACT_WWW_SRC}"); }\n.msnm-icon, .msnm-icon a			{ background-image: url("{IMG_ICON_CONTACT_MSNM_SRC}"); }\n.icq-icon, .icq-icon a			{ background-image: url("{IMG_ICON_CONTACT_ICQ_SRC}"); }\n.jabber-icon, .jabber-icon a		{ background-image: url("{IMG_ICON_CONTACT_JABBER_SRC}"); }\n.pm-icon, .pm-icon a				{ background-image: url("{IMG_ICON_CONTACT_PM_SRC}"); }\n.quote-icon, .quote-icon a		{ background-image: url("{IMG_ICON_POST_QUOTE_SRC}"); }\n\n/* Moderator icons */\n.report-icon, .report-icon a		{ background-image: url("{IMG_ICON_POST_REPORT_SRC}"); }\n.edit-icon, .edit-icon a			{ background-image: url("{IMG_ICON_POST_EDIT_SRC}"); }\n.delete-icon, .delete-icon a		{ background-image: url("{IMG_ICON_POST_DELETE_SRC}"); }\n.info-icon, .info-icon a			{ background-image: url("{IMG_ICON_POST_INFO_SRC}"); }\n.warn-icon, .warn-icon a			{ background-image: url("{IMG_ICON_USER_WARN_SRC}"); } /* Need updated warn icon */\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for cp.css\n-------------------------------------------------------------- */\n\n/* Main CP box\n----------------------------------------*/\n\n#cp-main h3, #cp-main hr, #cp-menu hr {\n	border-color: #000;\n}\n\n#cp-main .panel li.row {\n	border-bottom-color: #B5C1CB;\n	border-top-color: #F9F9F9;\n}\n\nul.cplist {\n	border-top-color: #B5C1CB;\n}\n\n#cp-main .panel li.header dd, #cp-main .panel li.header dt {\n	color: #000000;\n}\n\n#cp-main table.table1 thead th {\n	color: #333333;\n	border-bottom-color: #333333;\n}\n\n#cp-main .pm-message {\n	border-color: #DBDEE2;\n	background-color: #fff;\n}\n\n/* CP tabbed menu\n----------------------------------------*/\n#tabs a {\n	background-image: url("{T_THEME_PATH}/images/bg_tabs1.gif");\n}\n\n#tabs a span {\n	background-image: url("{T_THEME_PATH}/images/bg_tabs2.gif");\n	color: #000;\n}\n\n#tabs a:hover span {\n	color: #BC2A4D;\n}\n\n#tabs .activetab a {\n	border-bottom-color: #c6c6c6;\n}\n\n#tabs .activetab a span {\n	color: #66cc00;\n}\n\n#tabs .activetab a:hover span {\n	color: #000000;\n}\n\n/* Mini tabbed menu used in MCP\n----------------------------------------*/\n#minitabs li {\n	background-color: #ebebeb;\n}\n\n#minitabs li.activetab {\n	background-color: #F9F9F9;\n}\n\n#minitabs li.activetab a, #minitabs li.activetab a:hover {\n	color: #333333;\n}\n\n/* UCP navigation menu\n----------------------------------------*/\n\n/* Link styles for the sub-section links */\n#navigation a {\n	color: #333;\n	background-color: #fff;\n	background-image: url("{T_THEME_PATH}/images/bg_menu.gif");\n}\n\n.rtl #navigation a {\n	background-image: url("{T_THEME_PATH}/images/bg_menu_rtl.gif");\n	background-position: 0 100%;\n}\n\n#navigation a:hover {\n	background-color: #E5E5E5;\n	color: #BC2A4D;\n}\n\n#navigation #active-subsection a {\n	color: #D31141;\n	background-color: #ebebeb;\n	background-image: none;\n}\n\n#navigation #active-subsection a:hover {\n	color: #D31141;\n}\n\n/* Preferences pane layout\n----------------------------------------*/\n#cp-main h2 {\n	color: #333333;\n}\n\n#cp-main .panel {\n	background-color: #ebebeb;\n}\n\n#cp-main .pm {\n	background-color: #ebebeb;\n}\n\n#cp-main span.corners-top, #cp-menu span.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\n}\n\n#cp-main span.corners-top span, #cp-menu span.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\n}\n\n#cp-main span.corners-bottom, #cp-menu span.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left2.gif");\n}\n\n#cp-main span.corners-bottom span, #cp-menu span.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right2.gif");\n}\n\n/* Topicreview */\n#cp-main .panel #topicreview span.corners-top, #cp-menu .panel #topicreview span.corners-top {\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\n}\n\n#cp-main .panel #topicreview span.corners-top span, #cp-menu .panel #topicreview span.corners-top span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\n}\n\n#cp-main .panel #topicreview span.corners-bottom, #cp-menu .panel #topicreview span.corners-bottom {\n	background-image: url("{T_THEME_PATH}/images/corners_left.gif");\n}\n\n#cp-main .panel #topicreview span.corners-bottom span, #cp-menu .panel #topicreview span.corners-bottom span {\n	background-image: url("{T_THEME_PATH}/images/corners_right.gif");\n}\n\n/* Friends list */\n.cp-mini {\n	background-color: #ebebeb;\n}\n\ndl.mini dt {\n	color: #425067;\n}\n\n/* PM Styles\n----------------------------------------*/\n/* PM Message history */\n.current {\n	color: #000000 !important;\n}\n\n/* PM panel adjustments */\n.pm-panel-header,\n#cp-main .pm-message-nav {\n	border-bottom-color: #A4B3BF;\n}\n\n/* PM marking colours */\n.pmlist li.pm_message_reported_colour, .pm_message_reported_colour {\n	border-left-color: #BC2A4D;\n	border-right-color: #BC2A4D;\n}\n\n.pmlist li.pm_marked_colour, .pm_marked_colour {\n	border-color: #FF6600;\n}\n\n.pmlist li.pm_replied_colour, .pm_replied_colour {\n	border-color: #A9B8C2;\n}\n\n.pmlist li.pm_friend_colour, .pm_friend_colour {\n	border-color: #9a0000;\n}\n\n.pmlist li.pm_foe_colour, .pm_foe_colour {\n	border-color: #000000;\n}\n\n/* Avatar gallery */\n#gallery label {\n	background-color: #FFFFFF;\n	border-color: #CCC;\n}\n\n#gallery label:hover {\n	background-color: #EEE;\n}\n\n/*  	\n--------------------------------------------------------------\nColours and backgrounds for forms.css\n-------------------------------------------------------------- */\n\n/* General form styles\n----------------------------------------*/\nselect {\n	border-color: #666666;\n	background-color: #FAFAFA;\n	color: #000;\n}\n\nlabel {\n	color: #425067;\n}\n\noption.disabled-option {\n	color: graytext;\n}\n\n/* Definition list layout for forms\n---------------------------------------- */\ndd label {\n	color: #333;\n}\n\n/* Hover effects */\nfieldset dl:hover dt label {\n	color: #000000;\n}\n\nfieldset.fields2 dl:hover dt label {\n	color: inherit;\n}\n\n/* Quick-login on index page */\nfieldset.quick-login input.inputbox {\n	background-color: #F2F3F3;\n}\n\n/* Posting page styles\n----------------------------------------*/\n\n#message-box textarea {\n	color: #333333;\n}\n\n/* Input field styles\n---------------------------------------- */\n.inputbox {\n	background-color: #FFFFFF; \n	border-color: #B4BAC0;\n	color: #333333;\n}\n\n.inputbox:hover {\n	border-color: #66cc00;\n}\n\n.inputbox:focus {\n	border-color: #66cc00;\n	color: #0F4987;\n}\n\n/* Form button styles\n---------------------------------------- */\na.button1, input.button1, input.button3, a.button2 {\n	color: #000;\n	background-color: #FAFAFA;\n	background-image: url("{T_THEME_PATH}/images/bg_button.gif");\n}\n\na.button1, input.button1 {\n	border-color: #666666;\n}\n\ninput.button2 {\n	background-color: transparent;\n	background-image: none;\n	border-color: #fff;\n}\n\ninput.button3 {\n	background-image: none;\n}\n\n/* Alternative button */\na.button2, input.button2, input.button3 {\n	border-color: #fff;\n}\n\n/* <a> button in the style of the form buttons */\na.button1, a.button1:link, a.button1:visited, a.button1:active, a.button2, a.button2:link, a.button2:visited, a.button2:active {\n	color: #fff;\n}\n\n/* Hover states */\na.button1:hover, input.button1:hover, a.button2:hover, input.button2:hover, input.button3:hover {\n	border-color: #66cc00;\n	color: #66cc00;\n}\n\ninput.disabled {\n	color: #666666;\n}\n/*--HEADER--*/\n\n#header {\n	width: 850px;\n	margin-top: 25px;\n}\n\n#header ul {\n	list-style-type: none;\n}\n\n#header ul li {\n	float:left; \n	display: block;\n	font-size: 1.1em; \n	font-weight: bold; \n	text-transform: uppercase; \n	text-align : center;\n	line-height: 30px;\n}\n\n#header ul li a {\n	width: 92px; \n	height: 30px; \n	display: block; \n	background: url("{T_THEME_PATH}/images/bg_inactive.gif") 0 0 no-repeat; \n	color: #FDFDFD;  \n	text-decoration: none; \n	text-align: center; \n}\n\n#header ul li a:hover {\n	background: url("{T_THEME_PATH}/images/bg_active.gif") 0 0 no-repeat; \n	color: #1A1917;\n}\n\n#header ul li.inactive {\n	margin: 0 0 0 1px;\n}\n\n#header ul li.active {\n	width: 92px; \n	height: 30px; \n	display: block; \n	background: url("{T_THEME_PATH}/images/bg_active.gif") 0 0 no-repeat #FDFDFD; \n	color: #1A1917; \n	text-align: center;\n}\n\n#nav_icons_login {   \n	margin-top: 10px;\n	margin-left: 5%;\n        min-height: 85px;\n}\n\n#nav_icons_logout {  \n	margin-top: 10px;\n	margin-left: 22%;\n}\n\n#icon_index, #icon_memberl, #icon_pms, #icon_faqq, #icon_ucpro, #icon_6, #icon_log, #icon_regist, #icon_restore, #icon_self, #icon_ulist, #icon_ucreate, #icon_uedit {\n	width: 100px; \n	height: 95px; \n	float: left; \n	margin: 0 10px 0 0; \n}\n\n#icon_index a, #icon_memberl a, #icon_pms a, #icon_faqq a, #icon_ucpro a, #icon_log a, #icon_regist a, #icon_restore a, #icon_self a, #icon_ulist a, #icon_ucreate a, #icon_uedit a {\n	text-decoration: none; \n	display: block; \n	width: 87px; \n	height: 95px;\n	color: #fff;\n	font-size: 1.2em;\n	letter-spacing: -0.1em;\n	padding-left: 7px;\n	padding-right: 8px;\n	font-weight: bold;\n	background-position: 0 0;\n}\n\n#icon_index a:hover, #icon_memberl a:hover, #icon_pms a:hover, #icon_faqq a:hover, #icon_ucpro a:hover,\n#icon_log a:hover, #icon_regist a:hover, #icon_restore a:hover, #icon_self a:hover, #icon_ulist a:hover, #icon_ucreate a:hover, #icon_uedit a:hover {\n	background-position: 0 -95px;\n}\n\n#icon_index a { \n	background: url("{T_THEME_PATH}/images/icon_index.png") 0 0 no-repeat;\n}\n\n#icon_ulist a {\n	background: url("{T_THEME_PATH}/images/icon_ulist.png") 0 0 no-repeat;\n}\n\n#icon_ucreate a {\n	background: url("{T_THEME_PATH}/images/icon_ucreate.png") 0 0 no-repeat;\n}\n\n#icon_uedit a {\n	background: url("{T_THEME_PATH}/images/icon_uedit.png") 0 0 no-repeat;\n}\n\n#icon_memberl a {\n	background: url("{T_THEME_PATH}/images/icon_memberl.png") 0 0 no-repeat; \n}\n\n#icon_pms a {\n	background: url("{T_THEME_PATH}/images/icon_pms.png") 0 0 no-repeat;\n}\n\n#icon_faqq a {\n	background: url("{T_THEME_PATH}/images/icon_faqq.png") 0 0 no-repeat;\n}\n\n#icon_ucpro a {\n	background: url("{T_THEME_PATH}/images/icon_ucpro.png") 0 0 no-repeat;\n}\n\n#icon_log a {\n	background: url("{T_THEME_PATH}/images/icon_log.png") 0 0 no-repeat;\n}\n\n#icon_regist a {\n	background: url("{T_THEME_PATH}/images/icon_regist.png") 0 0 no-repeat;\n}\n\n#icon_restore a {\n	background: url("{T_THEME_PATH}/images/icon_restore.png") 0 0 no-repeat;\n}\n\n#icon_self a {\n	background: url("{T_THEME_PATH}/images/icon_self.png") 0 0 no-repeat;\n}\n\n.gohst-space {\n	display: block; \n	height: 4px; \n	clear: both;\n}\n\n/*--FORUM--*/\nli.smally a {\n	font-size: 11px;\n	letter-spacing: -0.1em\n}\n\n.smally {\n	font-size: 11px;\n	letter-spacing: -0.1em\n}\n\nul.forums {\n	border-right: 1px solid #A8A39D;\n	border-bottom: 1px solid #A8A39D;\n	border-left: 1px solid #A8A39D;\n}\n\n*ul.forums {\n	margin-top: 1px;\n}\n\nul.topics {\n	border-right: 1px solid #A8A39D;\n	border-bottom: 1px solid #A8A39D;\n	border-left: 1px solid #A8A39D;\n}\n\n*ul.topics {\n	margin-top: 2px;\n}\n\n.pm-panel-message	{ margin: 0; }\n.pm-panel-message ul.profile-icons li.edit-icon	{ margin: -11px 3px 0 3px; }\n.pm-panel-message ul.profile-icons li.quote-icon	{ margin: -11px 0 0 3px; }\n.pm-panel-message ul.profile-icons li.info-icon, .pm-panel-message ul.profile-icons li.report-icon, \n.pm-panel-message ul.profile-icons li.delete-icon, .pm-panel-message ul.profile-icons li.warn-icon { margin: -10px 3px 0 0; }\n\n/*--FOOTER--*/\n#bottom_body {\n	background-color: #fff;\n        border: 1px solid #bdbdbd;\n        border-top: none;\n	width: 848px;\n	height: 42px;\n	margin-bottom: 5px;\n	min-height: 47px;\n}\n\n/* utakara style */\n\nul.topiclist dt.utitle {\n	width : 25%;\n}\n\nul.topiclist li.header dt.utitle {\n	padding-right:0px;\n}\n\n.uorigin {\n	width : 25%;\n}\n\n.udate {\n	width : 10%;\n}\n\n.ugrade {\n	width : 8%;\n}\n\n.uaccept {\n	width : 10%;\n}\n\n.uedit {\n	width : 8%;\n}\n\n.udelete {\n	width : 8%;\n}');

-- --------------------------------------------------------

--
-- Table structure for table `uta_topics`
--

CREATE TABLE IF NOT EXISTS `uta_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_approved` (`topic_approved`),
  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uta_topics`
--

INSERT INTO `uta_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_approved`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_replies`, `topic_replies_real`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`) VALUES
(1, 2, 0, 0, 1, 0, 'Welcome to phpBB3', 2, 1272966744, 0, 10, 0, 0, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Welcome to phpBB3', 1272966744, 1279108838, 0, 0, 0, '', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_topics_posted`
--

CREATE TABLE IF NOT EXISTS `uta_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_topics_posted`
--

INSERT INTO `uta_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uta_topics_track`
--

CREATE TABLE IF NOT EXISTS `uta_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_topics_track`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_topics_watch`
--

CREATE TABLE IF NOT EXISTS `uta_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_topics_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_users`
--

CREATE TABLE IF NOT EXISTS `uta_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=54 ;

--
-- Dumping data for table `uta_users`
--

INSERT INTO `uta_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dst`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000003khra3nk\ni1cjyo000000\ni1cjyo000000', 0, '', 1272966744, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'd M Y H:i', 3, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11147da550afcde3', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0xs\ni1cjyo000000\nzik0zjzhb2tc', 0, '127.0.0.1', 1272966744, 'admin', 'admin', '$H$98vc1DXy7q44uORu0akgH2Q8BXxNzB/', 0, 0, 'yohdono27@gmail.com', -6389778719, '', 1279133523, 0, 0, 'adm/index.php?i=21', '', 1278694554, 0, 0, 0, 0, 0, 1, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd059fb510690d4a7', 1, 0, 0),
(3, 2, 6, '', 0, '', 1272966749, 'AdsBot [Google]', 'adsbot [google]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8331354d3aee3cbe', 0, 0, 0),
(4, 2, 6, '', 0, '', 1272966749, 'Alexa [Bot]', 'alexa [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ccb5364b00d3f979', 0, 0, 0),
(5, 2, 6, '', 0, '', 1272966749, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '47663d7c367ff533', 0, 0, 0),
(6, 2, 6, '', 0, '', 1272966749, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c06e8e0356bafece', 0, 0, 0),
(7, 2, 6, '', 0, '', 1272966749, 'Baidu [Spider]', 'baidu [spider]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '92379e56552ff6ef', 0, 0, 0),
(8, 2, 6, '', 0, '', 1272966749, 'Exabot [Bot]', 'exabot [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2c92ee25a85ed42e', 0, 0, 0),
(9, 2, 6, '', 0, '', 1272966749, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f92100733a7b68fe', 0, 0, 0),
(10, 2, 6, '', 0, '', 1272966749, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bf508c38d22d4894', 0, 0, 0),
(11, 2, 6, '', 0, '', 1272966749, 'Francis [Bot]', 'francis [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '78b2c319d9817168', 0, 0, 0),
(12, 2, 6, '', 0, '', 1272966749, 'Gigabot [Bot]', 'gigabot [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0592f262d99a967a', 0, 0, 0),
(13, 2, 6, '', 0, '', 1272966749, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9d00ee3f7003d3be', 0, 0, 0),
(14, 2, 6, '', 0, '', 1272966749, 'Google Desktop', 'google desktop', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b5d1c07b5612fcbb', 0, 0, 0),
(15, 2, 6, '', 0, '', 1272966749, 'Google Feedfetcher', 'google feedfetcher', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0f8f098c17e7fc96', 0, 0, 0),
(16, 2, 6, '', 0, '', 1272966749, 'Google [Bot]', 'google [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a6e59bda47938141', 0, 0, 0),
(17, 2, 6, '', 0, '', 1272966749, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5c86d16fd60e5928', 0, 0, 0),
(18, 2, 6, '', 0, '', 1272966749, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '08c11393aaac6014', 0, 0, 0),
(19, 2, 6, '', 0, '', 1272966749, 'IBM Research [Bot]', 'ibm research [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0ae71174e9a13e07', 0, 0, 0),
(20, 2, 6, '', 0, '', 1272966749, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '58917ffb8d250566', 0, 0, 0),
(21, 2, 6, '', 0, '', 1272966749, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '39da0b0b79d19c0e', 0, 0, 0),
(22, 2, 6, '', 0, '', 1272966749, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '69ebf716f33a481a', 0, 0, 0),
(23, 2, 6, '', 0, '', 1272966749, 'Metager [Bot]', 'metager [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b1806e1ebed7cb52', 0, 0, 0),
(24, 2, 6, '', 0, '', 1272966749, 'MSN NewsBlogs', 'msn newsblogs', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ff8ffb7077b4350f', 0, 0, 0),
(25, 2, 6, '', 0, '', 1272966749, 'MSN [Bot]', 'msn [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '37fd1dd28ec85601', 0, 0, 0),
(26, 2, 6, '', 0, '', 1272966749, 'MSNbot Media', 'msnbot media', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cbd6dc2c76e9215c', 0, 0, 0),
(27, 2, 6, '', 0, '', 1272966749, 'NG-Search [Bot]', 'ng-search [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8eccb60fc2fe1fa8', 0, 0, 0),
(28, 2, 6, '', 0, '', 1272966749, 'Nutch [Bot]', 'nutch [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '14dc7cb270b21efc', 0, 0, 0),
(29, 2, 6, '', 0, '', 1272966749, 'Nutch/CVS [Bot]', 'nutch/cvs [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ce9c20a8997f5221', 0, 0, 0),
(30, 2, 6, '', 0, '', 1272966749, 'OmniExplorer [Bot]', 'omniexplorer [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ba68e0059c565580', 0, 0, 0),
(31, 2, 6, '', 0, '', 1272966749, 'Online link [Validator]', 'online link [validator]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1bc8b2618d832328', 0, 0, 0),
(32, 2, 6, '', 0, '', 1272966749, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '13edd106a3b76c36', 0, 0, 0),
(33, 2, 6, '', 0, '', 1272966749, 'Seekport [Bot]', 'seekport [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3ed225831450e31a', 0, 0, 0),
(34, 2, 6, '', 0, '', 1272966749, 'Sensis [Crawler]', 'sensis [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'acc0b74143c927ae', 0, 0, 0),
(35, 2, 6, '', 0, '', 1272966749, 'SEO Crawler', 'seo crawler', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '57ebb02b0bb2d713', 0, 0, 0),
(36, 2, 6, '', 0, '', 1272966749, 'Seoma [Crawler]', 'seoma [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'bed79ed8d35fa06f', 0, 0, 0),
(37, 2, 6, '', 0, '', 1272966749, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9c072b909db38c94', 0, 0, 0),
(38, 2, 6, '', 0, '', 1272966749, 'Snappy [Bot]', 'snappy [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ac7d2a796f1ca279', 0, 0, 0),
(39, 2, 6, '', 0, '', 1272966749, 'Steeler [Crawler]', 'steeler [crawler]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2a0851f15d2846b9', 0, 0, 0),
(40, 2, 6, '', 0, '', 1272966749, 'Synoo [Bot]', 'synoo [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e633c787d5228d76', 0, 0, 0),
(41, 2, 6, '', 0, '', 1272966749, 'Telekom [Bot]', 'telekom [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0e7ccc187dcf801c', 0, 0, 0),
(42, 2, 6, '', 0, '', 1272966749, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2bda050add15a7aa', 0, 0, 0),
(43, 2, 6, '', 0, '', 1272966749, 'Voyager [Bot]', 'voyager [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f71649a2ce6c78a1', 0, 0, 0),
(44, 2, 6, '', 0, '', 1272966749, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5e540ef27d81ab00', 0, 0, 0),
(45, 2, 6, '', 0, '', 1272966749, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '41bf3038b717f5e5', 0, 0, 0),
(46, 2, 6, '', 0, '', 1272966749, 'W3C [Validator]', 'w3c [validator]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f9fcbe7ed0559e43', 0, 0, 0),
(47, 2, 6, '', 0, '', 1272966749, 'WiseNut [Bot]', 'wisenut [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7987308b816d0b4b', 0, 0, 0),
(48, 2, 6, '', 0, '', 1272966749, 'YaCy [Bot]', 'yacy [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6ee3b5b7aabfd29e', 0, 0, 0),
(49, 2, 6, '', 0, '', 1272966749, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '774f87e9819dc8c7', 0, 0, 0),
(50, 2, 6, '', 0, '', 1272966749, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1272966749, 0, '', 0, '', 0, 1272966749, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9c9ee2e15fd05a55', 0, 0, 0),
(51, 2, 6, '', 0, '', 1272966749, 'Yahoo [Bot]', 'yahoo [bot]', '', 1272966750, 0, '', 0, '', 0, 1272966750, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3fb97cdc097efb9c', 0, 0, 0),
(52, 2, 6, '', 0, '', 1272966750, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1272966750, 0, '', 0, '', 0, 1272966750, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '0.00', 0, 'D M d, Y g:i a', 3, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd0dea1e669598da5', 0, 0, 0),
(53, 2, 3, '', 0, '', 0, 'yoh', '', '$H$98vc1DXy7q44uORu0akgH2Q8BXxNzB/', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, '', '0.00', 0, 'd M Y H:i', 0, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_user_group`
--

CREATE TABLE IF NOT EXISTS `uta_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_user_group`
--

INSERT INTO `uta_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(6, 48, 0, 0),
(6, 49, 0, 0),
(6, 50, 0, 0),
(6, 51, 0, 0),
(6, 52, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uta_warnings`
--

CREATE TABLE IF NOT EXISTS `uta_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_warnings`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_words`
--

CREATE TABLE IF NOT EXISTS `uta_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uta_words`
--


-- --------------------------------------------------------

--
-- Table structure for table `uta_zebra`
--

CREATE TABLE IF NOT EXISTS `uta_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `uta_zebra`
--

