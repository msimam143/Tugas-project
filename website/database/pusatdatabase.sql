-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.11.0-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for website
CREATE DATABASE IF NOT EXISTS `website` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `website`;

-- Dumping structure for table website.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table website.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table website.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table website.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table website.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table website.auth_permission: ~36 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add artikel', 7, 'add_artikel'),
	(26, 'Can change artikel', 7, 'change_artikel'),
	(27, 'Can delete artikel', 7, 'delete_artikel'),
	(28, 'Can view artikel', 7, 'view_artikel'),
	(29, 'Can add kategori', 8, 'add_kategori'),
	(30, 'Can change kategori', 8, 'change_kategori'),
	(31, 'Can delete kategori', 8, 'delete_kategori'),
	(32, 'Can view kategori', 8, 'view_kategori'),
	(33, 'Can add komen', 9, 'add_komen'),
	(34, 'Can change komen', 9, 'change_komen'),
	(35, 'Can delete komen', 9, 'delete_komen'),
	(36, 'Can view komen', 9, 'view_komen');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table website.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table website.auth_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$390000$b8LY8zm74udJ6YTqWqkr4c$k/YJyu0WStA1E6JwGFe77GGE59m1QI0OV8XmLTSUnFI=', '2022-12-19 15:08:42.651136', 1, 'admin', '', '', 'imam12@gmail.com', 1, 1, '2022-12-14 17:34:55.814696');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table website.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table website.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table website.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table website.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table website.blog_artikel
CREATE TABLE IF NOT EXISTS `blog_artikel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) NOT NULL,
  `isi` longtext DEFAULT NULL,
  `tanggal` datetime(6) DEFAULT NULL,
  `kategori_id` bigint(20) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_artikel_kategori_id_d850ff1f_fk_blog_kategori_id` (`kategori_id`),
  KEY `blog_artikel_slug_73a9d6d3` (`slug`),
  CONSTRAINT `blog_artikel_kategori_id_d850ff1f_fk_blog_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `blog_kategori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table website.blog_artikel: ~3 rows (approximately)
/*!40000 ALTER TABLE `blog_artikel` DISABLE KEYS */;
INSERT INTO `blog_artikel` (`id`, `judul`, `isi`, `tanggal`, `kategori_id`, `slug`, `gambar`) VALUES
	(3, 'ini berita', 'disini berita satu', '2022-12-14 18:19:19.044184', 1, 'ini-berita', ''),
	(4, 'ini pengumuman', 'pengumuman 1', '2022-12-14 18:19:42.018113', 2, 'ini-pengumuman', ''),
	(5, 'halo temen-temen', 'halo apa kabar kalian semua', '2022-12-15 18:55:45.152058', 3, 'halo-temen-temen', '');
/*!40000 ALTER TABLE `blog_artikel` ENABLE KEYS */;

-- Dumping structure for table website.blog_kategori
CREATE TABLE IF NOT EXISTS `blog_kategori` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) NOT NULL,
  `keterangan` longtext NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_kategori_slug_92bd33f7` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table website.blog_kategori: ~2 rows (approximately)
/*!40000 ALTER TABLE `blog_kategori` DISABLE KEYS */;
INSERT INTO `blog_kategori` (`id`, `nama`, `keterangan`, `slug`) VALUES
	(1, 'Berita', 'halo ini adlah artikel dengan kategori berita', NULL),
	(2, 'Pengumuman', 'Pengumuman Penting', NULL),
	(3, 'info', 'info buat karyawan', NULL);
/*!40000 ALTER TABLE `blog_kategori` ENABLE KEYS */;

-- Dumping structure for table website.blog_komen
CREATE TABLE IF NOT EXISTS `blog_komen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tanggal` datetime(6) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `artikel_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_komen_artikel_id_82177ddd_fk_blog_artikel_id` (`artikel_id`),
  CONSTRAINT `blog_komen_artikel_id_82177ddd_fk_blog_artikel_id` FOREIGN KEY (`artikel_id`) REFERENCES `blog_artikel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table website.blog_komen: ~4 rows (approximately)
/*!40000 ALTER TABLE `blog_komen` DISABLE KEYS */;
INSERT INTO `blog_komen` (`id`, `tanggal`, `isi`, `email`, `artikel_id`) VALUES
	(2, '2022-12-19 17:13:09.748034', 'halo', 'admin19@gmail.com', 3),
	(4, '2022-12-19 17:48:12.509323', 'halo halo', 'admin19@gmail.com', 3),
	(5, '2022-12-19 17:50:37.233707', 'umar tolol', 'admin19@gmail.com', 3),
	(6, '2022-12-19 18:13:36.777957', 'erty', 'aku@gmail.com', 3);
/*!40000 ALTER TABLE `blog_komen` ENABLE KEYS */;

-- Dumping structure for table website.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- Dumping data for table website.django_admin_log: ~28 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2022-12-14 17:39:17.524667', '2', 'fahmihidayat', 1, '[{"added": {}}]', 4, 1),
	(2, '2022-12-14 17:41:29.160207', '2', 'fahmihidayat', 2, '[{"changed": {"fields": ["First name", "Last name", "Email address", "Staff status"]}}]', 4, 1),
	(3, '2022-12-14 17:43:20.616149', '2', 'fahmihidayat', 3, '', 4, 1),
	(4, '2022-12-14 18:01:23.245654', '1', 'artikel object (1)', 1, '[{"added": {}}]', 7, 1),
	(5, '2022-12-14 18:01:34.983873', '1', 'artikel object (1)', 2, '[]', 7, 1),
	(6, '2022-12-14 18:02:52.644053', '1', 'halo temen-temen', 2, '[{"changed": {"fields": ["Judul"]}}]', 7, 1),
	(7, '2022-12-14 18:03:01.891396', '1', 'halo temen-temen', 3, '', 7, 1),
	(8, '2022-12-14 18:06:02.334144', '2', 'halo semua', 1, '[{"added": {}}]', 7, 1),
	(9, '2022-12-14 18:06:27.845128', '2', 'halo semua', 2, '[]', 7, 1),
	(10, '2022-12-14 18:13:44.299706', '1', 'Berita', 1, '[{"added": {}}]', 8, 1),
	(11, '2022-12-14 18:14:20.718263', '2', 'Pengumuman', 1, '[{"added": {}}]', 8, 1),
	(12, '2022-12-14 18:14:38.888710', '2', 'halo semua', 3, '', 7, 1),
	(13, '2022-12-14 18:18:55.551467', '3', 'info', 1, '[{"added": {}}]', 8, 1),
	(14, '2022-12-14 18:19:19.045586', '3', 'ini berita', 1, '[{"added": {}}]', 7, 1),
	(15, '2022-12-14 18:19:42.022340', '4', 'ini pengumuman', 1, '[{"added": {}}]', 7, 1),
	(16, '2022-12-15 16:00:12.335162', '3', 'ini berita', 2, '[]', 7, 1),
	(17, '2022-12-15 16:13:03.414702', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(18, '2022-12-15 16:13:39.334817', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(19, '2022-12-15 16:16:43.126453', '4', 'ini pengumuman', 2, '[{"changed": {"fields": ["Gambar"]}}]', 7, 1),
	(20, '2022-12-15 16:41:27.522000', '2', 'Pengumuman', 2, '[]', 8, 1),
	(21, '2022-12-15 16:41:39.491278', '2', 'Pengumuman', 2, '[]', 8, 1),
	(22, '2022-12-15 16:41:47.928197', '2', 'Pengumuman', 2, '[]', 8, 1),
	(23, '2022-12-15 17:58:26.665411', '4', 'ini pengumuman', 2, '[]', 7, 1),
	(24, '2022-12-15 17:58:35.043244', '3', 'ini berita', 2, '[]', 7, 1),
	(25, '2022-12-15 18:55:45.153055', '5', 'halo temen-temen', 1, '[{"added": {}}]', 7, 1),
	(26, '2022-12-19 15:34:37.162993', '1', 'komen object (1)', 1, '[{"added": {}}]', 9, 1),
	(27, '2022-12-19 17:13:58.929605', '3', 'komen object (3)', 3, '', 9, 1),
	(28, '2022-12-19 17:14:04.277448', '1', 'komen object (1)', 3, '', 9, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table website.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table website.django_content_type: ~9 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'blog', 'artikel'),
	(8, 'blog', 'kategori'),
	(9, 'blog', 'komen'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table website.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table website.django_migrations: ~29 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-12-14 17:32:32.757614'),
	(2, 'auth', '0001_initial', '2022-12-14 17:32:33.403540'),
	(3, 'admin', '0001_initial', '2022-12-14 17:32:33.605786'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-14 17:32:33.635078'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-14 17:32:33.668448'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-14 17:32:33.795920'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-14 17:32:33.853396'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-12-14 17:32:33.918609'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-12-14 17:32:33.953298'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-12-14 17:32:34.033615'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-12-14 17:32:34.040176'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-14 17:32:34.069916'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-12-14 17:32:34.119840'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-14 17:32:34.188265'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-12-14 17:32:34.250620'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-12-14 17:32:34.285132'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-14 17:32:34.334571'),
	(18, 'sessions', '0001_initial', '2022-12-14 17:32:34.435688'),
	(19, 'blog', '0001_initial', '2022-12-14 17:55:45.050950'),
	(20, 'blog', '0002_alter_artikel_isi', '2022-12-14 18:00:07.895026'),
	(21, 'blog', '0003_artikel_tanggal', '2022-12-14 18:05:18.375377'),
	(22, 'blog', '0004_kategori', '2022-12-14 18:12:42.039476'),
	(23, 'blog', '0005_artikel_kategori', '2022-12-14 18:17:38.477902'),
	(24, 'blog', '0006_artikel_slug', '2022-12-14 19:08:22.591911'),
	(25, 'blog', '0007_kategori_slug', '2022-12-14 19:18:20.846077'),
	(26, 'blog', '0008_artikel_gambar', '2022-12-14 19:33:06.224282'),
	(27, 'blog', '0009_alter_artikel_gambar', '2022-12-15 15:46:35.976762'),
	(28, 'blog', '0010_alter_artikel_gambar', '2022-12-15 15:54:56.392086'),
	(29, 'blog', '0011_komen', '2022-12-19 15:30:45.865004');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table website.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table website.django_session: ~2 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('114sbhhc42cab30c4iz6h2grux3mg3hm', '.eJxVjMEOwiAQRP-FsyHsSqV49O43NAu7SNVAUtqT8d-VpAe9Tea9mZeaaFvztDVZppnVWYE6_HaB4kNKB3yncqs61rIuc9Bd0Ttt-lpZnpfd_TvI1PJ3PRgg8ENAa51Dw9YyGn8CxHREiWzjCB5HAuPBJAyhR44iwQklQvX-AK2wN3o:1p5rZj:ZSMvAm_XMhODuFgBIeG0gkV96hGjCise3UgEyp09ve0', '2022-12-29 16:59:15.544506'),
	('r9cvl3o76135537oywg4dvxp0uzk59r4', '.eJxVjMEOwiAQRP-FsyHsSqV49O43NAu7SNVAUtqT8d-VpAe9Tea9mZeaaFvztDVZppnVWYE6_HaB4kNKB3yncqs61rIuc9Bd0Ttt-lpZnpfd_TvI1PJ3PRgg8ENAa51Dw9YyGn8CxHREiWzjCB5HAuPBJAyhR44iwQklQvX-AK2wN3o:1p7Hkw:q-0YKEc0bYgZf2VGleqUrGIfQKqHXHwRWKJ8wdEzSyo', '2023-01-02 15:08:42.659647');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
