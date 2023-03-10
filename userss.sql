-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 19, 2022 lúc 05:31 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `userss`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `ID_cart` int(11) NOT NULL,
  `Name_users` text NOT NULL,
  `Total` text NOT NULL,
  `create_orders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`ID_cart`, `Name_users`, `Total`, `create_orders`) VALUES
(35, 'duy', '373650000', '18/08/2022 17:41'),
(36, 'duy', '561996000', '18/08/2022 17:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_details`
--

CREATE TABLE `cart_details` (
  `ID_cart_details` int(11) NOT NULL,
  `ID_cart` text NOT NULL,
  `ID_products` int(11) NOT NULL,
  `Name_products` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` text NOT NULL,
  `create_orders` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cart_details`
--

INSERT INTO `cart_details` (`ID_cart_details`, `ID_cart`, `ID_products`, `Name_products`, `Quantity`, `Price`, `create_orders`) VALUES
(47, '35', 2, 'GMT-MASTER II', 1, '373650000', '18/08/2022 17:41'),
(48, '36', 1, 'AIR-KING', 1, '180431000', '18/08/2022 17:42'),
(49, '36', 8, 'DATEJUST 36 (GOLD & DIAMOND)', 1, '381565000', '18/08/2022 17:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Slogan` text CHARACTER SET utf8 DEFAULT NULL,
  `Image` text CHARACTER SET utf8 DEFAULT NULL,
  `Image2` text NOT NULL,
  `Image3` text NOT NULL,
  `ImageHeader` text NOT NULL,
  `Introduce` text CHARACTER SET utf8 DEFAULT NULL,
  `IntroduceExtra` text CHARACTER SET utf8 DEFAULT NULL,
  `Content` text CHARACTER SET utf8 DEFAULT NULL,
  `ContentExtra` text NOT NULL,
  `Price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ID`, `Name`, `Type`, `Slogan`, `Image`, `Image2`, `Image3`, `ImageHeader`, `Introduce`, `IntroduceExtra`, `Content`, `ContentExtra`, `Price`) VALUES
(1, 'AIR-KING', 'Professional', 'NIỀM TÔN KÍNH VỚI NGÀNH HÀNG KHÔNG', 'images/RolexDedicated/dedicated_1.jpg', 'images/RolexDedicated/dedicated_1_a.webp', 'images/RolexDedicated/dedicated_1_b.webp', 'images/RolexDedicated/dedicated_1_header.webp', 'PHIÊN BẢN ROLEX AIR-KING VINH DANH NHỮNG NGƯỜI BAY TIÊN PHONG VÀ VAI TRÒ CỦA OYSTER TRONG GIAI THOẠI HÀNG KHÔNG.', 'Với vỏ 40mm bằng thép Oystersteel, dây đeo khớp cứng Oyster và khóa Oysterclasp, cùng với mặt đồng hồ đen đặc trưng, Air-King tiếp nối di sản hàng không vĩnh cửu của Rolex Oyster nguyên bản.', '- Đồng hồ Air-King tỏ lòng tôn kính với thời kỳ vàng son của ngành hàng không trong thập niên 1930. Một trong những người tiên phong của thời đại này, phi công người Anh, Charles Douglas Barnard, đã lập một số kỷ lục bay. Về chiếc Oyster, ông nói: “Những phẩm chất đặc biệt của chiếc đồng hồ Rolex này khiến nó rất phù hợp với mục đích bay và tôi đề nghị sử dụng nó trên tất cả các chuyến bay đường dài của tôi trong tương lai”.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 40 mm, thép Oystersteel <br /> \r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n40 mm <br />\r\nCHẤT LIỆU <br />\r\nOystersteel VÀNH ĐỒNG HỒ Trơn <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '180431000'),
(2, 'GMT-MASTER II', 'Professional', 'MẪU ĐỒNG HỒ COSMOPOLITAN', 'images/RolexDedicated/dedicated_2a.webp', 'images/RolexDedicated/dedicated_2_a.webp', 'images/RolexDedicated/dedicated_2_b.webp', 'images/RolexDedicated/dedicated_2_header.webp', 'ĐƯỢC THIẾT KẾ ĐỂ HIỂN THỊ THỜI GIAN THEO HAI MÚI GIỜ CÙNG MỘT LÚC, MẪU ĐỒNG HỒ GMT-MASTER, RA MẮT VÀO NĂM 1955, BAN ĐẦU ĐƯỢC PHÁT TRIỂN NHƯ MỘT DỤNG CỤ ĐIỀU HƯỚNG DÀNH CHO CÁC CHUYÊN GIA TRÊN KHẮP THẾ GIỚI.', 'Là thế hệ sau của mẫu đồng hồ nguyên bản, GMT-Master II ra mắt vào năm 1982, được trang bị một bộ chuyển động mới dễ sử dụng. Sự kết hợp của tính năng vượt trội, mạnh mẽ và vẻ đẹp thẩm mỹ nổi bật có thể nhận biết ngay lập tức đã thu hút được các nhà du hành trên khắp thế giới.', '- Oyster Perpetual GMT-Master được ra mắt vào năm 1955, thời điểm mà hành trình du lịch vòng quanh thế giới trở nên phổ biến. Nó thậm chí trở thành chiếc đồng hồ chính thức của hãng hàng không quốc tế Hoa Kỳ – được biết đến rộng rãi trên toàn thế giới là Pan Am – hãng hàng không liên lục địa nổi tiếng nhất của Mỹ thời bấy giờ.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 40 mm, thép Oystersteel <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n40 mm <br />\r\nCHẤT LIỆU <br />\r\nOystersteel <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nVành đồng hồ chia vạch 24 giờ xoay hai chiều Cerachrom nhị sắc đỏ và xanh bằng chất liệu gốm, chữ số và vạch dấu giờ dạng khuôn đúc <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '373650000'),
(3, 'YACHT-MASTER', 'Professional', 'CHIẾC ĐỒNG HỒ CỦA BIỂN CẢ BAO LA', 'images/RolexDedicated/dedicated_3.webp', 'images/RolexDedicated/dedicated_3_a.jpg', 'images/RolexDedicated/dedicated_3_b.webp', 'images/RolexDedicated/dedicated_3_header.webp', 'MẪU ĐỒNG HỒ ROLEX YACHT-MASTER VÀ YACHT-MASTER II BIỂU TRƯNG CHO TINH THẦN THỦY THỦ.', 'Lấy cảm hứng từ những di sản phong phú đã kết nối Rolex với thế giới đi thuyền từ những năm 1950, Yacht-Master kết hợp giữa tính năng và phong cách, trong khi Yacht-Master II kết hợp công nghệ Rolex tối tân để tạo ra một chiếc chronograph regatta cho những cuộc thi đấu đua thuyền.', '- Oyster Perpetual Yacht-Master là mẫu đồng hồ chuyên dụng duy nhất có ba kích thước: 42, 40 và 37 mm. Dây đeo đồng hồ Oysterflex của Yacht‑Master, được phát triển và cấp bằng sáng chế của Rolex, đem đến sự lựa chọn mang phong cách thể thao cho các dây đeo ', '- VỎ ĐỒNG HỒ <br />\r\nOyster, 42 mm, vàng vàng <br />\r\n- CẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\n- ĐƯỜNG KÍNH <br />\r\n42 mm <br /> \r\n- CHẤT LIỆU <br />\r\nvàng vàng 18 ct <br />\r\n- VÀNH ĐỒNG HỒ <br />\r\nVành đồng hồ xoay hai chiều chia độ 60 phút với vòng số Cerachrom màu đen hiệu ứng mờ bằng gốm, chữ số nổi và vạch chia được phủ bóng <br /> \r\n- NÚM VẶN LÊN DÂY Xoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\r\n- MẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\n- CHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet  <br />\r\n', '695302200'),
(4, 'SUBMARINER', 'Professional', 'CHUẨN MỰC ĐỒNG HỒ CỦA THỢ LẶN', 'images/RolexDedicated/dedicated_4.jpg', 'images/RolexDedicated/dedicated_4_a.webp', 'images/RolexDedicated/dedicated_4_b.webp', 'images/RolexDedicated/dedicated_4_header.webp', 'OYSTER PERPETUAL SUBMARINER LÀ CHUẨN MỰC ĐỒNG HỒ CỦA THỢ LẶN; VƯỢT QUA GIỚI HẠN VỀ KHẢ NĂNG CHỐNG CHỊU DƯỚI VÙNG NƯỚC SÂU.', 'Ra mắt năm 1953, Submariner là chiếc đồng hồ đeo tay đầu tiên dành cho thợ lặn với khả năng chống thấm nước ở độ sâu lên đến 100 mét (330 feet). Đây là bước đột phá lớn thứ hai trong kỹ thuật kháng nước, theo sau sáng chế của Oyster, chiếc đồng hồ đeo tay chống thấm nước đầu tiên trên thế giới ra mắt năm 1926. Trong công nghệ chế tác đồng hồ, Submariner đại diện cho một bước ngoặt lịch sử; đặt ra tiêu chuẩn riêng cho đồng hồ dành cho thợ lặn. Ngày nay, đồng hồ Submariner bảo đảm chống thấm nước ở độ sâu 300 mét (1.000 feet).', '- Submariner ban đầu được tạo ra cho mục đích thám hiểm và lặn dưới nước. Trong những năm qua, sản phẩm đã được chứng minh về khả năng chống chịu trong nước và đã trở thành chiếc đồng hồ biểu tượng hoàn hảo, đồng hành cùng những nhà thám hiểm, vận động viên', 'VỎ ĐỒNG HỒ <br />\nOyster, 41 mm, Oystersteel<br />\nCẤU TRÚC OYSTER <br />\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\nĐƯỜNG KÍNH <br />\n41 mm <br />\nCHẤT LIỆU <br />\nOystersteel <br />\nVÀNH ĐỒNG HỒ <br />\nVạch chia 60 phút xoay 1 chiều, Cerachrom chống trầy phủ gốm sứ, số và vạch chia phủ bạch kim <br />\nNÚM VẶN LÊN DÂY <br />\nXoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\nMẶT KÍNH ĐỒNG HỒ <br />\nSapphire chống trầy xước <br />\nCHỐNG THẤM NƯỚC <br />\nKhả năng chống thấm nước lên đến mức 300m/1000 feet <br />', '260590200'),
(5, 'EXPLORER', 'Professional', 'TIẾNG GỌI TỪ ĐỈNH NÚI', 'images/RolexDedicated/dedicated_7.webp', 'images/RolexDedicated/dedicated_7_a.webp', 'images/RolexDedicated/dedicated_7_b.webp', 'images/RolexDedicated/dedicated_7_header.webp', 'ĐỒNG HỒ OYSTER PERPETUAL EXPLORER VÀ EXPLORER II PHÁT TRIỂN TỪ SỰ THAM GIA SÂU RỘNG CỦA ROLEX TRONG CÁC CUỘC THÁM HIỂM.', 'Khám phá những nơi mà ít người đặt chân tới. Thương hiệu đã thử nghiệm những chiếc đồng hồ này trong thực tế bằng cách trang bị chúng cho các cuộc leo núi, thám hiểm vùng cực, hang động trong nhiều năm.', '- Explorer, được ra mắt vào năm 1953, nổi bật với thiết kế đơn giản và mặt số màu đen rất dễ đọc với các vạch dấu giờ lớn và các chữ số 3, 6, 9 đặc trưng. Là chiếc đồng hồ công cụ, được thiết kế để chỉ thời gian một cách chính xác nhất, cho dù ở bất kể hoàn', 'VỎ ĐỒNG HỒ <br /> Oyster, 41 mm, Oystersteel<br /> CẤU TRÚC OYSTER <br /> Vỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br /> ĐƯỜNG KÍNH <br /> 41 mm <br /> CHẤT LIỆU <br /> Oystersteel <br /> VÀNH ĐỒNG HỒ <br /> Vạch chia 60 phút xoay 1 chiều, Cerachrom chống trầy phủ gốm sứ, số và vạch chia phủ bạch kim <br /> NÚM VẶN LÊN DÂY <br /> Xoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br /> MẶT KÍNH ĐỒNG HỒ <br /> Sapphire chống trầy xước <br /> CHỐNG THẤM NƯỚC <br /> Khả năng chống thấm nước lên đến mức 300m/1000 feet <br />', '273190000'),
(6, 'MILGAUSS', 'Professional', 'VINH DANH KHOA HỌC', 'images/RolexDedicated/dedicated_8.png', 'images/RolexDedicated/dedicated_8_a.webp', 'images/RolexDedicated/dedicated_8_b.webp', 'images/RolexDedicated/dedicated_8_header.webp', 'OYSTER PERPETUAL MILGAUSS LÀ DÒNG ĐỒNG HỒ TIÊN PHONG CHỐNG NHIỄU TỪ ĐƯỢC THIẾT KẾ ĐỂ PHỤC VỤ NHU CẦU CỦA NHỮNG KĨ SƯ VÀ NHÀ KHOA HỌC.  ', 'Được tạo ra từ năm 1956, dòng đồng hồ có thể chịu được từ trường lên tới 1,000 gauss. Tên của dòng đồng hồ là , “mille”, trong tiếng Pháp có nghĩa là một nghìn. Là dòng đồng hồ đầu tiên của dòng này, Milgauss là sự kết hợp của di sản về khoa học cùng vẻ đẹp thẩm mỹ độc đáo.', '- Những năm 1950 là giai đoạn phát triển của công nghệ và khoa học kĩ thuật cùng với sự gia tăng về số lượng của những kĩ sư và nhà khoa học làm việc trong môi trường có từ tính cao.  Môi trường này có ảnh hưởng đến việc vận hành chính xác của những chiếc đ', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 40 mm, thép Oystersteel <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n40 mm <br />\r\nCHẤT LIỆU <br />\r\nOystersteel <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nTrơn <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nNgọc bích xanh lá, chống trầy xước <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '224900200'),
(7, 'COSMOGRAPH DAYTONA (Gold)', 'Professional', 'SINH RA ĐỂ ĐUA', 'images/RolexDedicated/dedicated_9.webp', 'images/RolexDedicated/dedicated_9_a.jpg', 'images/RolexDedicated/dedicated_9_b.webp', 'images/RolexDedicated/dedicated_9_header.webp', 'OYSTER PERPETUAL COSMOGRAPH DAYTONA LÀ MỘT CÔNG CỤ TỐI ƯU, MỘT CHIẾC ĐỒNG HỒ MANG TÍNH BIỂU TƯỢNG CHO NHỮNG NGƯỜI CÓ NIỀM ĐAM MÊ LÁI XE VÀ TỐC ĐỘ.', 'Ra mắt vào năm 1963, đồng hồ Cosmograph Daytona được thiết kế để đáp ứng nhu cầu của các tay đua chuyên nghiệp. Nó là một biểu tượng trường tồn gắn liền với tên tuổi và động cơ hiệu suất cao trong giới đua xe thể thao. Hơn 50 năm sau ngày ra mắt, Cosmograph Daytona vẫn giữ được đẳng cấp trong các dòng đồng hồ thể thao và tiếp tục trường tồn với thời gian.', '- Đồng hồ OYSTER PERPETUAL COSMOGRAPH DAYTONA bằng vàng EVEROSE 18 CT với mặt số đá thiên thạch đen và dây đeo OYSTER, tích hợp vành đồng hồ vàng EVEROSE 18 CT và khắc thang đo TACHYMETRIC.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 40 mm, vàng Everose <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n40 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng Everose 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nCố định, với khắc thang đo vận tốc bằng vàng Everose 18 ct <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '1350650000'),
(8, 'DATEJUST 36 (GOLD & DIAMOND)', 'Professional', 'ĐỒNG HỒ BIỂU TƯỢNG CỦA PHONG CÁCH CỔ ĐIỂN', 'images/RolexDedicated/dedicated_10.webp', 'images/RolexDedicated/dedicated_10_a.webp', 'images/RolexDedicated/dedicated_10_b.webp', 'images/RolexDedicated/dedicated_10_header.webp', 'ĐỒNG HỒ OYSTER PERPETUAL DATEJUST 36 BẰNG THÉP OYSTERSTEEL VÀ VÀNG TRẮNG ĐI KÈM MẶT SỐ MOTIF HỌA TIẾT CÂY CỌ MÀU XANH OLIVE VÀ DÂY ĐEO JUBILEE.', 'Phản xạ ánh sáng trên các các mặt bên vỏ và vấu làm nổi bật cấu trúc thanh lịch của vỏ Oyster 36 mm, rất phù hợp với vành đồng hồ nạm kim cương. Về phương diện thẩm mỹ, phiên bản Datejust đã tồn tại qua nhiều thời đại, trong khi giữ lại những quy tắc cấu thành sản phẩm, đặc biệt là ở các phiên bản truyền thống, một trong những yếu tố biểu tượng và dễ nhận diện của đồng hồ.', '- Đồng hồ OYSTER PERPETUAL DATEJUST 36 bằng thép OYSTERSTEEL và vàng trắng đi kèm mặt số MOTIF hoạ tiết cây cọ màu xanh OLIVE và dây đeo JUBILEE. Những nghệ nhân đính đá, như những nhà điêu khắc, chạm khắc các kim loại quý để tạo thành hình dáng nơi mỗi viên đá quý sẽ được đặt một cách hoàn hảo. Với kỹ nghệ và kỹ xảo của thợ kim hoàn, mỗi viên đá đều được đặt tỉ mỉ và căn chỉnh phù hợp với những viên khác, sau đó được đính chắc chắn bằng vàng hoặc bạch kim.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 36 mm, Oystersteel, vàng trắng và kim cương <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n36 mm <br />\r\nCHẤT LIỆU <br />\r\nRolesor trắng - hỗn hợp thép Oystersteel và vàng trắng <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nNạm kim cương <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '381565000'),
(9, 'DAY-DATE 40', 'Professional', 'CHIẾC ĐỒNG HỒ TIÊU BIỂU CỦA UY TÍN', 'images/RolexDedicated/dedicated_11.webp', 'images/RolexDedicated/dedicated_11_a.webp', 'images/RolexDedicated/dedicated_11_b.webp', 'images/RolexDedicated/dedicated_11_header.webp', 'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 40 BẰNG BẠCH KIM VỚI MẶT SỐ MÀU XANH BĂNG, VÀNH ĐỒNG HỒ DẠNG KHÍA VÀ DÂY ĐEO PRESIDENT.', 'Day-Date là chiếc đồng hồ đầu tiên cho biết các thứ trong tuần được viết đầy đủ ngay từ lần đầu tiên ra mắt năm 1956.', '- Phiên bản Day-Date 40 được trang bị một bộ chuyển động thế hệ mới, calibre 3255, được phát triển và sản xuất hoàn toàn bởi Rolex cho một mức độ hiệu năng ưu việt. Bộ chuyển động cơ học tự lên dây này nắm vị trí dẫn đầu trong nghệ thuật chế tác đồng hồ. Một kiệt tác nghệ thuật tuyệt vời của công nghệ Rolex, với 14 bằng sáng chế, chiếc đồng hồ cung cấp những lợi ích cơ bản về độ chuẩn xác, dự trữ điện năng, chống chấn động và nhiễm từ, dễ sử dụng và đáng tin cậy.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 40 mm, vàng vàng <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n40 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng vàng 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nDạng khía <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '224900200'),
(11, 'DATEJUST 36', 'Classic', 'ĐỒNG HỒ BIỂU TƯỢNG CỦA PHONG CÁCH CỔ ĐIỂN', 'images/RolexClassic/classic_2.webp', 'images/RolexClassic/classic_2_a.webp', 'images/RolexClassic/classic_2_b.webp', 'images/RolexClassic/classic_2_header.jpeg', 'ĐỒNG HỒ OYSTER PERPETUAL DATEJUST 36 BẰNG THÉP OYSTERSTEEL VÀ VÀNG KIM ĐI KÈM MẶT SỐ MOTIF HỌA TIẾT GẤP NẾP ÁNH VÀNG VÀ DÂY ĐEO JUBILEE.', 'Phản xạ ánh sáng trên các các mặt bên vỏ và vấu làm nổi bật cấu trúc thanh lịch của vỏ Oyster 36 mm, rất phù hợp với vành đồng hồ dạng rãnh. Về phương diện thẩm mỹ, phiên bản Datejust đã tồn tại qua nhiều thời đại, trong khi giữ lại những quy tắc cấu thành sản phẩm, đặc biệt là ở các phiên bản truyền thống, một trong những yếu tố biểu tượng và dễ nhận diện của đồng hồ.', '- Được chế tác vào năm 1945, phiên bản Datejust là chiếc đồng hồ đeo tay chống thấm nước đầu tiên có độ chuẩn xác cao và hiển thị ngày tháng trong cửa sổ tại điểm 3 giờ trên mặt số – từ đó tạo thành tên gọi của nó. Với vẻ đẹp thẩm mỹ vượt thời gian, chức nă', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 36 mm, Oystersteel và vàng vàng <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n36 mm <br />\r\nCHẤT LIỆU <br />\r\nRolesor vàng - hỗn hợp thép Oystersteel và vàng vàng <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nDạng khía <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '293300000'),
(12, 'OYSTER PERPETUAL 41', 'Classic', 'KHÍ CHẤT OYSTER', 'images/RolexClassic/classic_3.webp', 'images/RolexClassic/classic_3_a.webp', 'images/RolexClassic/classic_3_b.jpg', 'images/RolexClassic/classic_3_header.jpeg', 'ĐỒNG HỒ OYSTER PERPETUAL 41 VỚI MẶT SỐ MÀU BẠC VÀ DÂY ĐEO OYSTER.', 'Tính thẩm mỹ của các phiên bản Oyster Perpetual đã tạo riêng cho chúng những biểu tượng của phong cách cổ điển toàn cầu. Chúng là hiện thân của phong cách và chức năng trường tồn với thời gian, bắt nguồn từ các nguyên bản tiên phong của Rolex.', '- Oyster Perpetual là hậu duệ trực tiếp của Oyster nguyên bản, dòng đồng hồ đeo tay chống nước đầu tiên trên thế giới, gắn liền với hành trình tạo dựng danh tiếng của Rolex từ năm 1926. Những chiếc đồng hồ này hội tụ mọi tính năng của bộ sưu tập Oyster Perp', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 41 mm, Oystersteel <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n41 mm <br />\r\nCHẤT LIỆU <br />\r\nOystersteel <br />\r\nVÀNH ĐỒNG HỒ <br />\r\ndạng bầu <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '149500000'),
(13, 'LADY-DATEJUST', 'Classic', 'THANH LỊCH DUYÊN DÁNG', 'images/RolexClassic/classic_4.webp', 'images/RolexClassic/classic_4_a.webp', 'images/RolexClassic/classic_4_b.webp', 'images/RolexClassic/classic_4_header.jpeg', 'ĐỒNG HỒ OYSTER PERPETUAL LADY-DATEJUST BẰNG VÀNG VÀNG 18 CT ĐI KÈM MẶT SỐ MẶT SỐ VỎ TRAI TRẮNG NẠM KIM CƯƠNG VÀ DÂY ĐEO PRESIDENT.', 'Phản xạ ánh sáng trên các các mặt bên vỏ và vấu làm nổi bật cấu trúc thanh lịch của vỏ Oyster 28 mm, rất phù hợp với vành đồng hồ Nạm 44 viên kim cương cắt lát rực rỡ. Đồng hồ nữ cổ điển Rolex Lady-Datejust là phiên bản kế thừa của Datejust, mẫu đồng hồ biểu tượng đã là một khẩu hiệu cho phong cách và theo dõi thời gian chính xác.', '- Ra mắt năm 1957, Lady-Datejust, thừa hưởng tất cả các thuộc tính của Datejust – chiếc đồng hồ Rolex biểu tượng đã trở thành cảm hứng cho phong cách và hiệu suất kỹ thuật kể từ khi xuất xưởng vào năm 1945. Là phiên bản dành cho nữ đầu tiên của dòng đồng hồ', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 31 mm, vàng và kim cương <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n31 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng vàng 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nNạm kim cương <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '913230000'),
(14, 'SKY-DWELLER', 'Classic', 'THEO DÕI THỜI GIAN TRÊN KHẮP THẾ GIỚI', 'images/RolexClassic/classic_5.png', 'images/RolexClassic/classic_5_a.jpg', 'images/RolexClassic/classic_5_b.webp', 'images/RolexClassic/classic_5_header.jpg', 'ĐỒNG HỒ OYSTER PERPETUAL SKY-DWELLER BẰNG VÀNG VÀNG 18 CT VỚI MẶT SỐ MÀU ĐEN SÁNG VÀ DÂY ĐEO OYSTERFLEX.', 'Chiếc đồng hồ đặc biệt này đặc trưng bởi màn hình múi giờ thứ hai của nó trên một đĩa lệch tâm trên mặt đồng hồ Hơn nữa, hệ thống sáng tạo của đồng hồ nhằm thiết lập các chức năng, bằng cách sử dụng vành đồng hồ xoay Ring Command, là nét đặc trưng của Rolex. ', '- Sky-Dweller được trang bị calibre 9001, bộ chuyển động hoàn toàn do Rolex phát triển và sản xuất. Calibre 9001 được trang bị dây tóc Parachrom màu xanh tối ưu, do Rolex sản xuất bằng một hợp kim thuận từ độc quyền, giúp đảm bảo độ chính xác hơn gấp 10 lần <br />\r\n- Các tam giác màu đỏ đảo ngược trên các điểm trên mặt đồng hồ để chọn giờ tham chiếu – thời gian tại nhà hoặc tại nơi làm việc – trên mặt số 24 giờ lệch tâm. Trong nháy mắt, màn hình 24 giờ này phân biệt rõ ràng giờ ban ngày với giờ ban đêm ở múi giờ khác. Mặt đồng hồ có vạch dấu giờ hình chữ nhật và kim dài hơn, cũng như một màn hình Chromalight phát quang lâu dài, giúp làm tăng mức độ dễ đọc.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 42 mm, vàng vàng <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n42 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng vàng 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\ndạng rãnh, Rolex Ring Command xoay 2 chiều <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '980200500'),
(15, 'CELLINI', 'Classic', 'ĐỒNG HỒ CỔ ĐIỂN', 'images/RolexClassic/classic_6.webp', 'images/RolexClassic/classic_6_a.webp', 'images/RolexClassic/classic_6_b.webp', 'images/RolexClassic/classic_6_header.jpg', 'CELLINI TÔN VINH SỰ THANH LỊCH TRƯỜNG TỒN CỦA ĐỒNG HỒ TRUYỀN THỐNG VỚI MỘT DÁNG VẺ HIỆN ĐẠI; CÙNG TÊN GỌI ĐƯỢC LẤY CẢM HỨNG TỪ NGHỆ SĨ THỜI PHỤC HƯNG NGƯỜI Ý, BENVENUTO CELLINI.', 'Bộ sưu tập này kết hợp những bí quyết của Rolex và những tiêu chuẩn cao nhất về sự hoàn hảo, với cách tiếp cận nhằm nâng cao tính kế thừa trong việc chế tác đồng hồ với hình thức trường tồn nhất. Các đường nét của mẫu Cellini mang nét trang nhã và tinh tế, các vật liệu quý, lớp hoàn thiện sang trọng: mỗi chi tiết đều tuân theo quy tắc của nghệ thuật chế tác đồng hồ.', '- Rolex Moonphase đánh dấu một cột mốc quan trọng trong việc phát triển đồng hồ thanh lịch, khẳng định vị trí hàng đầu của dòng Cellini trong những chiếc chronometer uy tín nhất thế giới. Sự ra đời của tính năng hiển thị chu kỳ trăng độc đáo đã được chờ đợi trong nhiều thập kỷ - Rolex cuối cùng đã cho ra đời phiên bản đồng hồ với chu kỳ trăng trong những năm 1950. Moonphase là kết quả của nhiều năm nghiên cứu, đổi mới, mô hình hóa mẫu thử nghiệm và kiểm tra độ tin cậy và độ bền.', 'VỎ ĐỒNG HỒ <br />\r\n39 mm, vàng Everose 18 ct, phủ bóng bề mặt <br />\r\nĐƯỜNG KÍNH <br />\r\n39 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng Everose 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nĐai kính đôi, dạng rãnh và vòm <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nNút vặn lên dây xoắn vít bện với biểu tượng Rolex <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nKính ngọc bích dạng bầu <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 50m/165 feet <br />', '656200000'),
(16, 'LADY-DATEJUST DIAMOND AND GOLD', 'Classic', 'THANH LỊCH DUYÊN DÁNG', 'images/RolexClassic/classic_7.webp', 'images/RolexClassic/classic_7_a.webp', 'images/RolexClassic/classic_7_b.webp', 'images/RolexClassic/classic_7_header.webp', 'ĐỒNG HỒ OYSTER PERPETUAL LADY-DATEJUST BẰNG VÀNG VÀNG 18 CT ĐI KÈM MẶT SỐ ĐÍNH KIM CƯƠNG VÀ DÂY ĐEO BỘ PRESIDENT NẠM KIM CƯƠNG.', 'Phản xạ ánh sáng trên các các mặt bên vỏ và vấu làm nổi bật cấu trúc thanh lịch của vỏ Oyster 28 mm, rất phù hợp với vành đồng hồ Nạm 44 viên kim cương cắt lát rực rỡ. Đồng hồ nữ cổ điển Rolex Lady-Datejust là phiên bản kế thừa của Datejust, mẫu đồng hồ biểu tượng đã là một khẩu hiệu cho phong cách và theo dõi thời gian chính xác.', '- Mặt đồng hồ nạm kim cương là một sự kết hợp lấp lánh giúp nâng tầm chiếc đồng hồ và sự quyễn rũ người đeo. Những nghệ nhân đính đá chạm khắc các kim loại quý để tạo hình mỗi một viên đá quý đều được đính vào một cách hoàn hảo. <br />\r\n- Bên cạnh chất lượng của đá, một số tiêu chí khác góp phần tạo nét đẹp cho đồng hồ nạm đá quý của Rolex gồm: sự sắp xếp chuẩn xác về chiều cao của các viên đá, hướng và vị trí của chúng, độ ổn định, sức mạnh và tỷ lệ bố trí, cũng như độ phức tạp ở công đoạn thao tác cuối với kim loại.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 28 mm, vàng vàng và kim cương <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n28 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng vàng 18 ct với các cạnh và tai đồng hồ nạm kim cương <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nNạm 44 viên kim cương cắt lát rực rỡ <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '2120400000'),
(17, 'DAY-DATE 36 (GOLD EVEROSE & DIAMOND)', 'Classic', 'CHIẾC ĐỒNG HỒ TIÊU BIỂU CỦA UY TÍN', 'images/RolexClassic/classic_8.webp', 'images/RolexClassic/classic_8_a.webp', 'images/RolexClassic/classic_8_b.webp', 'images/RolexClassic/classic_8_header.png', 'ĐỒNG HỒ OYSTER PERPETUAL DAY-DATE 36 BẰNG VÀNG VÀNG 18 CT VỚI MẶT SỐ MÀU NGỌC LAM, VÀNH ĐỒNG HỒ NẠM KIM CƯƠNG VÀ DÂY ĐEO PRESIDENT.', 'Mặt số đi kèm vạch dấu giờ bằng vàng 18 ct, nạm 32 viên kim cương, và chữ số La Mã “VI” và “IX” bằng vàng 18 ct, nạm 24 viên kim cương. Day-Date là chiếc đồng hồ đầu tiên có các thứ trong tuần được viết đầy đủ, ra mắt lần đầu năm 1956.', '- Mặt đồng hồ là giao diện đặc trưng của một chiếc đồng hồ Rolex, có vai trò quan trọng về mặt nhận diện và khả năng đọc của nó. <br />\r\n- Đặc trưng bởi các vạch dấu giờ bằng vàng, ngăn các vết ố bẩn, mỗi mặt đồng hồ Rolex đều được thiết kế và sản xuất tại xưởng của hãng, chủ yếu theo phương pháp thủ công để đảm bảo sự hoàn mỹ.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 36 mm, vàng và kim cương <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n36 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng vàng 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nNạm kim cương <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '2100640000'),
(18, 'DATEJUST 31 (GOLD & DIAMOND)', 'Classic', 'ĐỒNG HỒ BIỂU TƯỢNG CỦA PHONG CÁCH CỔ ĐIỂN', 'images/RolexClassic/classic_9.webp', 'images/RolexClassic/classic_9_a.webp', 'images/RolexClassic/classic_9_b.webp', 'images/RolexClassic/classic_9_header.png', 'ĐỒNG HỒ OYSTER PERPETUAL DATEJUST 31 BẰNG VÀNG VÀNG 18 CT ĐI KÈM MẶT SỐ HỌA TIẾT HOA MÀU XANH Ô-LIU, NẠM KIM CƯƠNG VÀ DÂY ĐEO PRESIDENT.', 'Mặt số đi kèm 24 viên kim cương đính bằng vàng 18 ct. Phản xạ ánh sáng trên các các mặt bên vỏ và vấu làm nổi bật cấu trúc thanh lịch của vỏ Oyster 31 mm, rất phù hợp với vành đồng hồ Nạm kim cương. Về phương diện thẩm mỹ, phiên bản Datejust đã tồn tại qua nhiều thời đại, trong khi giữ lại những quy tắc cấu thành sản phẩm, đặc biệt là ở các phiên bản truyền thống, một trong những yếu tố biểu tượng và dễ nhận diện của đồng hồ.', '- Mặt đồng hồ là giao diện đặc trưng của một chiếc đồng hồ Rolex, có vai trò quan trọng về mặt nhận diện và khả năng đọc của nó. <br />\r\n- Đặc trưng bởi các vạch dấu giờ bằng vàng, ngăn các vết ố bẩn, mỗi mặt đồng hồ Rolex đều được thiết kế và sản xuất tại xưởng của hãng, chủ yếu theo phương pháp thủ công để đảm bảo sự hoàn mỹ.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 31 mm, vàng và kim cương <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n31 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng vàng 18 ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nNạm kim cương <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 2 tầng Twinlock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '1350650000'),
(19, 'YACHT-MASTER 37', 'Classic', 'CHIẾC ĐỒNG HỒ CỦA BIỂN CẢ BAO LA', 'images/RolexClassic/classic_10.png', 'images/RolexClassic/classic_10_a.webp', 'images/RolexClassic/classic_10_b.webp', 'images/RolexClassic/classic_10_header.webp', 'ĐỒNG HỒ OYSTER PERPETUAL YACHT-MASTER 37 BẰNG THÉP OYSTERSTEEL VÀ VÀNG EVEROSE VỚI DÂY ĐEO OYSTER.', 'Mẫu đồng hồ này đi kèm mặt số màu đen tuyền và vành đồng hồ xoay hai chiều bằng chất liệu vàng Everose với vạch chia 60 phút và các chữ số . Khả năng chống thấm nước và chất lượng bền bỉ của mẫu này khiến nó trở thành chiếc đồng hồ lý tưởng cho các môn thể thao dưới nước nói chung và bộ môn đua thuyền nói riêng.', '- Vành đồng hồ xoay hai chiều với mặt số chia độ 60 phút của Yatch-Master được làm bằng vật liệu quý. Số và vạch chia độ nổi bật giữa nền đã qua xử lý làm mờ, phủ cát lấp lánh. <br />\r\n- Vành đồng hồ chức năng này – cho phép người đeo tính toán, ví dụ, thời gian đi thuyền giữa hai phao – cũng là một bộ phận quan trọng trong đặc điểm nhận dạng hình ảnh độc đáo của mẫu đồng hồ.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 37 mm, Oystersteel và vàng Everose <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n37 mm <br />\r\nCHẤT LIỆU <br />\r\nRolesor Everose - hỗn hợp thép Oystersteel và vàng Everose <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nVàng Everose 18 ct xoay 2 chiều chia vạch 60 phút với số nổi <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '332540000'),
(20, 'SEA-DWELLER', 'Professional', 'CHIẾC ĐỒNG HỒ CHINH PHỤC ĐỘ SÂU', 'images/RolexDedicated/dedicated_6.webp', 'images/RolexDedicated/dedicated_6_a.webp', 'images/RolexDedicated/dedicated_6_b.webp', 'images/RolexDedicated/dedicated_6_header.jpg', 'ĐỒNG HỒ OYSTER PERPETUAL SEA-DWELLER BẰNG THÉP OYSTERSTEEL VÀ VÀNG KIM VỚI VÒNG SỐ VÀNH ĐỒNG HỒ CERACHROM CHẤT LIỆU GỐM MÀU ĐEN VÀ DÂY ĐEO OYSTER.', 'Nó có mặt số màu đen đặc biệt và vạch dấu giờ phát quang lớn. Không thấm nước ở độ sâu 1.220 mét (4.000 feet) với đai kính xoay 60 phút một chiều, Rolex Sea-Dweller nằm trong số các đồng hồ dành thợ lặn siêu bền được Rolex chế tạo để thám hiểm dưới biển sâu.', '- Nó được trang bị với vòng số vành đồng hồ Cerachrom màu đen đã được cấp bằng sáng chế do Rolex sản xuất, với chất liệu gốm sứ chống trầy xước mà màu sắc không bị ảnh hưởng bởi tia cực tím. Vạch chia được phủ qua công nghệ PVD (Công nghệ mạ chân không) bằng một lớp bạch kim mỏng. <br />\r\n- Mặt số màu đen bóng được trang bị điểm báo giờ và kim Chromalight lớn, phủ vật liệu phát quang phát ra ánh sáng màu xanh dương lâu bền cho mức độ dễ đọc trong điều kiện tối.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 43 mm, Oystersteel và vàng vàng <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n43 mm <br />\r\nCHẤT LIỆU <br />\r\nRolesor vàng - hỗn hợp thép Oystersteel và vàng vàng <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nVạch chia 60 phút xoay 1 chiều, Cerachrom chống trầy phủ gốm sứ, số và vạch chia phủ bạch kim, số và vạch chia phủ vàng <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước, ống kính cyclops ở trên hiển thị ngày tháng <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 1220m/4000 feet, van xả khí helium <br />', '417450000'),
(21, 'COSMOGRAPH DAYTONA', 'Professional', 'SINH RA ĐỂ ĐUA', 'images/RolexDedicated/dedicated_5.webp', 'images/RolexDedicated/dedicated_5_a.webp', 'images/RolexDedicated/dedicated_5_b.webp', 'images/RolexDedicated/dedicated_5_header.jpeg', 'ĐỒNG HỒ OYSTER PERPETUAL COSMOGRAPH DAYTONA BẰNG VÀNG TRẮNG 18CT VỚI MẶT SỐ ĐÁ THIÊN THẠCH ĐEN VÀ DÂY ĐEO OYSTERFLEX, TÍCH HỢP VÀNH ĐỒNG HỒ CERACHROM ĐEN VÀ THANG ĐO TACHYMETRIC.', 'Bộ đếm nhịp này được thiết kế như một công cụ thời gian chính xác cao cho các cuộc đua bền bỉ. Hơn 50 năm sau ngày ra mắt, Cosmograph Daytona vẫn giữ được đẳng cấp trong các dòng đồng hồ thể thao và tiếp tục trường tồn với thời gian.\n\n', '- Đá thiên thạch được lấy từ tâm của một tiểu hành tinh - thậm chí có thể là một hành tinh đã phát nổ, đẩy vật liệu qua Hệ Mặt Trời cho đến khi có cơ hội đưa nó vào quỹ đạo của hành tinh và lực hấp dẫn kéo nó xuống Trái đất.<br />\r\n- Trong suốt hành trình của nó, tâm của thiên thạch được chuyển hóa từ từ, tạo ra các mẫu kim loại kỳ lạ, do sự làm lạnh rất chậm của các lõi tiểu hành tinh nóng chảy. Các nhà thiết kế tại Rolex tạo ra từ những cấu hình này một kho báu độc đáo cho một số mẫu uy tín nhất, bao gồm cả chiếc đồng hồ Cosmograph Daytona này.', 'VỎ ĐỒNG HỒ <br />\r\nOyster, 40 mm, vàng trắng <br />\r\nCẤU TRÚC OYSTER <br />\r\nVỏ chính đơn khối, nút vặn nắp lưng và nút chỉnh lên dây <br />\r\nĐƯỜNG KÍNH <br />\r\n40 mm <br />\r\nCHẤT LIỆU <br />\r\nvàng trắng 18ct <br />\r\nVÀNH ĐỒNG HỒ <br />\r\nVành đồng hồ Cerachrom đơn khối màu đen bằng chất liệu gốm đúc thang đo vận tốc <br />\r\nNÚM VẶN LÊN DÂY <br />\r\nXoắn vít, hệ thống chống thấm nước 3 tầng Triplock <br />\r\nMẶT KÍNH ĐỒNG HỒ <br />\r\nSapphire chống trầy xước <br />\r\nCHỐNG THẤM NƯỚC <br />\r\nKhả năng chống thấm nước lên đến mức 100m/330 feet <br />', '857990000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin`
--

CREATE TABLE `tb_admin` (
  `adminID` int(11) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tb_admin`
--

INSERT INTO `tb_admin` (`adminID`, `adminUser`, `adminPass`) VALUES
(2, 'duy', '$2y$10$QHZtu/pvwOHRefGorvlJx.krVhLKQf2aJKpXL0gYMqsgYyitMRoYC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `username`, `password`) VALUES
(8, 'chau', '$2y$10$dhq8Ax7wkeRXcLw2GFWYoeE6xh8AtXxZ//6/UNrBPNNYM3zAlkdKK'),
(7, 'duy', '$2y$10$negb9xsiEJSxdJV.FMqBUOqfZ6aAGl9im0o5owLoXvlerw7.Q2Tg.'),
(9, 'duyne', '$2y$10$BsGF.e3fQZBXiqMvpQzhsewm7SMYLoaeyesfosIugMgF.0cLvKGZO');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID_cart`);

--
-- Chỉ mục cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`ID_cart_details`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `ID_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `ID_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
