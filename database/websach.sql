-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 22, 2021 lúc 02:32 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `Mabl` int(11) NOT NULL,
  `Masach` int(11) NOT NULL,
  `Tk` char(30) NOT NULL,
  `Noidung` varchar(9999) NOT NULL,
  `Timecmt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`Mabl`, `Masach`, `Tk`, `Noidung`, `Timecmt`) VALUES
(21, 28, 'khach', '<p>Rất hay&nbsp;</p>', '23:45-17/12/2021'),
(22, 28, 'haikkzzz', '<p>Cảm ơn bạn đ&atilde; mua h&agrave;ng.</p>', '20:25-18/12/2021');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `Magiohang` int(11) NOT NULL,
  `Masach` int(11) NOT NULL,
  `Tk` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`Magiohang`, `Masach`, `Tk`) VALUES
(73, 11, 'khach'),
(75, 29, 'khach');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `Mahoadon` int(11) NOT NULL,
  `Masach` int(11) NOT NULL,
  `Tk` char(30) NOT NULL,
  `Soluongmua` int(11) NOT NULL,
  `Ngaymua` varchar(50) NOT NULL,
  `Thanhtien` float NOT NULL,
  `Trangthai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`Mahoadon`, `Masach`, `Tk`, `Soluongmua`, `Ngaymua`, `Thanhtien`, `Trangthai`) VALUES
(112, 28, 'khach', 2, '18:24-01/12/2021', 186000, 1),
(114, 9, 'haikkzzz', 1, '18:36-01/12/2021', 64800, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `Tk` char(30) NOT NULL,
  `Mk` char(30) NOT NULL,
  `Hoten` varchar(50) NOT NULL,
  `Sdt` char(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Diachi` varchar(100) NOT NULL,
  `Quyen` int(1) NOT NULL,
  `Avt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`Tk`, `Mk`, `Hoten`, `Sdt`, `Email`, `Diachi`, `Quyen`, `Avt`) VALUES
('haikkzzz', 'haikkxyz', 'Phạm Hoàng Hải', '0327091016', 'haikkpro@gmail.com', 'Thị trấn hàng trạm, huyện yên thủy, tỉnh hòa bình', 1, 'hero-2.png'),
('khach', '1234', 'Trần Văn A', '0987654321', 'haikkzzz', 'TT Lâm, Ý Yên, Nam Định', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `Masach` int(11) NOT NULL,
  `Tensach` varchar(100) NOT NULL,
  `Matl` varchar(50) NOT NULL,
  `Nxb` varchar(100) NOT NULL,
  `Tacgia` varchar(50) NOT NULL,
  `Mota` varchar(9999) NOT NULL,
  `Dongia` float NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Img1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`Masach`, `Tensach`, `Matl`, `Nxb`, `Tacgia`, `Mota`, `Dongia`, `Soluong`, `Img1`) VALUES
(5, 'Yêu Em Từ Cái Nhìn Đầu Tiên', 'Tiểu Thuyết', 'Văn học', 'Cố Mạn', '<p>Y&ecirc;u Em Từ C&aacute;i Nh&igrave;n Đầu Ti&ecirc;n (T&aacute;i Bản 2016) - Tặng K&egrave;m Bookmark + Postcard</p><p>&nbsp;</p><p>&nbsp;</p><p>Đi c&ugrave;ng?</p><p>Hai chữ n&agrave;y k&eacute;o Vy Vy trở về hiện tại, lập tức ho&agrave;n hồn.Nh&igrave;n chiếc xe, lại nh&igrave;n Đại Thần, người đẹp Vy Vy lắp bắp:</p><p>&ldquo;Em&hellip; em&hellip;&rdquo;</p><p>Ti&ecirc;u Nại hơi cau m&agrave;y. Vy Vy trấn tĩnh n&oacute;i:</p><p>&ldquo;&hellip; Anh đ&egrave;o em?&rdquo;.</p><p>&ldquo;Ừ, đường xa thế chẳng lẽ đi bộ?&rdquo;.</p><p>Đường đến nh&agrave; thi đấu b&oacute;ng rổ xa thế, đi bộ đương nhi&ecirc;n rất đ&aacute;ng sợ, nhưng&hellip; nhưng &nbsp;đ&aacute;ng sợ hơn ch&iacute;nh l&agrave; anh đ&egrave;o em! Vy Vy băn khoăn. Với danh tiếng nổi như cồn của Ti&ecirc;u Nại, cộng th&ecirc;m ch&uacute;t nổi tiếng nho nhỏ của Vy Vy, đ&egrave;o nhau tr&ecirc;n con đường n&agrave;y, chắc chắn sẽ c&oacute; ngay những lời đồn hay ho cho coi! Tuy rằng họ h&igrave;nh như, h&igrave;nh như, c&oacute; vẻ như đ&uacute;ng l&agrave; đang tiến tới những nghi ngờ hay ho đ&oacute;, nhưng hiện nay, b&acirc;y giờ, l&uacute;c n&agrave;y họ tuyệt đối trắng tinh hơn cả l&ocirc;ng cừu.</p><p>&ldquo;Như thế n&agrave;y... như thế n&agrave;y... kh&ocirc;ng ổn lắm. Người kh&aacute;c nh&igrave;n thấy sẽ hiểu nhầm&rdquo;.</p><p>Vy Vy cố từ chối kh&eacute;o, hai tai bắt đầu đỏ dần.</p><p>&ldquo;Hiểu nhầm?&rdquo;.</p><p>Chẳng lẽ anh kh&ocirc;ng hiểu? Vy Vy đ&agrave;nh n&oacute;i thẳng:</p><p>&ldquo;Hiểu nhầm ch&uacute;ng ta&hellip; &ocirc;i, l&agrave; kiểu quan hệ đ&oacute;&hellip;&rdquo;.</p><p>Ti&ecirc;u Nại lặng lẽ nh&igrave;n c&ocirc;, hồi l&acirc;u kh&ocirc;ng n&oacute;i, Vy Vy cảm thấy một nỗi căng thẳng kh&oacute; hiểu&hellip; m&igrave;nh kh&ocirc;ng n&oacute;i g&igrave; sai chứ? Đ&uacute;ng khi Vy Vy cảm thấy mỗi l&uacute;c c&agrave;ng căng thẳng hơn, cuối c&ugrave;ng Nại H&agrave; ph&aacute; vỡ bầu kh&ocirc;ng kh&iacute; y&ecirc;n lặng:</p><p>&ldquo;Thế ch&uacute;ng ta kh&ocirc;ng phải l&agrave; kiểu quan hệ đ&oacute; từ khi n&agrave;o vậy?&rdquo;.</p><p><strong>Mời bạn đ&oacute;n đọc.</strong></p><p>&gt;</p><p>&gt;</p>', 95000, 57, '229262_p71075mbt.jpg'),
(6, 'Bên Nhau Trọn Đời', 'Tiểu Thuyết', 'Văn Học', 'Cố Mạn', '<p>Trọn Đời B&ecirc;n Nhau (T&aacute;i Bản 2019)</p><p>&nbsp;</p><p>Lần đầu gặp Cố B&igrave;nh Sinh trong bệnh viện, anh tặng cho c&ocirc; một c&aacute;i t&aacute;t đau điếng c&ugrave;ng những lời n&oacute;i &aacute;m ảnh, l&agrave;m thức tỉnh tất cả những cảm gi&aacute;c bất lực, đau đớn nhất trong c&ocirc;. Bảy năm sau, v&igrave; c&ocirc;, anh kh&ocirc;ng tiếc ph&aacute; vỡ nguy&ecirc;n tắc, chống lại số phận, chỉ mong được ở b&ecirc;n c&ocirc; trọn đời.</p><p>Nếu bạn từng y&ecirc;u th&iacute;ch Mặc Bảo Phi Bảo qua c&aacute;c t&aacute;c phẩm:&nbsp;<em>Rất nhớ, rất nhớ anh, Mỹ nh&acirc;n cốt hay T&ugrave;y tiện ph&oacute;ng hỏa</em>... th&igrave;&nbsp;<em>Trọn đời b&ecirc;n nhau&nbsp;</em>l&agrave; một t&aacute;c phẩm kh&ocirc;ng thể bỏ qua. Với giọng văn nhẹ nh&agrave;ng, ngọt ng&agrave;o v&agrave; thấm th&iacute;a, Mặc Bảo Phi Bảo đ&atilde; vẽ n&ecirc;n một chuyện t&igrave;nh đẹp m&agrave; rất thực. Đọc truyện, ta sẽ kh&ocirc;ng c&ograve;n cảm gi&aacute;c như một độc giả đứng ngo&agrave;i quan s&aacute;t nữa, m&agrave; được h&oacute;a th&acirc;n v&agrave;o nh&acirc;n vật để sống, để y&ecirc;u, khiến ta chẳng thể dời mắt cho đến những trang s&aacute;ch cuối c&ugrave;ng.</p>', 88000, 65, 'ben-nhau-tron-doi (1).jpeg'),
(7, 'Đọc Vị Bất Kỳ Ai', 'Kiến Thức Đời Sống', 'Lao Động', 'TS David J Lieberman', '<p>Bạn băn khoăn kh&ocirc;ng biết người ngồi đối diện đang nghĩ g&igrave;? Họ c&oacute; đang n&oacute;i dối bạn kh&ocirc;ng? Đối t&aacute;c đang ngồi đối diện với bạn tr&ecirc;n b&agrave;n đ&agrave;m ph&aacute;n đang nghĩ g&igrave; v&agrave; n&oacute;i g&igrave; tiếp theo?</p><p>ĐỌC người kh&aacute;c l&agrave; một trong những c&ocirc;ng cụ quan trọng, c&oacute; gi&aacute; trị nhất, gi&uacute;p &iacute;ch cho bạn trong mọi kh&iacute;a cạnh của cuộc sống. ĐỌC VỊ người kh&aacute;c để:</p><p>H&atilde;y chiếm thế thượng phong trong việc chủ động nhận biết điều cần t&igrave;m kiếm - ở bất kỳ ai bằng c&aacute;ch &ldquo;th&acirc;m nhập v&agrave;o suy nghĩ&rdquo; của người kh&aacute;c. ĐỌC VỊ BẤT KỲ AI l&agrave; cẩm nang dạy bạn c&aacute;ch th&acirc;m nhập v&agrave;o t&acirc;m tr&iacute; của người kh&aacute;c để biết điều người ta đang nghĩ. Cuốn s&aacute;ch n&agrave;y sẽ kh&ocirc;ng gi&uacute;p bạn r&uacute;t ra c&aacute;c kết luận chung về một ai đ&oacute; dựa v&agrave;o cảm t&iacute;nh hay sự v&otilde; đo&aacute;n. Những nguy&ecirc;n tắc được chia sẻ trong cuốn s&aacute;ch n&agrave;y kh&ocirc;ng đơn thuần l&agrave; những l&yacute; thuyết hay mẹo vặt chỉ đ&uacute;ng trong một số trường hợp hoặc với những đối tượng nhất định. C&aacute;c kết quả nghi&ecirc;n cứu trong cuốn s&aacute;ch n&agrave;y được đưa ra dựa tr&ecirc;n phương ph&aacute;p S.N.A.P - c&aacute;ch thức ph&acirc;n t&iacute;ch v&agrave; t&igrave;m hiểu t&iacute;nh c&aacute;ch một c&aacute;ch b&agrave;i bản trong phạm vi cho ph&eacute;p m&agrave; kh&ocirc;ng l&agrave;m mếch l&ograve;ng đối tượng được ph&acirc;n t&iacute;ch. Phương ph&aacute;p n&agrave;y dựa tr&ecirc;n những ph&acirc;n t&iacute;ch về t&acirc;m l&yacute;, chứ kh&ocirc;ng chỉ đơn thuần dựa tr&ecirc;n ng&ocirc;n ngữ cử chỉ, trực gi&aacute;c hay v&otilde; đo&aacute;n.</p><p>Cuốn s&aacute;ch được chia l&agrave;m hai phần v&agrave; 15 chương:</p><p>Phần 1: Bảy c&acirc;u hỏi cơ bản: Học c&aacute;ch ph&aacute;t hiện ra điều người kh&aacute;c nghĩ hay cảm nhận một c&aacute;ch dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng trong bất kỳ ho&agrave;n cảnh n&agrave;o.</p><p>Phần 2: Những kế hoạch chi tiết cho hoạt động tr&iacute; &oacute;c - hiểu được qu&aacute; tr&igrave;nh ra quyết định. Vượt ra ngo&agrave;i việc đọc c&aacute;c suy nghĩ v&agrave; cảm gi&aacute;c đơn thuần: H&atilde;y học c&aacute;ch người kh&aacute;c suy nghĩ để c&oacute; thể nắm bắt bất kỳ ai, ph&aacute;n đo&aacute;n h&agrave;nh xử v&agrave; hiểu được họ c&ograve;n hơn ch&iacute;nh bản th&acirc;n họ.</p><p>Tr&iacute;ch đoạn s&aacute;ch hay:</p><p>Một gi&aacute;m đốc phụ tr&aacute;ch b&aacute;n h&agrave;ng nghi ngờ một trong những nh&acirc;n vi&ecirc;n kinh doanh của m&igrave;nh đang biển thủ c&ocirc;ng quỹ. Nếu hỏi trực tiếp &ldquo;C&oacute; phải c&ocirc; đang lấy trộm đồ của c&ocirc;ng ty?&rdquo; sẽ khiến người bị nghi ngờ ph&ograve;ng bị ngay lập tức, việc muốn t&igrave;m ra ch&acirc;n tướng sự việc c&agrave;ng trở n&ecirc;n kh&oacute; khăn hơn. Nếu c&ocirc; ta kh&ocirc;ng l&agrave;m việc đ&oacute;, dĩ nhi&ecirc;n c&ocirc; ta sẽ n&oacute;i với người gi&aacute;m đốc m&igrave;nh kh&ocirc;ng lấy trộm. Ngược lại, d&ugrave; c&oacute; lấy trộm đi chăng nữa, c&ocirc; ta cũng sẽ n&oacute;i dối m&igrave;nh kh&ocirc;ng hề l&agrave;m vậy. Thay v&agrave;o việc hỏi trực diện, người gi&aacute;m đốc kh&ocirc;n ngoan n&ecirc;n n&oacute;i một điều g&igrave; đ&oacute; tưởng chừng v&ocirc; hại, như &ldquo;Jill, kh&ocirc;ng biết c&ocirc; c&oacute; gi&uacute;p được t&ocirc;i việc n&agrave;y kh&ocirc;ng. C&oacute; vẻ như dạo n&agrave;y c&oacute; người trong ph&ograve;ng đang lấy đồ của c&ocirc;ng ty về nh&agrave; phục vụ cho tư lợi c&aacute; nh&acirc;n. C&ocirc; c&oacute; hướng giải quyết n&agrave;o cho việc n&agrave;y kh&ocirc;ng?&rdquo; rồi b&igrave;nh tĩnh quan s&aacute;t phản ứng của người nh&acirc;n vi&ecirc;n.</p><p>Nếu c&ocirc; ta hỏi lại v&agrave; c&oacute; vẻ hứng th&uacute; với đề t&agrave;i n&agrave;y, anh ta c&oacute; thể tạm an t&acirc;m rằng c&ocirc; ta kh&ocirc;ng lấy trộm, c&ograve;n nếu c&ocirc; ta đột nhi&ecirc;n trở n&ecirc;n kh&ocirc;ng thoải m&aacute;i v&agrave; t&igrave;m c&aacute;ch thay đổi đề t&agrave;i th&igrave; r&otilde; r&agrave;ng c&ocirc; ta c&oacute; động cơ kh&ocirc;ng trong s&aacute;ng.</p><p>Người gi&aacute;m đốc khi đ&oacute; sẽ nhận ra sự chuyển hướng đột ngột trong th&aacute;i độ v&agrave; h&agrave;nh vi của người nh&acirc;n vi&ecirc;n. Nếu c&ocirc; g&aacute;i đ&oacute; ho&agrave;n to&agrave;n trong sạch, c&oacute; lẽ c&ocirc; ta sẽ đưa ra hướng giải quyết của m&igrave;nh v&agrave; vui vẻ khi sếp hỏi &yacute; kiến của m&igrave;nh. Ngược lại, c&ocirc; ta sẽ c&oacute; biểu hiện kh&ocirc;ng thoải m&aacute;i r&otilde; r&agrave;ng v&agrave; c&oacute; lẽ sẽ cố cam đoan với sếp rằng c&ocirc; kh&ocirc;ng đời n&agrave;o l&agrave;m việc như vậy. Kh&ocirc;ng c&oacute; l&iacute; do g&igrave; để c&ocirc; ta phải thanh minh như vậy, trừ phi c&ocirc; l&agrave; người c&oacute; cảm gi&aacute;c tội lỗi&hellip;</p>', 58300, 146, '2021_06_22_08_51_36_1-390x510.jpg'),
(8, 'Tuổi Trẻ Đáng Giá Bao Nhiêu', 'Kiến Thức Đời Sống', 'Hội Nhà Văn', 'Rosie Nguyễn', '<p><em>&ldquo;Bạn hối tiếc v&igrave; kh&ocirc;ng nắm bắt lấy một cơ hội n&agrave;o đ&oacute;, chẳng c&oacute; ai phải mất ngủ.</em></p><p><em>Bạn trải qua những ng&agrave;y th&aacute;ng nhạt nhẽo với c&ocirc;ng việc bạn căm gh&eacute;t, người ta chẳng hề bận l&ograve;ng.</em></p><p><em>Bạn c&oacute; chết m&ograve;n nơi x&oacute; tường với những ước mơ dang dở, đ&oacute; kh&ocirc;ng phải l&agrave; việc của họ.</em></p><p><em>Suy cho c&ugrave;ng, quyết định l&agrave; ở bạn. Muốn c&oacute; điều g&igrave; hay kh&ocirc;ng l&agrave; t&ugrave;y bạn.</em></p><p><em>N&ecirc;n h&atilde;y l&agrave;m những điều bạn th&iacute;ch. H&atilde;y đi theo tiếng n&oacute;i tr&aacute;i tim. H&atilde;y sống theo c&aacute;ch bạn cho l&agrave; m&igrave;nh n&ecirc;n sống.</em></p><p><em>V&igrave; sau tất cả, chẳng ai quan t&acirc;m.&rdquo;</em></p><p>&ldquo;T&ocirc;i đ&atilde; đọc quyển s&aacute;ch n&agrave;y một c&aacute;ch th&iacute;ch th&uacute;. C&oacute; nhiều kiến thức v&agrave; kinh nghiệm hữu &iacute;ch, những điều mới mẻ ngay cả với người gần trung ni&ecirc;n như t&ocirc;i.</p><p><em>Tuổi trẻ đ&aacute;ng gi&aacute; bao nhi&ecirc;u?</em>&nbsp;được t&aacute;c giả chia l&agrave;m 3 phần: HỌC, L&Agrave;M, ĐI.</p><p>Nhưng t&ocirc;i thấy cuốn s&aacute;ch c&ograve;n thể hiện một phần thứ tư nữa, đ&oacute; l&agrave; ĐỌC.</p><p>H&atilde;y đọc s&aacute;ch, nếu bạn đọc s&aacute;ch một c&aacute;ch bền bỉ, sẽ đến l&uacute;c bạn bị th&ocirc;i th&uacute;c kh&ocirc;ng ngừng bởi &yacute; muốn viết n&ecirc;n cuốn s&aacute;ch của ri&ecirc;ng m&igrave;nh.</p><p>Nếu t&ocirc;i c&ograve;n ở tuổi đ&ocirc;i mươi, hẳn l&agrave; t&ocirc;i sẽ đọc&nbsp;<em>Tuổi trẻ đ&aacute;ng gi&aacute; bao nhi&ecirc;u?</em>&nbsp;nhiều hơn một lần.&rdquo;</p><p>- Đặng Nguyễn Đ&ocirc;ng Vy,<em>&nbsp;t&aacute;c giả, nh&agrave; b&aacute;o</em></p>', 78500, 24, '2021_09_29_08_49_04_1-390x510.jpg'),
(9, 'Đời Ngắn Đừng Ngủ Dài', 'Kiến Thức Đời Sống', 'Trẻ', 'Robin Sharma', '<p>&ldquo;Mọi lựa chọn đều gi&aacute; trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo c&aacute;ch của n&oacute;, kh&ocirc;ng phải theo c&aacute;ch của ta. H&atilde;y ki&ecirc;n nhẫn. Tin tưởng. H&atilde;y giống như người thợ cắt đ&aacute;, đều đặn từng nhịp, ng&agrave;y qua ng&agrave;y. Cuối c&ugrave;ng, một nh&aacute;t cắt duy nhất sẽ ph&aacute; vỡ tảng đ&aacute; v&agrave; lộ ra vi&ecirc;n kim cương. Người tr&agrave;n đầy nhiệt huyết v&agrave; tận t&acirc;m với việc m&igrave;nh l&agrave;m kh&ocirc;ng bao giờ bị chối bỏ. Sự thật l&agrave; thế.&rdquo;</p><p>Bằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm v&agrave; suy ngẫm trong đời, Robin Sharma tiếp tục phong c&aacute;ch viết của &ocirc;ng từ cuốn s&aacute;ch&nbsp;Điều vĩ đại đời thường&nbsp;để mang đến cho độc giả những b&agrave;i viết như lời t&acirc;m sự, vừa ch&acirc;n th&agrave;nh vừa s&acirc;u sắc.</p>', 64800, 40, '2021_06_08_15_55_42_1-390x510.jpg'),
(10, 'Dám Bị Ghét', 'Kiến Thức Đời Sống', 'Lao Động', 'Kishimi Ichiro, Koga Fumitake', '<p>D&aacute;m Bị Gh&eacute;t</p><p>C&aacute;c mối quan hệ x&atilde; hội thật&nbsp;<strong>mệt mỏi</strong>.</p><p>Cuộc sống sao m&agrave;&nbsp;<strong>nhạt nhẽo</strong>&nbsp;v&agrave;&nbsp;<strong>v&ocirc; nghĩa</strong>.</p><p>Bản th&acirc;n m&igrave;nh&nbsp;<strong>xấu x&iacute;</strong>&nbsp;v&agrave;&nbsp;<strong>k&eacute;m cỏi</strong>.</p><p>Qu&aacute; khứ đầy&nbsp;<strong>buồn đau</strong>&nbsp;c&ograve;n tương lai th&igrave;&nbsp;<strong>mờ mịt</strong>.</p><p>Y&ecirc;u cầu của người kh&aacute;c thật&nbsp;<strong>khắc nghiệt</strong>&nbsp;v&agrave;&nbsp;<strong>phi l&yacute;</strong>.</p><p>TẠI SAO BẠN CỨ PHẢI SỐNG THEO KHU&Ocirc;N MẪU NGƯỜI KH&Aacute;C ĐẶT RA?</p><p>Dưới h&igrave;nh thức một cuộc đối thoại giữa Ch&agrave;ng thanh ni&ecirc;n v&agrave; Triết gia, cuốn s&aacute;ch tr&igrave;nh b&agrave;y một c&aacute;ch sinh động v&agrave; hấp dẫn những n&eacute;t ch&iacute;nh trong tư tưởng của nh&agrave; t&acirc;m l&yacute; học Alfred Adler, người được mệnh danh l&agrave; một trong &ldquo;ba người khổng lồ của t&acirc;m l&yacute; học hiện đại&rdquo;, s&aacute;nh ngang với Freud v&agrave; Jung. Kh&aacute;c với Freud cho rằng qu&aacute; khứ v&agrave; ho&agrave;n cảnh l&agrave; động lực l&agrave;m n&ecirc;n con người ta của hiện tại, Adler chủ trương &ldquo;cuộc đời ta l&agrave; do ta lựa chọn&rdquo;, v&agrave; t&acirc;m l&yacute; học Adler được gọi l&agrave; &ldquo;t&acirc;m l&yacute; học của l&ograve;ng can đảm&rdquo;.</p><p><em>Bạn bất hạnh kh&ocirc;ng phải do qu&aacute; khứ v&agrave; ho&agrave;n cảnh, c&agrave;ng kh&ocirc;ng phải do thiếu năng lực. Bạn chỉ thiếu &ldquo;can đảm&rdquo; m&agrave; th&ocirc;i. N&oacute;i một c&aacute;ch kh&aacute;c, bạn kh&ocirc;ng đủ &ldquo;can đảm để d&aacute;m hạnh ph&uacute;c&rdquo;. [...] Bởi can đảm để d&aacute;m hạnh ph&uacute;c bao gồm cả &ldquo;can đảm để d&aacute;m bị gh&eacute;t&rdquo; nữa. [...] Chỉ khi d&aacute;m bị người kh&aacute;c gh&eacute;t bỏ, ch&uacute;ng ta mới c&oacute; được tự do, c&oacute; được hạnh ph&uacute;c.</em></p>', 76000, 37, '2019_09_19_16_11_25_1-390x510.jpg'),
(11, 'Cô Gái Đến Từ Hôm Qua', 'Tiểu Thuyết', 'Trẻ', 'Nguyễn Nhật Ánh', '<p>C&ocirc; G&aacute;i Đến Từ H&ocirc;m Qua</p><p>C&ocirc; g&aacute;i đến từ h&ocirc;m qua được v&iacute; như một cuốn phim của qu&aacute; khứ v&agrave; hiện tại được ng&ograve;i b&uacute;t t&agrave;i hoa của t&aacute;c giả dẫn dắt ta đi từ bất ngờ n&agrave;y đến th&uacute; vị kh&aacute;c. Nếu ng&agrave;y xưa c&ograve;n b&eacute;, Thư lu&ocirc;n tự h&agrave;o m&igrave;nh l&agrave; cậu con trai th&ocirc;ng minh c&oacute; quyền bắt nạt v&agrave; sai khiến c&aacute;c c&ocirc; b&eacute; c&ugrave;ng lứa tuổi (nạn nh&acirc;n cụ thể l&agrave; b&eacute; Tiểu Li) th&igrave; giờ đ&acirc;y lớn l&ecirc;n, anh lu&ocirc;n khổ sở khi thấy m&igrave;nh ngu ngơ v&agrave; bị một c&ocirc; bạn t&ecirc;n l&agrave; Việt &Aacute;n &ldquo;xỏ mũi&rdquo;. V&agrave; điều nghịch l&yacute; ấy xem ra ng&agrave;y c&agrave;ng &ldquo;trớ tr&ecirc;u&rdquo; hơn&hellip; Trong lần t&aacute;i bản n&agrave;y, t&aacute;c phẩm được ra mắt theo phong c&aacute;ch mới, với phi&ecirc;n bản b&igrave;a thứ 14, được in tr&ecirc;n chất liệu giấy dầy v&agrave; nhẹ, k&egrave;m b&agrave;i thơ &ldquo;C&ocirc; g&aacute;i đến từ h&ocirc;m qua&rdquo; của nh&agrave; văn Nguyễn Nhật &Aacute;nh v&agrave; 10 h&igrave;nh minh họa của họa sĩ Đỗ Ho&agrave;ng Tường.</p><p>T&aacute;c phẩm C&ocirc; g&aacute;i đến từ h&ocirc;m qua đ&atilde; được mua bản quyền v&agrave; chuyển thể th&agrave;nh phim điện ảnh, do Phan Gia Nhật Linh l&agrave;m đạo diễn, với sự tham gia của c&aacute;c diễn vi&ecirc;n Miu L&ecirc;, Ng&ocirc; Kiến Huy, Jun Phạm, Ho&agrave;ng Yến Chibi, L&ecirc; Hạ Anh... Phim được dự kiến ra mắt tr&ecirc;n to&agrave;n quốc v&agrave;o ng&agrave;y 21/7/2017.</p>', 64000, 68, 'cogaidentuhomqua.jpg'),
(12, 'Tớ Muốn Ăn Tụy Của Cậu', 'Tiểu Thuyết', 'Hội Nhà Văn', 'Sumino Yoru', '<p><strong>Tớ Muốn Ăn Tụy Của Cậu</strong></p><p>&ldquo;T&ocirc;i kh&ocirc;ng biết về ng&agrave;y mai của t&ocirc;i - người vẫn c&ograve;n thời gian, nhưng t&ocirc;i đ&atilde; nghĩ ng&agrave;y mai của c&ocirc; ấy - người chẳng c&ograve;n mấy thời gian đ&atilde; được hẹn trước.</p><p>C&aacute;i l&ocirc;-g&iacute;c xuẩn ngốc g&igrave; thế n&agrave;y.</p><p>T&ocirc;i đ&atilde; nghĩ thế giới n&agrave;y sẽ ưu &aacute;i trước sinh mệnh của một c&ocirc; g&aacute;i m&agrave; những ng&agrave;y sống chẳng c&ograve;n l&agrave; bao.</p><p>Đương nhi&ecirc;n, l&agrave;m g&igrave; c&oacute; chuyện như vậy. Đ&atilde; kh&ocirc;ng như vậy.</p><p>Thế giới kh&ocirc;ng ph&acirc;n biệt một ai.</p><p>N&oacute; kh&ocirc;ng nương b&agrave;n tay tấn c&ocirc;ng b&igrave;nh đẳng ấy với bất kỳ ai, kể cả t&ocirc;i - người c&oacute; một th&acirc;n thể khỏe mạnh, hay c&ocirc; ấy - người sắp ra đi v&igrave; căn bệnh nan y.&rdquo;</p>', 77400, 24, 'to_muon_an_tuy_cua_cau_1_2018_08_07_11_02_04.jpg'),
(13, 'Hoàng Tử Bé', 'Sách Thiếu Nhi', 'Kim Đồng', 'Antoine de Saint, Exupéry', '<p>&ldquo;Ho&agrave;ng Tử B&eacute;&rdquo; (t&ecirc;n tiếng Ph&aacute;p: Le Petit Prince) xuất bản năm 1943 v&agrave; l&agrave; t&aacute;c phẩm nối tiếng nhất trong sự nghiệp của nh&agrave; văn phi c&ocirc;ng Ph&aacute;p Antoine de Saint-Exup&eacute;ry. T&aacute;c phẩm đ&atilde; được dịch sang hơn 250 ng&ocirc;n ngữ v&agrave; cho đến nay đ&atilde; b&aacute;n được hơn 200 triệu bản khắp thế giới.</p><p>Cuốn s&aacute;ch đẹp như một b&agrave;i thơ thanh s&aacute;ng, một c&acirc;u chuyện cổ t&iacute;ch về t&igrave;nh y&ecirc;u thương, l&ograve;ng nh&acirc;n &aacute;i, &yacute; nghĩa của sự tồn tại, về sự cảm th&ocirc;ng giữa người với người...</p><p>Sự giản dị trong s&aacute;ng tỏa khắp t&aacute;c phẩm đ&atilde; khiến n&oacute; trở th&agrave;nh một b&agrave;i thơ bất hủ m&agrave; m&atilde;i m&atilde;i người ta muốn đem l&agrave;m qu&agrave; tặng của t&igrave;nh y&ecirc;u.</p>', 22500, 73, '2020_10_01_10_09_50_1-390x510.jpg'),
(14, '365 Truyện Kể Trước Giờ Đi Ngủ - Những Câu Chuyện Phát Triển Chỉ Số Tình Cảm EQ', 'Sách Thiếu Nhi', 'Thế Giới', 'Ngọc Linh', '<p>Bộ 365 chuyện kể trước giờ đi ngủ gồm hai tập:&nbsp;Những c&acirc;u chuyện ph&aacute;t triển chỉ số th&ocirc;ng minh IQ v&agrave; Những c&acirc;u chuyện ph&aacute;t triển chỉ số t&igrave;nh cảm EQ.</p><p>&nbsp;</p><p>Mỗi buổi tối trước giờ đi ngủ, c&aacute;c bậc cha mẹ đừng qu&ecirc;n đọc truyện cho con em m&igrave;nh. Những c&acirc;u chuyện c&oacute; nội dung hay, nh&acirc;n vật lại v&ocirc; c&ugrave;ng gần gũi, cuối mỗi truyện lại c&oacute; mục. &ldquo;B&agrave;i học nhỏ&rdquo; - nhẹ nh&agrave;ng m&agrave; s&acirc;u sắc chắc chắn sẽ gi&uacute;p c&aacute;c em trở n&ecirc;n th&ocirc;ng minh hơn, lương thiện hơn, biết quan t&acirc;m, y&ecirc;u thương mọi người, y&ecirc;u cuộc sống v&agrave; c&oacute; sức s&aacute;ng tạo. Mỗi ng&agrave;y cha mẹ c&ugrave;ng trẻ đọc một c&acirc;u chuyện, những điều tiếp thu được sẽ l&agrave; t&agrave;i sản tinh thần to lớn gi&uacute;p &iacute;ch cho c&aacute;c em trong suốt cuộc đời.</p><p>&gt;</p>', 65700, 55, '365turyenmdf.jpg'),
(15, 'Hạ Đỏ', 'Tiểu Thuyết', 'Trẻ', 'Nguyễn Nhật Ánh', '<p>Kể về mối t&igrave;nh đầu trong s&aacute;ng của một cậu học tr&ograve; d&agrave;nh cho một c&ocirc; g&aacute;i qu&ecirc; 16 tuổi trong dịp về qu&ecirc; nghỉ h&egrave;, v&agrave; những việc l&agrave;m cao đẹp của cậu cho em b&eacute; qu&ecirc; ch&acirc;n chất chịu nhiều thiệt th&ograve;i ở n&ocirc;ng th&ocirc;n. Chuyện nhiều h&igrave;nh ảnh, dễ thương v&agrave; trong s&aacute;ng&hellip; vẫn kh&ocirc;ng thiếu những &ldquo;pha&rdquo; th&uacute; vị cho ta những tiếng cười sảng kho&aacute;i.</p>', 49200, 53, '2020_05_26_13_43_27_1-390x510.jpg'),
(16, 'Chiến Thắng Con Quỷ Trong Bạn', 'Kiến Thức Đời Sống', 'Lao Động', 'E.B.White', '<p>Charlotte V&agrave; Wilbur (T&aacute;i Bản 2018)</p><p>&quot;Một cuốn s&aacute;ch xuất ch&uacute;ng d&agrave;nh cho thiếu nhi.&quot; (The Times Literary Supplement)</p><p>Wilbur, ch&uacute; lợn xu&acirc;n cứ đinh ninh m&igrave;nh sẽ vui hưởng th&aacute;i b&igrave;nh m&atilde;i trong trang trại nh&agrave; Zuckerman, thế n&ecirc;n, ch&uacute; tưởng như ph&aacute;t cuồng l&ecirc;n được khi biết rằng người ta sẽ giết thịt ch&uacute; khi m&ugrave;a đ&ocirc;ng tới... Mọi hy vọng của ch&uacute;, giờ đ&acirc;y, chỉ c&ograve;n biết đổ dồn lại v&agrave;o Charlotte, chị nhện x&aacute;m vẫn tĩnh tại giăng mắc ở tr&ecirc;n chuồng lợn...</p><p>Charlotte v&agrave; Wilbur, c&acirc;u chuyện kể về việc một con nhện đ&atilde; cứu sống con lợn bạn m&igrave;nh như thế n&agrave;o, l&agrave; t&aacute;c phẩm kinh điển của văn học thiếu nhi Mỹ; v&agrave; t&igrave;nh bạn của ch&uacute;ng đ&atilde; được h&agrave;ng triệu độc giả tr&ecirc;n thế giới c&ugrave;ng chia sẻ.</p><p>Charlotte v&agrave; Wilbur l&agrave; cuốn s&aacute;ch g&otilde; v&agrave;o c&aacute;nh cửa tưởng tượng của tuổi thơ, với tất cả những ai đang l&agrave; trẻ nhỏ v&agrave; từng l&agrave; trẻ nhỏ. N&oacute; mang đến thế giới kỳ diệu m&agrave; chỉ những c&ocirc; b&eacute; biết kh&oacute;c v&igrave; ch&uacute; lợn kẹ sắp bị giết như Fern mới thấu hiểu. Lắng đọng với nhiều t&igrave;nh tiết cảm động, như chuyện Fern đ&atilde; chăm s&oacute;c lợn Wilbur hồi nhỏ, cuộc chia tay cuối c&ugrave;ng giữa Charlotte v&agrave; Wilbur, v&agrave; t&igrave;nh bạn nối tiếp với những đứa con, ch&aacute;u, chắt của Charlotte sau n&agrave;y&hellip;</p><p>T&aacute;c phẩm l&agrave; th&ocirc;ng điệp của l&ograve;ng y&ecirc;u thương, sự thủy chung son sắt. Điều đ&oacute; mang lại sự tươi mới cho Charlotte v&agrave; Wilbur v&agrave; được h&agrave;ng triệu độc giả tr&ecirc;n thế giới chia sẻ.</p><p>&quot;Điều cuốn s&aacute;ch kể ch&iacute;nh l&agrave; t&igrave;nh bạn ở tr&ecirc;n đời, y&ecirc;u mến v&agrave; bảo vệ, phi&ecirc;u lưu v&agrave; ph&eacute;p lạ, sống v&agrave; chết, l&ograve;ng tin v&agrave; bội phản, sung sướng v&agrave; đau khổ, v&agrave; sự tr&ocirc;i đi của thời gian. L&agrave; một t&aacute;c phẩm th&igrave; n&oacute; gần như ho&agrave;n hảo, v&agrave; gần như kỳ diệu trong c&aacute;i c&aacute;ch n&oacute; tựu th&agrave;nh.&quot; - (Eudora Welty, The New York Times Book Review)</p><p>&nbsp;</p>', 45600, 11, 'chien_thang_con_quy_trong_ban_tai_ban_2018_1_2018_08_03_16_09_31.jpg'),
(17, 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 'Tiểu Thuyết', 'Trẻ', 'Nguyễn Nhật Ánh', '<p>Những c&acirc;u chuyện nhỏ xảy ra ở một ng&ocirc;i l&agrave;ng nhỏ: chuyện người, chuyện c&oacute;c, chuyện ma, chuyện c&ocirc;ng ch&uacute;a v&agrave; ho&agrave;ng tử , rồi chuyện đ&oacute;i ăn, ch&aacute;y nh&agrave;, lụt lội,... Bối cảnh l&agrave; trường học, nh&agrave; trong x&oacute;m, b&atilde;i tha ma. Dẫn chuyện l&agrave; cậu b&eacute; 15 tuổi t&ecirc;n Thiều. Thiều c&oacute; ch&uacute; ruột l&agrave; ch&uacute; Đ&agrave;n, c&oacute; bạn th&acirc;n l&agrave; c&ocirc; b&eacute; Mận. Nhưng nh&acirc;n vật đ&aacute;ng y&ecirc;u nhất lại l&agrave; Tường, em trai Thiều, một cậu b&eacute; học kh&ocirc;ng giỏi. Thiều, Tường v&agrave; những đứa trẻ sống trong c&ugrave;ng một l&agrave;ng, học c&ugrave;ng một trường, c&oacute; biết bao chuyện chung. Ch&uacute;ng n&ocirc; đ&ugrave;a, c&atilde;i cọ rồi y&ecirc;u thương nhau, c&ugrave;ng lớn l&ecirc;n theo năm th&aacute;ng, trải qua bao sự kiện biến cố của cuộc đời.<br />T&aacute;c giả vẫn giữ c&aacute;ch kể chuyện bằng ch&iacute;nh giọng trong s&aacute;ng hồn nhi&ecirc;n của trẻ con. 81 chương ngắn l&agrave; 81 c&acirc;u chuyện hấp dẫn với nhiều chi tiết th&uacute; vị, cảm động, c&oacute; những t&igrave;nh tiết bất ngờ, từ đ&oacute; lộ r&otilde; t&iacute;nh c&aacute;ch người. Cuốn s&aacute;ch, v&igrave; thế, c&oacute; sức &aacute;m ảnh.</p><p>&nbsp;</p><p>&gt;</p>', 102000, 47, 'image_180164_1_43_1_57.jpg'),
(18, 'Charlotte Và Wilbur', 'Sách Thiếu Nhi', 'Văn Học', 'E.B.White', '<p>Charlotte V&agrave; Wilbur (T&aacute;i Bản 2018)</p><p>&quot;Một cuốn s&aacute;ch xuất ch&uacute;ng d&agrave;nh cho thiếu nhi.&quot; (The Times Literary Supplement)</p><p>Wilbur, ch&uacute; lợn xu&acirc;n cứ đinh ninh m&igrave;nh sẽ vui hưởng th&aacute;i b&igrave;nh m&atilde;i trong trang trại nh&agrave; Zuckerman, thế n&ecirc;n, ch&uacute; tưởng như ph&aacute;t cuồng l&ecirc;n được khi biết rằng người ta sẽ giết thịt ch&uacute; khi m&ugrave;a đ&ocirc;ng tới... Mọi hy vọng của ch&uacute;, giờ đ&acirc;y, chỉ c&ograve;n biết đổ dồn lại v&agrave;o Charlotte, chị nhện x&aacute;m vẫn tĩnh tại giăng mắc ở tr&ecirc;n chuồng lợn...</p><p>Charlotte v&agrave; Wilbur, c&acirc;u chuyện kể về việc một con nhện đ&atilde; cứu sống con lợn bạn m&igrave;nh như thế n&agrave;o, l&agrave; t&aacute;c phẩm kinh điển của văn học thiếu nhi Mỹ; v&agrave; t&igrave;nh bạn của ch&uacute;ng đ&atilde; được h&agrave;ng triệu độc giả tr&ecirc;n thế giới c&ugrave;ng chia sẻ.</p><p>Charlotte v&agrave; Wilbur l&agrave; cuốn s&aacute;ch g&otilde; v&agrave;o c&aacute;nh cửa tưởng tượng của tuổi thơ, với tất cả những ai đang l&agrave; trẻ nhỏ v&agrave; từng l&agrave; trẻ nhỏ. N&oacute; mang đến thế giới kỳ diệu m&agrave; chỉ những c&ocirc; b&eacute; biết kh&oacute;c v&igrave; ch&uacute; lợn kẹ sắp bị giết như Fern mới thấu hiểu. Lắng đọng với nhiều t&igrave;nh tiết cảm động, như chuyện Fern đ&atilde; chăm s&oacute;c lợn Wilbur hồi nhỏ, cuộc chia tay cuối c&ugrave;ng giữa Charlotte v&agrave; Wilbur, v&agrave; t&igrave;nh bạn nối tiếp với những đứa con, ch&aacute;u, chắt của Charlotte sau n&agrave;y&hellip;</p><p>T&aacute;c phẩm l&agrave; th&ocirc;ng điệp của l&ograve;ng y&ecirc;u thương, sự thủy chung son sắt. Điều đ&oacute; mang lại sự tươi mới cho Charlotte v&agrave; Wilbur v&agrave; được h&agrave;ng triệu độc giả tr&ecirc;n thế giới chia sẻ.</p><p>&quot;Điều cuốn s&aacute;ch kể ch&iacute;nh l&agrave; t&igrave;nh bạn ở tr&ecirc;n đời, y&ecirc;u mến v&agrave; bảo vệ, phi&ecirc;u lưu v&agrave; ph&eacute;p lạ, sống v&agrave; chết, l&ograve;ng tin v&agrave; bội phản, sung sướng v&agrave; đau khổ, v&agrave; sự tr&ocirc;i đi của thời gian. L&agrave; một t&aacute;c phẩm th&igrave; n&oacute; gần như ho&agrave;n hảo, v&agrave; gần như kỳ diệu trong c&aacute;i c&aacute;ch n&oacute; tựu th&agrave;nh.&quot; - (Eudora Welty, The New York Times Book Review)</p>', 44800, 29, 'charlotte_va_wilbur_tai_ban_2018_1_2018_08_07_11_04_29.jpg'),
(19, 'Bạn Chỉ Sống Có Một Lần', 'Kiến Thức Đời Sống', 'Trẻ', 'Nhã Nam tuyển chọn', '<p>Đời người chỉ sống một lần, n&ecirc;n sống sao cho trọn vẹn v&agrave; xứng đ&aacute;ng. Quyển s&aacute;ch tập hợp những c&acirc;u chuyện, c&acirc;u n&oacute;i hay về tinh thần, về cuộc sống. Qua những c&acirc;u chuyện v&agrave; c&acirc;u n&oacute;i hay đ&oacute;, hy vọng độc giả sẽ được truyền cảm hứng, được tiếp th&ecirc;m sức mạnh, để vui sống v&agrave; sống cuộc đời c&oacute; &yacute; nghĩa v&agrave; trọn vẹn nhất.</p>', 42500, 83, '2020_05_06_10_37_34_1-390x510.jpg'),
(20, 'Tâm Lý Học Biểu Cảm', 'Kiến Thức Đời Sống', 'Văn học', 'Mã Hạo Thiên', '<p>T&acirc;m L&yacute; Học Biểu Cảm</p><p>Cuốn s&aacute;ch dạy bạn c&aacute;ch nh&igrave;n thấu người kh&aacute;c một c&aacute;ch r&otilde; r&agrave;ng nhất v&agrave; ch&acirc;n thực nhất</p><p>Từ gương mặt đến bước ch&acirc;n, từ ng&ocirc;n ngữ đến cơ thể, từ biểu cảm b&ecirc;n ngo&agrave;i đến nội t&acirc;m b&ecirc;n trong.</p><p>Gi&uacute;p bạn nắm bắt t&iacute;nh c&aacute;ch đối phương, thấu hiểu tr&aacute;i tim con người.</p><p>Nhắc đến biểu cảm si&ecirc;u nhỏ, đa số ch&uacute;ng ta đều cho rằng đ&oacute; chỉ l&agrave; những biểu hiện cảm x&uacute;c từ ngũ quan tr&ecirc;n khu&ocirc;n mặt. Tuy nhi&ecirc;n, phạm vi của biểu cảm si&ecirc;u nhỏ kh&ocirc;ng chỉ g&oacute;i gọn tr&ecirc;n khu&ocirc;n mặt một người, m&agrave; c&ograve;n bao gồm những biểu cảm tr&ecirc;n cơ thể, trong ng&ocirc;n ngữ v&agrave; h&agrave;nh vi của người đ&oacute;.</p><p>V&iacute; dụ, một người vừa n&oacute;i chuyện vừa d&ugrave;ng tay xoa mũi, l&uacute;c n&agrave;y rất c&oacute; khả năng họ đang n&oacute;i dối; hay trong một cuộc tr&ograve; chuyện đối phương kh&ocirc;ng ngừng rung ch&acirc;n, điều n&agrave;y cho thấy cảm x&uacute;c của họ đang thay đổi hoặc lời n&oacute;i của bạn vừa t&aacute;c động đến họ theo một c&aacute;ch n&agrave;o đ&oacute;.</p><p>Cuốn s&aacute;ch n&agrave;y giới thiệu tới bạn đọc c&aacute;c kiến thức về biểu cảm khu&ocirc;n mặt, biểu cảm cơ thể, biểu cảm ng&ocirc;n ngữ v&agrave; biểu cảm h&agrave;nh vi, nhằm mục đ&iacute;ch gi&uacute;p bạn đọc dễ d&agrave;ng nh&igrave;n thấu nội t&acirc;m cũng như t&iacute;nh c&aacute;ch của người kh&aacute;c.</p>', 83400, 8, 'ttph-t_mbi_u-c_m.jpg'),
(21, 'Cái Tết Của Mèo Con', 'Sách Thiếu Nhi', 'Kim Đồng', 'Nguyễn Đình Thi, Thùy Dung', '<p>M&egrave;o con mới về nh&agrave;, đ&ecirc;m đầu ti&ecirc;n đ&atilde; gi&aacute;p mặt l&atilde;o Chuột cống dữ dằn c&ugrave;ng lũ chuột nhắt hung hăng. M&egrave;o con khiếp sợ, nhưng vốn l&agrave; một ch&uacute; m&egrave;o dũng cảm, M&egrave;o con bắt đầu học hỏi, can đảm đ&aacute;nh nhau với rắn hổ mang.</p><p>Kh&ocirc;ng những thế, M&egrave;o con c&ograve;n truyền l&ograve;ng quả cảm của m&igrave;nh cho cả b&aacute;c Nồi đồng v&agrave; chị Chổi. Họ đ&atilde; c&ugrave;ng nhau đ&aacute;nh bại l&atilde;o Chuột cống hung &aacute;c v&agrave; đ&aacute;m chuột nhắt.</p><p>&ldquo;C&aacute;i Tết của M&egrave;o con&rdquo; l&agrave; b&agrave;i học về l&ograve;ng quả cảm v&agrave; tinh thần đo&agrave;n kết. C&acirc;u chuyện mang đến th&ocirc;ng điệp cho c&aacute;c bạn nhỏ của ch&uacute;ng ta: L&ograve;ng dũng cảm l&agrave; một phẩm chất, được h&igrave;nh th&agrave;nh khi ta r&egrave;n luyện mỗi ng&agrave;y.</p><p>Ra đời c&aacute;ch nay hơn nửa thế kỉ, t&aacute;c phẩm của nh&agrave; văn Nguyễn Đ&igrave;nh Thi đ&atilde; chinh phục bao thế hệ độc giả nhỏ tuổi.</p><p>Ấn bản lần n&agrave;y c&oacute; những tranh minh họa m&agrave;u v&ocirc; c&ugrave;ng sống động của họa sĩ trẻ Th&ugrave;y Dung.</p>', 38250, 14, '2020_03_24_09_50_01_1-390x510.jpg'),
(22, 'Khu Vườn Mùa Hạ', 'Tiểu Thuyết', 'Văn Học', 'Kazumi Yumoto', '<p>Những tưởng m&ugrave;a h&egrave; năm lớp S&aacute;u sẽ tr&ocirc;i đi trong &ecirc;m ả, Kiyama, Yamashita v&agrave; Wakabe đều kh&ocirc;ng ngờ ch&uacute;ng đang đứng trước ngưỡng của cuộc đời. Cuộc gặp gỡ với &ldquo;&ocirc;ng cụ&rdquo;, người suốt c&acirc;u chuyện kh&ocirc;ng hề được n&ecirc;u t&ecirc;n, đ&atilde; đem đến cho ba đứa trẻ một t&igrave;nh bạn kỳ lạ. C&oacute; lẽ, đ&oacute; l&agrave; lần đầu ti&ecirc;n ch&uacute;ng kết bạn với người lớn, v&agrave; đ&oacute; l&agrave; một mối quan hệ b&igrave;nh đẳng theo đ&uacute;ng nghĩa. Ba đứa gi&uacute;p &ocirc;ng sửa nh&agrave;, chăm s&oacute;c vườn hoa, giặt v&agrave; phơi quần &aacute;o&hellip; b&ugrave; lại ch&uacute;ng được &ocirc;ng dạy gọt l&ecirc;, dạy học chữ H&aacute;n, v&agrave; tr&ecirc;n hết, ch&uacute;ng học được rằng việc gi&agrave; đi, lưng c&ograve;ng xuống, mặt nhiều nếp nhăn cũng mang &yacute; nghĩa. Ba đứa trẻ dần phải tự đối mặt với những thắc mắc của ch&iacute;nh bản th&acirc;n ch&uacute;ng về cuộc sống, những điều m&agrave;, c&oacute; khi sống gần trọn cuộc đời người ta vẫn chưa hiểu nổi.</p>', 58000, 28, '2020_12_25_15_06_55_1-390x510.jpg'),
(23, 'Dế Mèn Phiêu Lưu Ký', 'Sách Thiếu Nhi', 'Kim Đồng', 'Tô Hoài', '<p>Trong hơn nửa thế kỉ, kể từ ng&agrave;y đầu ti&ecirc;n ra mắt bạn đọc, năm 1941, &quot;Dế M&egrave;n phi&ecirc;u lưu k&yacute;&quot; l&agrave; một trong những s&aacute;ng t&aacute;c t&acirc;m đắc nhất của nh&agrave; văn T&ocirc; Ho&agrave;i. T&aacute;c phẩm đ&atilde; được t&aacute;i bản nhiều lần v&agrave; được dịch ra hơn 20 thứ tiếng tr&ecirc;n to&agrave;n thế giới v&agrave; lu&ocirc;n được c&aacute;c thế hệ độc giả nhỏ tuổi đ&oacute;n nhận.</p><p>T&aacute;c phẩm đ&atilde; được xuất bản với nhiều h&igrave;nh thức kh&aacute;c nhau.</p><p>Ấn bản n&agrave;y gồm 27 minh họa của họa sĩ Th&agrave;nh Chương theo bản in năm 2007 của Nh&agrave; xuất bản Shinkagaku (Nhật Bản).</p>', 46800, 60, '2021_01_11_16_51_55_1-390x510.jpg'),
(24, 'Làm Sao Học Ít Hiểu Nhiều?', 'Kiến Thức Đời Sống', 'Dân Trí', 'Zion Kabasawa', '<p>Học, học nữa, học m&atilde;i l&agrave; c&aacute;ch duy nhất để một con người li&ecirc;n tục tiến bộ v&agrave; kh&ocirc;ng tụt hậu, đ&oacute; l&agrave; ch&acirc;n l&yacute; ai cũng biết. Vấn đề l&agrave;, kh&ocirc;ng phải ai cũng biết phải học như thế n&agrave;o vừa tiết kiệm c&aacute;c nguồn lực qu&yacute; b&aacute;u như thời gian, tiền bạc v&agrave; c&ocirc;ng sức m&agrave; vẫn đạt hiệu quả tối đa trong việc dung nạp c&aacute;c kiến thức m&igrave;nh cần.</p><p>Vấn đề n&agrave;y c&agrave;ng trở n&ecirc;n cấp thiết hơn khi một người bước v&agrave;o giai đoạn trưởng th&agrave;nh, vừa phải ra đời đi l&agrave;m lại vừa muốn tiếp tục học th&ecirc;m nhiều kiến thức mới. C&oacute; một thực tế l&agrave; nhiều người đi l&agrave;m vẫn rất ham học, học rất nhiều m&agrave; kh&ocirc;ng thu được kết quả mong muốn. C&agrave;ng kh&ocirc;ng đạt được kết quả mong muốn, lại c&agrave;ng cố học th&ecirc;m nữa. Kết cục, họ luẩn quẩn trong một &ldquo;đường hầm kh&ocirc;ng lối tho&aacute;t&rdquo;, ho&agrave;i ph&iacute; thời gian, tiền bạc v&agrave; c&ocirc;ng sức. Nguy&ecirc;n nh&acirc;n suy cho c&ugrave;ng l&agrave; v&igrave; ham học m&agrave; kh&ocirc;ng biết c&aacute;ch học m&agrave; th&ocirc;i.</p><p>Cuốn L&agrave;m sao học &iacute;t hiểu nhiều? của b&aacute;c sĩ t&acirc;m thần nổi tiếng người Nhật Bản, Zion Kabasawa, ra đời ch&iacute;nh l&agrave; để ph&aacute; vỡ v&ograve;ng luẩn quẩn ấy. Bằng kiến thức uy&ecirc;n th&acirc;m về cơ chế tiếp nhận, hấp thu v&agrave; xử l&yacute; th&ocirc;ng tin của n&atilde;o bộ của hơn 30 năm nghi&ecirc;n cứu v&agrave; giảng dạy về thần kinh v&agrave; t&acirc;m l&yacute; học, b&aacute;c sĩ Zion Kabawwasa sẽ l&yacute; giải tận c&ugrave;ng bản chất của việc học. Từ đ&oacute;, &ocirc;ng đưa ra những hướng dẫn rất thực tiễn về phương ph&aacute;p học để vừa tiết kiệm c&ocirc;ng sức vừa đạt hiệu quả tối đa.</p><p>Qua cuốn s&aacute;ch n&agrave;y, bạn sẽ thấy việc học thực ra rất vui vẻ nếu người học biết c&aacute;ch l&agrave;m sao để học &iacute;t hiểu nhiều. Bạn kh&ocirc;ng cần phải c&oacute; tr&iacute; th&ocirc;ng minh xuất ch&uacute;ng hay bộ nhớ si&ecirc;u ph&agrave;m để đạt được mọi mục ti&ecirc;u học tập m&agrave; m&igrave;nh muốn, chỉ cần bạn học được c&aacute;ch học đ&uacute;ng. H&atilde;y thử &aacute;p dụng những chỉ dẫn trong cuốn s&aacute;ch n&agrave;y, v&agrave; bạn sẽ thấy những c&aacute;nh cửa mới rộng mở trước mắt m&igrave;nh.</p>', 85800, 39, '2020_04_13_11_16_29_1-390x510.jpg'),
(25, 'Những Tấm Lòng Cao Cả', 'Sách Thiếu Nhi', 'Văn Học', 'Edmondo De Amicis', '<p>Những Tấm L&ograve;ng Cao Cả</p><p><strong>NHỮNG TẤM L&Ograve;NG CAO CẢ</strong>&nbsp;của&nbsp;nh&agrave; văn Edmondo De Amicis (1846-1908) l&agrave; một t&aacute;c phẩm nổi tiếng, h&agrave;m chứa b&ecirc;n trong những vẻ đẹp vĩnh cửu c&ugrave;ng năm th&aacute;ng, những triết l&yacute; nh&acirc;n sinh s&acirc;u sắc v&agrave; những thủ ph&aacute;p nghệ thuật si&ecirc;u việt. Lứa tuổi thiếu ni&ecirc;n nhi đồng đang trong giai đoạn t&igrave;m hiểu v&agrave; nhận thức cuộc sống, h&igrave;nh th&agrave;nh n&ecirc;n nh&acirc;n sinh quan v&agrave; thế giới quan, bởi vậy, những kiệt t&aacute;c kinh điển đ&atilde; vượt qua được sự chọn lọc v&agrave; đ&agrave;o thải khắc nghiệt của thời gian chắc chắn sẽ l&agrave; những người thầy hướng đạo tuyệt vời. C&aacute;c t&aacute;c phẩm được lựa chọn đều c&oacute; nội dung tư tưởng s&acirc;u sắc, nghệ thuật ng&ocirc;n từ độc đ&aacute;o, to&aacute;t l&ecirc;n tư tưởng nh&acirc;n văn cao đẹp, bồi đắp vẻ đẹp t&acirc;m hồn v&agrave; tr&iacute; tuệ cho con người.</p><p>Đặc biệt hơn nữa, nội dung t&aacute;c phẩm đều được kết hợp với hệ thống minh họa đẹp mắt, sống động chắp c&aacute;nh cho tr&iacute; tưởng tượng của độc giả bay cao, h&ograve;a m&igrave;nh v&agrave;o kh&ocirc;ng gian tuyệt vời của t&aacute;c phẩm.</p><p>Ảnh hưởng của những tuyệt t&aacute;c vĩ đại, đ&ocirc;i khi bền vững đến đ&aacute;ng kinh ngạc v&agrave; sẽ đồng h&agrave;nh với ch&uacute;ng ta trong suốt cuộc đời. Bởi vậy, h&atilde;y lựa chọn cho con em m&igrave;nh những ảnh hưởng t&iacute;ch cực v&agrave; nh&acirc;n văn nhất. Mỗi cuốn s&aacute;ch l&agrave; một chiếc ch&igrave;a kh&oacute;a v&agrave;ng để mở ra kho b&aacute;u văn chương v&ocirc; gi&aacute; - mở ra một thế giới của &aacute;nh s&aacute;ng, niềm tin v&agrave; hy vọng.&nbsp;<strong>NHỮNG TẤM L&Ograve;NG CAO CẢ</strong>&nbsp;l&agrave; một tuyệt t&aacute;c văn học.</p>', 64000, 4, '2021_09_08_10_04_04_1-390x510.jpg'),
(26, 'Tranh Truyện Lịch Sử Việt Nam: Lý Thường Kiệt', 'Sách Thiếu Nhi', 'Kim Đồng', 'Tạ Huy Long, Nguyễn Việt Hà', '<p>L&yacute; Thường Kiệt t&ecirc;n thật l&agrave; Ng&ocirc; Tuấn, một vị tướng kiệt xuất trong lịch sử Việt Nam. &Ocirc;ng nhiều lần thống lĩnh ba qu&acirc;n &ldquo;ph&aacute; Tống, b&igrave;nh Chi&ecirc;m&rdquo;, giữ bờ c&otilde;i nhiều năm trong cảnh thanh b&igrave;nh. &Ocirc;ng lại đem t&agrave;i sức gi&uacute;p vua L&yacute; ph&aacute;t mở mang canh n&ocirc;ng, x&acirc;y dựng nh&agrave; học, g&oacute;p phần g&acirc;y dựng nền văn hiến Đại Việt.</p><p>Tủ s&aacute;ch &quot;Tranh truyện lịch sử Việt Nam&quot; d&agrave;nh cho lứa tuổi thiếu ni&ecirc;n nhi đồng được NXB Kim Đồng x&acirc;y dựng xuất ph&aacute;t từ mong muốn gi&uacute;p c&aacute;c em nhỏ bước đầu l&agrave;m quen với lịch sử, tiếp nhận một lượng kiến thức cơ bản về lịch sử nước nh&agrave; th&ocirc;ng qua những c&acirc;u chuyện về c&aacute;c danh nh&acirc;n được thể hiện bằng c&aacute;c trang s&aacute;ch m&agrave;u.</p><p>Mỗi nh&acirc;n vật trong bộ truyện tranh lịch sử xuất hiện l&agrave; một c&acirc;u chuyện gi&agrave;u t&iacute;nh văn học, mang hơi hướng d&acirc;n gian nhẹ nh&agrave;ng v&agrave; gần gũi. Lời thoại trong truyện cũng rất đơn giản, kh&ocirc;ng đặt nặng về tư liệu nhưng vẫn lu&ocirc;n t&ocirc;n trọng t&iacute;nh x&aacute;c thực của lịch sử, g&oacute;p phần bồi đắp t&igrave;nh y&ecirc;u của thiếu nhi với lịch sử, với d&acirc;n tộc.</p>', 13500, 146, '2020_10_05_15_22_47_1-390x510.jpg'),
(27, 'Đắc Nhân Tâm - Bí Quyết Để Thành Công', 'Kiến Thức Đời Sống', 'Hồng Đức', 'Dale Carnegie', '<p><strong>Đắc Nh&acirc;n T&acirc;m - B&iacute; Quyết Để Th&agrave;nh C&ocirc;ng</strong></p><p>Bản dịch đầu ti&ecirc;n tại Việt Nam của Nguyễn Hiến L&ecirc;</p><p>Đắc Nh&acirc;n T&acirc;m -&nbsp;B&iacute; Quyết Để Th&agrave;nh C&ocirc;ng: How to win friends &amp; influence people của Dale Carnegie l&agrave; một trong số những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại v&agrave; đ&atilde; được xuất bản tại nhều nước tr&ecirc;n thế giới.</p><p>Cuốn s&aacute;ch sẽ gi&uacute;p bạn:</p><p>- s&aacute;u c&aacute;ch g&acirc;y thiện cảm</p><p>- bảy c&aacute;ch khiển tr&aacute;ch m&agrave; kh&ocirc;ng mất l&ograve;ng người</p><p>- mười hai c&aacute;ch dẫn dụ người kh&aacute;c&nbsp;</p><p>- ch&iacute;n c&aacute;ch tăng hạnh ph&uacute;c cho gia đ&igrave;nh</p><p>BIZBOOKS tr&acirc;n trọng giới thiệu đến độc giả cuốn s&aacute;ch ĐẮC NH&Acirc;N T&Acirc;M&nbsp; - bản dịch Nguyễn Hiến L&ecirc;. Đ&acirc;y l&agrave; bản dịch quen thuộc, gần gũi, đ&atilde; gắn liền với bao thế hệ v&agrave; đ&atilde; gi&uacute;p h&agrave;ng triệu người Việt Nam th&agrave;nh c&ocirc;ng. Cuốn s&aacute;ch mới nhất n&agrave;y c&oacute; sửa chữa v&agrave; th&ecirc;m một chương phụ lục của dịch giả Nguyễn Hiến L&ecirc; ch&ecirc;p một số cố sự của phương đ&ocirc;ng để dẫn chứng th&ecirc;m cho cuốn s&aacute;ch của Dale Carnegie.</p><p><strong><strong>V&agrave; đ&acirc;y ch&iacute;nh l&agrave; cuốn s&aacute;ch m&agrave; mọi thế hệ người Việt Nam đều cần c&oacute;.</strong></strong></p>', 72000, 44, 'new_doc_2018-08-21_14.43.16_10.jpg'),
(28, 'Mắt Biếc', 'Tiểu Thuyết', 'Trẻ', 'Nguyễn Nhật Ánh', '<p>Mắt Biếc (T&aacute;i Bản 2019)</p><p>&nbsp;</p><p><strong><em>Mắt biếc</em></strong>&nbsp;l&agrave; một t&aacute;c phẩm được nhiều người b&igrave;nh chọn l&agrave; hay nhất của nh&agrave; văn Nguyễn Nhật &Aacute;nh. T&aacute;c phẩm n&agrave;y cũng đ&atilde; được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản.</p><p><em>&ldquo;T&ocirc;i gửi t&igrave;nh y&ecirc;u cho m&ugrave;a h&egrave;, nhưng m&ugrave;a h&egrave; kh&ocirc;ng giữ nổi. M&ugrave;a h&egrave; chỉ biết ra hoa, phượng đỏ s&acirc;n trường v&agrave; tiếng ve nỉ non trong l&aacute;. M&ugrave;a h&egrave; ng&acirc;y ng&ocirc;, giống như t&ocirc;i vậy. N&oacute; chẳng l&agrave;m được những điều t&ocirc;i k&yacute; th&aacute;c. N&oacute; để H&agrave; Lan đốt t&ocirc;i, đốt rụi. Tr&aacute;i tim t&ocirc;i ch&aacute;y th&agrave;nh tro, rơi v&atilde;i tr&ecirc;n đường về.&rdquo;</em></p><p>&hellip; Bởi sự trong s&aacute;ng của một t&igrave;nh cảm, bởi c&aacute;i kết th&uacute;c buồn, rất buồn khi xuy&ecirc;n suốt c&acirc;u chuyện vẫn l&agrave; những điều vui, buồn lẫn lộn&hellip;&nbsp;</p><p>&gt;</p>', 93000, 27, '2019_11_05_09_36_21_1-390x510.jpg'),
(29, 'Anh có thích nước Mỹ không?', 'Tiểu Thuyết', 'Văn học', 'Tân Di Ổ', '<p><strong>Anh C&oacute; Th&iacute;ch Nước Mỹ Kh&ocirc;ng? (T&aacute;i Bản 2018)</strong></p><p>Trịnh Vy, 18 tuổi, c&oacute; l&agrave;n da trắng, đ&ocirc;i m&aacute; hồng bầu b&igrave;nh tự nhận m&igrave;nh l&agrave; Ngọc diện Tiểu Phi Long, một c&ocirc; g&aacute;i v&ocirc; tư, cuộc sống dường như kh&ocirc;ng c&oacute; g&igrave; khiến c&ocirc; phải buồn. Trịnh Vy quyết định thi v&agrave;o Học viện Kiến tr&uacute;c của th&agrave;nh phố G v&igrave; một lời hẹn ước với L&acirc;m Tịnh - ch&agrave;ng trai sống c&ugrave;ng khu nh&agrave; tập thể với c&ocirc; v&agrave; hơn c&ocirc; 5 tuổi.</p><p>Từ khi c&ograve;n rất nhỏ c&ocirc; đ&atilde; n&oacute;i trước mặt mọi người l&agrave; sẽ lấy L&acirc;m Tịnh. 17 năm c&ocirc; mải miết theo anh tr&ecirc;n mọi con đường anh đi, đến cuối c&ugrave;ng c&ocirc; tưởng như m&igrave;nh đ&atilde; được ở gần anh sẽ kh&ocirc;ng phải xa c&aacute;ch. Thật kh&ocirc;ng ngờ, chuyện của người lớn - chuyện mẹ c&ocirc; v&agrave; cha anh đ&atilde; từng y&ecirc;u nhau đ&atilde; khiến cho hai b&ecirc;n gia đ&igrave;nh tan vỡ. L&acirc;m Tịnh đ&atilde; chọn con đường ra đi, sang Mĩ bỏ c&ocirc; ở lại với bao c&acirc;u hỏi ngổn ngang.</p><p>Thời gian vẫn tr&ocirc;i, con người vẫn phải sống, Trịnh Vy mạnh mẽ tiếp tục bước tiếp con đường m&igrave;nh phải đi. C&ocirc; l&agrave;m thư k&yacute; cho Gi&aacute;m đốc C&ocirc;ng ty 2 trực thuộc Tập đo&agrave;n Kiến tr&uacute;c Trung Quốc, trước kia c&ocirc; nộp hồ sơ v&agrave;o đ&acirc;y v&igrave; Trần Hiếu Ch&iacute;nh cũng nộp hồ sơ. Nhưng nay kh&ocirc;ng c&ograve;n anh c&ocirc; vẫn đi l&agrave;m v&igrave; c&ocirc; thấy đ&acirc;y l&agrave; cơ hội c&ocirc; c&oacute; thể ph&aacute;t triển sự nghiệp.</p><p>Dưới sự d&igrave;u dắt của Gi&aacute;m đốc Chu C&ugrave;, một Trịnh Vy sốc nổi, bốc đồng, bừa b&atilde;i đ&atilde; trở th&agrave;nh thư k&yacute; Trịnh điềm đạm trong giao tiếp, cẩn trọng trong c&ocirc;ng việc. C&ocirc; L&yacute; Chủ tịch C&ocirc;ng đo&agrave;n của c&ocirc;ng ty đ&atilde; giới thiệu cho c&ocirc; rất nhiều ch&agrave;ng trai, c&ocirc; nghĩ m&igrave;nh cũng n&ecirc;n t&igrave;m một người để nương tựa. Vậy l&agrave; c&ocirc; lao v&agrave;o c&aacute;c cuộc hẹn h&ograve;, người th&iacute;ch c&ocirc; th&igrave; c&ocirc; kh&ocirc;ng th&iacute;ch, m&agrave; người c&ocirc; th&iacute;ch lại chẳng c&oacute; t&igrave;nh cảm với c&ocirc;, trước những ch&agrave;ng trai xa lạ c&ocirc; lu&ocirc;n c&oacute; một c&acirc;u hỏi &quot;kinh điển&quot;: &quot;Anh c&oacute; th&iacute;ch nước Mỹ kh&ocirc;ng?&quot;.</p>', 104500, 28, 'anh_co_thich_nuoc_my_khong_tai_ban_2018_1_2018_10_29_10_13_37.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `Matl` int(11) NOT NULL,
  `Tentl` varchar(50) NOT NULL,
  `Motatl` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`Mabl`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`Magiohang`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`Mahoadon`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`Tk`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`Masach`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`Matl`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `Mabl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `Magiohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `Mahoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `Masach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `Matl` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
