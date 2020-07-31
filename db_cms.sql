-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 03:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_27_093051_create_roles_table', 1),
(5, '2020_07_27_094200_create_role_user_table', 1),
(6, '2020_07_27_110011_create_posts_table', 1),
(7, '2020_07_29_102757_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `judul`, `konten`, `image`, `created_at`, `updated_at`) VALUES
(3, 2, 'Cara Mendapatkan Pacar', 'Kehidupan jomblo yang serba merdeka memang menyenangkan, tapi akan ada saatnya saat kita ingin memiliki seseorang yang akan selalu ada di sisi kita. Karena itulah kebanyakan orang ingin miliki pacar. Cek 9 tips mendapatkan pacar di bawah ini saja!\n\n1. Tingkatkan percaya diri\nSudah jelas jika ingin mendekati seseorang, kepercayaan diri wajib hukumnya. Orang yang tidak percaya diri sangat terlihat aura kikuknya, dan aura ini akan membuat calon pacarmu enggan untuk mendekati, entah itu karena merasa canggung atau tidak nyaman. Untuk percaya diri, tak perlu secantik selebritis atau selucu komedian, cukup dengan merasa nyaman dengan diri sendiri pun sudah cukup.\n\n2. Jangan gengsi\nSalah satu cara mendapatkan pacar yang konkrit adalah kurangi gengsi. Bergaul dan berbaur dengan semua orang, jangan malu-malu untuk daftar online dating seperti Tinder. Untuk Toppers perempuan, jangan ragu untuk memulai percakapan terlebih dahulu. Dengan itu, sikap asyik akan lebih menonjol sehingga orang-orang lebih nyaman denganmu.\n\n3. Kenalan dengan lebih banyak orang\nIstilah networking tidak hanya ada di lingkungan kerja. Berkenalan dengan lebih banyak orang lewat teman-teman yang sudah kamu miliki juga membuka banyak kesempatan untuk kenalan dengan calon pacar. Tunjukkan bahwa kamu adalah orang yang sociable dan mudah berbaur, dan pacar pun akan segera jatuh hati padamu.\n\n4. Tunjukkan fisik dan personality\nMenunjukkan keunggulan fisik tak ada salahnya. Ingat, Toppers, semua orang cantik dalam arti berbeda-beda. Mungkin senyumanmu manis, tatapan teduh, atau bahkan suara tawamu membuat orang lain senang. Apapun itu, kamu berhak menunjukkannya. Bukan cuma fisik semata, personality pun harus ditonjolkan. Tak ada gunanya menarik mata namun sikapnya minus.\n\n5. Jika gagal, jangan terpaku\nKegagalan dalam mencari pacar itu hal yang umum. Siapapun dirimu, pasti akan ada 1-2 orang yang tidak berminat menjadi pacar. Apapun alasan mereka, tak perlu dipikirkan. Ibaratkan saja mereka suka warna merah, sedangkan kamu warna biru. Jadi, carilah satu orang itu yang menyukai warna biru. Tak mungkin dari 7 miliar orang di dunia tak ada yang tertarik denganmu, kok!\n\n6. Jadi diri sendiri\nCara mendapat pacar salah satunya adalah dengan jadi diri sendiri. Jangan termakan ide-ide yang dipaksakan padamu dari masyarakat umum. Pria harus begini dan wanita harus begitu, lupakan itu semua dan jalani hidup bedasarkan peraturanmu sendiri selama tidak melukai orang lain. Lagipula, jika berpura-pura jadi orang lain, artinya pacarmu tidak menyukai dirimu yang aslinya, melainkan dirimu yang sudah dipermak sedemikian rupa.\n\n7. Miliki pendirian\nMemang penting untuk berkompromi dengan calon pasangan, namun itu bukan berarti harus mengubah diri semudah membalikkan tangan saat ia memintamu. Ada beberapa aspek yang memang bagian konkrit dari dirimu dan hal itulah yang tak bisa diambil siapapun. Memegang teguh pendirian akan membuat calon pacar berpikir bahwa kamu memang mudah bersosialisasi, namun kamu bukan orang yang fake. Ingat, memiliki pacar hanya menunjang dirimu, bukan melengkapi.\n\n8. Jadi teman yang baik\nSebelum jadi pacar, tentu harus berteman dulu. Hanya karena kamu ingin menjadi pacarnya, bukan berarti hal baik yang kamu lakukan padanya hanya untuk mencapai goal itu semata. Jadilah baik padanya karena kamu temannya.\n\n9. Kenali calon pacar lebih dalam\nDia memang ganteng/cantik, namun belum afdol rasanya kalau belum kenali dia lebih dalam. Cari tahu apa film favoritnya, siapa nama anjing peliharaannya, dan topik-topik monoton namun mendebarkan lainnya. Sekecil apapun trivia yang kamu dapatkan, rasanya akan sangat berarti.\n\n10. SADAR DIRI LAH COOOKK COK\nSetelah anda melakukan 9 tips diatas tapi tak kunjung memiliki pacar, mungkin anda harus mengurungkan niat anda untuk memiliki pacar dan sadar diri serta lihatlah cermin, munkin anda JELEK.\n\nNah, dengan tips mencari pacar di atas, semoga anda semua cepat mendapatkan pasangan. Ingat, mendapat pacar memang menyenangkan, namun jangan sampai jadi kehilangan arah dan lupa diri, ya. Yuk, share artikel ini dengan teman-temanmu untuk mengakhiri masa jomblo mereka!', 0x636172612d6d656e64617061746b616e2d70616361722e6a7067, '2020-07-29 05:53:08', '2020-07-29 05:53:08'),
(4, 2, 'NOTE : Kekurangan dari web ini', '1. Konten masih polos dan tanpa ENTER (Gimana caranya belum nemu :\')\n2. Warna sebagian bawaan BS\n3. Tulisan \"Pilih Gambar\" di POST BARU statis, tidak berubah mengikuti nama file yang di upload\n4. Daaan masih banyak lagi silahkan cari sendiri pasti keliatan :\'v\n\nProject pertama dengan Laravel', 0x6e6f74652d6b656b7572616e67616e2d646172692d7765622d696e692e6a7067, '2020-07-31 05:40:09', '2020-07-31 05:40:09'),
(5, 2, 'Tentang WEB ini', '1. Ini web CMS masih jauh dari kata sempurna, mohon masukannya\n2. Web ini dibangun dengan Laravel + Vue, desain dengan BS4\n3. Untuk masuk sebagai ADMIN, masukan hanya dengan; username : adminadmin@gmail.com, pass : Persib1933, dan langsung masuk ke halaman admin dashboard\n4. Untuk akun baru Register, akan otomatis menjadi akun Tamu yang hanya bisa melihat dan memberi komentar pada postingan\n5. Sebagian data dikirim menggunakan Laravel Seeds\n6. Data DB bisa dilihat di .env\n7. KOMENTAR BELUM BERJALAN, Coba pakai pusher eh pusing :\'v\n8. Coba jalankan dengan ada koneksi internet untuk hasil maksimal', 0x74656e74616e672d7765622d696e692e6a7067, '2020-07-31 05:48:06', '2020-07-31 05:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Tamu', '2020-07-29 05:10:00', '2020-07-29 05:10:00'),
(2, 'admin', 'Administrator', '2020-07-29 05:10:00', '2020-07-29 05:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User1', 'user1@gmail.com', NULL, '$2y$10$zER5gU5Lv5yrWO7rwNRQs.AK.vZO2jR3IPpYO044ZAZ/Km6VWB0sO', NULL, '2020-07-29 05:10:01', '2020-07-29 05:10:01'),
(2, 'Rizki Subagja', 'adminadmin@gmail.com', NULL, '$2y$10$8JbWhIJ8q6voR23NjZ4yAufX.1rFl1F/DfZ745IObL.sWMrpSM6/C', 'DapB4fL2zSgeezWuaswZ2CMQQ1pYcz1jRSlQUbKyHfy1Yv6ucwzSghAaHbK0', '2020-07-29 05:10:02', '2020-07-29 05:10:02'),
(3, 'user2', 'user2@gmail.com', NULL, '$2y$10$W7WhIXmSOFhi.Hz5lqQrJO1jcMykG9vEOKDZEYC.8FS7EYoZ1nUzG', NULL, '2020-07-31 05:54:15', '2020-07-31 05:54:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
