/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.31-MariaDB : Database - website_ci
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`website_ci` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `website_ci`;

/*Table structure for table `akademik` */

DROP TABLE IF EXISTS `akademik`;

CREATE TABLE `akademik` (
  `akademik_id` int(11) NOT NULL AUTO_INCREMENT,
  `akademik_tanggal` datetime DEFAULT NULL,
  `akademik_judul` varchar(250) DEFAULT NULL,
  `akademik_slug` varchar(250) DEFAULT NULL,
  `akademik_content` text,
  `akademik_sampul` varchar(250) DEFAULT NULL,
  `akademik_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(11) DEFAULT NULL,
  PRIMARY KEY (`akademik_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `akademik` */

insert  into `akademik`(`akademik_id`,`akademik_tanggal`,`akademik_judul`,`akademik_slug`,`akademik_content`,`akademik_sampul`,`akademik_status`,`id_pages`) values (1,'2023-04-06 06:15:49','Profile kompetensi lulusan','profile-kompetensi-lulusan','<p>Profile kompetensi lulusan</p>\r\n','akademik-1680736549-bg-2.jpg','Publish',4),(2,'2023-04-06 06:16:10','Struktur deskripsi mata kuliah','struktur-deskripsi-mata-kuliah','<p>Struktur deskripsi mata kuliah</p>\r\n','akademik-1680736570-bg-2.jpg','Publish',4),(3,'2023-04-06 06:16:50','Penyelenggaraan kegiatan akademik','penyelenggaraan-kegiatan-akademik','<p>Penyelenggaraan kegiatan akademik</p>\r\n','','Publish',4);

/*Table structure for table `akademik_sub` */

DROP TABLE IF EXISTS `akademik_sub`;

CREATE TABLE `akademik_sub` (
  `akademik_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `akademik_id` int(11) DEFAULT NULL,
  `akademik_sub_tanggal` datetime DEFAULT NULL,
  `akademik_sub_judul` varchar(250) DEFAULT NULL,
  `akademik_sub_slug` varchar(250) DEFAULT NULL,
  `akademik_sub_content` text,
  `akademik_sub_sampul` varchar(250) DEFAULT NULL,
  `akademik_sub_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(4) DEFAULT NULL,
  PRIMARY KEY (`akademik_sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `akademik_sub` */

insert  into `akademik_sub`(`akademik_sub_id`,`akademik_id`,`akademik_sub_tanggal`,`akademik_sub_judul`,`akademik_sub_slug`,`akademik_sub_content`,`akademik_sub_sampul`,`akademik_sub_status`,`id_pages`) values (2,3,'2023-04-06 06:37:16','Sistem penyelenggaraan','sistem-penyelenggaraan','<p>Sistem penyelenggaraan</p>\r\n','akademik-1680737836-bg-2.jpg','Publish',4),(3,3,'2023-04-08 15:30:12','Pendaftaran mahasiswa','pendaftaran-mahasiswa','<p>Pendaftaran mahasiswa</p>\r\n','akademik-1680942612-bg.jpg','Publish',4),(4,3,'2023-04-08 15:30:19','Perkuliahan','perkuliahan','<p>Perkuliahan</p>\r\n','akademik-1680942619-bg.jpg','Publish',4),(5,3,'2023-04-08 15:30:26','Pembimbingan penelitian','pembimbingan-penelitian','<p>Pembimbingan penelitian</p>\r\n','akademik-1680942626-bg.jpg','Publish',4),(6,3,'2023-04-08 15:30:32','Seminar usulan penelitian','seminar-usulan-penelitian','<p>Seminar usulan penelitian</p>\r\n','akademik-1680942632-bg.jpg','Publish',4);

/*Table structure for table `artikel` */

DROP TABLE IF EXISTS `artikel`;

CREATE TABLE `artikel` (
  `artikel_id` int(11) NOT NULL AUTO_INCREMENT,
  `artikel_tanggal` datetime NOT NULL,
  `artikel_judul` varchar(255) NOT NULL,
  `artikel_slug` varchar(255) NOT NULL,
  `artikel_konten` longtext NOT NULL,
  `artikel_sampul` varchar(255) NOT NULL,
  `artikel_author` int(11) NOT NULL,
  `artikel_kategori` int(11) NOT NULL,
  `artikel_status` enum('publish','draft') NOT NULL,
  `artikel_view` int(11) DEFAULT NULL,
  PRIMARY KEY (`artikel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `artikel` */

insert  into `artikel`(`artikel_id`,`artikel_tanggal`,`artikel_judul`,`artikel_slug`,`artikel_konten`,`artikel_sampul`,`artikel_author`,`artikel_kategori`,`artikel_status`,`artikel_view`) values (6,'2019-02-03 20:45:40','Apa Tren Terbaru Web Design Tahun 2019 ?','apa-tren-terbaru-web-design-tahun-2019','<h2>Tren Web Design Tahun 2019</h2>\r\n\r\n<p>Testing update There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n\r\n<h2>Testing</h2>\r\n\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated&nbsp; All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n','pexels-photo-270348.jpg',1,8,'publish',10),(7,'2019-02-24 16:05:20','Tes Buat Artikel Baru Untuk Website CI','tes-buat-artikel-baru-untuk-website-ci','<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<h2>Nulla pariaturvoluptate velit esse cillum dolore</h2>\r\n\r\n<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>\r\n\r\n<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>\r\n\r\n<p>voluptate velit esse cillum dolore eu fugiat nulla pariaturvoluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>\r\n','pexels-photo-1181298.jpg',4,8,'publish',101),(8,'2019-02-24 16:07:34','Voluptate Velit Esse Cillum Dolore ','voluptate-velit-esse-cillum-dolore','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h2>voluptate velit esse cillum dolore eu fugiat nulla pariatur</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<h3>voluptate velit esse cillum dolore eu fugiat nulla pariatur</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n','pexels-photo-1917575.jpg',4,10,'publish',251),(9,'2019-02-26 12:49:06','Belajar Membuat Website','belajar-membuat-website','<p>All the All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n\r\n<p>The Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n','startup-photos.jpg',1,14,'publish',602),(10,'2019-02-26 12:51:36','Algoritma Pemrograman Terbaru','algoritma-pemrograman-terbaru','<p>&nbsp;to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero.</p>\r\n\r\n<p>Written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n','pexels-photo-160107.jpg',1,14,'draft',327),(11,'2023-04-05 01:47:26','jadwal imsak 1444 Hijriyah','jadwal-imsak-1444-hijriyah','<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda velit doloribus, id maiores error dolorum harum ab incidunt exercitationem iusto deserunt, explicabo cumque odio ipsam nihil facere modi nobis laborum.</p>\r\n','query.png',1,11,'publish',14);

/*Table structure for table `dokumen` */

DROP TABLE IF EXISTS `dokumen`;

CREATE TABLE `dokumen` (
  `dokumen_id` int(11) NOT NULL AUTO_INCREMENT,
  `dokumen_tanggal` datetime DEFAULT NULL,
  `dokumen_judul` varchar(250) DEFAULT NULL,
  `dokumen_slug` varchar(250) DEFAULT NULL,
  `dokumen_content` text,
  `dokumen_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(8) DEFAULT NULL,
  PRIMARY KEY (`dokumen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `dokumen` */

insert  into `dokumen`(`dokumen_id`,`dokumen_tanggal`,`dokumen_judul`,`dokumen_slug`,`dokumen_content`,`dokumen_status`,`id_pages`) values (1,'2023-04-05 22:23:14','Evaluasi VMS – Visi Misi Strategi','evaluasi-vms-visi-misi-strategi','dokumen-1680615401-a-sample.pdf','Publish',8),(2,'2023-04-05 22:27:13','testing galery','testing-galery','dokumen-1680708433-a-sample.pdf','Publish',8),(3,'2023-04-05 22:29:14','Akademik','akademik','dokumen-1680708554-CamScanner_04-27-2022_10_54.pdf','Publish',8);

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_tanggal` datetime DEFAULT NULL,
  `event_judul` varchar(250) DEFAULT NULL,
  `event_slug` varchar(250) DEFAULT NULL,
  `event_content` text,
  `event_sampul` varchar(250) DEFAULT NULL,
  `event_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(3) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

insert  into `event`(`event_id`,`event_tanggal`,`event_judul`,`event_slug`,`event_content`,`event_sampul`,`event_status`,`id_pages`) values (1,'2023-04-05 22:02:03','Lomba Lari','lomba-lari','<p>Lomba Lari</p>\r\n','event-1680706923-bg-2.jpg','Publish',2),(2,'2023-04-06 00:43:28','Lomba masak','lomba-masak','<p>Lomba masak</p>\r\n','event-1680716608-Aplikasi_Agen_Ratu_Antik@2x.png','Publish',2),(3,'2023-04-06 00:43:44','Lomba Qiroah','lomba-qiroah','<p>Lomba Qiroah</p>\r\n','event-1680716624-image_2022-11-07_16-14-39.png','Publish',2);

/*Table structure for table `galery` */

DROP TABLE IF EXISTS `galery`;

CREATE TABLE `galery` (
  `galery_id` int(11) NOT NULL AUTO_INCREMENT,
  `galery_tanggal` datetime DEFAULT NULL,
  `galery_judul` varchar(250) DEFAULT NULL,
  `galery_slug` varchar(250) DEFAULT NULL,
  `galery_content` text,
  `galery_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(3) DEFAULT NULL,
  PRIMARY KEY (`galery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `galery` */

insert  into `galery`(`galery_id`,`galery_tanggal`,`galery_judul`,`galery_slug`,`galery_content`,`galery_status`,`id_pages`) values (2,'2023-04-06 02:53:40','Evaluasi VMS – Visi Misi Strategi','evaluasi-vms-visi-misi-strategi','<pre>\r\nqwer</pre>\r\n','Publish',3),(3,'2023-04-05 23:58:43','galery 2','galery-2','<p>galery 2</p>\r\n','Publish',3),(4,'2023-04-05 23:59:10','galery 3','galery-3','<p>galery 3</p>\r\n','Publish',3);

/*Table structure for table `galery_detail` */

DROP TABLE IF EXISTS `galery_detail`;

CREATE TABLE `galery_detail` (
  `galery_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `galery_id` int(11) NOT NULL,
  `galery_detail_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`galery_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `galery_detail` */

insert  into `galery_detail`(`galery_detail_id`,`galery_id`,`galery_detail_file`) values (5,2,'galery-1680707191-b.jpg'),(6,2,'galery-1680707191-b1.jpg'),(7,2,'galery-1680707191-b.png'),(8,2,'galery-1680707191-b2.jpg'),(17,3,'galery-1680713923-A.png'),(18,3,'galery-1680713923-A.jpg'),(19,3,'galery-1680713923-A1.jpg'),(20,4,'galery-1680713950-A.png'),(21,4,'galery-1680713950-A.jpg'),(22,4,'galery-1680713950-A1.jpg');

/*Table structure for table `halaman` */

DROP TABLE IF EXISTS `halaman`;

CREATE TABLE `halaman` (
  `halaman_id` int(11) NOT NULL AUTO_INCREMENT,
  `halaman_judul` varchar(255) NOT NULL,
  `halaman_slug` varchar(255) NOT NULL,
  PRIMARY KEY (`halaman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `halaman` */

insert  into `halaman`(`halaman_id`,`halaman_judul`,`halaman_slug`) values (1,'HOME',''),(2,'PROFILE','profile'),(3,'INFORMASI','informasi'),(4,'AKADEMIK','akademik'),(5,'PEMBELAJARAN','pembelajaran'),(6,'KODE PERILAKU','kode_perilaku'),(7,'JAMINAN MUTU','jaminan_mutu'),(8,'DOKUMEN','dokumen');

/*Table structure for table `jaminan_mutu` */

DROP TABLE IF EXISTS `jaminan_mutu`;

CREATE TABLE `jaminan_mutu` (
  `jaminan_mutu_id` int(11) NOT NULL AUTO_INCREMENT,
  `jaminan_mutu_tanggal` datetime DEFAULT NULL,
  `jaminan_mutu_judul` varchar(250) DEFAULT NULL,
  `jaminan_mutu_slug` varchar(250) DEFAULT NULL,
  `jaminan_mutu_content` text,
  `jaminan_mutu_sampul` varchar(250) DEFAULT NULL,
  `jaminan_mutu_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(7) DEFAULT NULL,
  PRIMARY KEY (`jaminan_mutu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `jaminan_mutu` */

insert  into `jaminan_mutu`(`jaminan_mutu_id`,`jaminan_mutu_tanggal`,`jaminan_mutu_judul`,`jaminan_mutu_slug`,`jaminan_mutu_content`,`jaminan_mutu_sampul`,`jaminan_mutu_status`,`id_pages`) values (1,'2023-04-05 02:31:21','Evaluasi VMS – Visi Misi Strategi','evaluasi-vms-visi-misi-strategi','https://workspace.google.com/business/signup/welcome?hl=id&source=gafb-lp_forms-canvas-id&ga_region=japac&ga_country=id&ga_lang=id&__utma=61317162.1122922765.1680636585.1680636586.1680636586.1&__utmb=61317162.1.10.1680636588573&__utmc=61317162&__utmx=-&__utmz=61317162.1680636586.1.1.utmcsr=google|utmgclid=Cj0KCQjwla-hBhD7ARIsAM9tQKu5aX1EGN2hxnuuvFoxOkAMMN8ZcOMDph6PENA6Fc_U3PJyR6SMdPUaAgJ_EALw_wcB|utmgclsrc=aw.ds|utmccn=1605214-Workspace-APAC-ID-id-BKWS-EXA-LV|utmcmd=cpc|utmctr=KW_google%20form|utmcct=text-ad-none-none-DEV_c-CRE_470866426002-ADGP_Hybrid%20|%20BKWS%20-%20EXA%20|%20Txt_Forms-KWID_43700057629401386-kwd-19885114058&__utmv=-&__utmk=110787010','','Publish',7);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_slug` varchar(255) NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `kategori` */

insert  into `kategori`(`kategori_id`,`kategori_nama`,`kategori_slug`) values (6,'Web Programming','web-programming'),(8,'Web Design','web-design'),(9,'Travel','travel'),(10,'Olahraga','olahraga'),(11,'Informasi Publik','informasi-publik'),(12,'Masakan','masakan'),(13,'Berita','berita'),(14,'Teknologi','teknologi'),(15,'Kegiatan','kegiatan');

/*Table structure for table `kode_perilaku` */

DROP TABLE IF EXISTS `kode_perilaku`;

CREATE TABLE `kode_perilaku` (
  `kode_perilaku_id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_perilaku_tanggal` datetime DEFAULT NULL,
  `kode_perilaku_judul` varchar(250) DEFAULT NULL,
  `kode_perilaku_slug` varchar(250) DEFAULT NULL,
  `kode_perilaku_content` text,
  `kode_perilaku_sampul` varchar(250) DEFAULT NULL,
  `kode_perilaku_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(11) DEFAULT '6',
  PRIMARY KEY (`kode_perilaku_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `kode_perilaku` */

insert  into `kode_perilaku`(`kode_perilaku_id`,`kode_perilaku_tanggal`,`kode_perilaku_judul`,`kode_perilaku_slug`,`kode_perilaku_content`,`kode_perilaku_sampul`,`kode_perilaku_status`,`id_pages`) values (1,'2023-04-05 02:27:53','Kode Perilaku dan Sanksi','kode-perilaku-dan-sanksi','<p>Kode Perilaku dan Sanksi update</p>\r\n','kode_perilaku-1680636474-photo_2022-11-11_00-19-24.jpg','Publish',6);

/*Table structure for table `pembelajaran` */

DROP TABLE IF EXISTS `pembelajaran`;

CREATE TABLE `pembelajaran` (
  `pembelajaran_id` int(11) NOT NULL AUTO_INCREMENT,
  `pembelajaran_tanggal` datetime DEFAULT NULL,
  `pembelajaran_judul` varchar(250) DEFAULT NULL,
  `pembelajaran_slug` varchar(250) DEFAULT NULL,
  `pembelajaran_content` text,
  `pembelajaran_sampul` varchar(250) DEFAULT NULL,
  `pembelajaran_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(11) DEFAULT NULL,
  PRIMARY KEY (`pembelajaran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `pembelajaran` */

insert  into `pembelajaran`(`pembelajaran_id`,`pembelajaran_tanggal`,`pembelajaran_judul`,`pembelajaran_slug`,`pembelajaran_content`,`pembelajaran_sampul`,`pembelajaran_status`,`id_pages`) values (1,'2023-04-05 02:05:54','Capaian Pembelajaraan Lulusan','capaian-pembelajaraan-lulusan','<p>Capaian Pembelajaraan Lulusan</p>\r\n','pembelajaran-1680635154-bg-3.jpg','Publish',5),(3,'2023-04-05 02:06:31','Evaluasi VMS – Visi Misi Strategi','evaluasi-vms-visi-misi-strategi','<p>dsd</p>\r\n','pembelajaran-1680635191-Cover_MANUAL-admin.png','Publish',5);

/*Table structure for table `pengaturan` */

DROP TABLE IF EXISTS `pengaturan`;

CREATE TABLE `pengaturan` (
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `maps` varchar(1000) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `banner` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `link_facebook` varchar(255) NOT NULL,
  `link_twitter` varchar(255) NOT NULL,
  `link_instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pengaturan` */

insert  into `pengaturan`(`phone`,`email`,`alamat`,`maps`,`nama`,`deskripsi`,`banner`,`logo`,`link_facebook`,`link_twitter`,`link_instagram`) values ('+62 853-4374-2764','akademik@unhas.ac.id','Jl. Perintis Kemerdekaan, Tamalanrea Indah, Kec. Tamalanrea, Kota Makassar, Sulawesi Selatan 90245','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.7224452334153!2d106.82176151435996!3d-6.167909662161955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f567d8adcb6f%3A0xde490e60a9a44e65!2sIstana%20Negara!5e0!3m2!1sid!2sid!4v1680717797226!5m2!1sid!2sid','FEB - UNHAS','Program Studi Doktor Manajemen','bg.jpg','logo_unhas2.png','https://www.facebook.com/malasngodingpage/','https://twitter.com/malasngoding','https://www.instagram.com/malasngoding/');

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) NOT NULL,
  `pengguna_email` varchar(255) NOT NULL,
  `pengguna_username` varchar(50) NOT NULL,
  `pengguna_password` varchar(255) NOT NULL,
  `pengguna_level` enum('admin','penulis') NOT NULL,
  `pengguna_status` int(11) NOT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `pengguna` */

insert  into `pengguna`(`pengguna_id`,`pengguna_nama`,`pengguna_email`,`pengguna_username`,`pengguna_password`,`pengguna_level`,`pengguna_status`) values (1,'admin','diki@malasngoding.com','admin','21232f297a57a5a743894a0e4a801fc3','admin',1),(2,'Wak Johny','johny@malasngoding.com','johny','d0b4449cf30599ceb527201ec5a86ef7','penulis',1),(4,'Fatimah','fatimah@malasngoding.com','fatimah','65695b363e7c8b3c0e838b230dea78b3','penulis',1);

/*Table structure for table `pengumuman` */

DROP TABLE IF EXISTS `pengumuman`;

CREATE TABLE `pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_tanggal` datetime DEFAULT NULL,
  `pengumuman_judul` varchar(250) DEFAULT NULL,
  `pengumuman_slug` varchar(250) DEFAULT NULL,
  `pengumuman_content` text,
  `pengumuman_sampul` varchar(250) DEFAULT NULL,
  `pengumuman_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(3) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `pengumuman` */

insert  into `pengumuman`(`pengumuman_id`,`pengumuman_tanggal`,`pengumuman_judul`,`pengumuman_slug`,`pengumuman_content`,`pengumuman_sampul`,`pengumuman_status`,`id_pages`) values (1,'2023-04-05 21:54:23','Libur idul fitri','libur-idul-fitri','<p>Libur idul fitri</p>\r\n','pengumuman-1680706463-brika_draft.png','Publish',2);

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_tanggal` datetime DEFAULT NULL,
  `profile_judul` varchar(250) DEFAULT NULL,
  `profile_slug` varchar(250) DEFAULT NULL,
  `profile_content` text,
  `profile_sampul` varchar(250) DEFAULT NULL,
  `profile_status` enum('Draft','Publish') DEFAULT NULL,
  `id_pages` int(11) DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `profile` */

insert  into `profile`(`profile_id`,`profile_tanggal`,`profile_judul`,`profile_slug`,`profile_content`,`profile_sampul`,`profile_status`,`id_pages`) values (1,'2023-04-05 23:28:43','kata Sambutan','kata-sambutan','<p>Assalamu Alaikum Wr. Wb. Puji syukur kehadirat Tuhan Yang Maha Kuasa atas limpahan rahmat dan hidayah-Nya sehingga informasi tentang Fakultas Teknik Unhas melalui situs web ini dapat terwujud. Besar harapan kita semoga ridho-Nya menyertai segala aktifitas&nbsp;dalam upaya pembinaan sumber daya manusia dalam bidang teknologi dan semoga informasi melalui web ini dapat berguna bagi semua pihak. Kami dari semua civitas akademika Fakultas Teknik dengan semua dukungan komponen perguruan tinggi yang ada akan terus meningkatkan pencapaian menuju terwujudnya visi dan misi yang telah dicanangkan dalam rencana strategis fakultas. Semoga informasi yang diberikan lewat layanan website ini dapat memberikan gambaran situasi dan kondisi Fakultas Teknik kepada semua lapisan masyarakat. Selamat Datang di Fakultas Teknik Universitas Hasanuddin.</p>\r\n\r\n<p>&quot;Dekan Fakultas&quot;</p>\r\n','profile-1680630251-image_2022-11-07_16-14-39.png','Publish',2),(3,'2023-04-05 00:43:57','Visi Misi Program Studi','visi-misi-program-studi','<p>Visi Misi Program Studi</p>\r\n','profile-1680630237-bg-2.jpg','Publish',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
