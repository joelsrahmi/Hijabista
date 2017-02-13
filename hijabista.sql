-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 04:11 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hijabista`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--
-- Creation: Jun 21, 2016 at 11:54 AM
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(11) NOT NULL AUTO_INCREMENT,
  `id_posting` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `komentar` text NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_posting`, `username`, `tgl`, `komentar`) VALUES
(3, 9, 'megamendung', '2014-12-15 03:14:39', 'Toraja dimana sih? gatau nih'),
(4, 9, 'megamendung', '2014-12-15 03:32:18', 'toraja dimana sih? mohon pencerahannya'),
(5, 9, 'anedaiba', '2014-12-15 06:26:51', 'wah bagus'),
(6, 9, 'anedaiba', '2014-12-15 06:35:49', 'Toraja di deket Sulawasi @megamendung'),
(7, 9, 'yuliza17', '2014-12-15 06:40:09', '@megamendung liat aja Google, @anedaiba iya bener tuh Toraja deket Sulawasi. Terima kasih sudah berkunjung :) '),
(8, 9, 'hanum15', '2014-12-15 06:55:01', 'Waduh uwe jg gatau indang Toraja dimandang :@ padahal yg bikin nih artikel gue loh hehe'),
(10, 5, 'ajenglay', '2014-12-17 07:34:58', 'sangat mengispirasi gan. nitip lapak buat yang lagi nyari jersey couple jangan lupa mampir ke www.ajenkjersindo.com ;))'),
(14, 9, 'rianjombs', '2014-12-17 08:09:10', 'kece badai banget postingannyaaaaaaaaaaaaaaaa!!!!'),
(15, 9, 'Laela ', '2014-12-17 14:55:43', 'Kasih tiket gratis dong!!!!!'),
(16, 9, 'megamendung', '2015-05-16 16:59:38', 'oh toraja di sulawasi toh hehe maklum aku baru jadi WNI :)'),
(17, 11, 'asep.sepsoh@ymail.com', '2016-06-21 14:56:33', 'kembaran aku akhirnya berhijab :"'),
(18, 11, 'bia.badunk@rocketmail.com', '2016-06-21 14:56:46', '@asep.sepsoh lu gila ya ngaku2 kembaran?'),
(19, 11, 'dj.joels@live.com', '2016-06-21 14:58:00', 'lah kocak lu semua\r\nbtw semoga Bella istiqomah ya dalam berhijabnya :)'),
(20, 11, 'hanum.lenj@gmail.com', '2016-06-21 15:02:50', 'ya ampun jgn brantem, yg penting alhamdulillah sekarang Bella udah bberhijab kan'),
(21, 11, 'ajenk.sky@gmail.com', '2016-06-21 15:09:35', 'ahelah brisik lu semua'),
(22, 11, 'jemb.ay@yahoo.com', '2016-06-21 15:20:23', 'wiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii ekeekekkekekekek'),
(23, 16, '', '2016-06-21 20:34:49', ''),
(24, 11, 'hanum.lenj@gmail.com', '2016-06-22 06:53:40', 'iyaaaa'),
(25, 20, 'mega.mendung@gmail.com', '2016-06-22 07:10:00', 'wow'),
(26, 11, 'yulizaa.rahmi@gmail.com', '2016-06-22 07:58:34', 'wah bagus');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--
-- Creation: Jun 21, 2016 at 11:54 AM
--

CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(5) NOT NULL AUTO_INCREMENT,
  `tipe` char(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(8) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `tipe`, `date`, `username`, `email`, `password`, `pertanyaan`, `jawaban`) VALUES
(1, '1', '2014-12-17 07:50:29', 'yuliza17', 'yulizaa.rahmi@gmail.com', '17071995', '1', 'Nicholas Flamel'),
(2, '1', '2014-12-09 06:40:34', 'hanum15', 'hanum.aulia@gmail.com', '15071995', '1', 'Kamasutra'),
(16, '2', '2014-12-08 17:27:18', 'ajenglay', 'dini.ajeng@ymail.com', 'lopnadir', '2', 'si mpus'),
(17, '2', '2014-12-08 17:28:14', 'nisanasi', 'nisa.nasution@rocketmail.com', 'nisaajah', '2', 'tenyom'),
(18, '2', '2014-12-08 17:29:19', 'megamendung', 'mega.awan_mendung@live.com', 'gledek', '2', 'gukguk'),
(19, '2', '2014-12-08 17:30:20', 'dyahggirl', 'dyahtri@live.com', 'dyahaja', '2', 'yuliza si pintar'),
(20, '2', '2014-12-08 17:33:42', 'anedaiba', 'biadena@gmail.com', 'loplomi', '2', 'siapa ya?'),
(21, '2', '2014-12-08 17:34:13', 'abi', 'abi@gmail.com', 'abiaja', '2', 'yuliza si pintar'),
(22, '2', '2014-12-08 17:34:41', 'indah', 'indah@gmail.com', 'indahnus', '2', 'yuliza si pintar'),
(23, '2', '2014-12-08 17:36:39', 'jangkar', 'jangkar@gmail.com', 'janglay', '2', 'yuliza si pintar'),
(24, '2', '2014-12-09 06:41:35', 'whoisthis', 'whoareu@rocketmail.com', 'wowah', '3', 'tidak punya dosen'),
(25, '2', '2014-12-15 14:05:01', 'jeane', 'jeane@gmail.com', 'nevianti', '4', 'nonton'),
(26, '2', '2014-12-17 07:39:26', 'FiqiFat', 'fififiq@rocketmail.com', 'pikih', '1', 'supernova'),
(27, '2', '2014-12-17 07:41:00', 'henkering', 'hendrycleaning@yahoo.com', 'bersihbe', '2', 'amir'),
(28, '2', '2014-12-17 07:42:17', 'desoyoyjkt48', 'oyoyoy@live.com', 'alalong', '3', 'gatau'),
(29, '2', '2014-12-17 07:43:34', 'meipreneur', 'meilia@gmail.com', 'sukses', '3', 'Octaviano Pratama'),
(30, '2', '2014-12-17 08:07:25', 'rianjombs', 'riian@gmail.com', 'rianlay', '1', '50sog'),
(31, '2', '2014-12-17 14:52:17', 'Laela ', 'laelarosalia@gmail.com', 'lala', '1', 'aa'),
(32, '1', '1996-09-06 17:00:00', 'alif123', 'alif@gmail.com', '12345', 'siapa saya?', 'saya adalah alip'),
(33, '1', '1996-12-06 17:00:00', 'nandita14', 'nandit@gmail.com', '54321', 'siapa kamu?', 'kamu adalah kamu');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--
-- Creation: Jun 21, 2016 at 11:54 AM
--

CREATE TABLE IF NOT EXISTS `posting` (
  `id_posting` int(6) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `kriteria` varchar(50) NOT NULL,
  `artikel` longtext NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_posting`),
  KEY `date` (`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id_posting`, `judul`, `kriteria`, `artikel`, `gambar`, `date`) VALUES
(11, 'Bella, si Cantik yang Berhijrah', 'News', '<p>Keputusan berhijab aktris cantik Laudya Cynthia Bella atau yang akrab disapa Bella ini sempat mengundang banyak pertanyaan. Apakah yang terjadi sehingga ia memutuskan untuk berhijab? Di saat perempuan lainnya cemas dengan kelanjutan karirnya jika memutuskan berhijab, Bella malah semakin memantapkan dirinya. Diawali dengan keraguan atas karirnya yang akan terhenti, Bella malah mendapatkan hal yang sebaliknya.</p>\r\n<p>Semenjak memakai hijab, banyak sekali perubahan dalam hidup yang dirasakannya. Bella merasa hidupnya lebih lengkap dan lebih mensyukuri atas apa yang telah diberikan padanya. Kini, Bella juga telah menemukan apa arti Citra Cantik Indonesia yang sesungguhnya. Karirnya juga semakin naik yang dibuktikan dengan banyak film yang berdatangan, salah satunya Surga Yang Tak Dirindukan. Seolah Tuhan telah menjawab ketakutan Bella sebelumnya, ia malah diberi lebih dari yang dibayangkan.</p>\r\n<p>&nbsp;</p>\r\n<p>Rasa syukur Bella tidak hanya diwujudkan dengan memakai hijab saja, namun juga menjaga dan merawat apa yang sudah diberikan. Walaupun memaki hijab, Bella tetap merawat tubuhnya. Biarpun telah memakai pakaian tertutup, Bella mengaku tetap memperhatikan perawatan tubuhnya. Bahkan, perawatan perempuan berhijab menurut Bella harus lebih ekstra. Ia selalu menyempatkan diri luluran 1 minggu sekali dan menggunakan body lotion 2 kali sehari setelah mandi.</p>\r\n<p>&nbsp;</p>\r\n<p>Namun, ada sedikit yang berbeda yakni Bella lebih senang menggunakan body lotion berbentuk gel lotion yang lebih cepat menyerap di kulit. Jadi, Bella tidak perlu menunggu lama untuk menggunakan pakaian. Bella juga mengungkapkan rahasia perawatan tubuhnya, yakni menggunakan Citra Japanese Wakame yang terbuat dari rumput laut Jepang yang memiliki tekstur ringan dan menyegarkan kulit.</p>\r\n<p>&nbsp;</p>\r\n<p>Citra Wakame ini merupakan gel lotion pertama di Indonesia yang bermanfaat untuk mencerahkan kulit dan menyerap super lengkap tanpa rasa lengket. Sangat cocok bagi Bella saat menghadapi panasnya kota Jakarta. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Setelah mengungkapkan kisahnya, bagi Bella sendiri arti Citra Cantik Indonesia tidak hanya dilihat dari luarnya saja. Namun, lebih dilihat dari bagaimana seorang perempuan berani memutuskan sesuatu untuk menjadi lebih baik serta memiliki keberanian untuk mengambil keputusan. Itulah definisi Citra Cantik Indonesia menurut Bella, ia percaya jika sesuatu yang dilakukan dengan ikhlas, jalannya akan dimudahkan.</p>\r\n<p>&nbsp;</p>\r\n<p>Cerita dari Laudya Cynthia Bella ini diharapkan dapat menginspirasi perempuan Indonesia lainnya untuk berani bergerak maju untuk menjadi lebih baik. Karena perempuan cantik itu, mampu berdiri kokoh menghadapi masalahnya dan berani mengambil keputusan.</p>\r\n<p>&nbsp;</p>\r\n<p>"Saya yang sekarang ini adalah Citra cantik Indonesia. Kalau kamu?" &nbsp;ucap Bella.</p>', 'bella.jpg', '2016-06-21 19:48:49'),
(12, 'Kisah Sukses Diajeng Lestari, Pendiri Toko Online HijUp.com', 'Inspiration', '<p>Nama HijUp.com kini semakin populer sebagai toko online yang menjual produk-produk muslimah.</p>\r\n<p>&nbsp;</p>\r\n<p>Seperti apakah kisah sukses toko online yang didirikan oleh Diajeng Lestari ini?</p>\r\n<p>Mungkin belum banyak yang tahu dengan sosok ibu muda yang cantik ini. Dia adalah Diajeng Lestari yang merupakan pendiri HijUp.com.</p>\r\n<p>&nbsp;</p>\r\n<p>Seperti apakah kisah sukses Diajeng Lestari ini?</p>\r\n<p>&nbsp;</p>\r\n<p>Awalnya, seorang Diajeng Lestari adalah seorang ibu rumah tangga. Dia lahir di Bekasi pada 17 Januari 1986. Saat ini omzet dari HijUp.com berkisar antara Rp 500 juta hingga Rp 1 miliar perbulannya.</p>\r\n<p>&nbsp;</p>\r\n<p>Meski bisnis online yang dirintisnya baru seumur jagung, namun perempuan yang akrab dipanggil Ajeng ini mampu meluluhkan hati konsumen lokal dan mancanegara. 20% pembeli busana muslim di Hij-Up berasal dari mancanegara, seperti Malaysia, Singapura, serta Timur Tengah.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Pengalaman bisnis Diajeng Lestari</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Pengalaman Ajeng (panggilan akrab Diajeng Lestari) berbisnis sudah terlatih sejak dirinya masih kecil. &ldquo;Waktu kelas empat SD, saya membuat cincin dari kabel-kabel telepon bekas di gudang dan saya jual ke teman,&rdquo; tutur dia. &nbsp;Ajeng awalnya juga memasarkan produk gantungan kunci kreasi sang kakak. Dan dari situlah Ajeng sering mendapat order gantungan kunci dalam jumlah yang besar.</p>\r\n<p>&nbsp;</p>\r\n<p>Pada saat mengenyam pendidikan di SMP dan SMA, Ajeng tidak berjualan. Kemudian pada tahun 2004, perusahaan ayahnya yang bergerak di bidang telekomunikasi bangkrut. &ldquo;Ketika ekonomi keluarga hancur dan adik-adik masih banyak, saya berusaha mencari tambahan,&rdquo; ujar anak ketiga dari delapan bersaudara ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Semenjak itulah, Ajeng kemudian mencari penghasilan tambahan dari berjualan kue, jilbab, mengajar privat dan bimbingan belajar, hingga bekerja freelance sebagai interviewer.</p>\r\n<p>&nbsp;</p>\r\n<p>Setelah lulus kuliah Jurusan Ilmu Politik di Universitas Indonesia, Ajeng bekerja di perusahaan marketing research. Setelah menikah, Ajeng justry memutuskan untuk berhenti bekerja. Dia pun akhirnya menjadi seorang ibu rumah tangga seperti kebanyakan wanita.</p>\r\n<p>&nbsp;</p>\r\n<p>Dengan alasan untuk aktualisasi diri, Ajeng pun mencoba untuk berbisnis. Waktu itu busana muslim merupakan lahan bisnis yang dipilihnya. Ajeng menilai, bisnis busana muslim sangat potensial. Maklum, Indonesia memiliki penduduk mayoritas muslim.</p>\r\n<p>&nbsp;</p>\r\n<p>Ajeng juga memiliki mimpi bahwa produk fesyen bikinan kita bisa sejajar dengan produksi luar negeri. &ldquo;Saya diskusi dengan suami mengenai mimpi ini dan bagaimana implementasinya dalam bisnis,&rdquo; ujar istri dari Achmad Zaky Syaifudin ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Dari obrolan dengan suami, Ajeng memutuskan untuk menjadi agen perubahan di dunia Islamic fashion. Ajeng pun melakukan penelitian kecil dan wawancara dengan beberapa orang yang pernah berbisnis serupa. Setelah melakukan serangkaian riset dan persiapan, Ajeng pun memutuskan untuk membuat katalog fashion online.</p>\r\n<p>&ldquo;Tapi ternyata permintaan pasar bukan hanya katalog, mereka butuh marketing online dan sistem untuk mengatur lalu lintas produk,&rdquo; ujar dia.</p>\r\n<p>&nbsp;</p>\r\n<p>Akhirnya, Ajeng pun memulai bisnisnya dengan kerja rangkap berbagai bagian. Ajeng pun berkolaborasi dengan sang suami yang memang jago di bidang IT dan membangun HijUp sebagai e-commerce yang menjadi platform untuk menjembatani pemilik merek busana muslim dengan pasar.</p>\r\n<p>&nbsp;</p>\r\n<p>HijUp yang merupakan singkatan dari hijab up itu, mulai eksis di duni internet sejak tanggal 1 Agustus 2011. Ajeng kemudian merekrut dua karyawan yang bertugas sebagai admin komputer dan admin gudang.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;Baru sehari masuk, admin komputer resign. Saya stres sekali,&rdquo; kenangnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Dikarenakan jumlah karyawan yang terbatas, Ajeng pun melakukan pekerjaan yang merangkap, mulai memberi gantungan baju, menjadi stylist saat pemotretan, mengoordinasikan pemotretan, sampai dealing dengan tenant. Kemudian, untuk urusan website, dan sistem sang suami -lah yang turun tangan.</p>\r\n<p>&nbsp;</p>\r\n<p>Banyak masalah yang menimpa Ajeng, namun dia tak menyerah. Hal yang tersulit bagi Ajeng adalah meyakinkan para calon tenant untuk mau memajang produk mereka di HijUp. Ajeng harus mengajukan proposal dan melakukan penawaran ke beberapa desainer dan produsen busana muslim supaya mereka mau diajak bekerja sama.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;Tidak mudah, banyak yang mencibir dan menolak. Saya maklum karena bisnis ini masih baru, belum dikenal,&rdquo; tuturnya Ajeng.</p>\r\n<p>&nbsp;</p>\r\n<p>Banyaknya hambatan yang dihadapi &nbsp;nyaris menggoyahkan Ajeng untuk menghentikan bisnis itu. Namun, ia berusaha meyakinkan diri meski rasa ragu akan ketidaksuksesan bisnisnya terus-meners membayangi.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Akhirnya, satu per satu tenant pun datang. Pada bulan-bulan pertama, HijUp memiliki 14 tenant. &ldquo;Penjualan merangkak naik. Sudah mulai mendekati ratusan juta,&rdquo; ujarnya tersenyum.</p>\r\n<p>&nbsp;</p>\r\n<p>Nama HijUp pun semakin dikenal. Jumlah pengunjung dan konsumen terus meningkat. Hingga awal 2013, ada sekitar 1,5 juta orang yang mengunjungi situs HijUp.com. Bukan itu saja, jumlah tenant di situs belanja ini juga bertambah hingga mencapai 70 tenant.</p>\r\n<p>&nbsp;</p>\r\n<p>Sekarang, segalanya justru terbalik. Ajeng tidak perlu lagu susah payah berburu tenant, tetapi justru ia yang disibukkan dengan proposal pengajuan kerja sama dari para produsen fesyen. Bukan hanya dari dalam negeri, tenant dari luar negeri pun banyak yang ingin bekerja sama.</p>\r\n<p>&nbsp;</p>\r\n<p>&ldquo;Salah satunya adalah sepupu Perdana Menteri Malaysia,&rdquo; ujar dia.</p>\r\n<p>&nbsp;</p>\r\n<p>Menarik memang menyaksikan kisah sukses Ajeng di atas. Selain diawali dengan keterbatasan dan banyak kesulitan, pada akhirnya kerja keras, keuletan dan doa yang tiada henti mampu mengantarkan kesuksesan bagi HijUp.com.</p>\r\n<p>&nbsp;</p>\r\n<p>Semoga dengan adanya kisah sukses penjual online di atas bisa memberikan inspirasi bagi anda. Ingat, segera action dan mulai bisnis anda dari sekarang!</p>\r\n<p>&nbsp;</p>\r\n<p>Salam sukses!</p>\r\n<p>&nbsp;</p>\r\n<p><em>(Sumber: Facebook/bisnis adalah awal sebuah kesuksesan)</em></p>', 'Diajeng-Lestari.jpg', '2016-06-21 22:34:15'),
(13, 'Hijab Bukan Halangan Untukku Menjadi Balerina', 'Inspiration', '<p>Ketika menyebut kata balerina, apa yang terlintas di pikiran Anda? Seorang perempuan cantik dengan rok tutunya? Bagaimana dengan balerina yang berhijab? Seperti yang dilansir oleh fashfaith.com,Hiba Awad adalah seorang balerina muslim sekaligus tap dancer yang berasal dari Texas, Amerika Serikat.</p>\r\n<p>&nbsp;</p>\r\n<p>Hiba Awad telah menunjukkan kepada kita bahwa wanita muslim yang berhijab masih bisa mengeskpresikan dirinya. Seorang wanita berhijab juga bisa berkarya dan mengekspresikan dirinya di berbagai bidang, seperti di lantai dansa sebagai penari balet atau di bidang olahraga sebagai atlet. Mungkin banyak orang yang bertanya-tanya, bagaimana seorang wanita muslim yang berhijab bisa menjadi seorang balerina? Jawabannya mudah saja karena setiap orang berhak memilih jalan hidupnya, begitu pula dengan seorang wanita muslim.</p>\r\n<p>&nbsp;</p>\r\n<p>Sadaf Syed penulis buku "iCOVER: A Day in the Life of a Muslim Covered Girl" sebuah buku tentang wanita muslim di Amerika mengatakan bahwa, "Banyak muslim di Amerika yang merasa mereka tak memiliki suara." Ia pun melanjutkan, "Aku ingin banyak cerita yang disampaikan setelah tragedi 9/11 yang bisa mengedukasi pembaca dan membantu mereka untuk tahu tentang keindahan iman Islam."</p>\r\n<p>&nbsp;</p>\r\n<p>Hijab bukan halangan bagi siapapun untuk berkarya, Anda setuju dengan hal ini, Ladies?</p>\r\n<p>&nbsp;</p>\r\n<p><em>(sumber: vemale.com)</em></p>', 'hijab-bukan-halangan-untukku-menjadi-balerina.jpg', '2016-06-22 01:07:08'),
(15, 'Pengalaman Unik Dewi Sandra Saat Syuting 99 Cahaya di Langit Eropa', 'News', '<p>Berkesempatan mengunjungi beberapa kota di Eropa untuk syuting film terbarunya, Dewi Sandra mendapat pengalaman unik tentang penyebaran agama Islam disana. Dewi terlibat dalam sebuah film adaptasi novel laris berjudul 99 Cahaya di Langit Eropa.</p>\r\n<p>&nbsp;</p>\r\n<p>Salah satu pengalaman unik Dewi yang kemungkinan akan ikut tergambar di film 99 Cahaya di Langit Eropa adalah tentang misteri di balik lukisan Monalisa. Bagi Dewi, jika melihat lukisan tersebut secara langsung maka akan terlihat gambar lain yang berkaitan dengan unsur Islami.</p>\r\n<p>&nbsp;</p>\r\n<p>"Ada salah satu scene yang menarik. Semua orang kesana untuk melihat lukisan Monalisa dan ternyata disana banyak juga sejarah Islam yang tidak terungkap. Dengan sangat jelas, kita justru melewati Monalisa, ada lukisan Bunda Maria dan bayi Isa. Di kerudung Bunda Maria ada tulisan arab. Tulisan apa itu?," ujar Dewi saat road show film 99 Cahaya di Langit Eropa di Universitas Gunadarma, Kali Malang, Jakarta Timur.</p>\r\n<p>&nbsp;</p>\r\n<blockquote>\r\n<p>"Ini adalah film dimana menjadi salah satu media atau cara untuk mengenali agama kita. Akhirnya dengan film ini saya dapet 2 sms dari teman non Islam yang mengatakan Dewi I saw the trailler. Is it facts? Kata saya ya, itu semua ada, bahkan sejarahpun bakal mengklarifikasi semua keraguan itu," tambahnya.</p>\r\n</blockquote>\r\n<p>&nbsp;</p>\r\n<p>Pengalaman unik lain juga dialami Dewi dengan lawan mainnya yang merupakan aktris cilik bernama Gecha. Dalam sebuah adegan, Dewi sempat dibuat panik lantaran Gecha menangis pasca menjalani adegan yang berat.</p>\r\n<p>&nbsp;</p>\r\n<p>"Di apartemen itu Gecha harus memerankan adegan susah. Saat adegan itu saya yang nangis, tapi setelah selesai cut, Gecha nangis. Kita semua panik sampai akhirnya ia minta es krim, es krimnya request dua kali," tutur Dewi.</p>\r\n<p>&nbsp;</p>\r\n<p>Di film tersebut, Dewi Sandra dipercaya untuk berlakon sebagai seorang ilmuwan asal Perancis bernama Marion. Ia adalah seorang mualaf yang akhirnya memutuskan masuk Islam dan menyampaikan sejarah Islam dengan caranya.</p>\r\n<p>&nbsp;</p>\r\n<p>Film 99 Cahaya di Langit Eropa diadaptasi dari novel best seller berjudul sama karya Hanum Salsabiela Rais dan Rangga Almahendra. Film ini banyak bercerita tentang kisah perjalanan Hanum dan Rangga selama 3 tahun tinggal di Eropa yang dibalut kisah persahabatan, perjuangan untuk mempertahankan keyakinan serta kisah pencarian jejak sejarah Islam di Eropa.</p>\r\n<p>&nbsp;</p>\r\n<p>Film yang disutradarai oleh Guntur Soeharjanto ini pun menjanjikan kualitas visual karena lokasi shooting film 100% dilakukan di beberapa kota di Eropa yaitu Vienna, Paris, Cordoba dan Istanbul. Selain Dewi Sandra, film produksi Maxima Pictures ini juga dibintangi oleh Acha Septriasa, Abimana, Raline Shah, Vj Marissa, Fatin Sidqia Lubis dan Alex Abbad. 99 Cahaya di Langit Eropa dijadwalkan tayang di Cinema 21 pada 5 Desember 2013.</p>\r\n<p>&nbsp;</p>\r\n<p><em>(Sumber: www.21cineplex.com)</em></p>', 'ds2.jpg', '2016-06-22 02:43:50'),
(16, 'Quotes Of the Day', 'News', '<p>In a world full of KARDASHIANS aspire to be like KHADIJAH (May Allah SWT Be Pleased With Her)<img src="C:/xampp/htdocs/_YULIZA/Hijabista/img/100.jpg" alt="(source: www.ultraupdates.com/)" /></p>\r\n<p>&nbsp;</p>', '100.jpg', '2016-06-22 02:58:05'),
(18, 'Tutorial Hijab Simple Trendy Segi Empat Ala Zaskia Adya Meca', 'Tutorial', '<p>Buat yang mau pakai hijab yang mudah tapi tetap terlihat formal, ini dia videonya :)</p>\r\n<p><iframe src="//www.youtube.com/embed/S_ErpslV0Hk" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', '', '2016-06-22 05:40:44'),
(19, 'Tips dan Trik Hijab untuk Bekerja', 'Tutorial', '<p>Saat ini, fashion muslim sudah banyak bertebaran. Dan salah satunya untuk bekerja. Pada saat ini, tampilan fashion untuk bekerja pun menjadi salah satu hal yang paling dilihat dari penampilan seseorang. Wanita karier pun ingin menjadi yang paling dilihat dari dirinya dan menampakkan kelas dari seseorang, agar terlihat cantik.</p>', 'inspirasi3.jpg', '2016-06-22 14:03:19'),
(20, 'Cara Mudah dan Praktis Menggunakan Hijab Pashmina', 'Tutorial', '<p>Pashmina adalah salah satu bentuk hijab yang menjadi trend masa kini. Banyak wanita yang bingung menggunakan pashmina saat ini yang terkesan baik dan modern.</p>\r\n<p><iframe src="//www.youtube.com/embed/fQ8pyHawCes" width="560" height="314" allowfullscreen="allowfullscreen"></iframe></p>', '', '2016-06-22 14:06:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
