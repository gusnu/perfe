# ************************************************************
# Sequel Pro SQL dump
# Versión 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Base de datos: perfe
# Tiempo de Generación: 2016-08-22 9:39:59 p.m. +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_commentmeta`;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_comments`;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'Señor WordPress','','https://wordpress.org/','','2016-07-26 21:23:40','2016-07-26 21:23:40','Hola, esto es un comentario.\nPara eliminar un comentario sólo inicie sesión debe y vea los comentarios de la entrada. Allí tendrá la opción de editar o eliminarlos.',0,'post-trashed','','',0,0);

/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_links`;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_options`;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://perfe-wp','yes'),
	(2,'home','http://perfe-wp','yes'),
	(3,'blogname','Perfe Studio','yes'),
	(4,'blogdescription','','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','gustavoadolfonunez@gmail.com','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','F j, Y','yes'),
	(24,'time_format','g:i a','yes'),
	(25,'links_updated_date_format','F j, Y g:i a','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:133:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:19:\"pagina-de-inicio/?$\";s:27:\"index.php?post_type=project\";s:49:\"pagina-de-inicio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:44:\"pagina-de-inicio/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:36:\"pagina-de-inicio/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"post_grid/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"post_grid/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"post_grid/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"post_grid/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"post_grid/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"post_grid/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"post_grid/([^/]+)/embed/?$\";s:42:\"index.php?post_grid=$matches[1]&embed=true\";s:30:\"post_grid/([^/]+)/trackback/?$\";s:36:\"index.php?post_grid=$matches[1]&tb=1\";s:38:\"post_grid/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?post_grid=$matches[1]&paged=$matches[2]\";s:45:\"post_grid/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?post_grid=$matches[1]&cpage=$matches[2]\";s:34:\"post_grid/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?post_grid=$matches[1]&page=$matches[2]\";s:26:\"post_grid/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"post_grid/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"post_grid/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"post_grid/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"post_grid/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"post_grid/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"pagina-de-inicio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project-category=$matches[1]&feed=$matches[2]\";s:52:\"pagina-de-inicio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project-category=$matches[1]&feed=$matches[2]\";s:33:\"pagina-de-inicio/([^/]+)/embed/?$\";s:49:\"index.php?project-category=$matches[1]&embed=true\";s:45:\"pagina-de-inicio/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project-category=$matches[1]&paged=$matches[2]\";s:27:\"pagina-de-inicio/([^/]+)/?$\";s:38:\"index.php?project-category=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:3:{i:0;s:23:\"post-grid/post-grid.php\";i:1;s:34:\"projects-by-woothemes/projects.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','a:2:{i:0;s:70:\"/Users/Gustavo/GitHub/wordpress/wp-content/plugins/akismet/akismet.php\";i:1;s:0:\"\";}','no'),
	(40,'template','perfe','yes'),
	(41,'stylesheet','perfe','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','37965','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),
	(81,'uninstall_plugins','a:1:{s:23:\"portfolio/portfolio.php\";s:22:\"prtfl_plugin_uninstall\";}','no'),
	(82,'timezone_string','','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','0','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'initial_db_version','36686','yes'),
	(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'WPLANG','es_CL','yes'),
	(94,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'cron','a:4:{i:1471944220;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1471983497;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1471987434;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(139,'_transient_twentysixteen_categories','1','yes'),
	(194,'current_theme','','yes'),
	(195,'theme_mods_perfe','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"navegation\";i:2;}}','yes'),
	(196,'theme_switched','','yes'),
	(207,'theme_mods_twentysixteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1470775567;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),
	(208,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(229,'category_children','a:0:{}','yes'),
	(247,'recently_activated','a:2:{s:29:\"wp-post-grid/wp-post-grid.php\";i:1471466389;s:23:\"portfolio/portfolio.php\";i:1471037532;}','yes'),
	(252,'projects-version','1.5.0','yes'),
	(253,'widget_projects','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(254,'widget_woothemes-project-categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(256,'project-category_children','a:0:{}','yes'),
	(257,'projects-pages-fields','a:1:{s:16:\"projects_page_id\";i:8;}','yes'),
	(272,'projects-images-fields','a:3:{s:15:\"project-archive\";a:3:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"crop\";s:2:\"no\";}s:14:\"project-single\";a:3:{s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:4:\"crop\";s:2:\"no\";}s:17:\"project-thumbnail\";a:3:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"crop\";s:2:\"no\";}}','yes'),
	(292,'_site_transient_timeout_browser_e8c12107d072a476eb340cc45332b98b','1471988278','yes'),
	(293,'_site_transient_browser_e8c12107d072a476eb340cc45332b98b','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"52.0.2743.116\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),
	(295,'db_upgraded','','yes'),
	(298,'can_compress_scripts','1','no'),
	(299,'_site_transient_timeout_wordpress_credits_es_CL','1471470165','no'),
	(300,'_site_transient_wordpress_credits_es_CL','a:2:{s:6:\"groups\";a:8:{s:15:\"project-leaders\";a:4:{s:4:\"name\";s:15:\"Project Leaders\";s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:1;s:4:\"data\";a:6:{s:4:\"matt\";a:4:{i:0;s:14:\"Matt Mullenweg\";i:1;s:32:\"767fc9c115a1b989744c755db47feb60\";i:2;s:4:\"matt\";i:3;s:23:\"Cofounder, Project Lead\";}s:5:\"nacin\";a:4:{i:0;s:12:\"Andrew Nacin\";i:1;s:32:\"01cfe9feaafb068590891bbd1f6a7f5a\";i:2;s:5:\"nacin\";i:3;s:14:\"Lead Developer\";}s:11:\"markjaquith\";a:4:{i:0;s:12:\"Mark Jaquith\";i:1;s:32:\"097a87a525e317519b5ee124820012fb\";i:2;s:11:\"markjaquith\";i:3;s:14:\"Lead Developer\";}s:6:\"azaozz\";a:4:{i:0;s:10:\"Andrew Ozz\";i:1;s:32:\"4e84843ebff0918d72ade21c6ee7b1e4\";i:2;s:6:\"azaozz\";i:3;s:14:\"Lead Developer\";}s:5:\"helen\";a:4:{i:0;s:16:\"Helen Hou-Sandí\";i:1;s:32:\"6506162ada6b700b151ad8a187f65842\";i:2;s:5:\"helen\";i:3;s:14:\"Lead Developer\";}s:4:\"dd32\";a:4:{i:0;s:10:\"Dion Hulse\";i:1;s:32:\"4af2825655b46fb1206b08d9041d8e3e\";i:2;s:4:\"dd32\";i:3;s:14:\"Lead Developer\";}}}s:15:\"core-developers\";a:4:{s:4:\"name\";s:23:\"Contributing Developers\";s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:0;s:4:\"data\";a:12:{s:7:\"ocean90\";a:4:{i:0;s:17:\"Dominik Schilling\";i:1;s:32:\"3e8e161d97d793bd8fc2dcd62583bb76\";i:2;s:7:\"ocean90\";i:3;s:12:\"Release Lead\";}s:14:\"voldemortensen\";a:4:{i:0;s:15:\"Garth Mortensen\";i:1;s:32:\"bf598c52859e3206644b485e181ecb3a\";i:2;s:14:\"voldemortensen\";i:3;s:14:\"Release Deputy\";}s:6:\"jorbin\";a:4:{i:0;s:12:\"Aaron Jorbin\";i:1;s:32:\"b3e2b94eb305bf95a1bee11bc7705fb7\";i:2;s:6:\"jorbin\";i:3;s:14:\"Core Developer\";}s:12:\"boonebgorges\";a:4:{i:0;s:15:\"Boone B. Gorges\";i:1;s:32:\"9cf7c4541a582729a5fc7ae484786c0c\";i:2;s:12:\"boonebgorges\";i:3;s:14:\"Core Developer\";}s:12:\"DrewAPicture\";a:4:{i:0;s:11:\"Drew Jaynes\";i:1;s:32:\"95c934fa2c3362794bf62ff8c59ada08\";i:2;s:12:\"DrewAPicture\";i:3;s:14:\"Core Developer\";}s:7:\"iseulde\";a:4:{i:0;s:22:\"Ella Iseulde Van Dorpe\";i:1;s:32:\"1a847a68778b8344b6aa106a8861984f\";i:2;s:7:\"iseulde\";i:3;s:14:\"Core Developer\";}s:5:\"pento\";a:4:{i:0;s:15:\"Gary Pendergast\";i:1;s:32:\"1ad9e5c98d81c6815a65dab5b6e1f669\";i:2;s:5:\"pento\";i:3;s:14:\"Core Developer\";}s:10:\"jeremyfelt\";a:4:{i:0;s:11:\"Jeremy Felt\";i:1;s:32:\"d1759b1c669981b7c52ec9a97d19e6bd\";i:2;s:10:\"jeremyfelt\";i:3;s:14:\"Core Developer\";}s:11:\"johnbillion\";a:4:{i:0;s:15:\"John Blackbourn\";i:1;s:32:\"0000ba6dd1b089e1746abbfe6281ee3b\";i:2;s:11:\"johnbillion\";i:3;s:14:\"Core Developer\";}s:14:\"wonderboymusic\";a:4:{i:0;s:12:\"Scott Taylor\";i:1;s:32:\"112ca15732a80bb928c52caec9d2c8dd\";i:2;s:14:\"wonderboymusic\";i:3;s:14:\"Core Developer\";}s:14:\"SergeyBiryukov\";a:4:{i:0;s:15:\"Sergey Biryukov\";i:1;s:32:\"750b7b0fcd855389264c2b1294d61bd6\";i:2;s:14:\"SergeyBiryukov\";i:3;s:14:\"Core Developer\";}s:11:\"westonruter\";a:4:{i:0;s:12:\"Weston Ruter\";i:1;s:32:\"22ed378fbf1d918ef43a45b2a1f34634\";i:2;s:11:\"westonruter\";i:3;s:14:\"Core Developer\";}}}s:23:\"contributing-developers\";a:4:{s:4:\"name\";b:0;s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:1;s:4:\"data\";a:15:{s:12:\"mikeschroder\";a:4:{i:0;s:13:\"Mike Schroder\";i:1;s:32:\"76424a001dc6b3ebb4faca0c567800c4\";i:2;s:12:\"mikeschroder\";i:3;s:0:\"\";}s:8:\"obenland\";a:4:{i:0;s:19:\"Konstantin Obenland\";i:1;s:32:\"2370ea5912750f4cb0f3c51ae1cbca55\";i:2;s:8:\"obenland\";i:3;s:0:\"\";}s:7:\"afercia\";a:4:{i:0;s:13:\"Andrea Fercia\";i:1;s:32:\"074af62ea5ff218b6a6eeab89104f616\";i:2;s:7:\"afercia\";i:3;s:0:\"\";}s:6:\"rmccue\";a:4:{i:0;s:10:\"Ryan McCue\";i:1;s:32:\"08818120f223035a0857c2a0ec417f93\";i:2;s:6:\"rmccue\";i:3;s:0:\"\";}s:10:\"karmatosed\";a:4:{i:0;s:13:\"Tammie Lister\";i:1;s:32:\"ca7d4273a689cdbf524d8332771bb1ca\";i:2;s:10:\"karmatosed\";i:3;s:0:\"\";}s:10:\"swissspidy\";a:4:{i:0;s:15:\"Pascal Birchler\";i:1;s:32:\"609d6ee54dc13a51270cb99769535b82\";i:2;s:10:\"swissspidy\";i:3;s:0:\"\";}s:11:\"rachelbaker\";a:4:{i:0;s:12:\"Rachel Baker\";i:1;s:32:\"634b37a53babc18a5bda19722d5b41a3\";i:2;s:11:\"rachelbaker\";i:3;s:0:\"\";}s:8:\"joehoyle\";a:4:{i:0;s:9:\"Joe Hoyle\";i:1;s:32:\"0ceb885cc3d306af93c9764b2936d618\";i:2;s:8:\"joehoyle\";i:3;s:0:\"\";}s:9:\"ericlewis\";a:4:{i:0;s:17:\"Eric Andrew Lewis\";i:1;s:32:\"7e524cf1c5e8d108658899a497dc4bd4\";i:2;s:9:\"ericlewis\";i:3;s:0:\"\";}s:9:\"joemcgill\";a:4:{i:0;s:10:\"Joe McGill\";i:1;s:32:\"7cef1c9108207ec24db7a40f142db676\";i:2;s:9:\"joemcgill\";i:3;s:0:\"\";}s:13:\"peterwilsoncc\";a:4:{i:0;s:12:\"Peter Wilson\";i:1;s:32:\"1dd9fded718f9b344d48f37f9bfcb159\";i:2;s:13:\"peterwilsoncc\";i:3;s:0:\"\";}s:9:\"kovshenin\";a:4:{i:0;s:20:\"Konstantin Kovshenin\";i:1;s:32:\"8585b20b69e8ff4b0ba737accfdbb31b\";i:2;s:9:\"kovshenin\";i:3;s:0:\"\";}s:14:\"michaelarestad\";a:4:{i:0;s:15:\"Michael Arestad\";i:1;s:32:\"e8b4c8470f61ff15b9c98f7a1556c16b\";i:2;s:14:\"michaelarestad\";i:3;s:0:\"\";}s:9:\"melchoyce\";a:4:{i:0;s:10:\"Mel Choyce\";i:1;s:32:\"ed4f856405e64c1492839d2bf4913baa\";i:2;s:9:\"melchoyce\";i:3;s:0:\"\";}s:15:\"adamsilverstein\";a:4:{i:0;s:16:\"Adam Silverstein\";i:1;s:32:\"fddbd6c3e1c3d971aa732b9346aeb433\";i:2;s:15:\"adamsilverstein\";i:3;s:0:\"\";}}}s:16:\"recent-rockstars\";a:4:{s:4:\"name\";b:0;s:4:\"type\";s:6:\"titles\";s:7:\"shuffle\";b:1;s:4:\"data\";a:8:{s:8:\"flixos90\";a:4:{i:0;s:11:\"Felix Arntz\";i:1;s:32:\"55035b4301c3710ff0fc65d7231af18d\";i:2;s:8:\"flixos90\";i:3;s:0:\"\";}s:9:\"hugobaeta\";a:4:{i:0;s:10:\"Hugo Baeta\";i:1;s:32:\"0218e99cde7283d859ea46a21e744319\";i:2;s:9:\"hugobaeta\";i:3;s:0:\"\";}s:7:\"afragen\";a:4:{i:0;s:11:\"Andy Fragen\";i:1;s:32:\"0355aa5eef5115d6e6befa7fbe16dc4c\";i:2;s:7:\"afragen\";i:3;s:0:\"\";}s:5:\"ramiy\";a:4:{i:0;s:14:\"Rami Yushuvaev\";i:1;s:32:\"ce2a269e424156d79cb0c4e1d4d82db1\";i:2;s:5:\"ramiy\";i:3;s:0:\"\";}s:12:\"spacedmonkey\";a:4:{i:0;s:12:\"Jonny Harris\";i:1;s:32:\"061dae59ebf801552726985eb808306e\";i:2;s:12:\"spacedmonkey\";i:3;s:0:\"\";}s:12:\"rianrietveld\";a:4:{i:0;s:14:\"Rian Rietveld \";i:1;s:32:\"54b6a8a47f9d6f1a93f33be5909c59a5\";i:2;s:12:\"rianrietveld\";i:3;s:0:\"\";}s:4:\"mapk\";a:4:{i:0;s:11:\"Mark Uraine\";i:1;s:32:\"ddec3a334a9333761e1e6dfb227e976f\";i:2;s:4:\"mapk\";i:3;s:0:\"\";}s:10:\"mattmiklic\";a:4:{i:0;s:11:\"Matt Miklic\";i:1;s:32:\"78c17142720e599ad7919c541124749e\";i:2;s:10:\"mattmiklic\";i:3;s:0:\"\";}}}s:5:\"props\";a:4:{s:4:\"name\";s:33:\"Core Contributors to WordPress %s\";s:12:\"placeholders\";a:1:{i:0;s:3:\"4.6\";}s:4:\"type\";s:4:\"list\";s:4:\"data\";a:233:{s:10:\"a5hleyrich\";s:10:\"A5hleyRich\";s:6:\"achbed\";s:6:\"achbed\";s:10:\"adamsoucie\";s:11:\"Adam Soucie\";s:20:\"adrianosilvaferreira\";s:16:\"Adriano Ferreira\";s:8:\"afineman\";s:8:\"afineman\";s:12:\"mrahmadawais\";s:11:\"Ahmad Awais\";s:5:\"aidvu\";s:5:\"aidvu\";s:12:\"akibjorklund\";s:18:\"Aki Bj&#246;rklund\";s:6:\"xknown\";s:11:\"Alex Concha\";s:7:\"xavortm\";s:13:\"Alex Dimitrov\";s:11:\"alexkingorg\";s:9:\"Alex King\";s:12:\"viper007bond\";s:25:\"Alex Mills (Viper007Bond)\";s:14:\"alexvandervegt\";s:14:\"alexvandervegt\";s:8:\"ambrosey\";s:12:\"Alice Brosey\";s:6:\"aaires\";s:9:\"Ana Aires\";s:4:\"andg\";s:14:\"Andrea Gandino\";s:10:\"rockwell15\";s:15:\"Andrew Rockwell\";s:7:\"andizer\";s:14:\"Andy Meerwaldt\";s:4:\"andy\";s:12:\"Andy Skelton\";s:10:\"anilbasnet\";s:11:\"Anil Basnet\";s:13:\"ankit-k-gupta\";s:13:\"Ankit K Gupta\";s:11:\"anneschmidt\";s:11:\"anneschmidt\";s:5:\"zuige\";s:15:\"Antti Kuosmanen\";s:5:\"ideag\";s:13:\"Arunas Liuiza\";s:5:\"barry\";s:5:\"Barry\";s:11:\"barryceelen\";s:12:\"Barry Ceelen\";s:8:\"bassgang\";s:8:\"bassgang\";s:7:\"kau-boy\";s:12:\"Bernhard Kau\";s:7:\"birgire\";s:27:\"Birgir Erlendsson (birgire)\";s:11:\"bobbingwide\";s:11:\"bobbingwide\";s:5:\"bradt\";s:14:\"Brad Touesnard\";s:7:\"kraftbj\";s:13:\"Brandon Kraft\";s:8:\"brianvan\";s:8:\"brianvan\";s:11:\"borgesbruno\";s:12:\"Bruno Borges\";s:6:\"bpetty\";s:11:\"Bryan Petty\";s:7:\"purcebr\";s:13:\"Bryan Purcell\";s:12:\"chandrapatel\";s:13:\"Chandra Patel\";s:6:\"chouby\";s:6:\"Chouby\";s:9:\"chriscct7\";s:27:\"Chris Christoff (chriscct7)\";s:9:\"chris_dev\";s:9:\"Chris Mok\";s:10:\"c3mdigital\";s:14:\"Chris Olbekson\";s:6:\"cfinke\";s:17:\"Christopher Finke\";s:13:\"christophherr\";s:13:\"christophherr\";s:9:\"cliffseal\";s:10:\"Cliff Seal\";s:9:\"clubduece\";s:9:\"clubduece\";s:10:\"cmillerdev\";s:10:\"cmillerdev\";s:13:\"craig-ralston\";s:13:\"Craig Ralston\";s:7:\"crstauf\";s:7:\"crstauf\";s:8:\"dabnpits\";s:8:\"dabnpits\";s:15:\"danielbachhuber\";s:16:\"Daniel Bachhuber\";s:5:\"mte90\";s:21:\"Daniele Scasciafratte\";s:13:\"danielhuesken\";s:18:\"Daniel H&#252;sken\";s:9:\"dashaluna\";s:9:\"dashaluna\";s:10:\"davewarfel\";s:10:\"davewarfel\";s:13:\"davidakennedy\";s:16:\"David A. Kennedy\";s:13:\"davidanderson\";s:14:\"David Anderson\";s:14:\"dbrumbaugh10up\";s:15:\"David Brumbaugh\";s:7:\"dcavins\";s:12:\"David Cavins\";s:3:\"dlh\";s:13:\"David Herrera\";s:12:\"davidmosterd\";s:13:\"David Mosterd\";s:8:\"dshanske\";s:13:\"David Shanske\";s:12:\"valendesigns\";s:12:\"Derek Herman\";s:13:\"downstairsdev\";s:11:\"Devin Price\";s:12:\"dougwollison\";s:13:\"Doug Wollison\";s:5:\"elrae\";s:5:\"elrae\";s:8:\"ethitter\";s:12:\"Erick Hitter\";s:6:\"fab1en\";s:17:\"Fabien Quatravaux\";s:6:\"faison\";s:6:\"Faison\";s:8:\"flyingdr\";s:8:\"flyingdr\";s:11:\"foliovision\";s:11:\"FolioVision\";s:16:\"francescobagnoli\";s:16:\"francescobagnoli\";s:7:\"bueltge\";s:13:\"Frank Bueltge\";s:11:\"frank-klein\";s:11:\"Frank Klein\";s:6:\"efarem\";s:12:\"Frank Martin\";s:8:\"frozzare\";s:14:\"Fredrik Forsmo\";s:10:\"mintindeed\";s:12:\"Gabriel Koen\";s:6:\"gma992\";s:17:\"Gabriel Maldonado\";s:5:\"gblsm\";s:5:\"gblsm\";s:9:\"geekysoft\";s:14:\"Geeky Software\";s:15:\"georgestephanis\";s:16:\"George Stephanis\";s:13:\"hardeepasrani\";s:14:\"Hardeep Asrani\";s:11:\"henrywright\";s:12:\"Henry Wright\";s:12:\"polevaultweb\";s:12:\"Iain Poulson\";s:7:\"iandunn\";s:8:\"Ian Dunn\";s:7:\"igmoweb\";s:19:\"Ignacio Cruz Moreno\";s:5:\"imath\";s:5:\"imath\";s:12:\"inderpreet99\";s:16:\"Inderpreet Singh\";s:7:\"ipstenu\";s:22:\"Ipstenu (Mika Epstein)\";s:8:\"jdgrimes\";s:11:\"J.D. Grimes\";s:7:\"macmanx\";s:10:\"James Huff\";s:9:\"underdude\";s:31:\"Janne Ala-&#196;ij&#228;l&#228;\";s:14:\"jaspermdegroot\";s:15:\"Jasper de Groot\";s:9:\"javorszky\";s:9:\"javorszky\";s:11:\"jfarthing84\";s:13:\"Jeff Farthing\";s:9:\"cheffheid\";s:14:\"Jeffrey de Wit\";s:12:\"endocreative\";s:12:\"Jeremy Green\";s:7:\"jeherve\";s:12:\"Jeremy Herve\";s:12:\"jmichaelward\";s:11:\"Jeremy Ward\";s:14:\"jerrysarcastic\";s:28:\"Jerry Bates (jerrysarcastic)\";s:5:\"jesin\";s:7:\"Jesin A\";s:8:\"jipmoors\";s:9:\"Jip Moors\";s:7:\"jnylen0\";s:7:\"jnylen0\";s:9:\"joedolson\";s:10:\"Joe Dolson\";s:9:\"joelwills\";s:13:\"Joel Williams\";s:6:\"j-falk\";s:10:\"Johan Falk\";s:15:\"johnjamesjacoby\";s:17:\"John James Jacoby\";s:10:\"johnpgreen\";s:13:\"John P. Green\";s:12:\"john_schlick\";s:12:\"John_Schlick\";s:8:\"kenshino\";s:14:\"Jon (Kenshino)\";s:8:\"jbrinley\";s:16:\"Jonathan Brinley\";s:11:\"joostdevalk\";s:13:\"Joost de Valk\";s:11:\"josephscott\";s:12:\"Joseph Scott\";s:7:\"shelob9\";s:12:\"Josh Pollock\";s:13:\"joshuagoodwin\";s:14:\"Joshua Goodwin\";s:11:\"jpdavoutian\";s:11:\"jpdavoutian\";s:3:\"jrf\";s:3:\"jrf\";s:10:\"jsternberg\";s:10:\"jsternberg\";s:7:\"juanfra\";s:16:\"Juanfra Aldasoro\";s:6:\"juhise\";s:11:\"Juhi Saxena\";s:8:\"julesaus\";s:8:\"julesaus\";s:13:\"justinsainton\";s:14:\"Justin Sainton\";s:6:\"ryelle\";s:10:\"Kelly Dwan\";s:5:\"khag7\";s:13:\"Kevin Hagerty\";s:7:\"ixkaito\";s:4:\"Kite\";s:6:\"kjbenk\";s:6:\"kjbenk\";s:9:\"kurtpayne\";s:10:\"Kurt Payne\";s:9:\"offereins\";s:17:\"Laurens Offereins\";s:12:\"lukecavanagh\";s:13:\"Luke Cavanagh\";s:4:\"latz\";s:17:\"Lutz Schr&#246;er\";s:4:\"mpol\";s:10:\"Marcel Pol\";s:7:\"clorith\";s:22:\"Marius L. J. (Clorith)\";s:11:\"martinkrcho\";s:12:\"martin.krcho\";s:7:\"borkweb\";s:18:\"Matthew Batchelder\";s:8:\"mattyrob\";s:8:\"mattyrob\";s:7:\"wzislam\";s:14:\"Mayeenul Islam\";s:8:\"mdwheele\";s:8:\"mdwheele\";s:8:\"medariox\";s:8:\"medariox\";s:13:\"mehulkaklotar\";s:14:\"Mehul Kaklotar\";s:6:\"meitar\";s:6:\"Meitar\";s:15:\"michael-arestad\";s:15:\"Michael Arestad\";s:11:\"michaelbeil\";s:12:\"Michael Beil\";s:6:\"mbijon\";s:10:\"Mike Bijon\";s:12:\"mikehansenme\";s:11:\"Mike Hansen\";s:7:\"dimadin\";s:12:\"Milan Dinić\";s:11:\"morganestes\";s:12:\"Morgan Estes\";s:6:\"mt8biz\";s:22:\"moto hachi ( mt8.biz )\";s:6:\"m_uysl\";s:13:\"Mustafa Uysal\";s:10:\"nextendweb\";s:10:\"Nextendweb\";s:12:\"niallkennedy\";s:13:\"Niall Kennedy\";s:11:\"nicholas_io\";s:11:\"nicholas_io\";s:16:\"celloexpressions\";s:11:\"Nick Halsey\";s:10:\"nikschavan\";s:13:\"Nikhil Chavan\";s:8:\"rabmalin\";s:15:\"Nilambar Sharma\";s:9:\"ninos-ego\";s:5:\"Ninos\";s:9:\"alleynoah\";s:4:\"Noah\";s:15:\"noahsilverstein\";s:15:\"noahsilverstein\";s:11:\"odysseygate\";s:7:\"odyssey\";s:10:\"olarmarius\";s:11:\"Olar Marius\";s:7:\"ovann86\";s:7:\"ovann86\";s:9:\"pansotdev\";s:9:\"pansotdev\";s:7:\"pbearne\";s:11:\"Paul Bearne\";s:9:\"paulwilde\";s:10:\"Paul Wilde\";s:9:\"pavelevap\";s:9:\"pavelevap\";s:9:\"pcarvalho\";s:9:\"pcarvalho\";s:12:\"peterrknight\";s:12:\"PeterRKnight\";s:5:\"westi\";s:14:\"Peter Westwood\";s:5:\"walbo\";s:32:\"Petter Walb&#248; Johnsg&#229;rd\";s:5:\"petya\";s:15:\"Petya Raykovska\";s:8:\"wizzard_\";s:6:\"Pieter\";s:7:\"pollett\";s:7:\"Pollett\";s:14:\"postpostmodern\";s:14:\"postpostmodern\";s:9:\"presskopp\";s:9:\"Presskopp\";s:11:\"prettyboymp\";s:11:\"prettyboymp\";s:5:\"r-a-y\";s:5:\"r-a-y\";s:14:\"rafaelangeline\";s:14:\"rafaelangeline\";s:10:\"zetaraffix\";s:17:\"raffaella isidori\";s:15:\"rahulsprajapati\";s:15:\"Rahul Prajapati\";s:6:\"ojrask\";s:4:\"Rask\";s:11:\"iamfriendly\";s:12:\"Richard Tape\";s:14:\"littlerchicken\";s:13:\"Robin Cornett\";s:13:\"rodrigosprimo\";s:13:\"Rodrigo Primo\";s:7:\"ronalfy\";s:14:\"Ronald Huereca\";s:8:\"ruudjoyo\";s:9:\"Ruud Laan\";s:7:\"welcher\";s:12:\"Ryan Welcher\";s:5:\"soean\";s:16:\"S&#246;ren Wrede\";s:15:\"samantha-miller\";s:15:\"Samantha Miller\";s:12:\"solarissmoke\";s:10:\"Samir Shah\";s:7:\"rosso99\";s:10:\"Sara Rosso\";s:10:\"schlessera\";s:10:\"schlessera\";s:13:\"scottbasgaard\";s:14:\"Scott Basgaard\";s:11:\"sc0ttkclark\";s:20:\"Scott Kingsley Clark\";s:11:\"coffee2code\";s:12:\"Scott Reilly\";s:12:\"screamingdev\";s:12:\"screamingdev\";s:15:\"sebastianpisula\";s:16:\"Sebastian Pisula\";s:5:\"semil\";s:5:\"semil\";s:10:\"shahpranaf\";s:10:\"shahpranaf\";s:6:\"sidati\";s:6:\"Sidati\";s:11:\"neverything\";s:12:\"Silvan Hagen\";s:8:\"simonvik\";s:19:\"Simon Vikstr&#246;m\";s:11:\"sirjonathan\";s:11:\"sirjonathan\";s:9:\"smerriman\";s:9:\"smerriman\";s:6:\"southp\";s:6:\"southp\";s:8:\"metodiew\";s:15:\"Stanko Metodiev\";s:8:\"stephdau\";s:25:\"Stephane Daury (stephdau)\";s:8:\"coderste\";s:7:\"Stephen\";s:6:\"netweb\";s:13:\"Stephen Edgar\";s:13:\"stephenharris\";s:14:\"Stephen Harris\";s:11:\"stevenkword\";s:11:\"Steven Word\";s:6:\"stubgo\";s:6:\"stubgo\";s:5:\"sudar\";s:11:\"Sudar Muthu\";s:13:\"patilswapnilv\";s:16:\"Swapnil V. Patil\";s:9:\"tacoverdo\";s:16:\"Taco Verdonschot\";s:10:\"iamtakashi\";s:12:\"Takashi Irie\";s:8:\"tlovett1\";s:13:\"Taylor Lovett\";s:8:\"themiked\";s:8:\"theMikeD\";s:8:\"thomaswm\";s:8:\"thomaswm\";s:8:\"tfrommen\";s:16:\"Thorsten Frommen\";s:17:\"timothyblynjacobs\";s:14:\"Timothy Jacobs\";s:9:\"tloureiro\";s:9:\"tloureiro\";s:15:\"travisnorthcutt\";s:16:\"Travis Northcutt\";s:14:\"grapplerulrich\";s:6:\"Ulrich\";s:6:\"unyson\";s:6:\"Unyson\";s:11:\"szepeviktor\";s:17:\"Viktor Sz&#233;pe\";s:14:\"vishalkakadiya\";s:15:\"Vishal Kakadiya\";s:6:\"vortfu\";s:6:\"vortfu\";s:6:\"svovaf\";s:11:\"vovafeldman\";s:12:\"websupporter\";s:12:\"websupporter\";s:4:\"wpfo\";s:4:\"wpfo\";s:8:\"wp_smith\";s:8:\"wp_smith\";s:8:\"xavivars\";s:10:\"Xavi Ivars\";s:5:\"yoavf\";s:10:\"Yoav Farhi\";s:8:\"tollmanz\";s:12:\"Zack Tollman\";s:5:\"zakb8\";s:5:\"zakb8\";}}s:10:\"validators\";a:4:{s:4:\"name\";s:11:\"Translators\";s:4:\"type\";s:7:\"compact\";s:7:\"shuffle\";b:1;s:4:\"data\";a:2:{s:7:\"bredebs\";a:3:{i:0;s:7:\"BredeBS\";i:1;s:32:\"5b61310829e85d6424c3bde0f6ff7ee5\";i:2;s:7:\"bredebs\";}s:7:\"ejner69\";a:3:{i:0;s:11:\"Ejner Galaz\";i:1;s:32:\"3339bc23e67baab5577e9bd635aef537\";i:2;s:7:\"ejner69\";}}}s:11:\"translators\";a:3:{s:4:\"name\";b:0;s:4:\"type\";s:4:\"list\";s:4:\"data\";a:2:{s:6:\"tcattd\";s:7:\"Esteban\";s:5:\"monox\";s:5:\"monox\";}}s:9:\"libraries\";a:3:{s:4:\"name\";s:18:\"External Libraries\";s:4:\"type\";s:9:\"libraries\";s:4:\"data\";a:32:{i:0;a:2:{i:0;s:11:\"Backbone.js\";i:1;s:22:\"http://backbonejs.org/\";}i:1;a:2:{i:0;s:10:\"Class POP3\";i:1;s:24:\"http://squirrelmail.org/\";}i:2;a:2:{i:0;s:16:\"Color Animations\";i:1;s:32:\"http://plugins.jquery.com/color/\";}i:3;a:2:{i:0;s:8:\"getID3()\";i:1;s:30:\"http://getid3.sourceforge.net/\";}i:4;a:2:{i:0;s:15:\"Horde Text Diff\";i:1;s:22:\"http://pear.horde.org/\";}i:5;a:2:{i:0;s:11:\"hoverIntent\";i:1;s:57:\"http://cherne.net/brian/resources/jquery.hoverIntent.html\";}i:6;a:2:{i:0;s:13:\"imgAreaSelect\";i:1;s:42:\"http://odyniec.net/projects/imgareaselect/\";}i:7;a:2:{i:0;s:4:\"Iris\";i:1;s:34:\"https://github.com/Automattic/Iris\";}i:8;a:2:{i:0;s:6:\"jQuery\";i:1;s:18:\"http://jquery.com/\";}i:9;a:2:{i:0;s:9:\"jQuery UI\";i:1;s:20:\"http://jqueryui.com/\";}i:10;a:2:{i:0;s:14:\"jQuery Hotkeys\";i:1;s:41:\"https://github.com/tzuryby/jquery.hotkeys\";}i:11;a:2:{i:0;s:22:\"jQuery serializeObject\";i:1;s:49:\"http://benalman.com/projects/jquery-misc-plugins/\";}i:12;a:2:{i:0;s:12:\"jQuery.query\";i:1;s:39:\"http://plugins.jquery.com/query-object/\";}i:13;a:2:{i:0;s:14:\"jQuery.suggest\";i:1;s:41:\"http://plugins.jquery.com/project/suggest\";}i:14;a:2:{i:0;s:21:\"jQuery UI Touch Punch\";i:1;s:27:\"http://touchpunch.furf.com/\";}i:15;a:2:{i:0;s:5:\"json2\";i:1;s:43:\"https://github.com/douglascrockford/JSON-js\";}i:16;a:2:{i:0;s:7:\"Masonry\";i:1;s:28:\"http://masonry.desandro.com/\";}i:17;a:2:{i:0;s:15:\"MediaElement.js\";i:1;s:26:\"http://mediaelementjs.com/\";}i:18;a:2:{i:0;s:6:\"PclZip\";i:1;s:33:\"http://www.phpconcept.net/pclzip/\";}i:19;a:2:{i:0;s:6:\"PemFTP\";i:1;s:50:\"http://www.phpclasses.org/browse/package/1743.html\";}i:20;a:2:{i:0;s:6:\"phpass\";i:1;s:31:\"http://www.openwall.com/phpass/\";}i:21;a:2:{i:0;s:9:\"PHPMailer\";i:1;s:38:\"https://github.com/PHPMailer/PHPMailer\";}i:22;a:2:{i:0;s:8:\"Plupload\";i:1;s:24:\"http://www.plupload.com/\";}i:23;a:2:{i:0;s:13:\"random_compat\";i:1;s:42:\"https://github.com/paragonie/random_compat\";}i:24;a:2:{i:0;s:8:\"Requests\";i:1;s:31:\"http://requests.ryanmccue.info/\";}i:25;a:2:{i:0;s:9:\"SimplePie\";i:1;s:21:\"http://simplepie.org/\";}i:26;a:2:{i:0;s:27:\"The Incutio XML-RPC Library\";i:1;s:34:\"http://scripts.incutio.com/xmlrpc/\";}i:27;a:2:{i:0;s:8:\"Thickbox\";i:1;s:32:\"http://codylindley.com/thickbox/\";}i:28;a:2:{i:0;s:7:\"TinyMCE\";i:1;s:23:\"http://www.tinymce.com/\";}i:29;a:2:{i:0;s:7:\"Twemoji\";i:1;s:34:\"https://github.com/twitter/twemoji\";}i:30;a:2:{i:0;s:13:\"Underscore.js\";i:1;s:24:\"http://underscorejs.org/\";}i:31;a:2:{i:0;s:6:\"zxcvbn\";i:1;s:33:\"https://github.com/dropbox/zxcvbn\";}}}}s:4:\"data\";a:2:{s:8:\"profiles\";s:33:\"https://profiles.wordpress.org/%s\";s:7:\"version\";s:3:\"4.6\";}}','no'),
	(311,'_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a','1471476153','no'),
	(312,'_site_transient_poptags_40cd750bba9870f18aada2478b24840a','a:100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";s:4:\"5981\";}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"Post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";s:4:\"3695\";}s:6:\"plugin\";a:3:{s:4:\"name\";s:6:\"plugin\";s:4:\"slug\";s:6:\"plugin\";s:5:\"count\";s:4:\"3648\";}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";s:4:\"3163\";}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:4:\"2824\";}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";s:4:\"2439\";}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";s:4:\"2240\";}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";s:4:\"2110\";}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";s:4:\"2070\";}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";s:4:\"2060\";}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";s:4:\"2009\";}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";s:4:\"1949\";}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";s:4:\"1883\";}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";s:4:\"1814\";}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"Facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";s:4:\"1717\";}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";s:4:\"1600\";}s:9:\"wordpress\";a:3:{s:4:\"name\";s:9:\"wordpress\";s:4:\"slug\";s:9:\"wordpress\";s:5:\"count\";s:4:\"1559\";}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";s:4:\"1428\";}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";s:4:\"1337\";}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";s:4:\"1293\";}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";s:4:\"1252\";}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";s:4:\"1123\";}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";s:4:\"1110\";}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";s:4:\"1014\";}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";s:4:\"1009\";}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";s:4:\"1008\";}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";s:3:\"942\";}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";s:3:\"932\";}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";s:3:\"926\";}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";s:3:\"919\";}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"AJAX\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";s:3:\"919\";}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";s:3:\"862\";}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";s:3:\"849\";}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";s:3:\"807\";}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";s:3:\"800\";}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";s:3:\"794\";}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";s:3:\"777\";}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"Share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";s:3:\"771\";}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";s:3:\"767\";}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";s:3:\"766\";}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";s:3:\"755\";}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";s:3:\"749\";}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";s:3:\"721\";}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";s:3:\"716\";}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";s:3:\"702\";}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"CSS\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";s:3:\"699\";}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";s:3:\"697\";}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";s:3:\"697\";}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";s:3:\"693\";}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";s:3:\"679\";}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";s:3:\"667\";}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";s:3:\"648\";}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";s:3:\"625\";}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";s:3:\"625\";}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";s:3:\"616\";}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";s:3:\"606\";}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";s:3:\"603\";}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";s:3:\"601\";}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";s:3:\"598\";}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";s:3:\"590\";}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";s:3:\"586\";}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";s:3:\"575\";}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";s:3:\"573\";}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";s:3:\"562\";}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";s:3:\"562\";}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";s:3:\"546\";}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";s:3:\"543\";}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";s:3:\"540\";}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";s:3:\"526\";}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";s:3:\"525\";}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";s:3:\"520\";}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";s:3:\"518\";}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";s:3:\"518\";}s:7:\"picture\";a:3:{s:4:\"name\";s:7:\"picture\";s:4:\"slug\";s:7:\"picture\";s:5:\"count\";s:3:\"516\";}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";s:3:\"489\";}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";s:3:\"479\";}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";s:3:\"472\";}s:4:\"shop\";a:3:{s:4:\"name\";s:4:\"shop\";s:4:\"slug\";s:4:\"shop\";s:5:\"count\";s:3:\"472\";}s:8:\"pictures\";a:3:{s:4:\"name\";s:8:\"pictures\";s:4:\"slug\";s:8:\"pictures\";s:5:\"count\";s:3:\"464\";}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";s:3:\"461\";}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";s:3:\"453\";}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";s:3:\"446\";}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";s:3:\"441\";}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";s:3:\"435\";}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";s:3:\"428\";}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";s:3:\"428\";}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";s:3:\"426\";}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";s:3:\"425\";}s:5:\"flash\";a:3:{s:4:\"name\";s:5:\"flash\";s:4:\"slug\";s:5:\"flash\";s:5:\"count\";s:3:\"422\";}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"News\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";s:3:\"415\";}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";s:3:\"415\";}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";s:3:\"411\";}s:6:\"upload\";a:3:{s:4:\"name\";s:6:\"upload\";s:4:\"slug\";s:6:\"upload\";s:5:\"count\";s:3:\"408\";}s:9:\"thumbnail\";a:3:{s:4:\"name\";s:9:\"thumbnail\";s:4:\"slug\";s:9:\"thumbnail\";s:5:\"count\";s:3:\"407\";}s:7:\"sharing\";a:3:{s:4:\"name\";s:7:\"sharing\";s:4:\"slug\";s:7:\"sharing\";s:5:\"count\";s:3:\"406\";}s:6:\"paypal\";a:3:{s:4:\"name\";s:6:\"paypal\";s:4:\"slug\";s:6:\"paypal\";s:5:\"count\";s:3:\"406\";}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";s:3:\"405\";}s:7:\"profile\";a:3:{s:4:\"name\";s:7:\"profile\";s:4:\"slug\";s:7:\"profile\";s:5:\"count\";s:3:\"404\";}s:8:\"linkedin\";a:3:{s:4:\"name\";s:8:\"linkedin\";s:4:\"slug\";s:8:\"linkedin\";s:5:\"count\";s:3:\"401\";}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";s:3:\"401\";}}','no'),
	(315,'_transient_timeout_plugin_slugs','1471552804','no'),
	(316,'_transient_plugin_slugs','a:6:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:23:\"post-grid/post-grid.php\";i:3;s:34:\"projects-by-woothemes/projects.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:29:\"wp-post-grid/wp-post-grid.php\";}','no'),
	(317,'tc_grid_type','6_3','yes'),
	(318,'tc_num_grid','3','yes'),
	(319,'tc_grid1','{\"type\":1}','yes'),
	(320,'tc_grid1_image-align','','yes'),
	(321,'tc_grid2','{\"type\":1}','yes'),
	(322,'tc_grid2_image-align','2','yes'),
	(323,'tc_grid3','{\"type\":1}','yes'),
	(324,'tc_grid3_image-align','2','yes'),
	(325,'tc_grid4','','yes'),
	(326,'tc_grid4_image-align','','yes'),
	(340,'post_grid_layout_content','a:6:{s:4:\"flat\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:86:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:66:\"display: block;font-size: 12px;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:82:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}}s:11:\"flat-center\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:84:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}s:10:\"flat-right\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:87:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:67:\"display: block;font-size: 12px;padding: 5px 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:83:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}}s:9:\"flat-left\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:86:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:66:\"display: block;font-size: 12px;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:82:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}}s:15:\"wc-center-price\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:4:{s:3:\"key\";s:13:\"wc_full_price\";s:4:\"name\";s:5:\"Price\";s:3:\"css\";s:122:\"background:#f9b013;color:#fff;display: inline-block;font-size: 20px;line-height:normal;padding: 0 17px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}s:14:\"wc-center-cart\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:4:{s:3:\"key\";s:10:\"wc_gallery\";s:4:\"name\";s:11:\"Add to Cart\";s:3:\"css\";s:103:\"color:#555;display: inline-block;font-size: 13px;line-height:normal;padding: 0 17px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}}','yes'),
	(341,'post_grid_upgrade','done','yes'),
	(365,'_site_transient_timeout_theme_roots','1471902842','no'),
	(366,'_site_transient_theme_roots','a:4:{s:5:\"perfe\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no'),
	(368,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.6.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.6.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"4.6\";s:7:\"version\";s:3:\"4.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1471901046;s:15:\"version_checked\";s:3:\"4.6\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"4.6\";s:7:\"updated\";s:19:\"2016-08-17 22:11:44\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.6/es_CL.zip\";s:10:\"autoupdate\";b:1;}}}','no'),
	(369,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1471901050;s:7:\"checked\";a:4:{s:5:\"perfe\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.5\";s:14:\"twentyfourteen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.2\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.6.zip\";}s:14:\"twentyfourteen\";a:4:{s:5:\"theme\";s:14:\"twentyfourteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentyfourteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentyfourteen.1.8.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2015-09-28 17:48:20\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.5/es_CL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentyfourteen\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2015-10-26 20:00:34\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentyfourteen/1.7/es_CL.zip\";s:10:\"autoupdate\";b:1;}}}','no'),
	(370,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1471901048;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"2.2.6\";s:7:\"updated\";s:19:\"2015-12-10 14:36:04\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/2.2.6/es_CL.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"3.1.11\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:23:\"post-grid/post-grid.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"57538\";s:4:\"slug\";s:9:\"post-grid\";s:6:\"plugin\";s:23:\"post-grid/post-grid.php\";s:11:\"new_version\";s:6:\"2.0.10\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/post-grid/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/post-grid.zip\";}s:34:\"projects-by-woothemes/projects.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"47727\";s:4:\"slug\";s:21:\"projects-by-woothemes\";s:6:\"plugin\";s:34:\"projects-by-woothemes/projects.php\";s:11:\"new_version\";s:5:\"1.5.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/projects-by-woothemes/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/projects-by-woothemes.1.5.0.zip\";s:14:\"upgrade_notice\";s:74:\"Fixes projects page not loading - please resave permalinks after updating!\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"4437\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.2.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";}s:29:\"wp-post-grid/wp-post-grid.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"65954\";s:4:\"slug\";s:12:\"wp-post-grid\";s:6:\"plugin\";s:29:\"wp-post-grid/wp-post-grid.php\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-post-grid/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-post-grid.1.1.0.zip\";}}}','no');

/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,4,'_edit_last','1'),
	(5,4,'_edit_lock','1470687373:1'),
	(6,4,'_wp_trash_meta_status','publish'),
	(7,4,'_wp_trash_meta_time','1470687518'),
	(8,4,'_wp_desired_post_slug','hola'),
	(9,1,'_wp_trash_meta_status','publish'),
	(10,1,'_wp_trash_meta_time','1470687520'),
	(11,1,'_wp_desired_post_slug','hola-mundo'),
	(12,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}'),
	(13,8,'_edit_last','1'),
	(14,8,'_edit_lock','1471466603:1'),
	(15,10,'_edit_last','1'),
	(16,10,'_edit_lock','1471465353:1'),
	(17,2,'_wp_trash_meta_status','publish'),
	(18,2,'_wp_trash_meta_time','1470775134'),
	(19,2,'_wp_desired_post_slug','pagina-de-ejemplo'),
	(20,13,'_menu_item_type','post_type'),
	(21,13,'_menu_item_menu_item_parent','0'),
	(22,13,'_menu_item_object_id','8'),
	(23,13,'_menu_item_object','page'),
	(24,13,'_menu_item_target',''),
	(25,13,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(26,13,'_menu_item_xfn',''),
	(27,13,'_menu_item_url',''),
	(28,13,'_menu_item_orphaned','1470775583'),
	(29,14,'_menu_item_type','post_type'),
	(30,14,'_menu_item_menu_item_parent','0'),
	(31,14,'_menu_item_object_id','10'),
	(32,14,'_menu_item_object','page'),
	(33,14,'_menu_item_target',''),
	(34,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(35,14,'_menu_item_xfn',''),
	(36,14,'_menu_item_url',''),
	(37,14,'_menu_item_orphaned','1470775583'),
	(38,15,'_menu_item_type','post_type'),
	(39,15,'_menu_item_menu_item_parent','0'),
	(40,15,'_menu_item_object_id','8'),
	(41,15,'_menu_item_object','page'),
	(42,15,'_menu_item_target',''),
	(43,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(44,15,'_menu_item_xfn',''),
	(45,15,'_menu_item_url',''),
	(46,15,'_menu_item_orphaned','1470775583'),
	(47,16,'_menu_item_type','post_type'),
	(48,16,'_menu_item_menu_item_parent','0'),
	(49,16,'_menu_item_object_id','10'),
	(50,16,'_menu_item_object','page'),
	(51,16,'_menu_item_target',''),
	(52,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(53,16,'_menu_item_xfn',''),
	(54,16,'_menu_item_url',''),
	(55,16,'_menu_item_orphaned','1470775616'),
	(56,17,'_menu_item_type','post_type'),
	(57,17,'_menu_item_menu_item_parent','0'),
	(58,17,'_menu_item_object_id','8'),
	(59,17,'_menu_item_object','page'),
	(60,17,'_menu_item_target',''),
	(61,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(62,17,'_menu_item_xfn',''),
	(63,17,'_menu_item_url',''),
	(64,17,'_menu_item_orphaned','1470775616'),
	(74,19,'_menu_item_type','post_type'),
	(75,19,'_menu_item_menu_item_parent','0'),
	(76,19,'_menu_item_object_id','10'),
	(77,19,'_menu_item_object','page'),
	(78,19,'_menu_item_target',''),
	(79,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(80,19,'_menu_item_xfn',''),
	(81,19,'_menu_item_url',''),
	(83,20,'_menu_item_type','post_type'),
	(84,20,'_menu_item_menu_item_parent','0'),
	(85,20,'_menu_item_object_id','8'),
	(86,20,'_menu_item_object','page'),
	(87,20,'_menu_item_target',''),
	(88,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(89,20,'_menu_item_xfn',''),
	(90,20,'_menu_item_url',''),
	(91,20,'_menu_item_orphaned','1470775654'),
	(92,21,'_edit_last','1'),
	(93,21,'_edit_lock','1471465953:1'),
	(98,23,'_edit_last','1'),
	(99,23,'_edit_lock','1470949350:1'),
	(100,26,'_edit_last','1'),
	(101,26,'_edit_lock','1471882254:1'),
	(102,29,'_edit_last','1'),
	(103,29,'_edit_lock','1471465350:1'),
	(104,31,'_menu_item_type','post_type'),
	(105,31,'_menu_item_menu_item_parent','0'),
	(106,31,'_menu_item_object_id','29'),
	(107,31,'_menu_item_object','page'),
	(108,31,'_menu_item_target',''),
	(109,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(110,31,'_menu_item_xfn',''),
	(111,31,'_menu_item_url',''),
	(113,32,'_menu_item_type','post_type'),
	(114,32,'_menu_item_menu_item_parent','0'),
	(115,32,'_menu_item_object_id','26'),
	(116,32,'_menu_item_object','page'),
	(117,32,'_menu_item_target',''),
	(118,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(119,32,'_menu_item_xfn',''),
	(120,32,'_menu_item_url',''),
	(122,33,'_menu_item_type','post_type'),
	(123,33,'_menu_item_menu_item_parent','0'),
	(124,33,'_menu_item_object_id','23'),
	(125,33,'_menu_item_object','page'),
	(126,33,'_menu_item_target',''),
	(127,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(128,33,'_menu_item_xfn',''),
	(129,33,'_menu_item_url',''),
	(130,37,'_edit_last','1'),
	(131,37,'_edit_lock','1471034101:1'),
	(132,38,'_wp_attached_file','2016/08/1_03.png'),
	(133,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:860;s:6:\"height\";i:479;s:4:\"file\";s:16:\"2016/08/1_03.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1_03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1_03-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1_03-768x428.png\";s:5:\"width\";i:768;s:6:\"height\";i:428;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(134,39,'_edit_last','1'),
	(135,39,'_edit_lock','1471038997:1'),
	(136,39,'_thumbnail_id','38'),
	(137,39,'_client',''),
	(138,39,'_url',''),
	(139,39,'_project_image_gallery',''),
	(140,8,'_wp_page_template','default'),
	(143,42,'_edit_last','1'),
	(144,42,'_edit_lock','1471466891:1'),
	(145,42,'_wp_page_template','default'),
	(146,48,'_edit_last','1'),
	(147,48,'_edit_lock','1471464838:1'),
	(148,49,'_wp_attached_file','2016/08/Captura-de-pantalla-2016-08-17-a-las-5.08.34-p.m..png'),
	(149,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:412;s:6:\"height\";i:480;s:4:\"file\";s:61:\"2016/08/Captura-de-pantalla-2016-08-17-a-las-5.08.34-p.m..png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2016-08-17-a-las-5.08.34-p.m.-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2016-08-17-a-las-5.08.34-p.m.-258x300.png\";s:5:\"width\";i:258;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(150,50,'_wp_attached_file','2016/08/Captura-de-pantalla-2016-08-17-a-las-5.08.41-p.m..png'),
	(151,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:411;s:6:\"height\";i:480;s:4:\"file\";s:61:\"2016/08/Captura-de-pantalla-2016-08-17-a-las-5.08.41-p.m..png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2016-08-17-a-las-5.08.41-p.m.-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"Captura-de-pantalla-2016-08-17-a-las-5.08.41-p.m.-257x300.png\";s:5:\"width\";i:257;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(152,48,'_thumbnail_id','49'),
	(153,48,'_client',''),
	(154,48,'_url',''),
	(155,48,'_project_image_gallery',''),
	(156,51,'_edit_last','1'),
	(157,51,'_edit_lock','1471464815:1'),
	(158,51,'_thumbnail_id','50'),
	(159,51,'_client',''),
	(160,51,'_url',''),
	(161,51,'_project_image_gallery',''),
	(162,21,'_thumbnail_id','38'),
	(167,56,'_edit_last','1'),
	(168,56,'_edit_lock','1471466839:1'),
	(169,56,'_thumbnail_id','49'),
	(172,58,'_edit_last','1'),
	(173,58,'_edit_lock','1471466113:1'),
	(176,58,'_thumbnail_id','50'),
	(183,42,'post_grid_post_settings','a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:87:\"http://perfe-wp/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
	(184,26,'post_grid_post_settings','a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:87:\"http://perfe-wp/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
	(185,26,'_wp_page_template','page-nosotros.php'),
	(186,63,'_wp_attached_file','2016/08/nosotros1.jpg'),
	(187,63,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:776;s:4:\"file\";s:21:\"2016/08/nosotros1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"nosotros1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"nosotros1-300x121.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"nosotros1-768x310.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"nosotros1-1024x414.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"project-single\";a:4:{s:4:\"file\";s:22:\"nosotros1-1024x414.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(188,63,'_edit_lock','1471471553:1');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2016-07-26 21:23:40','2016-07-26 21:23:40','Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!','¡Hola mundo!','','trash','open','open','','hola-mundo__trashed','','','2016-08-08 20:18:40','2016-08-08 20:18:40','',0,'http://perfe-wp/?p=1',0,'post','',1),
	(2,1,'2016-07-26 21:23:40','2016-07-26 21:23:40','Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://perfe-wp/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!','Página de ejemplo','','trash','closed','open','','pagina-de-ejemplo__trashed','','','2016-08-09 20:38:54','2016-08-09 20:38:54','',0,'http://perfe-wp/?page_id=2',0,'page','',0),
	(4,1,'2016-08-08 20:18:20','2016-08-08 20:18:20','','HOLA','','trash','open','open','','hola__trashed','','','2016-08-08 20:18:38','2016-08-08 20:18:38','',0,'http://perfe-wp/?p=4',0,'post','',0),
	(5,1,'2016-08-08 20:18:20','2016-08-08 20:18:20','','HOLA','','inherit','closed','closed','','4-revision-v1','','','2016-08-08 20:18:20','2016-08-08 20:18:20','',4,'http://perfe-wp/2016/08/08/4-revision-v1/',0,'revision','',0),
	(6,1,'2016-08-08 20:18:40','2016-08-08 20:18:40','Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!','¡Hola mundo!','','inherit','closed','closed','','1-revision-v1','','','2016-08-08 20:18:40','2016-08-08 20:18:40','',1,'http://perfe-wp/2016/08/08/1-revision-v1/',0,'revision','',0),
	(8,1,'2016-08-09 20:38:28','2016-08-09 20:38:28','','Página de Inicio','','publish','closed','closed','','pagina-de-inicio','','','2016-08-12 20:52:06','2016-08-12 20:52:06','',0,'http://perfe-wp/?page_id=8',0,'page','',0),
	(9,1,'2016-08-09 20:38:28','2016-08-09 20:38:28','','Página de Inicio','','inherit','closed','closed','','8-revision-v1','','','2016-08-09 20:38:28','2016-08-09 20:38:28','',8,'http://perfe-wp/2016/08/09/8-revision-v1/',0,'revision','',0),
	(10,1,'2016-08-09 20:38:42','2016-08-09 20:38:42','hppñaaa&lt;szdfsvfdcvdbafvcsdvfb gf','Blog','','publish','closed','closed','','blog','','','2016-08-12 20:33:09','2016-08-12 20:33:09','',0,'http://perfe-wp/?page_id=10',0,'page','',0),
	(11,1,'2016-08-09 20:38:42','2016-08-09 20:38:42','','Blog','','inherit','closed','closed','','10-revision-v1','','','2016-08-09 20:38:42','2016-08-09 20:38:42','',10,'http://perfe-wp/2016/08/09/10-revision-v1/',0,'revision','',0),
	(12,1,'2016-08-09 20:38:54','2016-08-09 20:38:54','Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://perfe-wp/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!','Página de ejemplo','','inherit','closed','closed','','2-revision-v1','','','2016-08-09 20:38:54','2016-08-09 20:38:54','',2,'http://perfe-wp/2016/08/09/2-revision-v1/',0,'revision','',0),
	(13,1,'2016-08-09 20:46:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-08-09 20:46:23','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=13',1,'nav_menu_item','',0),
	(14,1,'2016-08-09 20:46:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-08-09 20:46:23','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=14',1,'nav_menu_item','',0),
	(15,1,'2016-08-09 20:46:23','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-08-09 20:46:23','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=15',1,'nav_menu_item','',0),
	(16,1,'2016-08-09 20:46:56','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-08-09 20:46:56','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=16',1,'nav_menu_item','',0),
	(17,1,'2016-08-09 20:46:56','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-08-09 20:46:56','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=17',1,'nav_menu_item','',0),
	(19,1,'2016-08-09 20:48:30','2016-08-09 20:48:30',' ','','','publish','closed','closed','','19','','','2016-08-11 21:17:12','2016-08-11 21:17:12','',0,'http://perfe-wp/?p=19',1,'nav_menu_item','',0),
	(20,1,'2016-08-09 20:47:34','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2016-08-09 20:47:34','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=20',1,'nav_menu_item','',0),
	(21,1,'2016-08-11 20:39:03','2016-08-11 20:39:03','Identidad visual y piezas gráficas.','Ail Manufacture','','publish','open','open','','holaaa-ctm','','','2016-08-17 20:32:09','2016-08-17 20:32:09','',0,'http://perfe-wp/?p=21',0,'post','',0),
	(22,1,'2016-08-11 20:38:53','2016-08-11 20:38:53','<div id=\"x_divRplyFwdMsg\" dir=\"ltr\"><span style=\"color: #000000; font-family: Calibri, sans-serif;\"><b>De:</b> Andrea Llona Ledger\r\n<b>Enviado:</b> jueves, 11 de agosto de 2016 17:21\r\n<b>Para:</b> David Salinas; Diego Salazar\r\n<b>Cc:</b> Tomas Ives Poblete\r\n<b>Asunto:</b> News</span>\r\n<div></div>\r\n</div>\r\n<div>\r\n<div id=\"x_divtagdefaultwrapper\">\r\n\r\nDavid y Diego,\r\n\r\nAún no tengo respuesta, pero les mando el news para que vayamos ganando tiempo. Si hay que sacar o poner algo nuevo, nos sale más rápido.\r\n\r\nCariños,\r\n\r\nA\r\n\r\n</div>\r\n</div>','holaaa ctm','','inherit','closed','closed','','21-revision-v1','','','2016-08-11 20:38:53','2016-08-11 20:38:53','',21,'http://perfe-wp/2016/08/11/21-revision-v1/',0,'revision','',0),
	(23,1,'2016-08-11 21:04:22','2016-08-11 21:04:22','','Trabajos','','publish','closed','closed','','trabajos','','','2016-08-11 21:04:22','2016-08-11 21:04:22','',0,'http://perfe-wp/?page_id=23',0,'page','',0),
	(24,1,'2016-08-11 21:04:22','2016-08-11 21:04:22','','Trabajos','','inherit','closed','closed','','23-revision-v1','','','2016-08-11 21:04:22','2016-08-11 21:04:22','',23,'http://perfe-wp/2016/08/11/23-revision-v1/',0,'revision','',0),
	(26,1,'2016-08-11 21:15:39','2016-08-11 21:15:39','','Nosotros','','publish','closed','closed','','nosotros','','','2016-08-22 14:27:55','2016-08-22 14:27:55','',0,'http://perfe-wp/?page_id=26',0,'page','',0),
	(27,1,'2016-08-11 21:15:39','2016-08-11 21:15:39','','Nosotros','','inherit','closed','closed','','26-revision-v1','','','2016-08-11 21:15:39','2016-08-11 21:15:39','',26,'http://perfe-wp/2016/08/11/26-revision-v1/',0,'revision','',0),
	(29,1,'2016-08-11 21:15:53','2016-08-11 21:15:53','','Archivo','','publish','closed','closed','','archivo','','','2016-08-11 21:15:53','2016-08-11 21:15:53','',0,'http://perfe-wp/?page_id=29',0,'page','',0),
	(30,1,'2016-08-11 21:15:53','2016-08-11 21:15:53','','Archivo','','inherit','closed','closed','','29-revision-v1','','','2016-08-11 21:15:53','2016-08-11 21:15:53','',29,'http://perfe-wp/2016/08/11/29-revision-v1/',0,'revision','',0),
	(31,1,'2016-08-11 21:16:13','2016-08-11 21:16:13',' ','','','publish','closed','closed','','31','','','2016-08-11 21:17:12','2016-08-11 21:17:12','',0,'http://perfe-wp/?p=31',2,'nav_menu_item','',0),
	(32,1,'2016-08-11 21:16:13','2016-08-11 21:16:13',' ','','','publish','closed','closed','','32','','','2016-08-11 21:17:12','2016-08-11 21:17:12','',0,'http://perfe-wp/?p=32',3,'nav_menu_item','',0),
	(33,1,'2016-08-11 21:16:13','2016-08-11 21:16:13',' ','','','publish','closed','closed','','33','','','2016-08-11 21:17:12','2016-08-11 21:17:12','',0,'http://perfe-wp/?p=33',4,'nav_menu_item','',0),
	(34,1,'2016-08-12 20:32:45','2016-08-12 20:32:45','holaaaaaaaaaaa','Página de Inicio','','inherit','closed','closed','','8-revision-v1','','','2016-08-12 20:32:45','2016-08-12 20:32:45','',8,'http://perfe-wp/2016/08/12/8-revision-v1/',0,'revision','',0),
	(35,1,'2016-08-12 20:33:09','2016-08-12 20:33:09','hppñaaa&lt;szdfsvfdcvdbafvcsdvfb gf','Blog','','inherit','closed','closed','','10-revision-v1','','','2016-08-12 20:33:09','2016-08-12 20:33:09','',10,'http://perfe-wp/2016/08/12/10-revision-v1/',0,'revision','',0),
	(37,1,'2016-08-12 20:35:01','0000-00-00 00:00:00','','Ail Manufacture','','draft','open','closed','','','','','2016-08-12 20:35:01','2016-08-12 20:35:01','',0,'http://perfe-wp/?post_type=portfolio&#038;p=37',0,'portfolio','',0),
	(38,1,'2016-08-12 20:36:24','2016-08-12 20:36:24','','1_03','','inherit','open','closed','','1_03','','','2016-08-12 20:36:24','2016-08-12 20:36:24','',37,'http://perfe-wp/wp-content/uploads/2016/08/1_03.png',0,'attachment','image/png',0),
	(39,1,'2016-08-12 20:44:17','2016-08-12 20:44:17','','Ail Manufacture','Identidad visual y piezas gráficas.','publish','closed','closed','','ail-manufacture','','','2016-08-12 20:44:17','2016-08-12 20:44:17','',0,'http://perfe-wp/?post_type=project&#038;p=39',0,'project','',0),
	(40,1,'2016-08-12 20:52:06','2016-08-12 20:52:06','','Página de Inicio','','inherit','closed','closed','','8-revision-v1','','','2016-08-12 20:52:06','2016-08-12 20:52:06','',8,'http://perfe-wp/2016/08/12/8-revision-v1/',0,'revision','',0),
	(41,1,'2016-08-12 21:19:26','2016-08-12 21:19:26','<div id=\"x_divRplyFwdMsg\" dir=\"ltr\"><span style=\"color: #000000; font-family: Calibri, sans-serif;\"><b>De:</b> Andrea Llona Ledger\r\n<b>Enviado:</b> jueves, 11 de agosto de 2016 17:21\r\n<b>Para:</b> David Salinas; Diego Salazar\r\n<b>Cc:</b> Tomas Ives Poblete\r\n<b>Asunto:</b> News</span>\r\n<div></div>\r\n</div>\r\n<div>\r\n<div id=\"x_divtagdefaultwrapper\">\r\n\r\nDavid y Diego,\r\n\r\nAún no tengo respuesta, pero les mando el news para que vayamos ganando tiempo. Si hay que sacar o poner algo nuevo, nos sale más rápido.\r\n\r\nCariños,\r\n\r\nA\r\n<pre><code>[projects limit=\"12\" columns=\"2\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]</code></pre>\r\n</div>\r\n</div>','holaaa ctm','','inherit','closed','closed','','21-revision-v1','','','2016-08-12 21:19:26','2016-08-12 21:19:26','',21,'http://perfe-wp/2016/08/12/21-revision-v1/',0,'revision','',0),
	(42,1,'2016-08-12 21:20:13','2016-08-12 21:20:13','<pre><code>[projects limit=\"12\" columns=\"1\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]\r\n\r\n</code></pre>','Proyectos','','publish','closed','closed','','proyectos','','','2016-08-17 20:45:55','2016-08-17 20:45:55','',0,'http://perfe-wp/?page_id=42',0,'page','',0),
	(43,1,'2016-08-12 21:20:13','2016-08-12 21:20:13','<pre><code>[projects limit=\"12\" columns=\"2\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]</code></pre>','Proyectos','','inherit','closed','closed','','42-revision-v1','','','2016-08-12 21:20:13','2016-08-12 21:20:13','',42,'http://perfe-wp/2016/08/12/42-revision-v1/',0,'revision','',0),
	(44,1,'2016-08-17 20:25:56','2016-08-17 20:25:56','<pre><code>[projects limit=\"12\" columns=\"1\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]\n[cn_post_grid]\n</code></pre>','Proyectos','','inherit','closed','closed','','42-autosave-v1','','','2016-08-17 20:25:56','2016-08-17 20:25:56','',42,'http://perfe-wp/2016/08/12/42-autosave-v1/',0,'revision','',0),
	(45,1,'2016-08-12 21:31:49','2016-08-12 21:31:49','<pre><code>[projects limit=\"12\" columns=\"1\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]</code></pre>','Proyectos','','inherit','closed','closed','','42-revision-v1','','','2016-08-12 21:31:49','2016-08-12 21:31:49','',42,'http://perfe-wp/2016/08/12/42-revision-v1/',0,'revision','',0),
	(46,1,'2016-08-16 21:37:58','0000-00-00 00:00:00','','Borrador automático','','auto-draft','open','open','','','','','2016-08-16 21:37:58','0000-00-00 00:00:00','',0,'http://perfe-wp/?p=46',0,'post','',0),
	(48,1,'2016-07-17 20:10:18','2016-07-17 20:10:18','','CCPLM','6º Festival de la Cineteca Nacional','publish','closed','closed','','ccplm','','','2016-08-17 20:13:58','2016-08-17 20:13:58','',0,'http://perfe-wp/?post_type=project&#038;p=48',0,'project','',0),
	(49,1,'2016-08-17 20:10:10','2016-08-17 20:10:10','','Captura de pantalla 2016-08-17 a las 5.08.34 p.m.','','inherit','open','closed','','captura-de-pantalla-2016-08-17-a-las-5-08-34-p-m','','','2016-08-17 20:10:10','2016-08-17 20:10:10','',48,'http://perfe-wp/wp-content/uploads/2016/08/Captura-de-pantalla-2016-08-17-a-las-5.08.34-p.m..png',0,'attachment','image/png',0),
	(50,1,'2016-08-17 20:10:10','2016-08-17 20:10:10','','Captura de pantalla 2016-08-17 a las 5.08.41 p.m.','','inherit','open','closed','','captura-de-pantalla-2016-08-17-a-las-5-08-41-p-m','','','2016-08-17 20:10:10','2016-08-17 20:10:10','',48,'http://perfe-wp/wp-content/uploads/2016/08/Captura-de-pantalla-2016-08-17-a-las-5.08.41-p.m..png',0,'attachment','image/png',0),
	(51,1,'2016-07-17 20:11:04','2016-07-17 20:11:04','Identidad visual','Fabio Sepulveda Photo','Identidad visual','publish','closed','closed','','fabio-sepulveda-photo','','','2016-08-17 20:13:35','2016-08-17 20:13:35','',0,'http://perfe-wp/?post_type=project&#038;p=51',0,'project','',0),
	(52,1,'2016-08-17 20:25:17','2016-08-17 20:25:17','<pre><code>[projects limit=\"12\" columns=\"2\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]</code></pre>','Proyectos','','inherit','closed','closed','','42-revision-v1','','','2016-08-17 20:25:17','2016-08-17 20:25:17','',42,'http://perfe-wp/2016/08/17/42-revision-v1/',0,'revision','',0),
	(53,1,'2016-08-17 20:25:59','2016-08-17 20:25:59','<pre><code>[projects limit=\"12\" columns=\"1\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]\r\n[cn_post_grid]\r\n</code></pre>','Proyectos','','inherit','closed','closed','','42-revision-v1','','','2016-08-17 20:25:59','2016-08-17 20:25:59','',42,'http://perfe-wp/2016/08/17/42-revision-v1/',0,'revision','',0),
	(54,1,'2016-08-17 20:29:35','2016-08-17 20:29:35','Identidad visual y piezas gráficas.','Ail Manufacture','','inherit','closed','closed','','21-autosave-v1','','','2016-08-17 20:29:35','2016-08-17 20:29:35','',21,'http://perfe-wp/2016/08/17/21-autosave-v1/',0,'revision','',0),
	(55,1,'2016-08-17 20:29:39','2016-08-17 20:29:39','Identidad visual y piezas gráficas.','Ail Manufacture','','inherit','closed','closed','','21-revision-v1','','','2016-08-17 20:29:39','2016-08-17 20:29:39','',21,'http://perfe-wp/2016/08/17/21-revision-v1/',0,'revision','',0),
	(56,1,'2016-06-17 20:32:31','2016-06-17 20:32:31','6º Festival de la Cineteca Nacional','CCPLM','','publish','open','open','','ccplm','','','2016-08-17 20:35:25','2016-08-17 20:35:25','',0,'http://perfe-wp/?p=56',0,'post','',0),
	(57,1,'2016-08-17 20:32:31','2016-08-17 20:32:31','6º Festival de la Cineteca Nacional','CCPLM','','inherit','closed','closed','','56-revision-v1','','','2016-08-17 20:32:31','2016-08-17 20:32:31','',56,'http://perfe-wp/2016/08/17/56-revision-v1/',0,'revision','',0),
	(58,1,'2016-05-17 20:33:00','2016-05-17 20:33:00','Identidad visual','Flavio Sepulveda','','publish','open','open','','flavio-sepulveda','','','2016-08-17 20:35:13','2016-08-17 20:35:13','',0,'http://perfe-wp/?p=58',0,'post','',0),
	(59,1,'2016-08-17 20:33:00','2016-08-17 20:33:00','Identidad visual','Flavio Sepulveda','','inherit','closed','closed','','58-revision-v1','','','2016-08-17 20:33:00','2016-08-17 20:33:00','',58,'http://perfe-wp/2016/08/17/58-revision-v1/',0,'revision','',0),
	(60,1,'2016-08-17 20:40:09','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2016-08-17 20:40:09','0000-00-00 00:00:00','',0,'http://perfe-wp/?post_type=post_grid&p=60',0,'post_grid','',0),
	(61,1,'2016-08-17 20:45:55','2016-08-17 20:45:55','<pre><code>[projects limit=\"12\" columns=\"1\" orderby=\"date\" order=\"desc\" exclude_categories=\"\"]\r\n\r\n</code></pre>','Proyectos','','inherit','closed','closed','','42-revision-v1','','','2016-08-17 20:45:55','2016-08-17 20:45:55','',42,'http://perfe-wp/2016/08/17/42-revision-v1/',0,'revision','',0),
	(63,1,'2016-08-17 21:17:25','2016-08-17 21:17:25','','nosotros1','','inherit','open','closed','','nosotros1','','','2016-08-17 21:17:25','2016-08-17 21:17:25','',0,'http://perfe-wp/wp-content/uploads/2016/08/nosotros1.jpg',0,'attachment','image/jpeg',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_relationships`;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(4,1,0),
	(19,2,0),
	(21,1,0),
	(31,2,0),
	(32,2,0),
	(33,2,0),
	(39,3,0),
	(56,1,0),
	(58,1,0);

/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_term_taxonomy`;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,3),
	(2,2,'nav_menu','',0,4),
	(3,3,'project-category','',0,1);

/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_termmeta`;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Volcado de tabla wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_terms`;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Sin categoría','sin-categoria',0),
	(2,'Menu 1','menu-1',0),
	(3,'web','web',0);

/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_usermeta`;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','gustavo'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'comment_shortcuts','false'),
	(7,1,'admin_color','fresh'),
	(8,1,'use_ssl','0'),
	(9,1,'show_admin_bar_front','true'),
	(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(11,1,'wp_user_level','10'),
	(12,1,'dismissed_wp_pointers','bws_shortcode_button_tooltip'),
	(13,1,'show_welcome_panel','0'),
	(14,1,'session_tokens','a:1:{s:64:\"2759b7522ab09a9c29f70c9e092de69cd7aad4161490b93102539a7a9b8204e4\";a:4:{s:10:\"expiration\";i:1472048851;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36\";s:5:\"login\";i:1471876051;}}'),
	(15,1,'wp_dashboard_quick_press_last_post_id','46'),
	(16,1,'closedpostboxes_dashboard','a:1:{i:0;s:17:\"dashboard_primary\";}'),
	(17,1,'metaboxhidden_dashboard','a:0:{}'),
	(18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(19,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
	(20,1,'nav_menu_recently_edited','2'),
	(21,1,'wp_user-settings','libraryContent=browse'),
	(22,1,'wp_user-settings-time','1471034493');

/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_users`;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'gustavo','$P$Bwo9nBcpxwiMuH6azPqeuuPDNBCeNA1','gustavo','gustavoadolfonunez@gmail.com','','2016-07-26 21:23:40','',0,'gustavo');

/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
