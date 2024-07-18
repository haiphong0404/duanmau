-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2023 at 04:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1_fpolybook`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `idtaikhoan` int NOT NULL,
  `idsanpham` int NOT NULL,
  `ngaybinhluan` date NOT NULL,
  `trangthai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `idtaikhoan`, `idsanpham`, `ngaybinhluan`, `trangthai`) VALUES
(2, 'abc', 12, 5, '2023-11-20', 1),
(4, 'lỗi', 12, 2, '2023-11-30', 1),
(5, '123', 12, 2, '2023-11-30', 1),
(8, 'Hay qua', 12, 16, '2023-12-07', 1),
(9, 'nice', 12, 16, '2023-12-07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int NOT NULL,
  `iddonhang` int NOT NULL,
  `idsanpham` int NOT NULL,
  `soluong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsanpham`, `soluong`) VALUES
(1, 457968203, 4, 1),
(2, 457968203, 5, 2),
(3, 706293148, 5, 1),
(4, 706293148, 3, 2),
(5, 706293148, 4, 1),
(6, 706293148, 2, 1),
(7, 128635947, 4, 1),
(8, 128635947, 5, 1),
(9, 658417023, 5, 2),
(10, 658417023, 2, 1),
(11, 658417023, 1, 1),
(12, 409186235, 5, 1),
(13, 14639587, 3, 3),
(14, 14639587, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `id` int NOT NULL,
  `idvoucher` int NOT NULL,
  `masanpham` int NOT NULL,
  `soluong` int NOT NULL,
  `tongtien` double(10,2) NOT NULL DEFAULT '0.00',
  `magiohang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhgiasp`
--

CREATE TABLE `danhgiasp` (
  `id` int NOT NULL,
  `noidung` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ngaydanhgia` date NOT NULL,
  `idtaikhoan` int NOT NULL,
  `idsanpham` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`) VALUES
(1, 'Sách Hay'),
(2, 'Truyện Tranh'),
(3, 'Tiểu Thuyết');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int NOT NULL,
  `diachinhanhang` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phivanchuyen` double(10,2) NOT NULL DEFAULT '0.00',
  `ngaytaodonhang` date NOT NULL,
  `trangthaidonhang` int NOT NULL,
  `tongtien` double(10,2) NOT NULL DEFAULT '0.00',
  `idkhachhang` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `diachinhanhang`, `phivanchuyen`, `ngaytaodonhang`, `trangthaidonhang`, `tongtien`, `idkhachhang`) VALUES
(14639587, 'Ba Vì,Hà Nội', 10000.00, '2023-12-07', 1, 515250.00, 12),
(128635947, 'Ba Vi Ha Noi', 10000.00, '2023-12-06', 1, 218780.00, 2),
(409186235, 'Ba Vi Ha Noi', 10000.00, '2023-12-06', 1, 111750.00, 2),
(457968203, 'Ba Vi Ha Noi', 10000.00, '2023-12-06', 1, 330530.00, 2),
(658417023, 'Ba Vi Ha Noi', 10000.00, '2023-12-06', 1, 597900.00, 2),
(706293148, 'Ba Vi Ha Noi', 10000.00, '2023-12-06', 1, 362780.00, 2);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int NOT NULL,
  `idtaikhoan` int NOT NULL,
  `idsanpham` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `giamoi` decimal(10,0) NOT NULL DEFAULT '0',
  `giacu` decimal(10,0) NOT NULL,
  `nhaxuatban` text COLLATE utf8mb4_general_ci NOT NULL,
  `mota` text COLLATE utf8mb4_general_ci,
  `soluong` int NOT NULL,
  `luotxem` int NOT NULL DEFAULT '0',
  `iddm` int NOT NULL,
  `hinhanh` text COLLATE utf8mb4_general_ci NOT NULL,
  `trangthai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giamoi`, `giacu`, `nhaxuatban`, `mota`, `soluong`, `luotxem`, `iddm`, `hinhanh`, `trangthai`) VALUES
(1, 'Sách Hay - Science Encyclopedia - Bách khoa thư về khoa học', '350400', '480000', 'NXB Thanh Niên', 'BÁCH KHOA THƯ VỀ KHOA HỌC - CUỐN CẨM NANG HỮU ÍCH VỀ KHOA HỌC DÀNH CHO CẢ GIA ĐÌNH\r\n\r\n“Bách khoa thư về khoa học” như một tủ sách bách khoa tri thức cô đọng lại tất cả những gì mà trẻ cần biết về mọi chủ đề cốt lõi của khoa học với đồ họa trực quan và hơn 180 đường link QR cho trải nghiệm thị giác sống động.\r\n\r\nVới 8 chủ điểm khoa học thú vị, bao gồm: Vật chất; Hỗn hợp và Hợp chất; Năng lượng, Các lực và Chuyển động; Trái Đất và Vũ trụ; Ánh sáng, Âm thanh và Điện; Thực vật và Nấm; Thế giới động vật; Cơ thể người, “Bách khoa thư về khoa học” đưa trẻ bước vào thế giới khoa học đầy lý thú.\r\n\r\nKiến thức trong sách được hệ thống rõ ràng, từ cơ bản đến chuyên sâu để phù hợp với 2 nhóm người đọc: mang lại giá trị học tập với các bạn học sinh & mang lại giá trị nghiên cứu với người lớn tuổi hơn (sinh viên, người yêu thích tìm tòi, khám phá). Ví dụ, về kim loại sẽ có các khái niệm cơ bản về kim loại, các nhóm kim loại, hợp kim, sự ăn mòn, sự khám phá và tái chế.\r\n\r\nKhông chỉ là thế giới động vật có những loài động vật nào mà là góc nhìn toàn diện về đời sống động vật, từ cấu tạo cơ thể, hoạt động sinh hoạt, sinh tồn, văn hóa bầy đàn, hệ sinh thái, sự bảo tồn, sự tiến hóa,...\r\n\r\nBên cạnh đó, vô số biểu đồ cùng hình ảnh minh họa hấp dẫn với thị giác xuất hiện khắp các trang sách, khiến những kiến thức và thông tin trở nên dễ hiểu hơn rất nhiều.\r\n\r\nCuốn sách này phù hợp với mọi lứa tuổi, không chỉ trẻ em mà người lớn nào có niềm đam mê và thích thú với khoa học thì đều nên sở hữu cuốn sách này. ', 16, 95, 1, 'sachhay_bachkhoathuvekhoahoc.jpg', 0),
(2, 'Sách Hay - Cẩm nang tư duy phản biện - Khái niệm và công cụ - Tái bản', '24000', '30000', 'NXB Tổng Hợp TPHCM', 'Apprendre à apprendre” (“học cách học”) là một khẩu hiệu nổi tiếng trong tiếng Pháp và không dễ… dịch, vì động từ “apprendre” trong tiếng Pháp dường như có cả hai nghĩa trong tiếng Anh: “to teach” và “to learn”! Không có sự tách bạch giữa “dạy” và “học”, vì vị trí của chúng đôi khi có thể thay thế cho nhau, hay nói ngắn, giữa chúng có một sự “vận động”. Sự vận động ấy chính là phương pháp.\r\n\r\nTừ khi René Descartes viết quyển “Các quy tắc hướng dẫn tư duy” (Règles pour la direction de l’esprit) năm 1628 và “Luận văn về Phương pháp” (Discours de la Méthode) năm 1637, khoa học và tư duy khoa học thật sự bước vào thời hiện đại, tức, ta không còn có thể suy nghĩ và làm việc như thể không có… Descartes được nữa! Gần bốn thế kỷ đã trôi qua với biết bao sự cải tiến và tinh vi hóa về phương pháp trên mọi lĩnh vực, nhưng mục tiêu của nó không thay đổi, đúng như Kant đã nói: “Ta không thể học triết học, mà chỉ có thể học cách triết lý” hay như lời của Albert Einstein: “Giá trị của một nền giáo dục (…) không phải là dạy và học được nhiều sự kiện mà là đào luyện cho tinh thần biết tư duy…”.\r\n\r\n“The Foundation for Critical Thinking” (Quỹ Tư duy Phản biện) là một tổ chức học thuật, cung cấp nhiều “cẩm nang” về tư duy khoa học được biên soạn chặt chẽ, chắt lọc, ngắn gọn và thiết thực, đúc kết nhiều thành tựu về phương pháp trên “mẫu số chung” là khuyến khích tư duy phân tích và phản biện, cùng với các kỹ năng nghe, nói, đọc, viết, học tập và nghiên cứu một cách có thực chất, có chiều sâu và dễ dàng áp dụng vào cuộc sống.\r\n\r\nBộ sách CẨM NANG TƯ DUY này dành cho mọi độc giả, từ học sinh, sinh viên đến các giảng viên, các nhà nghiên cứu, doanh nhân, người đã đi làm cũng như quý phụ huynh… muốn nâng cao năng lực tư duy của mình. Học sinh, sinh viên có thể đọc cẩm nang như tài liệu tham khảo để học tốt các bộ môn; quý phụ huynh có thể sử dụng cẩm nang để vừa nâng cao năng lực tư duy của mình vừa giúp con em mình phát triển các kỹ năng tư duy cần thiết để học tốt; các giảng viên, nhà nghiên cứu có thể sử dụng cẩm nang để xây dựng tốt các chủ đề của mình; người đã đi làm, doanh nhân… có thể áp dụng các kỹ năng, ý tưởng của cẩm nang vào công việc và cuộc sống.\r\n\r\nRất hoan nghênh và biết ơn Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh đã dịch và xuất bản bộ sách quý này đến bạn đọc Việt Nam.', 76, 119, 1, 'sachhay_camnangtuduyphanbien.jpg', 0),
(3, 'Truyện Tranh - Bleach - Lẻ tập 1 - 74 - NXB Kim Đồng - 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72', '60000', '70000', 'NXB Kim Đồng', '\r\n\r\nGiới thiệu sách: Kurosaki Ichigo 15 tuổi là một nam sinh có khả năng nhìn thấy hồn ma. Thể chất đặc biệt là vậy nhưng cậu vẫn sống yên ổn như bao người khác, cho đến ngày xuất hiện một cô gái tự xưng là “Tử thần” và gia đình cậu bị những Ác linh gọi là “Hollow” tấn công. Ichigo sẽ làm gì trước tình cảnh tính mạng những người thân đang bị đe dọa!?', 21, 205, 2, 'truyentranh_bleach1.png', 0),
(4, 'Sách Hay - Chiết Chi - Khốn Ỷ Nguy Lâu (AZ)', '107030', '139000', 'AZ Việt Nam', 'Mô tả sản phẩm:TBPH: CHIẾT CHI – KHỐN Ỷ NGUY LÂU\r\n\r\n“Lục Tu Văn nói, y muốn tìm một người, mà y là độc nhất vô nhị trong mắt người đó. \r\n\r\n… đến tận lúc chết y vẫn không tìm ra” \r\n\r\nLục Tu Văn từ nhỏ đã là một thiên tài võ thuật, được giáo chủ Ma Giáo lúc bấy giờ vô cùng yêu thích, còn được định sẵn sẽ là người kế nghiệp sau này. Nhưng vì tính cách kiêu ngạo, ngang tàng lại độc ác, thâm trầm nên mọi người xung quanh đều ghét y. Một trong số đó chính là Đoàn Lăng. \r\n\r\nĐoàn Lăng sinh ra trong một danh môn chính phái, tuổi còn nhỏ đã bị bắt cóc đến Ma Giáo, chịu số phận làm sư đệ của yêu nghiệt Lục Tu Văn, bị hành đến mức mỗi lần nhắc tới cái tên này đều hận nghiến răng nghiến lợi. Người duy nhất đối xử tốt với hắn trong những năm tháng như địa ngục ấy chỉ có Lục Tu Ngôn – đệ đệ sinh đôi của Lục Tu Văn. \r\n\r\nCũng từ giây phút đó, cuộc tình đầy ân oán thù hận đan xen giữa hư và thực bắt đầu giữa ba con người Lục Tu Văn – Đoàn Lăng – Lục Tu Ngôn. Bí mật 10 năm trước được giấu kín, 10 năm sau gặp lại, vật đổi sao dời, một kẻ thân bại danh liệt mình đầy thương tích, một người thoát ra trở thành đại hiệp được người đời ngưỡng mộ. \r\n\r\n“Bình thường hắn luôn nhận ra sự khác biệt giữa huynh đệ họ, nhưng lại nhận nhầm vào đúng khoảnh khắc quan trọng nhất. Chỉ vì một sai lầm đó, hắn không những mất mười năm cuồng si, lại còn tận mắt nhìn người yêu thương chết trong lòng, mà không hề hay biết.”\r\n\r\n10 năm gặp lại, thứ Lục Tu Văn nhận được là ánh mắt ghét bỏ, hận thù của Đoàn Lăng. \r\n\r\n10 năm đánh đổi, thân bại danh liệt chẳng đợi nổi ngày nắm hoa đào rơi… \r\n\r\nChiết Chi – Cuốn tiểu thuyết với nhiều cung bậc cảm xúc từ bi đến hài, cuối cùng là thỏa mãn bằng một cái kết trọn vẹn. Là cuốn sách tiêu biểu cho phong cách cổ trang của Khốn Ỷ Nguy Lâu – tác giả được đông đảo bạn đọc yêu thích và đón nhận. ', 13, 199, 1, 'tieuthuyet_chietchi.jpg', 0),
(5, 'Tiểu Thuyết - Cuốn Gia Phả Bị Thất Lạc - Tiểu Thuyết - Hồ Sỹ Hậu', '111750', '149000', 'NXB Phụ Nữ Việt Nam', '\r\n\r\nTiểu thuyết Cuốn gia phả bị thất lạc là câu chuyện kể về làng Tiềm, một làng khoa bảng giàu truyền thống cách mạng ở miền Trung. Cuốn gia phả của một dòng họ lớn ở làng bị thất lạc trong binh biến, mãi đến năm 1975 mới tìm thấy. Thông\r\n\r\nqua hành trình tìm cuốn gia phả, cuốn sách kể lại lịch sử của làng trong khoảng 90 năm (1885-1975). Một phần lịch sử Đảng, lịch sử của đất nước được phản ánh ở cấp độ thu nhỏ trong lịch sử của ngôi làng đặc biệt đó: khởi nghĩa Cần vương, nghĩa quân Đề Thám bị đưa về làng xử chém; phong trào đấu tranh chống Pháp theo Phan Bội Châu và Phan Chu Trinh đầu những năm 1920... Sự bế tắc của các Văn thân khi triều đình bỏ thi cử, các cuộc nổi dậy chống chính quyền bảo hộ đều bị Pháp đàn áp nặng nề. Sự kiện thành lập chi bộ Đảng, sự tổn thất của Đảng những năm 1930- 1931 tại làng. Lớp thanh niên kế tiếp tham gia cách mạng, kháng chiến. Nhiều người qua tù đày, một số thành yếu nhân của Đảng. Những hoàn cảnh tréo ngoe và bi thương khi Cải cách ruộng đất thực thi tại làng. Cuốn sách cũng viết cả về những ấu trĩ sau Cách mạng tháng Tám - trước 1975 ở làng: Phá đình chùa, triệt tiêu kinh tế tư nhân làm cho các nghề đã có hàng trăm năm của làng như dệt lụa, làm bún bánh… bị mai một, chợ làng vốn là chợ sầm uất bậc nhất trong vùng vì thế mà trở nên đìu hiu. Trong suốt gần 100 năm đầy biến động đó, người làng Tiềm lớp này thay lớp khác luôn thể hiện được lòng yêu nước yêu quê mãnh liệt và hết mực theo Cách mạng, đóng góp không nhỏ vào sự nghiệp Cách mạng như rất nhiều ngôi làng giàu truyền thống khác trên cả nước.', 28, 244, 3, 'tieuthuyet_cuongiaphabithatlac.jpg', 0),
(6, 'Sách - Hành Tinh Của Một Kẻ Nghĩ Nhiều - AZ Việt Nam', '59340', '86000', 'AZ Việt Nam', 'Hành tinh của một kẻ nghĩ nhiều là hành trình khám phá thế giới nội tâm của một người trẻ. Đó là một hành tinh đầy hỗn loạn của những suy nghĩ trăn trở, những dằn vặt, những cuộc chiến nội tâm, những cảm xúc vừa phức tạp cũng vừa rất đỗi con người. Một thế giới quen thuộc với tất cả chúng ta. \r\n\r\nChứa đựng những lời chia sẻ và kiến thức từ podcast của Amateur Psychology - Tay mơ học đời bằng Tâm lý học, tác giả sẽ dẫn lối và đưa bạn tới từng ngóc ngách thầm kín nhất của hành tinh ấy dưới một góc nhìn chuyên sâu hơn.  \r\n\r\nVà nếu bạn cũng là một kẻ nghĩ nhiều, chào mừng bạn đến với hành tinh này.', 88, 0, 1, 'sachhay_hanhtinhcuamotkenghinhieu.jpg', 0),
(7, 'Sách  - Lời Hồi Đáp Của A Síng', '78750', '105000', 'Glow Books', 'Hành trình tràn đầy cảm hứng, phía sau chàng trai có biệt danh “con nhà người ta” - A Síng.\r\n\r\nTô Tôn Thành - 1 Youtuber nổi tiếng với gần 350.000 người theo dõi với các thành tích học tập đáng nể: đậu vào trường chuyên Lê Hồng Phong , đỗ thủ khoa khối A1, khoa Kỹ thuật Địa chất Dầu khí, Đại học Bách khoa Thành phố Hồ Chí Minh và giành được suất học bổng toàn phần tại Hàn Quốc. Ngoài ra, anh còn chinh phục được hai tấm bằng thạc sĩ sau đó làm giảng viên dạy ngoại ngữ và hiện nay là một thông dịch viên cho các sự kiện lớn. \r\n\r\nẨn sau những thành công to lớn của chàng trai trẻ ấy chính là sự nỗ lực không ngừng nghỉ và xuất phát từ những đam mê, hoài bão anh nung nấu từ khi chỉ là một cậu bé. Dù gặp nhiều khó khăn và mặc những lời ngăn cản cho rằng mục tiêu của mình chỉ là viển vông, anh vẫn giữ vững niềm tin về lựa chọn ban đầu và kiên trì phấn đấu trên hành trình của mình. \r\n\r\n“Lời hồi đáp của A Síng” - một cuốn sách truyền cảm hứng và động lực cổ vũ các bạn trẻ bước tiếp và không nản lòng trên con đường học tập và phát triển. Sau mỗi trang sách, bạn sẽ đúc kết được cho chính mình bí kíp “study hard, play hard”, làm thế nào để “ học và chơi đều hết mình”, để tận hưởng trọn vẹn quãng thời gian thanh xuân đẹp nhất ngay khi còn ngồi trên ghế nhà trường. \r\n\r\nNếu bạn đang cảm thấy bị bao trùm bởi áp lực trong việc học, cuốn sách sẽ là liều thuốc “hóa giải” vì có Tô Tôn Thành làm người bạn đồng hành trong chặng hành xây niềm tin để đi đến ước mơ. Tác giả cũng như bao chúng ta, bắt đầu từ vạch xuất phát chỉ là một người bình thường trong những năm tháng rực rỡ của tuổi trẻ khao khát được bứt phá bản thân. Những điều tưởng chừng như “nhỏ bé”, “viển vông”, “không thể”, biết đâu một ngày nào đó lại có thể biến chúng ta thành những người phi thường. Hãy dám thử và sai, rồi bạn sẽ bất ngờ vì giới hạn của bản thân có thể vượt xa ngoài sức tưởng tượng.', 65, 0, 1, 'sachhay_loihoidapcuaasing.jpg', 0),
(8, 'Sách - Việt Nam Phong Tục (Tái Bản 2020)', '151050', '159000', 'NXB Kim Đồng', 'Ấn bản đầy đủ nhất của “Việt Nam phong tục” - tập khảo cứu toàn diện về phong tục, tập quán của người Việt xưa của học giả Phan Kế Bính. Tập sách có thêm phần chú giải, hiệu chỉnh giúp độc giả ngày nay có thể hiểu rõ hơn tác phẩm. \r\n\r\n\"Việt Nam phong tục” là một nghiên cứu khá kĩ lưỡng, bức tranh toàn diện về phong tục, tập quán của người Việt, từ phong tục trong gia đình, làng xã đến phong tục quốc gia, xã hội được viết với văn phong hiện đại dù vẫn chịu ảnh hưởng của lối viết biền ngẫu đăng đối trong văn học cổ. Mỗi chương, mục đều được tác giả trình bày và diễn giải khúc chiết, ngắn gọn, rõ ràng với quan điểm khá tân tiến so với những người cùng thời.\r\n\r\nẤn bản “Việt Nam phong tục” của NXB Kim Đồng được in bìa cứng với gần 100 minh hoạ sống động của hoạ sĩ Bùi Ngọc Thuỷ. \r\n\r\n“Ta ngoảnh lại mà xem những tục cũ thì tỏ ra nhiều điều ngày trước là hay mà bây giờ hóa ra hủ bại lắm rồi.\r\n\r\nĐó cũng không phải là tổ tiên ta khi trước có vụng dại gì, chỉ là thời thế mỗi lúc một khác, mà mỗi lần biến cải thì cái trình độ khai hóa lại tấn tới thêm lên một tầng. Ấy cũng là cái lẽ tự nhiên của tạo hóa như thế.\r\n\r\nTuy vậy cái tục cũ truyền nhiễm đã lâu, không dễ mà một mai đổi ngay được. Muốn đổi thì phải lựa dần dần, trước hết phải xét điều gì quá tệ mà bỏ bớt đi, rồi lâu lâu mới đem cái tục hay mà bổ hết cho các tục dở. Còn tục gì hay mà là quốc túy của ta thì cứ giữ lấy.”\r\n\r\nViệt Nam phong tục\r\n\r\nPhan Kế Bính (1875 – 1921), hiệu là Bưu Văn, quê ở làng Thụy Khê, huyện Hoàn Long, tỉnh Hà Đông (nay thuộc phường Thụy Khuê, quận Tây Hồ, Hà Nội). Ông là một nhà báo, nhà khảo cứu và dịch giả nổi tiếng của Việt Nam đầu thế kỉ 20.\r\n\r\nTên tuổi của ông gắn liền với các tờ báo Ðông Dương tạp chí, Lục tỉnh tân văn, Trung Bắc tân văn. Đặc biệt, ông có thời gian làm trong ban biên tập Đông Dương tạp chí, và nhiều tác phẩm của ông được đăng trên tạp chí này, tiêu biểu là “Việt Nam phong tục”.\r\n\r\nMã hàng	8935244839883\r\nTên Nhà Cung Cấp	Nhà Xuất Bản Kim Đồng\r\nTác giả	Phan Kế Bính\r\nNXB	NXB Kim Đồng\r\nNăm XB	2020\r\nTrọng lượng (gr)	400\r\nKích Thước Bao Bì	16 x 24 cm\r\nSố trang	384\r\nHình thức	Bìa Cứng\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Văn Hóa - Nghệ Thuật - Du Lịch bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nẤn bản đầy đủ nhất của “Việt Nam phong tục” - tập khảo cứu toàn diện về phong tục, tập quán của người Việt xưa của học giả Phan Kế Bính. Tập sách có thêm phần chú giải, hiệu chỉnh giúp độc giả ngày nay có thể hiểu rõ hơn tác phẩm. \r\n\r\n\"Việt Nam phong tục” là một nghiên cứu khá kĩ lưỡng, bức tranh toàn diện về phong tục, tập quán của người Việt, từ phong tục trong gia đình, làng xã đến phong tục quốc gia, xã hội được viết với văn phong hiện đại dù vẫn chịu ảnh hưởng của lối viết biền ngẫu đăng đối trong văn học cổ. Mỗi chương, mục đều được tác giả trình bày và diễn giải khúc chiết, ngắn gọn, rõ ràng với quan điểm khá tân tiến so với những người cùng thời.\r\n\r\nẤn bản “Việt Nam phong tục” của NXB Kim Đồng được in bìa cứng với gần 100 minh hoạ sống động của hoạ sĩ Bùi Ngọc Thuỷ. \r\n\r\n“Ta ngoảnh lại mà xem những tục cũ thì tỏ ra nhiều điều ngày trước là hay mà bây giờ hóa ra hủ bại lắm rồi.\r\n\r\nĐó cũng không phải là tổ tiên ta khi trước có vụng dại gì, chỉ là thời thế mỗi lúc một khác, mà mỗi lần biến cải thì cái trình độ khai hóa lại tấn tới thêm lên một tầng. Ấy cũng là cái lẽ tự nhiên của tạo hóa như thế.\r\n\r\nTuy vậy cái tục cũ truyền nhiễm đã lâu, không dễ mà một mai đổi ngay được. Muốn đổi thì phải lựa dần dần, trước hết phải xét điều gì quá tệ mà bỏ bớt đi, rồi lâu lâu mới đem cái tục hay mà bổ hết cho các tục dở. Còn tục gì hay mà là quốc túy của ta thì cứ giữ lấy.”', 12, 0, 1, 'sachhay_mottramdieuvephongtucvietnam.jpg', 0),
(9, 'Sách - Người Tính Không Bằng Drama Tính', '76800', '96000', 'Người Trẻ Việt', 'Pương Pương - “Trmúa hmề” ngập drama trong từng trang sách quay trở lại rồi đây!\r\n\r\nChỉ có hề hơn không có hề nhất là những từ đúng nhất để miêu tả về cuốn sách thứ 2 của Pương Pương trong lần quay trở lại này.\r\n\r\nVẫn là ti tỉ thứ chuyện từ trong nhà ra ngoài ngõ, từ bà hàng xóm cho đến họ hàng, chuyện chị gội đầu sang đến bà thầy bói, hay chuyện con chó đến con ma… Vẫn là giọng văn dí dỏm, bắt trend, phong cách văn chương có một không hai… nhưng độ mặn mà được tính bằng cấp số nhân.\r\n\r\n\r\n\r\nTrở lại với “Người tính không bằng drama tính” Pương Pương sẽ khiến bạn phải “mắt chữ O miệng chữ A” về độ mặn hơn muối buồn, sa mạc hóa lời và đôi khi là sự vô tri đầy tiếng cười, bởi thở thôi cũng dính drama:\r\n\r\n- Mà sao chị lại dị ứng với người ạ? Em chưa nghe thấy bệnh này bao giờ, người ta chỉ dị ứng phấn hoa, hải sản thôi chứ?\r\n\r\n- Ừ tại năm xưa tao bị rơi xuống trần gian nên chưa kịp thích ứng.\r\n\r\n- Chị là Hằng Nga ạ?\r\n\r\n- Ừ.\r\n\r\nHay…\r\n\r\n- Mày có bỏ thằng Quân đi không thì bảo?\r\n\r\n- Ơ bà ơi sao lại bỏ ạ? Bọn cháu sắp cưới rồi, bà chúc phúc cho cháu đi.\r\n\r\n- Cưới cái gì mà cưới, tao cản mày bao nhiêu lần rồi sao mày cố chấp thế hả cháu?\r\n\r\n- Hu hu có gì không ưng ý thì từ từ bà nói chứ cháu yêu anh ấy lắm.\r\n\r\n- Yêu cái gì mà yêu, nó bóng đấy, bóng lộ!!!!\r\n\r\n\r\n\r\nĐọc \"Người tính không bằng drama tình\" không chỉ dừng lại ở độ giải trí mà còn chứa đựng đầy ý nghĩa về gia đình và cuộc sống. Vậy nên nếu bạn đã có “một ngày 8 tiếng cống hiến cho tư bản” đầy mệt mỏi thì ở đây hãy để Pương Pương mang lại cho bạn những phút giây thư giãn nhé!', 76, 0, 1, 'sachhay_nguoitinhkhongbangdramatinh.jpg', 0),
(10, 'Sách - Những Điều Bỏ Quên Trong Xó', '56250', '75000', 'Glow Books', 'Đã bao lâu rồi cậu chưa nói chuyện với chính mình? \r\nCậu có thường xuyên kết nối với “đứa trẻ” sâu trong tâm hồn mình? \r\nCó phải đâu đó trong cậu vẫn còn những vết thương đang bị “bỏ quên” và chờ được chữa lành? \r\n\r\nHành trình của người trưởng thành chưa bao giờ là dễ dàng, đặc biệt trong xã hội đầy rẫy những định kiến, chúng ta lại càng thu mình lại và sợ “phải sống thật” với cảm xúc. Có những lúc rơi vào vòng xoáy công việc, chìm đắm trong những tiêu cực của cuộc sống, hay vì hoàn cảnh mà chúng ta “ép buộc” bản thân phải “lớn, phải gồng mình , dần dà, chúng ta đánh mất đi bản sắc cá nhân, vật lộn giữa thế giới vật chất và tinh thần để rồi lãng quên chuyện mình từng là ai, ước mơ ngày bé là gì, mình có đang thực sự hạnh phúc không.  \r\n\r\n“Những điều bỏ quên trong xó” là một món quà dành tặng những ai đang cảm thấy lạc lõng ở thực tại, khát khao được kết nối và thấu hiểu cảm xúc của chính mình. Với 27 câu chuyện của cuốn sách, tác giả Trong Xó sẽ bóc tách từng lớp vỏ bọc đang ẩn sâu bên trong để cậu ôm ấp và vỗ về tâm hồn của bản thân. \r\n\r\nCậu biết không, dù cậu có cố gắng phớt lờ những gì cậu thực sự cảm thấy mỗi khi tan vỡ, “đứa trẻ” bên trong cậu vẫn sẽ luôn ở một góc nào đó để thi thoảng “nhói” lên, nhắc nhở rằng “em ấy” cũng cần được yêu thương và chữa lành, dẫu còn những điểm chưa được hoàn thiện. Nếu không, một lúc nào đó sự dồn nén cảm xúc sẽ gây phiền nhiễu và xáo trộn những lựa chọn của cậu trong cuộc sống. \r\n\r\nMong rằng ấn phẩm “Những điều bỏ quên trong xó” sẽ chạm đến những tổn thương, những nỗi đau vẫn còn âm ỉ mà cậu không dám đối diện và né tránh đã từ rất lâu. Hãy sống chậm lại, lắng nghe tiếng nói nội tâm và chăm sóc “khu vườn tâm trí” của cậu. Vì chỉ khi chấp nhận phiên bản “không hoàn hảo” của chính mình, cậu mới có thể tự tin bước tiếp trên hành trình mà cậu đang đi.', 92, 0, 1, 'sachhay_nhungdieuboquentrongxo.jpg', 0),
(11, 'Rèn Thói Quen Tư Duy Phản Biện', '84150', '99000', 'Công Thương', 'Cuốn sách tập trung vào việc phát triển thói quen tư duy phản biện trong mọi khía cạnh của cuộc sống. Cuốn sách cung cấp những nội dung sau:\r\n\r\n• 8 đặc điểm tư duy phản biện bạn đã có nhưng không sử dụng hết tiềm năng của chúng.\r\n\r\n• Cách sử dụng quá trình tư duy phản biện đã giúp Galileo khám phá ra Trái Đất quay quanh Mặt Trời.\r\n\r\n• Một trò chơi thực tế như SIMS có thể dạy bạn về bản thân mà không cần chơi nó.\r\n\r\n• Cách để tư duy như một nhà khoa học và đưa ra quyết định thử nghiệm thành công.', 18, 0, 1, 'sachhay_renluyentuduyphanbien.jpg', 0),
(12, 'Sách - Sĩ số lớp vắng 0', '69000', '102000', 'AZ Books', 'Tiếng gọi bí ẩn trong căn phòng đó dường như chỉ có mình tôi nghe thấy.”\r\n“Lớp học này từng có người c.h.ế”\r\n“Người ta đồn rằng, vào buổi tối, trường này có ma.”\r\nSau khi bóng đêm nuốt trọn ngôi trường, những điều quỷ dị đã xảy ra…Nơi chiếc bàn học cuối lớp thỉnh thoảng lại vang lên tiếng gọi, chẳng nghe rõ tiếng nhưng như một loại thuốc mê khiến con người ta không thể điều khiển nổi tâm trí mà đi theo… một thứ quỷ dị đang\r\nlen lỏi trong từng ngóc ngách của lớp học này.\r\n\r\n“SĨ SỐ LỚP VẮNG 0” là cuốn sách được chắp bút bởi EMMA HẠ MY - chủ sở hữu kênh Youtube “Truyện của Emma” đăng tải những câu chuyện kinh dị tự sáng tác bằng hình ảnh hoạt họa do chính tác giả thực hiện. Cuốn sách bao gồm “Vệt Phấn Trên Bảng Đen” và 9 truyện ngắn khác CHƯA TỪNG xuất hiện trên kênh của Emma Hạ My.\r\n\r\nTrải qua 10 câu chuyện, cuốn sách sẽ đưa bạn bước vào một thế giới đầy ám ảnh rùng mình khi nhắc đến như: hồn ma của nữ sinh bị g…ết và hã…m hi…ếp rồi ngụy tạo thành c.ổ ự ử; nam sinh đang c.ổ lắc lư trên thanh xà ngang học thể dục dựng ở giữa sân trường; là hồn ma của một nữ sinh, thường lang thang khắp nơi trong trường để dọa dẫm học sinh…\r\n\r\nTưởng chừng những sự việc hãi hùng kia dường như chỉ là cơn á m.ộng mà họ trải qua trong một đêm say giấc nồng. Nhưng rồi hiện thực phải đối diện tát cho họ một cú đau điếng. Những gì xảy ra đêm qua đều có thật.\r\n\r\nKhông chỉ dừng lại ở việc kể một câu chuyện kinh dị bình thường mà qua con chữ Emma Hạ My còn bộc lộ cảm xúc của mình đến với các nhân vật trong truyện và cả với những khía cạnh kinh dị mang vết nứt - những hồn ma cũng có nỗi cô đơn.\r\n\r\n“Sĩ số lớp vắng 0” sẽ đem nỗi sợ hãi lan tỏa khắp người bạn như có hàng ngàn con kiến đen đang châm chích trên từng tấc da thịt. Cơn khủng hoảng dâng cao khiến tim bạn đập gia tốc như một vận động viên ma-ra-tông đang ở chặng nước rút. Những câu chuyện trong cuốn sách này giống như điểm 10 trong các bài kiểm tra vậy. Hy vọng bạn đủ can đảm chinh phục từ đầu đến cuối và đạt điểm số tuyệt đối.', 32, 0, 1, 'sachhay_sisolopvang0.jpg', 0),
(13, 'Sách Hay - Sự im lặng của bầy cừu', '105000', '115000', 'SÁCH VĂN HỌC', 'Những cuộc phỏng vấn ở xà lim với kẻ ăn thịt người ham thích trò đùa trí tuệ, những tiết lộ nửa chừng hắn chỉ dành cho kẻ nào thông minh, những cái nhìn xuyên thấu thân phận và suy tư của cô mà đôi khi cô muốn lảng tránh… Clarice Starling đã dấn thân vào cuộc điều tra án giết người lột da hàng loạt như thế, để rồi trong tiếng bức bối của chiếc đồng hồ đếm ngược về cái chết, cô phải vật lộn để chấm dứt tiếng kêu bao lâu nay vẫn đeo đẳng giấc mơ mình: tiếng kêu của bầy cừu sắp bị đem đi giết thịt.\r\nSự im lặng của bầy cừu hội tụ đầy đủ những yếu tố làm nên một cuốn tiểu thuyết trinh thám kinh dị xuất sắc nhất: không một dấu vết lúng túng trong những chi tiết thuộc lĩnh vực chuyên môn, với các tình tiết giật gân, cái chết luôn lơ lửng, với cuộc so găng của những bộ óc lớn mà không có chỗ cho kẻ ngu ngốc để cuộc chơi trí tuệ trở nên dễ dàng. Bồi đắp vào cốt truyện lôi cuốn đó là cơ hội được trải nghiệm trong trí não của cả kẻ gây tội lẫn kẻ thi hành công lý, khi mỗi bên phải vật vã trong ngục tù của đau đớn để tìm kiếm, khẩn thiết và liên tục, một sự lắng dịu cho tâm hồn.\r\n\r\nNhận định\r\n\r\n“…xây dựng tình tiết đẹp với lối viết thông tuệ. Không tác phẩm kinh dị nào vượt được cuốn này.”\r\n\r\n– Clive Barker\r\n\r\n“Một cuốn sách giáo khoa đúng nghĩa về nghệ thuật viết truyện kinh dị, một kiệt tác chứa xung lực đưa nó lao vụt lên đỉnh cao không một khiếm khuyết… Harris đơn giản chính là tiểu thuyết gia kinh dị xuất sắc nhất thời nay.”\r\n\r\n– The Washington Post\r\n\r\n“Tiết điệu dồn dập… đánh thức sự tò mò… lôi cuốn.”\r\n\r\n– Chicago Tribune', 34, 0, 1, 'sachhay_suyenlangcuabaycuu.jpg', 0),
(14, 'Sách - Suy Nghĩ Ngược - Cuốn Sách Bạn Cải Thiện Suy Nghĩ Giúp Bạn Sống Chủ Động, Tích Cực Và Thành Công', '34500', '50000', 'Tân Việt', '- Sách mới 100%\r\n- Đóng bọc rất cẩn thận bằng Hộp Bìa Carton do Thanh Hà Books sản xuất riêng + Nilon chống thấm nước hoặc Bóng khí chống sốc + Băng keo thương hiệu dán niêm phong\r\n- Đội ngũ nhân sự > 50 người, tư vấn nhiệt tình, hết lòng phục vụ Quý Khách.\r\n- Kho hàng có sẵn cực lớn\r\n- Quy trình đóng gói chuyên nghiệp, xử lý đơn hàng nhanh\r\n- Đảm bảo chất lượng sản phẩm 100% giống mô tả. \r\n- Hình ảnh sản phẩm là ảnh thật do hệ thống Thanh Hà Books tự chụp bằng điện thoại Iphone và giữ bản quyền hình ảnh. (Nghiêm cấm các shop khác sao chép hình ảnh)\r\n- Hoàn tiền nếu sản phẩm không giống với mô tả \r\n- Chấp nhận đổi hàng khi sách không đúng\r\n- Giao hàng trên toàn quốc, nhận hàng trả tiền\r\n \r\nHỗ trợ đổi trả theo quy định của Thanh Hà Books: \r\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm)\r\n - Hàng hoá vẫn còn mới, chưa qua sử dụng \r\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất\r\n 2. Trường hợp được chấp nhận:\r\n - Không đúng sách mà khách hàng đặt\r\n- Không đủ số lượng, không đủ bộ như trong đơn hàng \r\n3. Trường hợp không đủ điều kiện áp dụng chính sách:\r\n - Quá 07 ngày kể từ khi Quý khách nhận hàng\r\n - Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của THANH HÀ BOOKS\r\n - Không thích, không hợp, đặt nhầm mã, nhầm sản phẩm,... \r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 22, 0, 1, 'sachhay_suynghinguoc.jpg', 0),
(15, 'Sách - Thử tài tìm kiếm - Thành phố', '54400', '68000', 'Đông A', 'Chào mừng em đến với cuốn sách về thành phố!\r\n\r\n\r\n\r\nThị trưởng Maurice sẽ là người hướng dẫn cho em trong chuyến thăm thú trọn một ngày này. Mỗi điểm dừng chân trong Thử tài tìm kiếm – Thành phố đều chứa đựng nhiều điều thú vị cho em tìm kiếm và vô số thông tin mới lạ về các thành phố cùng những người sống và làm việc ở đó cho em tha hồ tìm hiểu.\r\n\r\n\r\n\r\nCòn chờ gì nữa, bắt đầu ngay thôi!', 43, 0, 1, 'sachhay_thutaitimkiemthanhpho.jpg', 0),
(16, 'Tiểu thuyết :  Hai Vạn Dặm Dưới Đáy Biển', '81600', '102000', 'NXB Văn học', 'Jules Gabriel Verne (1828 - 1905), là nhà văn Pháp nổi tiếng, được coi là một trong những người “Cha đẻ” của thể loại NXB Văn Học Khoa học viễn tưởng. Ở Jules Verne, nhà văn và nhà bác học chỉ là một. Ông có kiến thức sâu rộng, có óc tưởng tượng vô cùng phong phú, có nhiều tư tưởng tiến bộ và là một tấm gương lao động sáng ngời. Ông đã để lại một di sản NXB Văn Học - khoa học lớn cả về số lượng và chất lượng: Từ trái đất lên mặt trăng (1865), Những đứa con của thuyền trưởng Grăng (1867), Hai vạn dặm dưới đáy biển (1869), Vòng quanh thế giới trong 80 ngày (1873)…\r\n\r\n \r\n\r\nHai vạn dặm dưới đáy biển là một trong những tác phẩm thành công nhất của Jules Verne. Rất nhiều năm đã qua, những hiểu biết mọi mặt của con người về biển đã tiến những bước dài. Nhiều khái niệm đã đổi thay về căn bản. Nhưng sự phát triển của khoa học, kỹ thuật không làm chúng ta giảm lòng yêu mến và kính phục Jules Verne, vì cuốn sách này đã góp phần hướng biết bao thanh thiếu niên tiến vào khoa học, và bao người sau này đã trở thành những nhà hải dương học, ngư học và chế tạo tàu ngầm!', 53, 6, 3, 'tieuthuyet_haivannamduoibien.jpg', 0),
(17, 'Tiểu Thuyết - Julie hay nàng Héloïse mới', '227240', '299000', 'Nhã Nam', 'Julie hay nàng Héloïse mới là cuốn tiểu thuyết viết dưới dạng những bức thư trao đổi, kể về câu chuyện tình giữa nàng Julie, con gái một nam tước, với chàng gia sư Saint-Preux. Không chỉ đưa ra một quan điểm mới mẻ về tình yêu và tự do luyến ái, lên án kiểu hôn nhân cưỡng ép, tác giả còn lồng ghép vào tác phẩm có kết cấu khác lạ này những giá trị triết học đặc sắc, những mô tả đậm chất trữ tình về cuộc sống bình dị mà nên thơ nơi thôn dã, khi con người hòa hợp với thiên nhiên, khi cái tôi trữ tình trong mỗi người được trở về với bản chất nguyên sơ thánh thiện trong chính mình. Ngay từ lần xuất bản đầu tiên vào năm 1761 và rất nhiều lần tái bản sau đó, mối tình éo le và trắc trở của đôi trai gái đã khiến nhiều thế hệ độc giả rung động và đồng cảm, bởi câu chuyện tình của họ cũng là câu chuyện về sự mong manh của những tâm hồn mạnh mẽ, khi phải lựa chọn lắng nghe trái tim hay tuân theo lý trí, để sống với tình yêu hay đầu hàng những khuôn phép, chuẩn mực khắc nghiệt của xã hội đương thời. Không chỉ là tác phẩm mở đầu cho một trào lưu văn học lãng mạn mới, Julie hay nàng Héloïse mới còn được coi là câu chuyện tình nổi tiếng nhất thế kỷ XVIII.\r\n\r\n\r\n\r\nGIỚI THIỆU TÁC GIẢ: \r\n\r\nJean-Jacques Rousseau (1712 -1778) được coi là nhà tư tưởng vĩ đại của triết học khai sáng Pháp thế kỷ XVIII, đồng thời là nhà chính trị học, nhà nghệ thuật học, nhà văn, nhà giáo dục học lỗi lạc. Do những khác biệt về tư tưởng, quan điểm và tín ngưỡng, Jean-Jacques Rousseau liên tục bị Giáo hội Cơ đốc giáo phản đối, săn đuổi, và phải sống một cuộc đời lưu lạc, thường xuyên thay đổi chỗ ở giữa Pháp và Thụy Sĩ. Sau khi ông qua đời, thi thể ông được chuyển đến Điện Panthéon tại Paris vào năm 1794. Với tư cách nhà văn, bên cạnh những giá trị về tư tưởng và triết học, Jean-Jacques Rousseau đã để lại cho nhân loại những áng văn tuyệt tác ca ngợi con người, ca ngợi tình yêu và tự do.', 61, 0, 3, 'tieuthuyet_haynangheloisemoi.jpg', 0),
(18, 'Tiểu Thuyết Trinh Thám - Kẻ Nhắc Tuồng - Donato Carrisi', '100750', '155000', 'NXB Phụ Nữ Việt Nam', 'Lời đề tựa rất thu hút và chứa đầy sự mời gọi đối với những độc giả ưa thích thể loại tiểu thuyết tâm lý tội phạm. Và cuốn tiểu thuyết đầu tay của nhà văn người Italia Donato Carrisi, “Kẻ nhắc tuồng” thực sự là một tác phẩm không thể nào bỏ qua.\r\n\r\nMột bức thư mật gửi từ Trại giam tới Văn phòng Chánh biện lý J.B. Marin đề cập đến trường hợp khẩn cấp về một phạm nhân kì lạ mang số tù RK-357/9 là sự mở đầu dẫn dắt độc giả đến với những bí mật khủng khiếp diễn ra ở hơn 500 trang tiếp theo sau đó: những vụ mất tích liên tiếp của năm bé gái, từ việc biến mất một cách bí ẩn cho đến việc đứa trẻ bị bắt cóc ngay trước mũi cha mẹ chúng. Cuộc điều tra tưởng chừng rơi vào bế tắc thì cũng là lúc sáu cánh tay trái của các nạn nhân được tìm thấy trong khu rừng vắng. Sáu đứa trẻ, thay vì năm và tung tích của đứa trẻ bí ẩn hoàn toàn không có, không thông báo mất tích, không danh tính, thân phận. Nhóm điều tra lúc này buộc phải nhờ đến sự giúp đỡ của một nữ chuyên gia về các vụ mất tích - Mila Vasquez. Đó cũng là lúc vở tuồng bắt đầu, các diễn viên đã đứng đúng vào vị trí và sau lưng họ, kẻ nhắc tuồng luôn đứng đó, thì thầm lời thoại cho vở bi kịch chết chóc. Hắn thì thầm rót vào tai những con người đang bị lung lay nhằm khơi dậy trong họ thứ khoái cảm quyền lực khi được nắm trong tay sinh mệnh kẻ khác. Hắn còn giật dây được cả những hành động của đội điều tra. Tất cả những người này đều là nghệ sĩ trên sân khấu của kẻ nhắc tuồng.\r\n\r\nKhi Mila Vasquez, một nữ cảnh sát chuyên về các vụ mất tích, nhập cuộc với nhóm điều tra cũng là lúc vở kịch hạ màn theo cách tốt đẹp nhất có thể. Nhưng chính bản thân cô lại phải hứng chịu đau đớn nhiều nhất khi phát hiện ra một sự thật khác còn đau lòng hơn: những cảm xúc đã bị chôn vùi cùng với quá khứ của cô nay lại được “đánh thức”, và có lẽ cô sẽ không cần phải tìm đến những cảm xúc ấy bằng cách tự làm tổn thương mình, theo nghĩa đen nữa.\r\n\r\nCâu chuyện được kể chủ yếu qua cái nhìn của nhân vật chính Mila, nhưng người đọc sẽ có cái nhìn đa chiều về quá khứ của nỗi đau khi bản chất của từng nhân vật dần được hé lộ. Người mà chúng ta tưởng rằng tốt hóa ra lại trở nên điên loạn, kẻ chúng ta không ưa lại khiến ta cảm thông, thương xót. Đặc biệt có những nhân vật lại đứng giữa ranh giới của tốt - xấu, đáng ghét - đáng thương, lạnh lùng - tình cảm.\r\n\r\nTác giả\r\n\r\nDonato Carrisi sinh năm 1973 ở Ý, tốt nghiệp ngành luật và tội phạm học trước khi trở thành nhà viết kịch bản phim truyền hình. Cuốn tiểu thuyết trinh thám đầu tay Kẻ nhắc tuồng của ông đã gây được tiếng vang lớn với năm giải thưởng Văn học quốc tế, được dịch ra hơn 30 thứ tiếng, và đưa tác giả lên vị trí “nhà văn Italia được đọc nhiều nhất trên thế giới”.\r\n\r\nDịch giả\r\n\r\nHoàng Anh, tên thật là Vũ Hoàng Anh, là dịch giả hai thứ tiếng Anh, Pháp. Bén duyên với công việc dịch thuật từ năm 2009, cho đến nay anh đã ra mắt bạn đọc gần 40 dịch phẩm và nhận được sự đánh giá cao không chỉ bởi nội dung hấp dẫn của tác phẩm, mà còn bởi khả năng chuyển ngữ trung thực và vô cùng khéo léo của dịch giả.\r\n\r\nTrích đoạn 1\r\n\r\nTrước mặt hai người mở ra một trảng đất trống được chiếu sáng bởi các luồng đèn rọi. Đúng là một miệng núi lửa. Hương rừng đột ngột biến mất, chỉ còn thứ mùi chua nồng đặc trưng xộc thẳng vào mũi hai người. Goran ngẩng đầu, để cho mùi chua tràn vào mũi. Mùi phenol, ông tự nhủ.\r\n\r\nRồi ông nhìn thấy chúng.\r\n\r\nNhững cái hố nhỏ nằm theo một vòng tròn, cùng khoảng ba chục người đàn ông trong bộ áo liền quần màu trắng đang đào bới dưới ánh đèn halogen ma mị. Họ được trang bị xẻng nhỏ và cọ để có thể làm sạch bụi đất một cách nhẹ nhàng. Vài người săm soi đám cỏ, trong khi những người khác chụp ảnh và lập danh sách mọi thứ tìm thấy. Những thao tác của họ chính xác, thành thục như bị thôi miên trong sự im lặng trang nghiêm chỉ thi thoảng bị gián đoạn bởi những tiếng đèn flash.\r\n\r\nGoran nhận ra hai đặc vụ Sarah Rosa và Klaus Boris. Chánh thanh tra Roche nhìn thấy ông và lập tức sải những bước dài tiến lại chào, nhưng chưa kịp mở miệng thì Goran đã hỏi độp luôn:\r\n\r\n- Có bao nhiêu cả thảy?\r\n\r\n- Năm. Dài năm mươi, rộng hai mươi, sâu năm mươi centimét... Theo ông, người ta chôn gì trong những cái hố như thế?\r\n\r\nMột thứ gì đó trong mỗi cái hố. Cùng một thứ.\r\n\r\nNhà tội phạm học nhìn ông ta, chờ đợi.\r\n\r\nCâu trả lời đến ngay lập tức:\r\n\r\n- Một cánh tay trái.\r\n\r\nGoran quay ra nhìn mấy người mặc đồ bảo hộ trắng đang lúi húi làm việc giữa cái nghĩa địa lộ thiên quái gở. Lòng đất chỉ cung cấp những mảnh thịt đã bị phân hủy, nhưng nguồn gốc của thứ tội ác ma', 22, 0, 3, 'tieuthuyet_kenhactuong.jpg', 0),
(19, 'Tiểu Thuyết - Khu Vườn Bí Mật', '71040', '96000', 'Nhã Nam', 'Mary Lennox, một cô bé mồ côi, cáu kỉnh, không ai ưa, tới sống tại nhà ông bác ở vùng đồng hoang Yorkshire, nước Anh, nơi có rất nhiều bí mật đang đợi cô. Ban đêm, có tiếng khóc của ai đó từ một hành lang gần phòng cô. Còn ban ngày, cô gặp Dickon, một cậu bé biết thuần dưỡng và nói chuyện cùng loài vật. Rồi một ngày, nhờ sự giúp đỡ của một con chim ức đỏ, Mary khám phá ra một nơi bí ẩn nhất trên thế gian này – Khu vườn bí mật. Mọi thứ dường như đã chết trong khu vườn mười năm qua khóa kín. Cùng với Colin, vị chủ nhân ốm yếu của tiếng khóc bí ẩn kia, và Dickon, cậu bé mà tất cả mọi người đều yêu mến, Mary đã tìm ra những thứ sẽ làm thay đổi cuộc đời cô mãi mãi, khi mùa xuân về đánh thức cả khu vườn tuyệt đẹp.', 44, 0, 3, 'tieuthuyet_khuvuonbimat.jpg', 0),
(20, 'Tiểu thuyết -  Lớn lên trên đảo vắng', '124000', '155000', 'Đinh Tị books', 'Giới thiệu nội dung sách:\r\n\r\nMột trong những cuốn sách về chủ đề sinh tồn và phiêu lưu được trẻ em yêu thích nhất toàn thế giới\r\n\r\n\r\n\r\n\"Lớn lên trên đảo vắng\" được viết bởi nhà văn Johann David Wyss - người đã được truyền cảm hứng từ tác phẩm Robinson Crusoe của Daniel Defoe. Nhưng Wyss muốn viết một câu chuyện chứa đựng những bài học thú vị, bổ ích về cuộc sống thiên nhiên hoang dã dành riêng cho trẻ em, nên đã cho ra đời tiểu thuyết Lớn lên trên đảo vắng. Tác phẩm được xuất bản lần đầu tiên bằng tiếng Đức năm 1812 và đã trở thành một trong những tác phẩm được yêu thích nhất của trẻ em trên toàn thế giới.\r\n\r\n\r\n\r\nTrên đường sang châu Mỹ lập nghiệp, gia đình Robinson không may bị đắm tàu và trôi dạt vào một hoang đảo. Tại đây, họ đã phải bắt đầu một cuộc sống mới đầy gian khó, khi phải tự làm nhà, săn bắn, trồng trọt, thuần hóa thú hoang… Mỗi ngày với họ đều là một chuyến phiêu lưu kỳ thú nhưng cũng không kém phần nguy hiểm. Với sự ưu đãi của thiên nhiên và tinh thần kiên cường vượt qua nghịch cảnh, gia đình Robinson không chỉ sống sót mà sau nhiều năm lưu lạc trên đảo vắng, họ còn xây dựng được cho mình một cơ ngơi đáng kể.\r\n\r\n\r\n\r\nDưới ngòi bút miêu tả chân thực của tác giả Johann David Wyss, Lớn lên trên đảo vắng không chỉ bày ra trước mắt độc giả vẻ đẹp của một thế giới tự nhiên hoang sơ, trù phú mà còn là lời ca ngợi những đức tính tuyệt vời của con người. Đó là tinh thần phiêu lưu dũng cảm, sự thông minh tài trí, tính cần cù chăm chỉ và lòng tốt, sự quan tâm giữa các thành viên trong gia đình với nhau', 23, 0, 3, 'tieuthuyet_lonlentrendaovang.jpg', 0),
(21, 'Tiểu Thuyết - Mộ Đom Đóm', '96000', '112000', 'IPM', 'Giới Thiệu Chung Về Sách\r\n\r\nMộ đom đóm là một câu chuyện về chiến tranh.\r\n\r\nMột chiến tranh mà khói xám và lửa hồng chỉ điểm xuyết.\r\n\r\nMột chiến tranh mà trạng thái chết chỉ phảng phất, còn “đang chết” mới là trạng thái thường trực, là lực lượng án ngữ, chiếm ngự từ thể xác đến tâm hồn con người, cuối cùng thẳng tay nhấn chìm tất thảy.\r\n\r\nMột chiến tranh được tiếp cận ở bình diện thô ráp và nguyên thủy nhất từng thấy: cái đói.\r\n\r\nVì đói mà kiết lị, vì đói mà lở loét, vì đói mà chấy rận, vì đói mà hao mòn.\r\n\r\nKhông chỉ đói ăn, còn đói nhân cách. Mộ đom đóm kéo giật tới trước mắt người đọc những chân dung thoái hóa phái sinh từ cái đói thời loạn, như khả năng ợ lên nhai lại như bò, như suy nghĩ dị dạng trong ứng xử, trong tiêu khiển bình thường.\r\n\r\nKhông chỉ người đói mà thú vật cũng đói, thậm chí chuột cũng đói, và quay ra gặm nhấm tất thảy những gì có thể, kể cả con người.\r\n\r\nBỏ qua những màn bom rải thảm, những trận nổ rung trời, chiến tranh trong Mộ đom đóm tự lột trần mình bằng tội ác lớn nhất của nó: không chỉ cướp đi nhân mạng, mà còn tiêu diệt nhân tính.\r\n\r\n\r\n\r\nThông Tin Về Sách\r\n\r\nTên Nhà Cung Cấp: Công Ty Cổ Phần Văn Hóa Và Truyền Thông IPM\r\n\r\nTác giả: Nosaka Akiyuki\r\n\r\nNgười Dịch: Đào Phú Lợi\r\n\r\nNXB: NXB Hà Nội\r\n\r\nNăm XB: 2019\r\n\r\nTrọng lượng (gr): 300\r\n\r\nKích Thước Bao Bì: 13.5 x 20.5\r\n\r\nHình thức: Bìa Mềm\r\n\r\nNgôn Ngữ: Tiếng Việt\r\n\r\nSố Trang: 300', 32, 0, 3, 'tieuthuyet_modomdom.jpg', 0),
(22, 'Tiểu Thuyết - Mùa giáng sinh hạnh phúc - Bách Việt', '76700', '118000', 'Bách Việt', 'Adam Baswich - Công tước xứ Graves - điển trai và giàu có. Theo di chúc của cha, Adam phải kết hôn trước sinh nhật thứ 30, nếu không anh sẽ mất toàn bộ tài sản và tước vị. Giáng sinh năm nay, anh đã mời tất cả các tiểu thư danh giá trong cả nước tới dự tiệc để tuyển chọn cô dâu tương lai. Đồng thời, Adam cũng mời Sophia White - cô con gái ngoài giá thú đầy tai tiếng của Công tước Hennessy - để ngày lễ thêm sinh động. Sophia xinh đẹp, tốt bụng và thông minh đã nhanh chóng chiếm được cảm tình của gia nhân trong nhà Adam và cả chính chàng Công tước. Tuy nhiên, liệu Adam có sẵn sàng đánh đổi tất cả nhân danh tình yêu hay không?', 42, 0, 3, 'tieuthuyet_muagiangsinhhanhphuc.jpg', 0),
(23, 'Tiểu Thuyết - Ngôi nhà kỳ quái', '86000', '100000', 'Nhà Xuất Bản Phụ Nữ Việt Nam', 'NGÔI NHÀ KỲ QUÁI - #1 SÁCH BÁN CHẠY MỤC HƯ CẤU BÍ ẨN, KINH DỊ TRÊN AMAZON NHẬT BẢN\r\n\r\nThoạt nhìn, có lẽ trông nó cũng như bao ngôi nhà bình thường khác. Tuy nhiên, nếu để ý và săm soi tới từng ngóc ngách, bạn sẽ nhận thấy cảm giác khó chịu kỳ quái hiện diện ở khắp nơi trong nhà. Những sự kỳ quái đó cứ chồng chéo lên nhau để rồi cuối cùng dẫn đến một “sự thật”\r\n\r\nKhoảng không bí ẩn, hai lớp cửa, phòng trẻ em không có cửa sổ\r\n\r\nĐó là những điểm kỳ quái trên bản vẽ mặt bằng của một ngôi nhà cũ ở Tokyo mà người quen của ôi đang cân nhắc mua lại. Ngôi nhà trông thì có vẻ bình thường, bên trong thoáng đãng và sáng sủa. Thế như nó đem lại cảm giác bất ổn quái gở.\r\n\r\nKhi tôi đưa bản vẽ mặt bằng cho một người quen khác làm kiến trúc sư xem, đối phương cũng đưa ra kết luận tương tự.\r\n\r\nSự thật đằng sau thiết kế bí ẩn này là gì? Người chủ cũ của ngôi nhà này là ai? Có chuyện gì đã xảy ra trong ngôi nhà đó?\r\n\r\nHuy Hoàng thân mời bạn đón đọc!\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 22, 0, 3, 'tieuthuyet_ngoinhakiquoai.jpg', 0),
(24, 'Tiểu Thuyết - Người Điều Khiển Mê Cung', '96000', '128000', 'NXB Phụ Nữ Việt Nam', 'Người Điều Khiển Mê Cung\r\n\r\nSau bộ đôi Kẻ nhắc tuồng và Người ru ngủ, chuyên gia điều tra các vụ mất tích Mila Vasquez tái xuất hiện trong Người điều khiển mê cung một cách vô cùng bất ngờ, là chất xúc tác dẫn dắt câu chuyện đi đến hồi kết ngoạn mục. Tuy nhiên, lần này, chính cô lại là người mất tích.\r\n\r\nMột cô gái mất tích và được tìm thấy.\r\n\r\nMột người không còn gì để mất.\r\n\r\nMột mê cung bí mật nằm sâu trong lòng đất.\r\n\r\nCuộc săn lùng con quái vật bắt đầu.\r\n\r\nCâu chuyện diễn ra trong bối cảnh của mùa hè nóng cực điểm, đến nỗi mà các nhà chức trách quyết định thay đổi nhịp độ sinh hoạt của người dân: ban đêm thì làm việc, còn ban ngày thì ngủ. Chính vì vậy, cả thành phố trở nên vắng lặng vào ban ngày, nhưng đến đêm, các dịch vụ mở cửa và người dân đi làm nhộn nhịp. Và chính vào lúc nửa đêm, người ta phát hiện một phụ nữ trong rừng, bị gãy một chân và trên người không mảnh vải che thân. Cô vừa trốn thoát sau một thời gian dài bị giam giữ trong mê cung dưới lòng đất và không thể nhớ bất cứ điều gì. Người phụ nữ được xác định là Samantha Andretti, đã mất tích vào buổi sáng tháng Hai cách đây 15 năm. Khi đó cô bé 13 tuổi, biến mất trong lúc đi đến buổi hẹn để gặp cậu bạn học cùng trường.\r\n\r\nSau khi được đưa tới bệnh viện, Samantha Andretti được tiến sĩ Green, một chuyên gia tâm lý, điều trị để cô khôi phục trí nhớ về kẻ bắt cóc mình: một người đàn ông đeo mặt nạ thỏ với đôi mắt hình trái tim.\r\n\r\nNhưng tiến sĩ Green không phải người duy nhất săn lùng con quái vật. Cùng thời điểm đó, thám tử tư Bruno Genko – người được cha mẹ Samantha thuê tìm tung tích của con gái kể từ khi cô bé biến mất 15 năm trước quyết định tiếp tục cuộc điều tra mà ông đã theo đuổi. Tuy nhiên, ông không còn nhiều thời gian vì quả tim của ông có thể ngừng đập bất cứ lúc nào. Vì vậy, Genko biết rằng vụ Samantha sẽ là cuộc điều tra cuối cùng trong sự nghiệp của mình.\r\n\r\nĐếm ngược thời gian, Bruno Genko bắt đầu chạy nước rút trong hành trình khám phá bí mật về mê cung bóng tối.\r\n\r\nMã hàng8935069921152Dự Kiến Có Hàng30/03/2022Tên Nhà Cung CấpPhụ NữTác giảDonato CarrisiNgười DịchHoàng AnhNXBNXB Phụ Nữ Việt NamNăm XB2022Ngôn NgữTiếng ViệtTrọng lượng (gr)350Kích Thước Bao Bì23.5 x 15.5 x 1.5 cmSố trang320Hình thứcBìa MềmSản phẩm bán chạy nhấtTop 100 sản phẩm Truyện Trinh Thám - Kiếm Hiệp bán chạy của tháng\r\n\r\nNgười Điều Khiển Mê Cung\r\n\r\nSau bộ đôi Kẻ nhắc tuồng và Người ru ngủ, chuyên gia điều tra các vụ mất tích Mila Vasquez tái xuất hiện trong Người điều khiển mê cung một cách vô cùng bất ngờ, là chất xúc tác dẫn dắt câu chuyện đi đến hồi kết ngoạn mục. Tuy nhiên, lần này, chính cô lại là người mất tích.\r\n\r\nMột cô gái mất tích và được tìm thấy.\r\n\r\nMột người không còn gì để mất.\r\n\r\nMột mê cung bí mật nằm sâu trong lòng đất.\r\n\r\nCuộc săn lùng con quái vật bắt đầu.\r\n\r\nCâu chuyện diễn ra trong bối cảnh của mùa hè nóng cực điểm, đến nỗi mà các nhà chức trách quyết định thay đổi nhịp độ sinh hoạt của người dân: ban đêm thì làm việc, còn ban ngày thì ngủ. Chính vì vậy, cả thành phố trở nên vắng lặng vào ban ngày, nhưng đến đêm, các dịch vụ mở cửa và người dân đi làm nhộn nhịp. Và chính vào lúc nửa đêm, người ta phát hiện một phụ nữ trong rừng, bị gãy một chân và trên người không mảnh vải che thân. Cô vừa trốn thoát sau một thời gian dài bị giam giữ trong mê cung dưới lòng đất và không thể nhớ bất cứ điều gì. Người phụ nữ được xác định là Samantha Andretti, đã mất tích vào buổi sáng tháng Hai cách đây 15 năm. Khi đó cô bé 13 tuổi, biến mất trong lúc đi đến buổi hẹn để gặp cậu bạn học cùng trường.\r\n\r\nSau khi được đưa tới bệnh viện, Samantha Andretti được tiến sĩ Green, một chuyên gia tâm lý, điều trị để cô khôi phục trí nhớ về kẻ bắt cóc mình: một người đàn ông đeo mặt nạ thỏ với đôi mắt hình trái tim.\r\n\r\nNhưng tiến sĩ Green không phải người duy nhất săn lùng con quái vật. Cùng thời điểm đó, thám tử tư Bruno Genko – người được cha mẹ Samantha thuê tìm tung tích của con gái kể từ khi cô bé biến mất 15 năm trước quyết định tiếp tục cuộc điều tra mà ông đã theo đuổi. Tuy nhiên, ông không còn nhiều thời gian vì quả tim của ông có thể ngừng đập bất cứ lúc nào. Vì vậy, Genko biết rằng vụ Samantha sẽ là cuộc điều tra cuối cùng trong sự nghiệp của mình.\r\n\r\nĐếm ngược thời gian, Bruno Genko bắt đầu chạy nước rút trong hành trình khám phá bí mật về mê cung bóng tối.', 23, 0, 3, 'tieuthuyet_nguoidieukhienmecung.jpg', 0);
INSERT INTO `sanpham` (`id`, `tensanpham`, `giamoi`, `giacu`, `nhaxuatban`, `mota`, `soluong`, `luotxem`, `iddm`, `hinhanh`, `trangthai`) VALUES
(25, 'Tiểu Thuyết - Người Ru Ngủ', '106250', '125000', 'NXB Phụ Nữ', 'Nhân vật Mila Vasquez, nữ cảnh sát chuyên điều tra các vụ mất tích đã làm say lòng độc giả yêu thích tiểu thuyết trinh thám qua hơn 500 trang sách của Kẻ nhắc tuồng nay xuất hiện quyết đoán và gai góc hơn trong Người ru ngủ, anh em sinh đôi với Kẻ nhắc tuồng.\r\n\r\nBảy năm trôi qua, Mila quyết định ẩn mình tại Minh Phủ – phòng điều tra chuyên trách những vụ mất tích không rõ nguyên nhân. Bản thân không có được sự thấu cảm dành cho người khác, cô đành gửi gắm con gái Alice cho bà ngoại chăm sóc. Trong khi đó, giáo sư tội phạm học Gavila vẫn đang hôn mê sâu và được canh gác cẩn mật. Mọi việc tưởng chừng trôi qua trong êm đềm, nhưng thật ra đó là khoảng lặng trước cơn bão.\r\n\r\nTất cả bắt đầu bằng một cú điện gọi đến đường dây nóng của cảnh sát: Một tên sát nhân máu lạnh đã đột nhập vào gia đình một nhà tài phiệt trong lĩnh vực dược phẩm, giết hại toàn bộ thành viên trong gia đình sau khi cố tình để lộ danh tính. Hắn là Roger Valin, mất tích không rõ nguyên nhân 17 năm về trước, tái xuất hiện với bộ trang phục giống hệt trong bức ảnh chụp trước khi biến mất được lưu trữ tại Minh Phủ. Hắn đã ở đâu trong suốt thời gian qua? Bị người ngoài hành tinh bắt cóc chăng? Động cơ gây án là gì? Những câu hỏi ấy đòi hỏi sự vào cuộc của một chuyên gia tìm người mất tích, và không ai khác hơn, đó chính là đặc vụ Maria Elena Vasquez, hay Mila Vasquez.\r\n\r\nCàng dấn sâu vào điều tra, Mila nhanh chóng phải đối mặt với những vụ giết người liên tiếp xảy ra mà thủ phạm đều là những người mất tích từ lâu. Sau khi tái xuất để gây án, bọn chúng lại biến mất một lần nữa. Mọi cái chết dường như đều có liên hệ với một tên tội phạm sừng sỏ vẫn còn ngoài vòng pháp luật từ 30 năm nay: Người Ru Ngủ.\r\n\r\nĐể chặn đứng “đạo quân bóng tối”, Mila buộc phải nhờ đến sự cộng tác của đặc vụ Simon Berish, người đã từng theo đuổi vụ án suốt 20 năm trời, và đã phải trả giá nặng nề khi bị cả trụ sở cảnh sát khinh bỉ, ruồng rẫy. Một nhân vật đặc biệt, một trợ thủ đắc lực của Mila Vasquez.\r\n\r\nVà những gì hai người phát hiện đã đưa cả hai vào vòng nguy hiểm chết người.\r\n\r\nDonato Carrisi sinh năm 1973 ở Ý, tốt nghiệp ngành luật và tội phạm học trước khi trở thành nhà viết kịch bản phim truyền hình. Cuốn tiểu thuyết trinh thám đầu tay Kẻ nhắc tuồng của ông đã gây được tiếng vang lớn với năm giải thưởng Văn học quốc tế, được dịch ra hơn 30 thứ tiếng, và đưa tác giả lên vị trí “nhà văn Italia được đọc nhiều nhất trên thế giới”.\r\n\r\n(Theo vov.vn)\r\n\r\nMã hàng	9786045663820\r\nTên Nhà Cung Cấp	Phụ Nữ\r\nTác giả	Donato Carrisi\r\nNXB	NXB Phụ Nữ\r\nNăm XB	2019\r\nTrọng lượng (gr)	480\r\nKích Thước Bao Bì	15.5 x 23 x 2.2\r\nSố trang	457\r\nHình thức	Bìa Mềm\r\nSản phẩm bán chạy nhất	Top 100 sản phẩm Truyện Trinh Thám - Kiếm Hiệp bán chạy của tháng\r\nGiá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh,...\r\nChính sách khuyến mãi trên Fahasa.com không áp dụng cho Hệ thống Nhà sách Fahasa trên toàn quốc\r\nNhân vật Mila Vasquez, nữ cảnh sát chuyên điều tra các vụ mất tích đã làm say lòng độc giả yêu thích tiểu thuyết trinh thám qua hơn 500 trang sách của Kẻ nhắc tuồng nay xuất hiện quyết đoán và gai góc hơn trong Người ru ngủ, anh em sinh đôi với Kẻ nhắc tuồng.\r\n\r\nBảy năm trôi qua, Mila quyết định ẩn mình tại Minh Phủ – phòng điều tra chuyên trách những vụ mất tích không rõ nguyên nhân. Bản thân không có được sự thấu cảm dành cho người khác, cô đành gửi gắm con gái Alice cho bà ngoại chăm sóc. Trong khi đó, giáo sư tội phạm học Gavila vẫn đang hôn mê sâu và được canh gác cẩn mật. Mọi việc tưởng chừng trôi qua trong êm đềm, nhưng thật ra đó là khoảng lặng trước cơn bão.\r\n\r\nTất cả bắt đầu bằng một cú điện gọi đến đường dây nóng của cảnh sát: Một tên sát nhân máu lạnh đã đột nhập vào gia đình một nhà tài phiệt trong lĩnh vực dược phẩm, giết hại toàn bộ thành viên trong gia đình sau khi cố tình để lộ danh tính. Hắn là Roger Valin, mất tích không rõ nguyên nhân 17 năm về trước, tái xuất hiện với bộ trang phục giống hệt trong bức ảnh chụp trước khi biến mất được lưu trữ tại Minh Phủ. Hắn đã ở đâu trong suốt thời gian qua? Bị người ngoài hành tinh bắt cóc chăng? Động cơ gây án là gì? Những câu hỏi ấy đòi hỏi sự vào cuộc của một chuyên gia tìm người mất tích, và không ai khác hơn, đó chính là đặc vụ Maria Elena Vasquez, hay Mila Vasquez.\r\n\r\nCàng dấn sâu vào điều tra, Mila nhanh chóng phải đối mặt với những vụ giết người liên tiếp xảy ra mà thủ phạm đều là những người mất tích từ lâu. Sau khi tái xuất để gây án, bọn chúng lại biến mất một lần nữa. Mọi cái chết dường như đều có liên hệ với một tên tội phạm sừng sỏ vẫn còn ngoài vòng pháp luật từ 30 năm nay: Người Ru Ngủ.\r\n\r\nĐể chặn đứng “đạo quân bóng tối”, Mila buộc phải nhờ đến sự cộng tác của đặc vụ Simon Berish, người đã từng theo đuổi vụ án suốt 20 năm trời, và đã phải trả giá nặng nề khi bị cả trụ sở cảnh sát khinh bỉ, ruồng rẫy. Một nhân vật đặc biệt, một trợ thủ đắc lực của Mila Vasquez.\r\n\r\nVà những gì hai người phát hiện đã đưa cả hai vào vòng nguy hiểm chết người.\r\n\r\nDonato Carrisi sinh năm 1973 ở Ý, tốt nghiệp ngành luật và tội phạm học trước khi trở thành nhà viết kịch bản phim truyền hình. Cuốn tiểu thuyết trinh thám đầu tay Kẻ nhắc tuồng của ông đã gây được tiếng vang lớn với năm giải thưởng Văn học quốc tế, được dịch ra hơn 30 thứ tiếng, và đưa tác giả lên vị trí “nhà văn Italia được đọc nhiều nhất trên thế giới”.', 53, 0, 3, 'tieuthuyet_nguoirungu.jpg', 0),
(26, 'Tiểu Thuyết - Tắt Đèn', '37500', '50000', 'MinhLongbook', '“Tắt đèn là một cuốn xã hội tiểu thuyết tả cảnh đau khổ của dân quê, của một người đàn bà nhà quê An Nam suốt đời sống trong sự nghèo đói và sự ức hiếp của bọn cường hào và người có thế lực mà lúc nào cũng vẫn hết lòng vì chồng, vì con”.\r\n\r\n\r\n\r\n(Ngô Tất Tố)\r\n\r\n\r\n\r\n“Theo tôi tiên tri, thì cuốn Tắt đèn còn phải sống lâu, thọ hơn cả một số văn gia đương kim hôm nay. Chị Dậu đích là tác giả Ngô Tất Tố hoá thân ra mà thôi. Chị Dậu là cái đốm sáng đặc biệt của Tắt đèn. Nếu ví toàn truyện Tắt đèn là một khóm cây, thì chị Dậu là cả gốc cả ngọn cả cành và chính chị Dậu đã nổi gió lên mà rung cho cả cái cây dạ hương Tắt đèn đó lên”.\r\n\r\n\r\n\r\n( Nguyễn Tuân - 1962 )\r\n\r\n\r\n\r\n“Chị Dậu là nhân vật điển hình được người đọc yêu mến. Và người yêu mến chị hơn cả là Ngô Tất Tố. Giữa biết bao tệ nạn và cảnh đời bất công ngang trái ở nông thôn Việt Nam cũ, Ngô Tất Tố đã hết lòng bảo vệ một người phụ nữ là chị Dậu. Nhiều lần chị Dậu bị đẩy vào tình thế hiểm nghèo, rất có thể bị làm nhục nhưng Ngô Tất Tố đã giữ cho chị Dậu được bảo đảm toàn vẹn, giữ trọn phẩm giá, không phải đau đớn, dằn vặt”.', 12, 0, 3, 'tieuthuyet_tatden.jpg', 0),
(27, 'Truyện Tranh - Thanh Gươm Diệt Quỷ - Đóa Hoa Hạnh Phúc', '45000', '50000', 'Kim Đồng', 'GIỚI THIỆU TÁC PHẨM\r\n\r\nTrên đường thực thi nhiệm vụ, tiện đường ghé qua một ngôi làng, Tanjiro đã bắt gặp bóng hình hạnh phúc của một cô dâu trạc tuổi Nezuko trong đám cưới của mình.\r\n\r\n\r\n\r\nEm gái của anh là người con gái dịu hiền hơn bất cứ ai.\r\n\r\n\r\n\r\nEm gái của anh, dù có biến thành quỷ, cũng không vứt bỏ sự ấm áp của mình.\r\n\r\n\r\n\r\nNếu có một điều ước, anh ước mong em có thể trở thành người con gái hạnh phúc nhất thế gian.\r\n\r\n\r\n\r\nVới mong muốn em gái cũng sẽ được hạnh phúc, cậu đã một mình lên đường tìm kiếm loài hoa trong truyền thuyết. Tuy nhiên…\r\n\r\n\r\n\r\n“Đóa hoa hạnh phúc” là tiểu thuyết chuyển thể đầu tiên của bộ truyện tranh đình đám Nhật Bản: “Kimetsu no Yaiba - Thanh gươm diệt quỷ”!! Tuy ra mắt không lâu, nhưng series tiểu thuyết này cũng đã nhanh chóng công phá các bảng xếp hạng tại Nhật với con số lên tới hàng triệu-bản-in!!\r\n\r\n\r\n\r\nNhư một lát cắt bình yên và đầy xúc cảm xoay quanh các nhân vật được yêu mến của phần chính truyện, chắc chắn “Đóa hoa hạnh phúc” sẽ mang lại cho các Fan những phút giây thư thái và lắng đọng.\r\n\r\n\r\n\r\nNgoài ra cuốn sách nhỏ này còn chứa những câu chuyện về Zenitsu, Inosuke và các thành viên trong đội Diệt Quỷ chưa từng được nhắc tới trong truyện chính! Không những thế, phần phụ lục “Học viện Diệt Quỷ” rất được yêu thích cũng được viết thành tiểu thuyết!! Sách tặng kèm 01 lót ly cho những bản in đầu. Xin trân trọng giới thiệu cùng bạn đọc.', 24, 0, 3, 'truyentranh_thanhguomdietquy_doahoahanhphuc.jpg', 0),
(28, 'Tiểu Thuyết Trinh Thám - Thợ Săn Bóng Tối', '145600', '182000', 'Anphuocbooks', 'Tiểu Thuyết Trinh Thám - Thợ Săn Bóng Tối\r\n\r\n\r\n\r\nSau Tòa án linh hồn, Thợ săn bóng tối là phần tiếp theo trong xê ri trinh thám mang đậm chất tôn giáo của nhà văn người Italia Donato Carrisi.\r\n\r\n\r\n\r\nMarcus, một linh mục ân giải, tỉnh dậy sau cơn hôn mê ở Prague và hoàn toàn mất trí nhớ. Bên giường bệnh, anh tìm thấy hai phong bì dán kín: một chiếc chứa vé tàu tới Roma cùng với lời cam kết ở đó, anh sẽ tìm lại được quá khứ của mình; trong phong bì còn lại chứa 20.000 euro cùng một hộ chiếu mang danh tính giả để Marcus làm lại cuộc đời. Vị linh mục sẽ lựa chọn cái nào?\r\n\r\n\r\n\r\nMarcus quyết định vò nát chiếc phong bì chứa tiền và hộ chiếu giả để anh không có cơ hội đổi ý, và lựa chọn trở về Rome. Ở đó, anh được dẫn đến Vatican, và lần đầu tiên nhận ra khả năng nhìn thấu cái ác như đang diễn ra ngay trước mắt của bản thân mình. Sau khi được huấn luyện, Marcus sẵn sàng thực hiện nhiệm vụ của mình đúng vào lúc cả thành phố Rome đang lâm vào trạng thái hoảng loạn bởi một tên sát nhân hàng loạt. Hắn lựa chọn nạn nhân là các cặp đôi đang thân mật với nhau ở ngoại ô thành phố với cùng một cách thức gây án: nạn nhân nam nhận cái chết êm ái với một phát đạn vào gáy trong khi nạn nhân nữ phải chứng kiến cái chết của người tình, sau đó bị tra tấn dã man trước khi những nhát dao chí tử cướp đi mạng sống của họ.\r\n\r\n\r\n\r\nTrong lúc Marcus thâm nhập các hiện trường án mạng để tìm kiếm manh mối, anh gặp lại Sandra - nữ cảnh sát chụp ảnh hiện trường. Cả hai nhanh chóng phát hiện ra kết quả khám nghiệm tử thi đã bị làm cho sai lệch bởi chính vị chuyên gia pháp y -   kẻ đứng đầu một giáo phái bí truyền và từng điều hành một bệnh viện dành cho tội phạm vị thành niên trong quá khứ.\r\n\r\n\r\n\r\nTuyến nhân vật đa dạng, các vụ án kép diễn ra liên tục với nhịp điệu điên cuồng cùng tình tiết truyện phức tạp tạo nên một tác phẩm cuốn hút và thể hiện tài năng phi thường của Donato Carrisi.\r\n\r\n\r\n\r\nTác giả\r\n\r\n\r\n\r\nDonato Carrisi sinh năm 1973 ở Ý, tốt nghiệp ngành luật và tội phạm học trước khi trở thành nhà viết kịch bản phim truyền hình. Cuốn tiểu thuyết trinh thám đầu tay Kẻ nhắc tuồng của ông đã gây được tiếng vang lớn với năm giải thưởng Văn học quốc tế, được dịch ra hơn 30 thứ tiếng, và đưa tác giả lên vị trí “nhà văn Italia được đọc nhiều nhất trên thế giới”.\r\n\r\n\r\n\r\nTrích đoạn 1\r\n\r\n\r\n\r\nTrong lịch sử mười lăm năm của mình, trường Hamelin là nơi ghé chân của khoảng ba mươi đứa trẻ.\r\n\r\n\r\n\r\nChúng đều phạm cùng một tội. Sát nhân. Cho dù không phải đứa trẻ nào cũng thực sự giết người. Một vài đứa chỉ có biểu hiện “khuynh hướng sát nhân rõ rệt” hay đã bị ngăn chặn trước khi đạt được mục đích hoặc chúng thực hiện không thành công.\r\n\r\n\r\n\r\nXét về độ tuổi của trẻ phạm tội, ba mươi là một con số đáng kể. Bản kê khai về những gì chúng phạm phải không có ảnh đính kèm, cũng chẳng có tên khai sinh.\r\n\r\n\r\n\r\nDanh tính của mỗi đứa trẻ được che giấu bằng một câu chuyện cổ tích.\r\n\r\n\r\n\r\n“Khi giết người, bọn trẻ còn tàn độc hơn cả người lớn: sự ngây thơ là vỏ bọc của chúng.” Joseph Kropp viết. “Khi tới đây, có vẻ như chúng hoàn toàn không nhận thức được mức độ trầm trọng của việc chúng đã và sắp thực hiện. Nhưng sự ngây thơ trong hành vi của chúng có thể đánh lừa. Như trường hợp của đứa trẻ tra tấn một con côn trùng nhỏ. Người lớn sẽ phạt nó nhưng lại nghĩ đó là một trò chơi vì luôn cho rằng đứa bé không có nhận thức đầy đủ về sự khác biệt giữa tốt và xấu. Nhưng một phần trong đứa trẻ biết rằng việc nó làm là sai trái và nó cảm thấy vui thú khi hành hạ người khác.”', 43, 0, 3, 'tieuthuyet_thosanbongtoi.jpg', 0),
(29, 'Tiểu Thuyết Trinh Thám - Tòa Án Linh Hồn', '148000', '185000', 'Anphuocbooks', 'Tiểu Thuyết Trinh Thám - Tòa Án Linh Hồn\r\n\r\n\r\n\r\nĐối với những người hâm mộ tiểu thuyết tâm lý tội phạm, Donato Carrisi dường như là lựa chọn không thể thiếu. Sau thành công từ Kẻ nhắc tuồng, Tòa án linh hồn là cuốn tiểu thuyết thứ hai của tác giả ăn khách người Italia và ông đang xây dựng danh tiếng để viết tiểu thuyết tội phạm có khuynh hướng tâm lý bất thường.\r\n\r\nLara, một nữ sinh viên ngành Kiến trúc đã biến mất một cách bí ẩn khỏi kí túc xá của mình ở thành phố Roma. Cảnh sát nhận định có lẽ cô là nạn nhân mới nhất của một kẻ giết người hàng loạt. Trong thành phố mưa, Marcus cùng đồng sự của mình đang phân tích vụ án và hy vọng vẫn có thể tìm thấy cô còn sống. Họ không phải những người điều tra bình thường, họ là thầy tu của Giáo Đoàn Ân Giải, hoạt động bí mật và độc lập với cảnh sát.\r\n\r\nMột năm trước, Marcus bị thương và mất trí nhớ. Anh không biết mình là ai và từ đâu đến. Được người cộng sự chỉ dẫn, anh phát hiện bản thân có biệt tài phân tích hiện trường vụ án để thấu hiểu thông điệp đen tối mà cái ác gieo rắc lên mọi vật, như thể anh chính là người chứng kiến toàn bộ sự việc diễn ra.\r\n\r\nSandra là một cảnh sát chụp ảnh hiện trường có chồng qua đời trong một vụ tai nạn thương tâm khi đang tác nghiệp tại thành phố Roma. Cô đã chôn giấu nỗi đau của mình bằng cách làm việc không ngừng nghỉ, nhưng một cuộc gọi điện thoại bất thường từ một đặc vụ Interpol đã khiến cô quyết định điều tra lại cái chết của chồng mình và sớm phát hiện sự thật anh đã bị sát hại.\r\n\r\nManh mối các vụ án đã đưa Marcus và Sandra gặp nhau. Từ chỗ đối đầu, cả hai trở thành công sự và sát cánh cùng nhau vén bức màn bí ẩn về Vatican - kho lưu trữ tội ác lớn nhất thế giới và cũng là “tòa án lâu đời nhất của Giáo triều La Mã” tồn tại từ thế kỷ 12.\r\n\r\nTác giả\r\n\r\nDonato Carrisi sinh năm 1973 ở Ý, tốt nghiệp ngành luật và tội phạm học trước khi trở thành nhà viết kịch bản phim truyền hình. Cuốn tiểu thuyết trinh thám đầu tay Kẻ nhắc tuồng của ông đã gây được tiếng vang lớn với năm giải thưởng Văn học quốc tế, được dịch ra hơn 30 thứ tiếng, và đưa tác giả lên vị trí “nhà văn Italia được đọc nhiều nhất trên thế giới”.\r\n\r\n\r\n\r\nTrích đoạn 1\r\n\r\n\r\n\r\n“Kho dữ liệu của Tòa Ân Giải Tối Cao là nơi cái ác từ lâu được nghiên cứu, tháo dỡ và phân tích. Nhưng có một quy tắc là mọi linh mục ân giải chỉ được tiếp cận với một phần của tài liệu. Điều này nhằm bảo quản sự bí mật, nhưng cũng bởi vì không ai có thể quản lý nổi kho kiến thức về quá nhiều tội ác”. Biết chắc đã thu hút được toàn bộ sự chú ý của Sandra, ông ta tiếp tục: “Họ ảo tưởng rằng, bằng cách thu thập càng nhiều càng tốt những trường hợp điển hình của tất cả những tội lỗi, họ có thể hiểu được những biểu hiện của cái ác trong lịch sử loài người. Nhưng cho dù họ có cố phân loại nó, ép buộc nó vào những phạm trù cụ thể, cái ác vẫn tìm được cách để né tránh mọi khuôn khổ, mọi khả năng dự báo. Luôn luôn tồn tại những dấu hiệu bất thường: những điểm thiếu hoàn hảo nho nhỏ nhưng có thể được điều chỉnh lại. Vì thế những linh mục ân giải đã chuyển từ vai những nhà nghiên cứu và lưu trữ viên thông thường thành những điều tra viên trực tiếp tham gia vào quá trình thực thi công lý. Bài học lớn nhất của kho dữ liệu mà những thày tu đó vô cùng quý trọng là cái ác được sản sinh sẽ sản sinh ra cái ác khác. Đôi khi nó hành động như một loại bệnh dịch không thể ngăn cản nổi, hủy hoại con người mà không cần biết đó là ai. Nhưng những linh mục ân giải không ngờ rằng, chính họ cũng là con người nên quá trình đó cũng có thể ảnh hưởng tới cả họ”.\r\n\r\n\r\n\r\nTrích đoạn 2\r\n\r\n\r\n\r\n… Tất cả những cá thể sống trong tự nhiên đều giết chóc. Nhưng chỉ có con người làm việc đó không chỉ vì nhu cầu mà còn vì tính ác dâm đơn thuần, đó là thú vui được gieo rắc sự đau khổ. Lòng tốt và sự độc ác không chỉ là những phạm trù đạo đức. Trong những năm qua tôi đã chứng minh rằng người ta có thể nuôi cấy một sự điên cuồng giết chóc trong bất cứ loài vật nào và xóa bỏ đặc tính di truyền loài của chúng. Tại sao con người phải là ngoại lệ?...', 23, 0, 3, 'tieuthuyet_toaanlinhon.jpg', 0),
(30, 'Truyện tranh - Boys Over Flowers - Con Nhà Giàu', '19000', '25000', 'Nhà Xuất Bản Kim Đồng', 'Giới thiệu tóm tắt nội dung:\r\n\r\nMakino Tsukushi là người nghèo duy nhất ở Học viện Eitoku, ngôi trường danh giá chỉ dành cho những con nhà giàu và được thống trị bởi Flower 4 hay F4, một nhóm 4 nam sinh đến từ những gia đình quyền lực nhất: Doumyoji Tsukasa, Hanazawa Rui, Nishikado Sojiro và Mimasaka Akira. Nếu một học sinh bị rơi vào tầm ngắm của F4, họ sẽ bị dán thẻ đỏ và bị bắt nạt rồi bị đuổi ra khỏi trường.', 12, 0, 2, 'truyentranh_boysoverflowersconnhagiau.jpg', 0),
(31, 'Chàng Băng Giá Và Nàng Lạnh Lùng', '49500', '55000', 'Hồng Đức', 'Tiếp xúc với nhau mỗi ngày, trái tim Fuyutsuki rung động trước khía cạnh không ngờ tới của Himuro, và lòng tốt không thay đổi của cô khiến “tình yêu” của Himuro ngày càng mãnh liệt.\r\n\r\nKhoảng cách giữa hai con người mang vẻ ngoài lạnh lùng nhưng vụng về trong tình yêu ấy đang từ từ thay đổi...!?', 12, 1, 2, 'truyentranh_changbanggiavanangtroilanh.jpg', 0),
(32, 'Truyện Tranh - Chàng khổng lồ tí hon', '85000', '40000', 'NXB Kim Đồng', 'Haikyu - Chàng Khổng Lồ Tí Hon: Tôi có thể nhảy cao!! Bị mê hoặc bởi bộ môn bóng chuyền, Shoyo Hinata đã tham dự giải đấu đầu tiên cũng là cuối cùng thời cấp hai của mình.Nhưng đội bóng của cậu lại thất bại trước tuyển thủ có biệt danh “vua của sân đấu” – Kageyama. Và rồi với lời thể phải phục thù, Hinata đã đến gõ cửa câu lạc bộ bóng chuyền trường cấp ba Karasuno!?\r\n\r\n\r\n\r\nNhà xuất bản Kim Đồng\r\n\r\nCông ty phát hành NXB Kim Đồng\r\n\r\nTác giả Haruichi Furudate\r\n\r\nSố trang 96\r\n\r\nNăm xuất bản 2023\r\n\r\n\r\n\r\nNhà sách Trần Lê cam kết chỉ bán sách thật, sách mới, nhập nguyên kiện từ nhà xuất bản, đảm bảo chất lượng nguyên vẹn; sách được lựa chọn và đóng gói cẩn thận.\r\n\r\nNhà sách Trần Lê xin chân thành cảm ơn quý khách vì đã luôn tin tưởng và lựa chọn các sản phẩm của chúng tôi. Sau khi sử dụng sản phẩm, quý khách vui lòng để lại nhận xét đánh giá, chúng tôi sẽ dựa vào đó để thay đổi ngày càng tốt hơn, mang đến những trải nghiệm tuyệt vời cho bạn.\r\n\r\nNếu có bất kỳ thắc mắc về sản phẩm, vui lòng liên hệ ngay với Nhà sách Trần Lê trong phần shopee chat. Chúng tôi luôn ở đây và sẵn sàng giải đáp cho bạn!', 21, 0, 2, 'truyentranh_changkhonglotihon.jpg', 0),
(33, 'Truyện Tranh - Dưới Ánh Hào Quang', '73040', '88000', 'IPM Việt Nam', 'Quà tặng bản đặc biệt: \r\n\r\n- Bìa 2 mặt với thiết kế độc quyền của riêng bản Việt Nam, sử dụng art mua ngoài của Shonen Jump+.\r\n\r\n- Oshi no Card lấp lánh kèm theo chữ kí đặc biệt của nhân vật.\r\n\r\n- OSHIkishi đầy màu sắc với art mua ngoài từ Shonen Jump+ kèm theo chữ kí đặc biệt của nhân vật.\r\n\r\nThời gian phát hành dự kiến tại HN: 9/11/2023. Các tỉnh xa phụ thuộc vào từng kênh phân phối\r\n\r\nNội dung:\r\n\r\nAqua và Ruby nhập học vào ngôi trường có nhiều học sinh làm trong ngành giải trí. Aqua gặp lại Kana, một người bạn diễn từng đóng phim với cậu, và tìm được manh mối liên quan đến một nhà sản xuất từng quen biết Ai trước đây.\r\n\r\nĐể có được thông tin về những mối quan hệ của Ai trong quá khứ, Aqua chấp nhận lời mời tham gia một chương trình hẹn hò thực tế.', 12, 0, 2, 'truyentranh_duoianhhaoquang3.jpg', 0),
(34, 'Truyện Tranh | Hananoi Và Triệu Chứng Tình Yêu', '40000', '50000', 'NXB Kim Đồng', '------------------------\r\n\r\nTIME & PLACE - ĐEM THẾ GIỚI COMIC TỚI BẠN\r\n\r\n⭐️ Lựa chọn truyện cẩn thận cho từng đơn hàng.\r\n\r\n🎁 Gift Card theo mùa ( Tùy theo thời điểm sẽ có )\r\n\r\n📦 Gói vận chuyển ưu tiên, SIÊU NHANH, SIÊU AN TOÀN', 21, 0, 2, 'truyentranh_hanaoivatrieuchungtinhyeu.jpg', 0),
(35, 'Truyện Tranh - Miền An Lạc - Tập 1', '38800', '40000', 'NXB Kim Đồng', 'Miền An Lạc - Tập 1 Tây Tạng, thế kỉ 18. Vị hôn thê từ đất nước xa lạ đã đến nhà Kang Zhipa, thầy thuốc học việc sống tại ngôi làng nọ trong khe núi. Tên người con gái ấy là Moshi Lati. Đôi trẻ ngây thơ dần xích lại gần nhau và chẳng mấy nữa sẽ trở thành một gia đình. \"Miền an lạc\" là câu chuyện về đôi tân lang tân nương diễn ra trong dòng chảy cuộc sống thường nhật nơi đất Tạng.', 21, 0, 2, 'truyentranh_mienanlac1.jpg', 0),
(36, 'Truyện Tranh - Naruto', '22500', '25000', 'Kim Đồng', 'Tsukuyomi vô hạn được phát động, đưa người người chìm vào mộng giới. Qua âm mưu của Hắc Zetsu, Kaguya đã phục sinh và tiến hành thống nhất Chakra!! Với sức mạnh được Lục Đạo Tiên Nhân phó thác, Naruto và Sasuke sẽ đứng lên chống lại Kaguya và phong ấn bà ta!?', 122, 0, 2, 'truyentranh_narutoquyen1.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '0',
  `tentaikhoan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img` text COLLATE utf8mb4_general_ci NOT NULL,
  `trangthai` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `ten`, `matkhau`, `email`, `diachi`, `sdt`, `role`, `tentaikhoan`, `img`, `trangthai`) VALUES
(1, 'nguyenquanghuy', '1234567', 'nguyenquanghuymc93@gmail.com', 'son la province', '0839441883', 4, 'admin', '1006.jpg', 0),
(2, 'Luong Nguyen', '12345678', 'luongnmph36073@fpt.edu.vn', 'Ba Vi Ha Noi', '0989329401', 2, 'luong.nguyen2', 'anhdep.jpg', 0),
(12, 'Lương Nguyễn', '12345678', 'luongnguyen@gmail.com', 'Ba Vì,Hà Nội', '0989329401', 1, 'Luong.nguyen1124', 'anhdep.jpg', 0),
(14, 'Luong nguyen', '12345678', 'user@gmail.com', 'ba vi ha noi', '0989329401', 0, 'luong.11', 'avtgithub.png', 0),
(15, 'pham minh hieu', '1', 'hieu1phong2003@gmail.com', 'ha noi', '0123456', 0, 'hieu', 'Ảnh chụp màn hình 2023-11-12 121303.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int NOT NULL,
  `tenvoucher` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `giatrivoucher` double(10,2) NOT NULL DEFAULT '0.00',
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `tenvoucher`, `giatrivoucher`, `ngaybatdau`, `ngayketthuc`) VALUES
(1, 'abxsmonth11', 0.00, '2023-11-12', '2023-11-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_binhluan_taikhoan` (`idtaikhoan`),
  ADD KEY `fk_binhluan_sanpham` (`idsanpham`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitietdonhang_sanpham` (`idsanpham`),
  ADD KEY `fk_chitietdonhang_donhang` (`iddonhang`);

--
-- Indexes for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chitietgiohang_voucher` (`idvoucher`),
  ADD KEY `fk_chitietgiohang_sanpham` (`masanpham`),
  ADD KEY `fk_chitietgiohang_giohang` (`magiohang`);

--
-- Indexes for table `danhgiasp`
--
ALTER TABLE `danhgiasp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_danhgiasp_taikhoan` (`idtaikhoan`),
  ADD KEY `fk_danhgiasp_sanpham` (`idsanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_donhang_taikhoan` (`idkhachhang`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_giohang_taikhoan` (`idtaikhoan`),
  ADD KEY `fk_giohang_sanpham` (`idsanpham`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham_danhmuc` (`iddm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `danhgiasp`
--
ALTER TABLE `danhgiasp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=975284602;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984015237;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_binhluan_sanpham` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_binhluan_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_chitietdonhang_donhang` FOREIGN KEY (`iddonhang`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `fk_chitietdonhang_sanpham` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `fk_chitietgiohang_giohang` FOREIGN KEY (`magiohang`) REFERENCES `giohang` (`id`),
  ADD CONSTRAINT `fk_chitietgiohang_sanpham` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_chitietgiohang_voucher` FOREIGN KEY (`idvoucher`) REFERENCES `voucher` (`id`);

--
-- Constraints for table `danhgiasp`
--
ALTER TABLE `danhgiasp`
  ADD CONSTRAINT `fk_danhgiasp_sanpham` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_danhgiasp_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_donhang_taikhoan` FOREIGN KEY (`idkhachhang`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_giohang_sanpham` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_giohang_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_danhmuc` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
