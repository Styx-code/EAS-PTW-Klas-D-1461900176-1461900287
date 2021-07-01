-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jul 2021 pada 14.42
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoonlinedb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'voluptas neque', 'voluptas-neque', '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(2, 'voluptatem sapiente', 'voluptatem-sapiente', '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(3, 'neque rem', 'neque-rem', '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(4, 'cumque harum', 'cumque-harum', '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(5, 'fugiat reiciendis', 'fugiat-reiciendis', '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(6, 'sed omnis', 'sed-omnis', '2021-06-25 00:48:52', '2021-06-25 00:48:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_23_184302_create_sessions_table', 1),
(13, '2021_06_25_065254_create_kategoris_table', 2),
(14, '2021_06_25_065532_create_produks_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_normal` decimal(8,2) NOT NULL,
  `harga_diskon` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok_status` enum('ada','habis') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `jumlah` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `nama`, `slug`, `short_des`, `deskripsi`, `harga_normal`, `harga_diskon`, `SKU`, `stok_status`, `featured`, `jumlah`, `image`, `images`, `kategori_id`, `created_at`, `updated_at`) VALUES
(0, 'Produk Baru Lagi', 'produk-baru-lagi', 'singkat', 'Deskripsi', '75.00', NULL, 'DIGI777', 'ada', 0, 50, '1625128439_jpg', NULL, NULL, '2021-07-01 01:33:59', '2021-07-01 01:33:59'),
(1, 'save street T-Shirt', 'quaerat-ad', 'Molestias itaque enim sint eius quasi impedit. Aperiam vitae laborum tenetur dicta. Quibusdam ratione error deserunt molestiae explicabo qui. Est omnis nobis dolorum temporibus.', 'Omnis corrupti eum commodi ut dolores quod minus. Ipsam ea vitae ut non. Earum ut ut architecto et et incidunt magnam natus. Totam ipsum fugiat quia et consequatur in culpa. Facilis reiciendis architecto vel quis quia aut atque. Consequatur numquam ad itaque voluptatem. Molestiae quasi neque vel dolorum culpa enim. Consequuntur quia saepe unde vel optio velit deserunt saepe. Est nobis porro explicabo dolorum.', '75.00', NULL, 'DIGI417', 'ada', 0, 156, 'prod_8.jpg', NULL, 2, '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(2, 'Stefon T-Shirt', 'labore-consectetur', 'Et nobis facere nam. Atque error corrupti rerum animi quia. Est et quis consequatur rerum ut hic labore magnam.', 'Sit explicabo architecto aut aut perspiciatis. Mollitia asperiores explicabo velit vitae aut quia. Harum id rerum quos cumque eligendi. Culpa et nihil odio voluptatem ipsam provident. Occaecati accusamus amet voluptas eaque provident. Qui autem quod cumque et. Nesciunt dolorum voluptas dolorem asperiores aliquid sunt laboriosam. Voluptate odio rem est dolorem aut corporis. Et dolor recusandae quia voluptates ut consequatur. Cupiditate esse occaecati consectetur praesentium veniam debitis sit.', '60.00', NULL, 'DIGI465', 'ada', 0, 111, 'prod_3.jpg', NULL, 2, '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(3, 'Maternal Black T-Shirt', 'accusantium-adipisci', 'Sapiente sequi rem nesciunt qui. Molestias eum commodi sequi officia in rem. Quia atque qui nemo nam sit ducimus sed.', 'Velit possimus nihil suscipit qui et. Similique corrupti recusandae sed accusantium tempora dolor sit. Repellendus quia ea qui quia tempora qui. Eum voluptas eveniet explicabo et pariatur ipsum. Et iste nisi sit nemo dolor ex. Aperiam ut est repellendus et. Velit qui quaerat itaque. Fugit exercitationem est saepe neque temporibus non est.', '150.00', NULL, 'DIGI198', 'habis', 0, 170, 'prod_5.jpg', NULL, 1, '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(4, 'Maternal White T-Shirt', 'nisi-suscipit', 'Voluptatem sed libero tenetur ut ut adipisci ut. Cupiditate ut sed exercitationem repellat dicta dolores. Explicabo ut quam et aut. Architecto adipisci molestias architecto tempore ipsa.', 'Modi cupiditate deleniti soluta asperiores aut tenetur commodi. Ut praesentium eaque voluptatem aut fugit. Praesentium quia molestiae iusto illum reprehenderit natus. Et inventore ex et modi nobis minus. Optio veniam eos distinctio aspernatur. Molestias qui nulla accusamus perferendis excepturi maxime maxime. Laborum quia ad dignissimos voluptatem neque. Voluptates optio et dolor modi et in. Sunt vel modi labore et ut voluptatem vero. Modi voluptas omnis unde non beatae quo.', '150.00', NULL, 'DIGI127', 'habis', 0, 122, 'prod_9.jpg', NULL, 2, '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(5, 'Roughneck Hoodie', 'reprehenderit-qui', 'Nostrum ea voluptates in velit nesciunt eum incidunt quam. Molestias nihil enim blanditiis illo. Minus enim incidunt quibusdam distinctio dolor fugiat assumenda.', 'Error repudiandae sed quaerat consequuntur in sed dolor. Accusamus velit delectus laboriosam deserunt ratione molestiae eligendi accusantium. Dolor ut et excepturi et ullam ducimus. Earum animi culpa tempore iste. Sint in ea qui numquam nulla adipisci. Consectetur quibusdam veritatis voluptatem ad exercitationem. Enim rerum natus enim dolores hic dolores.', '175.00', NULL, 'DIGI284', 'ada', 0, 101, 'prod_21.jpg', NULL, 5, '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(6, '1994 Varsity Jacket', 'magni-voluptatem', 'Molestias eos pariatur beatae repellendus et deserunt. Exercitationem quidem rem eum natus. Occaecati consequatur quia omnis vel.', 'Non rerum est voluptatem mollitia modi non dolorem. Nostrum quos nobis praesentium in est. Aut reprehenderit vel nihil in in. Et magnam quae sint officia. Repellendus consectetur dolor quis sunt et neque. Deserunt optio fugiat eum. Ut expedita consequatur et quidem. Eaque consectetur sed mollitia magni facere fugiat. Perferendis consectetur in possimus quia eligendi numquam quo numquam.', '450.00', NULL, 'DIGI491', 'ada', 0, 164, 'prod_6.jpg', NULL, 4, '2021-06-25 00:48:52', '2021-06-25 00:48:52'),
(7, 'Fairgoods Long-Sleeve', 'et-perferendis', 'Expedita harum repudiandae esse eligendi voluptatem. Dolor cum eveniet molestias deleniti ab. Delectus quidem non est numquam eaque tenetur placeat et. Molestiae quisquam dignissimos et sit.', 'Est dolores nam nemo ipsum officia ipsum. Veritatis fugiat pariatur perferendis nobis et. Molestiae sit atque assumenda nobis accusamus. In ea molestiae beatae autem voluptatem. Ut mollitia distinctio omnis tenetur velit id incidunt. Tenetur repellendus qui delectus ipsam iusto est porro. Sed qui veniam voluptatibus nisi.', '80.00', NULL, 'DIGI326', 'habis', 0, 109, 'prod_14.jpg', NULL, 4, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(8, 'Roughneck Green Hoodie', 'assumenda-ipsam', 'Nesciunt et dolorum eum ullam. Nobis sit et quia perferendis illo maiores.', 'Magnam eos voluptates ex similique eum cum magnam. Iusto voluptas nihil qui deserunt et ut. Et aliquid aliquid nobis. Voluptatum facere rerum rerum adipisci consequuntur. Officiis est tenetur atque eos est adipisci. Ut aliquid autem autem maiores. Voluptas debitis sapiente qui natus iusto repudiandae at. Autem dolor ut unde ut earum et. Iure doloremque asperiores vel qui molestias eos. Earum est maiores possimus quae veniam. Enim consequatur sapiente quae quidem.', '175.00', NULL, 'DIGI270', 'ada', 0, 193, 'prod_22.jpg', NULL, 1, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(9, 'Holiday Fairgoods T-shirt', 'culpa-et', 'Id tenetur voluptate facere. Mollitia qui tenetur dolorum sunt tempora autem. Voluptatem aliquid rerum eos sunt totam voluptatem laborum. Nulla ullam eum aperiam consequuntur illum.', 'Dignissimos est quas tenetur dolorem. Occaecati unde accusantium earum consequatur voluptatem ipsum quam. Nulla eos dolorem tempore quis laudantium quidem. Non exercitationem itaque vitae ea dolore. Delectus excepturi illo eos ea ipsam qui ipsam. Sequi aut aut quia rem velit quasi. Ullam modi et repellat velit nihil ut libero. Eum qui iure in ratione cum. Non doloremque nostrum quos explicabo commodi. Unde sed minima rerum quos.', '75.00', NULL, 'DIGI392', 'habis', 0, 169, 'prod_11.jpg', NULL, 3, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(10, 'Roughneck Rainbow Hoodie', 'explicabo-distinctio', 'Sint placeat sunt asperiores et. Velit sint recusandae sit asperiores nesciunt. Est laboriosam veritatis officia quo eos architecto. Voluptas qui rerum quis est quo commodi facilis est.', 'Fuga qui sunt ex rerum maiores quo repellat tempora. Cupiditate et vel maxime est optio nobis. Eos tempora consectetur id hic. Veniam porro quasi id rem. Possimus ea assumenda iure iusto. Excepturi veritatis veritatis laudantium ipsa harum autem voluptates quia. Corrupti fuga qui beatae. Occaecati cumque sed voluptate ut eveniet rerum sed. Iusto voluptatem est odio modi aut. Debitis quasi eaque impedit.', '200.00', NULL, 'DIGI358', 'habis', 0, 144, 'prod_16.jpg', NULL, 4, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(11, 'Roghneck Purple Hoodie', 'est-rerum', 'Atque corrupti illo cum libero. Dolores sunt suscipit aut sint quas modi. Possimus totam placeat aut sunt et qui.', 'Nihil quasi sit vel. Expedita sed et sed. Voluptate accusantium distinctio et quisquam. Incidunt aut deleniti et dolore eos. Quia ut ab dignissimos repellendus temporibus minus qui. Et perferendis doloremque itaque ea veniam. Non est ducimus voluptatem provident soluta ipsam. Sint rerum recusandae quod deserunt laudantium iure nesciunt. Accusantium perferendis dignissimos ducimus sint velit eligendi. Velit consequatur id nulla adipisci quo numquam harum. Unde temporibus et similique et.', '175.00', NULL, 'DIGI410', 'ada', 0, 157, 'prod_19.jpg', NULL, 5, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(12, '1994 Varsity Jacket Skull', 'nihil-voluptate', 'Sunt quo quod et explicabo est. Accusamus aut voluptas ullam beatae ipsum sit. Qui quis ipsum praesentium dolorum provident dolore. Qui eos vero ab delectus quas voluptatem velit.', 'Optio dolores dolorem accusantium odio. Necessitatibus laborum dolores quidem necessitatibus consequatur doloremque. Et tempora beatae est inventore beatae voluptatem enim qui. Sed et consectetur nemo quia ipsam. Sed aliquid ut rerum quia voluptatum. Maxime possimus occaecati ullam nihil non dicta vel. Est quisquam voluptatum modi enim excepturi. Repellendus dolore et aut accusamus.', '360.00', NULL, 'DIGI370', 'habis', 0, 200, 'prod_2.jpg', NULL, 4, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(13, 'Roughneck Purple', 'vel-recusandae', 'Doloremque aut vel eius explicabo repellendus recusandae. Delectus corrupti in ipsa iusto earum quis adipisci ipsam. Dolor voluptas vitae magni rerum.', 'Maiores aut tempore perspiciatis dignissimos. Deleniti illum molestiae tempora nemo. Fugit occaecati necessitatibus occaecati quos voluptatem aliquid eos odit. Minus architecto perspiciatis non id. Aspernatur sequi facilis aliquam expedita autem fugiat. Repellendus dolorem et et voluptas quidem iure in aliquid. Autem ut consequuntur vel. Culpa distinctio eligendi inventore veritatis. Alias non officiis officia voluptas. Ad deserunt et voluptas rem assumenda sed et.', '175.00', NULL, 'DIGI487', 'ada', 0, 126, 'prod_18.jpg', NULL, 4, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(14, 'Roughneck Redbox', 'dolor-deleniti', 'Quas dolorem veniam laudantium est. Eius quasi et eum cum. Doloremque rem sed ut et magnam.', 'Consequatur impedit velit quae fuga autem animi. Sint voluptatem voluptatem sequi ut. Et perferendis sunt tenetur accusamus excepturi ipsum voluptatem nihil. Delectus ad ut fuga quia nam et beatae. Et impedit ipsa quis quibusdam culpa dolorem iste. Voluptatem magni est et eum ipsa odit magnam. Dolorum aut at et adipisci in. Ut enim dicta optio quia sed. Distinctio pariatur sapiente autem nostrum dolorem aut aut. Nesciunt sint officiis ducimus.', '416.00', NULL, 'DIGI329', 'ada', 0, 144, 'prod_17.jpg', NULL, 1, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(15, 'Red Varsity Jacket', 'eveniet-quo', 'Impedit dolorem illo aut deleniti temporibus ipsum ducimus. Libero sed aspernatur ut quam ea et ut cupiditate. Dolor et nemo quis est fugit.', 'Beatae porro dolores incidunt iure sapiente. Sequi pariatur quia eaque nam aperiam maxime. Placeat perspiciatis fugit asperiores. Odit autem tempora soluta sed et. Autem est quod qui earum aut cumque. Dolor ut voluptas minima ducimus dolorem id. Illo quaerat quia id numquam deserunt quia. Excepturi at officiis fugiat voluptatibus voluptate. Et ratione eius et qui voluptate minus. Voluptatem ut tenetur sed qui dolores eum molestiae. Eveniet autem aut nisi impedit ipsum et et.', '358.00', NULL, 'DIGI397', 'ada', 0, 136, 'prod_7.jpg', NULL, 2, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(16, 'Fairgoods Longsleeve', 'possimus-ipsum', 'Delectus numquam sit sint enim ut autem aperiam ipsam. Similique et rerum optio ipsa magni. Ut accusamus asperiores atque iste quibusdam.', 'Doloremque in saepe culpa reprehenderit qui. Quasi blanditiis omnis nobis. Sunt atque sit enim et. Magni maiores libero laboriosam voluptatem. Et consectetur id veniam laudantium molestiae alias ut sint. Sit nihil est molestiae explicabo quo illo. Rerum dolorum necessitatibus est reiciendis ut debitis.', '34.00', NULL, 'DIGI153', 'habis', 0, 181, 'prod_15.jpg', NULL, 3, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(17, 'Happiness Shirt', 'ullam-ex', 'Expedita rerum quae sint rem laborum. Fuga ut nihil enim non. Praesentium asperiores corporis id maxime magnam. Earum omnis quia dicta dolor.', 'Qui earum officia totam sint sit reprehenderit veniam. Doloremque quis numquam ea. Et fugiat magni laudantium iusto iusto similique nam. Est voluptatem asperiores blanditiis ipsam sunt aut ad. Delectus corporis voluptates aliquam facilis quod. Assumenda non officiis rerum eos quasi voluptas. In sint iusto aut culpa. Consequatur unde earum amet consequuntur et sapiente.', '390.00', NULL, 'DIGI123', 'ada', 0, 177, 'prod_10.jpg', NULL, 4, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(18, 'Fairgoods Barong', 'voluptatem-molestias', 'Dolorem et velit dolorum magnam. Sequi reprehenderit veniam odit mollitia. Nulla delectus a magni odit numquam iusto sed in.', 'Necessitatibus saepe qui error est aliquam et. Ut maiores sint porro ullam. Iste sit debitis voluptatum minima eius. Excepturi doloribus eius consequuntur quae ipsam quo cumque ab. Hic sequi animi consequatur commodi commodi enim. Reiciendis asperiores delectus eveniet in vel similique nihil. Commodi eveniet id et deleniti. Autem qui dolor doloremque voluptas non ullam. Labore saepe et in laborum ducimus. Saepe odit autem consequatur laboriosam.', '96.00', NULL, 'DIGI372', 'habis', 0, 199, 'prod_12.jpg', NULL, 1, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(19, 'Pain Tshirt', 'blanditiis-eum', 'Perspiciatis quibusdam voluptate enim adipisci. Et hic distinctio iure quaerat sed doloribus dolores.', 'Sit possimus atque neque molestiae beatae placeat. Quia saepe dolor et facilis aspernatur alias. Iure consequuntur voluptas omnis. Vel aut non et excepturi officiis quod molestiae quos. Dolorum distinctio unde quia et in ut. Totam impedit non quod minima. In enim nam nisi dicta. Perferendis eaque quo qui ut autem nam recusandae. Tempore corrupti et doloremque sit veniam.', '419.00', NULL, 'DIGI267', 'habis', 0, 176, 'prod_4.jpg', NULL, 2, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(20, 'roughneck black gold', 'porro-ea', 'Molestias corporis nesciunt rerum ad placeat voluptatum. Quia molestiae error voluptatibus ipsum ut nihil non qui.', 'Nobis nihil laudantium consequatur error sed omnis quia. Itaque rem in fugiat et dolor voluptas. Cupiditate dolorum autem sit eum beatae est similique. Incidunt odit ad sit eos veniam. Sint quibusdam optio eos eaque. Ut ad voluptatum voluptatem velit repellat veniam id cum. Rerum qui aperiam explicabo cupiditate quisquam aut. Quis maiores sapiente commodi deleniti et ea ad. Commodi est sit est. Ullam ad quasi neque. Deleniti tenetur voluptate cum eum dolorem quasi.', '124.00', NULL, 'DIGI197', 'ada', 0, 177, 'prod_1.jpg', NULL, 2, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(21, 'Roughneck white', 'perspiciatis-eligendi', 'Accusamus magni quo animi atque quidem molestiae. Sit magni rerum exercitationem voluptatem sunt voluptatem illo. Non qui ut quas laboriosam.', 'Qui maiores harum consectetur. Sed ratione voluptas quis maiores. Quia aperiam sequi dolorum omnis magnam. Sapiente nihil numquam deserunt animi voluptatibus. Velit ut vel unde id. Et reiciendis magnam explicabo molestiae tempore qui itaque. Porro dolores libero nesciunt pariatur consequatur. Id dolore sit maiores nostrum ipsam aut quia.', '86.00', NULL, 'DIGI105', 'habis', 0, 188, 'prod_20.jpg', NULL, 5, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(22, 'Fairgoods reen komodo', 'quam-doloribus', 'Cumque iusto et voluptatem dolor eveniet unde magni. Impedit suscipit accusantium consectetur. Ab ipsum nihil quasi voluptatum explicabo.', 'Aliquam ea cum dolores facilis quidem minus. A doloremque suscipit optio. Animi ea sunt quod atque quae vero. Enim dolores quis cupiditate iure qui. Sit hic consequatur quibusdam quisquam vel. Laborum blanditiis cumque velit. Explicabo nam quae ipsum quo cumque quia. Aliquid officia sint est et. Fugit ut consequuntur consequatur cupiditate ut. Optio iste et voluptates facere iste harum voluptatem. In nihil dignissimos adipisci. In modi autem officia maiores incidunt iure fugiat.', '224.00', NULL, 'DIGI277', 'ada', 0, 191, 'prod_13.jpg', NULL, 2, '2021-06-25 00:48:53', '2021-06-25 00:48:53'),
(23, 'Green Jacket', 'produk-baru', 'kaos hitam polos', 'kaos hitam polos', '250.00', NULL, 'DIGI900', 'ada', 0, 100, 'prod_22.jpg', NULL, NULL, '2021-07-01 01:23:52', '2021-07-01 01:23:52'),
(24, 'Green T-shirt', 'green-tshirt', 'Kaos Hijau', 'Kaos hijau ', '70.00', NULL, 'DIGI987', 'ada', 0, 100, 'prod_13.jpg', NULL, NULL, '2021-07-01 08:41:28', '2021-07-01 08:41:28'),
(25, 'Jaket Putih', 'jaket-putih', 'jaket putih', 'jaket putih', '200.00', NULL, 'DIGI765', 'ada', 0, 80, 'prod_20.jpg', NULL, NULL, '2021-07-01 08:41:53', '2021-07-01 08:41:53'),
(26, 'Jaket maroon', 'jaket-maroon', 'jaket maroon', 'jaket warna maroon', '175.00', NULL, 'DIGI888', 'ada', 0, 75, 'prod_19.jpg', NULL, NULL, NULL, NULL),
(27, 'Kaos Hitam', 'kaos-hitam', 'Kaos hitam ', 'Kaos hitam bergambar', '75.00', NULL, 'DIGI500', 'ada', 0, 25, '1625130153_jpg', NULL, NULL, '2021-07-01 02:02:33', '2021-07-01 02:02:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7HvM6x1xdlEy5nEqaP5s3gO0Mo0OM0k0zjBOb8Cw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0xpZWtCSW41cFJaS0NNdEpmd1NWYUlvRkNBRlpTWUJQMUZlUDVXOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1625143244),
('hAxQsdriFUBzm2YKrl5XcUJFbFzs96bL6ELfoGOO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGFZYjRuMkM3YWwybnZPN2JuaktVRFNtWTFXQnZyY0YzMGxtalVGRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1625140919);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$B/b7GMRalNwBAz1RwrcSW.9KWKc9SllxWT6Qasiyzn5RJzpFWJ29y', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-06-23 14:01:55', '2021-06-23 14:01:55'),
(2, 'User', 'user@user.com', NULL, '$2y$10$bqqTu0RpiQbHE03u89H1z.I77HlpqdBMlnASCIsvgeZ1rSyXg4SUS', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-06-23 14:02:24', '2021-06-23 14:02:24'),
(4, 'Adistya', 'adistya@user.com', NULL, '$2y$10$cuEkHTyBHosf6m3IjTfHquim/lNDMSeG6IMx19FxR2R1x6.4TCmsO', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-06-28 14:20:02', '2021-06-28 14:20:02'),
(5, 'Jidan', 'jidan@gmail.com', NULL, '$2y$10$MQfPhGF7/FUR9Qb.UctMVe8veqc5mpUtwtyF6cXJmm8QuedMA6wE6', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-06-28 14:22:14', '2021-06-28 14:22:14'),
(6, 'Pita', 'pita@user.com', NULL, '$2y$10$rxf5379UsSaUjxzMSIuO3.F1pmvnUJjzxPXqy1xnIP8hzlGpmHkne', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-06-28 14:23:12', '2021-06-28 14:23:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategoris_nama_unique` (`nama`),
  ADD UNIQUE KEY `kategoris_slug_unique` (`slug`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produks_slug_unique` (`slug`),
  ADD KEY `produks_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD CONSTRAINT `produks_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
