-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 02:02 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `darksoulofweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Card` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Password` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Type` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `Card`, `Phone`, `Password`, `Type`) VALUES
(1, 'zoomer3Guy', '311136233', 123456789, 'Assofsteel1324', 'C'),
(2, 'dasaBigNut', '311136212', 123142545, 'gayAFboah222', 'C'),
(3, 'xxxDongxxx', '113555253', 574625800, 'expanddong1432', 'M'),
(4, 'kimkhoi1999', '111111111', 1111111111, '111111111', 'A'),
(5, 'maihuy', '123456789', 708961204, '123', 'A'),
(6, 'skt1', '666666666', 1658036082, '1234', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ID` int(11) NOT NULL,
  `Attribute` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Value` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`ID`, `Attribute`, `Value`) VALUES
(1, 'Ielts', '1'),
(2, 'Toeic', '2'),
(3, 'Tất cả trình độ', '3'),
(4, 'Người mới bắt đầu', '4'),
(5, 'Trung cấp', '5'),
(6, 'Cao cấp', '6'),
(7, 'Đọc ', '7'),
(8, 'Nghe', '8'),
(9, 'Nói', '9'),
(10, 'Viết', '10'),
(11, '4 kĩ năng', '11'),
(12, 'Đọc và nghe', '12'),
(13, 'Nói và viết ', '13');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Skill` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Level` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Pic` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Developers` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Rule` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Type`, `Skill`, `Level`, `Name`, `Pic`, `Developers`, `Description`, `Link`, `Rule`) VALUES
(1, 'Ielts', 'Listening', 'Elementary', 'Basic ielts Listening', 'Basic-IELTS-Listening.png', 'Li Ya Bin ', 'Đặc biệt, cuốn sách ăn điểm ở chỗ nó xoáy sâu vào sự đa dạng của tiếng anh giao tiếp thường nhật như hội thoại, tin tức, báo cáo, mẩu chuyện hay những đoạn hội thoại ngắn và sẽ là một sự chuẩn bị cực kỳ tốt cho các bạn cho phần IELTS Listening section 1 với các dạng thông tin nổi trội như số đếm, chữ cái, ngày tháng ', 'http://www.mediafire.com/file/afi78ffxauww369/basic-ielts-listening.pdf/file', '1 3 8,1 3 11,1 3 12,1 4 8,1 4 11,1 4 12'),
(2, 'Ielts', 'Listening', 'Elementary', 'Intensive ielts Listening', 'intensive-ielts-listening.jpg', 'New Oriental Education', 'Bạn đang chuẩn bị cho kỳ thi của mình nhưng kỹ năng Listening đang còn kém và bạn vẫn đang loay hoay chưa biết xử lý như thế nào? Thì Intensive IELTS Listening chính là một giải pháp tuyệt vời cho bạn.\r\nLưu ý: Sách dành cho các bạn tầm band 3.5-4.0 trở lên, đã có thể nghe được để luyện đề. Đây là một cuốn luyện Listening cực hiệu quả, chắc chắn sẽ giúp bạn nâng điểm Nghe cho bạn một cách nhanh chóng.', 'https://drive.google.com/drive/u/0/folders/1XVaUZzQs7tlHWxHDURJOWXUu9IHRaMUM?fbclid=IwAR02EgX6EAIAzS', '1 3 8,1 3 11,1 3 12,1 4 8,1 4 11,1 4 12'),
(3, 'Ielts', 'Listening', 'Elementary', 'Listening Strategies for IELTS', 'Listening-Strategies-for-the-IELTS-Test 1.jpg', 'Lý Á Tân', 'Sách Listening Strategies for the IELTS Test phân chia lộ trình nghe cho người từ cơ bản đến nâng cao đều có thể nghe và bắt nhịp được với các bài nghe điều mà cô thấy tại ít cuốn sách listening khác có được.Sách phù hợp cho các bạn mới bắt đầu luyện nghe, tập luyện bài hiệu quả. Thông qua các bài nghe ngắn, đơn giản, bạn sẽ dần tăng tốc được kỹ năng của bản thân.', 'http://www.mediafire.com/file/d4lmjh3afjx2xj7/Listening_Strategies_for_IELTS.zip/file', '1 3 8,1 3 11,1 3 12,1 4 8,1 4 11,1 4 12'),
(4, 'Ielts', 'Listening', 'Elementary', 'Tactics For Listening', 'Tactics-For-Listening-Basic.jpg', 'Jack C. Richards', 'Đây là bộ sách dùng cho luyện nghe tiếng Anh nói chung nên không phân thành từng bài cụ thể như những sách IELTS khác. Nhưng các bài học được phân theo chủ đề nên các bạn dễ dàng ôn luyện cho bài thi IELTS Listening của mình.', 'http://www.mediafire.com/file/p72nbgqcl2ty76d/Basic_Tactics_for_Listening.rar/file', '1 3 8,1 3 11,1 3 12,1 4 8,1 4 11,1 4 12'),
(5, 'Ielts', 'Speaking', 'Elementary', '220 IELTS Speaking Topics', '220-ielts-speaking-topics-pdf-audio.jpg', 'Taraneh Sadeghian & Mahdieh Azaminjad', 'Đượcbiên soạn để giúp các thí sinh IELTS dễ dàng tiếp cận với các bài kiểm tra về IELTS phong phú, lấy nguồn từ các cuốn sách luyện thi IELTS khác nhau. Sách cung cấp 220 chủ đề IELTS Speaking và được sắp xếp theo thứ tự bảng chữ cái để cho phép học viên tìm chủ đề quan tâm nhanh chóng và dễ dàng.', 'https://drive.google.com/drive/u/0/folders/1LJj2j8kj79aHE6MmiN6LbSXLDIyKcSJs', '1 3 9,1 3 11,1 3 13,1 4 9,1 4 11,1 4 13'),
(6, 'Ielts', 'Speaking', 'Elementary', 'IELTS Speaking Recent Actual Tests', 'ielts-speaking-recent-aland-ielts.jpg', 'Simon Yu', 'IELTS Speaking - Recent Actual Tests & Suggested Answers cung cấp đầy đủ những kiến thức cần thiết cho kì thi IELTS môn Nói như: Kiến thức cơ bản cho bài thi Nói; Các chủ đề, câu hỏi điển hình, câu trả lời gợi ý; Các tiêu chí chấm điểm và những điều giám khảo mong đợi ở thí sinh...', 'https://drive.google.com/file/d/1YybGBS-O9FeuTk7t7Ed3aSRVZdtj8kFV/view', '1 3 9,1 3 11,1 3 13,1 4 9,1 4 11,1 4 13'),
(7, 'Ielts', 'Speaking', 'Elementary', '31 High-Scoring Formulas ', '31-high-scoring-IELTS-Speaking.jpg', 'Jonathan Palley - Adrian Li Oliver Davies', 'Cuốn sách bao gồm 3 phần, tương ứng với cả 3 part của đề thi:\r\n- Part 1: 21 cấu trúc ăn điểm trong IELTS Speaking part 1\r\n- Part 2: 4 cấu trúc ăn điểm trong IELTS Speaking part 2\r\n- Part 3: 7 cấu trúc ăn điểm trong IELTS Speaking part 3\r\n', 'https://drive.google.com/file/d/0B_jNA6aHN_YSZENXRWlxS1VZZ1E/view', '1 3 9,1 3 11,1 3 13,1 4 9,1 4 11,1 4 13'),
(8, 'Ielts', 'Speaking', 'Elementary', 'Practical IELTS Strategies ', 'Practical-IELTS-Strategies-2-IELTS-Speaking.png', 'Adrew Guiloyle', 'Bộ sách này sẽ tập trung chủ yếu vào chiến lược làm bài theo từng phần thi, dạng bài nên các bạn yên tâm là sẽ dễ dàng tiếp cận được bài học cũng như tự rèn luyện kỹ năng cho mình nhé! Tuy nhiên, sách viết bằng tiếng Anh nên phù hợp cho bạn band 4.5 trở lên nhé!', 'https://drive.google.com/file/d/151R5TGGDwPIRXfPTSAoAOjOucLoGlB9t/view', '1 3 9,1 3 11,1 3 13,1 4 9,1 4 11,1 4 13'),
(9, 'Ielts', 'Reading', 'Elementary', 'IELTS reading strategies ', 'Reading-Strategies-for-the-IELTS-Test 1.jpg', 'Trần Vệ Đông', 'Giáo trình này tổng cộng có hơn 80 bài đọc, sau khi phân tích tỉ mỉ các đề thi IELTS, chúng tôi chia các bài đọc này thành 7 phần theo các dạng đề luyện đọc: Matching the Headlings (Lắp ghép tiêu đề văn bản), Cloze (Điền ô trống), Multiple Choice (Chọn lựa nhiều mục), Summarizing (Tóm tắt), YES/ NO/ NOT GIVEN (Đúng, sai, không đề cập), Scanning for Answers (Tìm nhanh đáp án) và Integrated Exercises (Bài tập tổng hợp)', 'https://drive.google.com/file/d/1ARxCTamTjkf1As8I7EFKJd0K3BOHlOkz/view', '1 3 7,1 3 11,1 3 12,1 4 7,1 4 11,1 4 12'),
(10, 'Ielts', 'Reading', 'Elementary', 'Get ready for ielts reading', 'get-ready-for-ielts-reading.jpg', 'Els van Geyte', 'Get Ready For IELTS là một tài liệu luyện thi IELTS khá mới, nội dung khá cập nhật và là lựa chọn lý tưởng cho các bạn mới học IELTS và tự ôn IELTS ở nhà mà không đi học thêm.', 'https://drive.google.com/file/d/1F6NePlrAovlPwV9_IO_LWGquHvLoT0Cd/view', '1 3 7,1 3 11,1 3 12,1 4 7,1 4 11,1 4 12'),
(11, 'Ielts', 'Reading', 'Elementary', 'Basic ielts reading', 'Basic-IELTS-Reading.jpg', 'Zhang juan', 'Bộ sách Basic IELTS phù hợp cho những người muốn đạt được điểm số từ 4 - 5 trong kỳ thi IELTS. Đây cũng là tài liệu bổ ích dành cho học sinh trung học, sinh viên trình độ khá, và dành cho những ai muốn xây dựng một nền tảng tiếng Anh vững chắc cho mình.', 'https://drive.google.com/drive/u/0/folders/1KOOJVKLDH7CEykJkNEP8uzQXdq9Pu2CE', '1 3 7,1 3 11,1 3 12,1 4 7,1 4 11,1 4 12'),
(12, 'Ielts', 'Reading', 'Elementary', 'The best preparation for ielts', 'TBPFI_Reading.jpg', 'Young Kim', 'Học viên Anh ngữ có thể thấy bài kiểm tra Nói IELTS rất khó khăn vì nó là một sự tương tác một-một giữa một ứng cử viên và một giám khảo. Ngoài ra, ba phần trong bài kiểm tra yêu cầu ứng cử viên sử dụng một loạt các kỹ năng nói khác nhau. Hiểu được những khó khăn của người học, tôi đã cố gắng tìm ra các tài liệu thân thiện với người dùng để giúp học tiếng Anh, đặc biệt là giúp người học tiếng Anh nâng cao kỹ năng nói của họ nhanh hơn và hiệu quả hơn', 'https://drive.google.com/drive/u/0/folders/1xLqtA6A2-mFaOiWPzB7reyFCBe66SIoa', '1 3 7,1 3 11,1 3 12,1 4 7,1 4 11,1 4 12'),
(13, 'Ielts', 'Writing', 'Elementary', 'Get ready for ielts writing', 'getreadyforieltswritingalandielts.jpg', 'Fiona Aish &Jo TomLinson', 'Get Ready For IELTS là một tài liệu luyện thi IELTS khá mới, nội dung khá cập nhật và là lựa chọn lý tưởng cho các bạn mới học IELTS và tự ôn IELTS ở nhà mà không đi học thêm.', 'https://drive.google.com/file/d/1fv7LUCf9P-Tt7c5jzoMPDqv_GzI9f5h6/view', '1 3 10,1 3 11,1 3 13,1 4 10,1 4 11,1 4 13'),
(14, 'Ielts', 'Writing', 'Elementary', 'Write Right', 'ielts-write-right-0.jpg', ' Julian Charles', 'Giúp các bạn giải đáp các câu hỏi liên quan đến phần thi viết IELTS và miêu tả cách cho điểm của kì thi IELTS. Phần Band descriptors, cuốn sách sẽ đưa cho bạn một bảng band core để bạn nắm được những yêu cầu để đạt được số điểm mục tiêu của mình. Cuốn sách đưa ra các bài mẫu band 5 cùng với các bài mẫu band 7 và phân tích tại sao lại có sự chênh lệch điểm như vậy, mặc dù nội dung giống nhau đến 90%.Không chỉ chia sẻ những kiến thức đáng giá về IELTS Writing task 2, cuốn sách còn giúp bạn học và ', 'https://www.fshare.vn/file/R7FATZA7TBRO?token=1574149543', '1 3 10,1 3 11,1 3 13,1 4 10,1 4 11,1 4 13'),
(15, 'Ielts', 'Writing', 'Elementary', 'Barron Writing for IELTS', 'Barrons-Writing-for-the-IELTS.jpg', 'Lin Lougheed', 'Phải nói trước, khi bước vào tập Viết, các bạn đều phải có vốn từ vựng, ngữ pháp cơ bản đã. Nên IELTS Fighter recommened các bạn khoảng tầm band 3.0-3.5 trở lên hẵng học nhé. Như thế, các bạn sẽ bắt nhịp được hướng dẫn, tips mà làm bài Viết tốt hơn', 'https://drive.google.com/file/d/1W5VHd98mlL_aH1XSKvkp-RDOi87-c4pp/view', '1 3 10,1 3 11,1 3 13,1 4 10,1 4 11,1 4 13'),
(16, 'Ielts', 'Writing', 'Elementary', 'HIGH-SCORING IELTS WRITING ', 'High-scoringIELTSWriting.jpg', 'Wang De Fu', 'High-scoring IELTS Writing là một quyển sách rất hay. Sau mỗi bài viết band 6.5+ là các bài phân tích kèm từ vựng hoàn toàn bằng tiết Việt nên khuyến khích các bạn mới bước chân vào IELTS đang tìm các tài liệu dễ học bằng tiếng Việt nên tham khảo qua nhé', 'https://www.mediafire.com/file/3has9jfv6sez1vr/High_-_scoring_IELTS_Writing.pdf/file', '1 3 10,1 3 11,1 3 13,1 4 10,1 4 11,1 4 13'),
(17, 'Ielts', 'Listening', 'Intermediate', '15 days practice for ielts listening', '15 Days Practice for IELTS Listening.jpg', 'Xia li Ping', '15 Days’ Practice for IELTS Listening là một chương trình Anh ngữ rất hay và cần thiết đối với tất cả những ai quan tâm đến IELTS. Nó giúp bạn từng bước nâng cao khả năng nghe tiếng Anh trong vòng 15 ngày. Nó cũng gợi ý cho bạn những chiến lược cụ thể để thực hành kỹ năng nghe một cách hiệu quả nhất.', 'https://www.fshare.vn/file/H4RBWCO7NGYA?token=1574351122', '1 3 8,1 3 11,1 3 12,1 5 8,1 5 11,1 5 12'),
(18, 'Ielts', 'Listening', 'Intermediate', 'WINNING AT IELTS LISTENING ', 'img278_3.jpg', 'Li Ya Bin', 'WINNING AT IELTS LISTENING - Nghe sẽ giúp bạn cải thiện kỹ năng nghe tiếng Anh của mình. Người học có thể học từ cuốn sách không chỉ để thực hành mà còn phát triển khả năng suy nghĩ và sử dụng ngôn ngữ một cách hiệu quả. Các chủ đề trong cuốn sách rất đa dạng và phong phú trong nhiều lĩnh vực cũng như cách kích thích sự tò mò và sự tham gia của người tham gia. ', 'http://123downloadsach.pro/84052.html', '1 3 8,1 3 11,1 3 12,1 5 8,1 5 11,1 5 12'),
(19, 'Ielts', 'Listening', 'Intermediate', 'Hackers IELTS Listening', 'a3-916a8f99-cd1b-48e8-841b-06b5ffae9fc1.jpg', 'Nguyễn Thanh Tùng', 'Hackers IELTS Listening - Các bài nghe trong Hackers IELTS Listening được biên soạn dựa trên xu hướng ra đề mới nhất, các bài Actual Test cũng được biên soạn chính xác theo hình thức giống hệt đề thi thật. Vì vậy, bạn đã có đầy đủ trong tay tài liệu để có thể chuẩn bị kỹ lưỡng cho phần thi của mình', 'https://www.fshare.vn/file/H4RBWCO7NGYA?token=1574152558', '1 3 8,1 3 11,1 3 12,1 5 8,1 5 11,1 5 12'),
(20, 'Ielts', 'Listening', 'Intermediate', 'Tactics for listening developing', 'Tactics-for-listening-expand.jpg', 'Jack C.Rickchard', 'Có không ít bộ tài liệu luyện nghe IELTS để bạn lựa chọn học theo phù hợp mà trước đó IELTS Fighter có giới thiệu như Basic IELTS Listening, IELTS Stragies for IELTS test...\r\nHôm nay, có một bộ tài liệu mới đủ cấp độ từ cơ bản đến nâng cao dành cho các bạn học ngay đó là Tactics for Listening Basic - Developing - Expanding\r\n', 'https://drive.google.com/file/d/0B7U1F417pct0b3Z5bmJ1TGdnSEU/view', '1 3 8,1 3 11,1 3 12,1 5 8,1 5 11,1 5 12'),
(21, 'Ielts', 'Speaking', 'Intermediate', '15 Days Practice For IELTS Speaking', '15-days-practice-for-ielts-speaking-ebook-audio.png', 'Wang Hong Xia', '15 Days Practice for IELTS là bộ sách đặc biệt, được biên soạn với lộ trình học cụ thể theo từng ngày để các bạn nâng cao kiến thức IELTS trong vòng 15 ngày cày cuốc. Nhưng, sách phù hợp với các bạn đã ôn thi IELTS và có nền tảng nhất định là 5.0 IELTS trở lên.', 'https://drive.google.com/file/d/1WnKfPA9PpqdqPLYhkhnfBO4ft5UEEOeH/view', '1 3 9,1 3 11,1 3 13,1 5 9,1 5 11,1 5 13'),
(22, 'Ielts', 'Speaking', 'Intermediate', 'SUCCEED IN IELTS SPEAKING', 'Secceed-in-IELTS-Speaking-Vocabulary.png', 'Andrew Betsis', 'Ở phần mở đầu là giới thiệu về từng part trong IELTS Speaking, đặc biệt có những tips chỉ dẫn đi kèm giúp các bạn hiểu hơn cách để trả lời các phần thi như thế nào.\r\nPhần này có 7 Chapter trong đó 3 chap đầu dành cho 3 part rồi tổng hợp kiến thức cuối cùng là bài test đơn giản\r\n', 'https://drive.google.com/file/d/1Mo08A8CAbIb9tgH3BI4pk1sdAPSkM9M4/view', '1 3 9,1 3 11,1 3 13,1 5 9,1 5 11,1 5 13'),
(23, 'Ielts', 'Speaking', 'Intermediate', 'IELTS Speaking ', '63966674bf41541765ccccf7fda6b93c_mark-allen.jpg', 'Mark Allen', 'Chắc hẳn các bạn đều biết người Việt chúng ta thường học 2 kỹ năng reading và listening là chính, cho nên khi ôn thi IELTS có cả Speaking sẽ nhiều bạn không biết ôn luyện như thế nào để cải thiện kỹ năng speaking của bản thân và học đúng theo modul của đề thi IELTS speaking. Chính vì vậy, IELTS Speaking - Mark Allen là cuốn sách cô đánh giá rất cao bởi giúp cho người học lần đầu tìm hiểu về IELTS có thể hình dung ra kiến thức mình cần học, hiểu được đề thi speaking. Các bạn sẽ được hướng dẫn chi', 'https://drive.google.com/file/d/1E2rqhp-qyG_Ua6-oO4KxuMpAQCrUoTgT/view', '1 3 9,1 3 11,1 3 13,1 5 9,1 5 11,1 5 13'),
(24, 'Ielts', 'Speaking', 'Intermediate', 'Tips for IELTS Speaking (Target 7+) ', 'tipsforieltsspeakingalandielts.jpg', 'Adam Smith', '★ Tên cuốn sách: Tips for IELTS Speaking (Target 7+)\r\n★ Tác giả: Adam Smith\r\n★ Phù hợp cho: Band 5.5 – 6.0\r\n★ Tóm tắt: Sách mang đến cho người học một loạt thông tin về bài thi IELTS Speaking, cùng các mẹo hữu ích để vượt qua bài thi này với số điểm cao, 7.0 IELTS trở lên.\r\n★ Ưu điểm: Cuốn sách này phân tích vô cùng chi tiết và tỉ mỉ về bài thi Speaking. Cùng các Sample Answer cực hay để người học tham khảo và phát triển ý tưởng về câu trả lời của mình.\r\n', 'https://drive.google.com/file/d/18ji3nv_gV4ERJ4zhH1AssGoYC_UHEcAt/view', '1 3 9,1 3 11,1 3 13,1 5 9,1 5 11,1 5 13'),
(25, 'Ielts', 'Reading', 'Intermediate', 'Complete IELTS 6.5-7.5', 'Completeielts.jpg', 'Cambridge', 'Kết hợp tốt nhất trong thực hành lớp học hiện đại với các chủ đề kích thích nhằm vào những người trẻ tuổi muốn học đại học. Khóa học này bao gồm tất cả các phần của kỳ thi IELTS một cách chi tiết, cung cấp thông tin, lời khuyên và thực hành để đảm bảo rằng sinh viên được chuẩn bị đầy đủ cho mọi khía cạnh của kỳ thi. Được thông báo bởi Cambridge English Corpus, Complete IELTS bao gồm các ví dụ và bài tập giải quyết các vấn đề chính của IELTS, làm cho nó trở thành khóa học luyện thi IELTS có thẩm ', 'https://www.fshare.vn/file/TD33SK6UIQWZ?token=1574351924', '1 3 7,1 3 11,1 3 12,1 5 7,1 5 11,1 5 12'),
(26, 'Ielts', 'Reading', 'Intermediate', 'Collin reading for ielts', 'Reading-for-ielts-collins.jpg', 'ELS van geyte', 'Collins Reading for IELTS sẽ giúp bạn chuẩn bị bài kiểm tra IELTS Academic Reading cho dù bạn đang làm bài kiểm tra lần đầu tiên hay thi lại bài kiểm tra. Quyển sách được viết cho những người học có band điểm từ 5-5,5, những người đang cố gắng đạt được điểm số 6,5 hoặc cao hơn.', 'https://drive.google.com/drive/u/0/folders/1JYz5N4qPX5b8OQQwDGA5Jl4sHFh58b3w', '1 3 7,1 3 11,1 3 12,1 5 7,1 5 11,1 5 12'),
(27, 'Ielts', 'Reading', 'Intermediate', 'Improve Your Reading Skills', 'Improve Your Reading Skills.jpg', 'Sam McCarter Norman Whitby', 'Cải thiện kỹ năng IELTS của bạn hướng tới sinh viên giữa các nhóm 4.5 và 7.5. Bộ sách có ba khóa luyện thi, Đọc học thuật, Viết học thuật, và Nghe và Nói. Các khóa học phát triển ngôn ngữ, kỹ năng và kỹ thuật kiểm tra để giúp sinh viên đạt được điểm IELTS cao hơn. Ba cuốn sách trong bộ có thể được sử dụng cùng nhau như một khóa học hoàn chỉnh hoặc có thể được sử dụng để nhắm mục tiêu các kỹ năng cụ thể. Hoặc chúng có thể được sử dụng riêng để bổ sung cho các giáo trình khác', 'https://drive.google.com/file/d/0Bz_qyGoXgkePQ1BUbExwWWo0MEU/view', '1 3 7,1 3 11,1 3 12,1 5 7,1 5 11,1 5 12'),
(28, 'Ielts', 'Reading', 'Intermediate', 'IELTS Reading Tests (Ebook)', 'ielts reading test.jpg', 'Sam McCarter & Judith Ash', 'Cuốn sách này phù hợp cho các bạn đã có kiến thức nền cơ bản khoảng 5.0 IELTS\r\nĐây là cuốn sách cung cấp cho bạn 10 bài kiểm tra reading cùng đáp án. Mỗi bài kiểm tra có  ba đoạn văn đọc bao gồm nhiều chủ đề phong phú và các câu hỏi sử dụng bám sát theo đề thi IELTS chuẩn. Luyện bộ đề trong cuốn IELTS Reading Tests By Sam McCarter & Judith Ash (Ebook) các bạn sẽ luyện tập kỹ năng làm đề tốt nhất trước khi bước vào kỳ thi IELTS.\r\n', 'https://drive.google.com/file/d/0B42obC0zvaVudUl0cE1kcmxSRmc/view', '1 3 7,1 3 11,1 3 12,1 5 7,1 5 11,1 5 12'),
(29, 'Ielts', 'Writing', 'Intermediate', 'Improve your writing skills', 'writing-ielts.jpg', 'Sam MC  carter', 'Để học sách hiệu quả, các bạn nên dành thời gian để ôn luyện. Vì một Unit nhìn thì ngắn nhưng khi thực hành bài viết sẽ mất khá nhiều thời gian. Do đó, hãy cố gắng dành thời gian ít nhất 2 tiếng để tự học.\r\n\r\nBạn có thể học Task 1 trước rồi nếu mệt thì chia học Task 2 sang ngày khác. Nhưng tốt nhất là nên học cả 2 task để hiểu rõ hơn và áp dụng luyện đề song song hiệu quả.', 'https://drive.google.com/file/d/0Bz_qyGoXgkePbEdwSzhncWpOOVU/view', '1 3 10,1 3 11,1 3 13,1 5 10,1 5 11,1 5 13'),
(30, 'Ielts', 'Writing', 'Intermediate', 'MARVELLOUS TECHNIQUES ', 'Marvellous-Techniques-for-IELTSWriting.jpg', 'Kirk kenny', 'Đây là cuốn sách vạn năng phù hợp hầu như với tất cả mọi người. Dù các em đang ở trình độ basic hay intermediate thì cuốn sách này vẫn là sự lựa chọn hoàn hảo. Không chỉ dành cho các bạn đang miệt mài tự học IELTS mà ngay cả các thầy cô giáo đang giảng dạy IELTS cũng hoàn toàn sử dụng được cuốn sách này như một phần trong bài giảng của mình. \r\n\r\nTuy nhiên, nếu nói về đối tượng thích hợp nhất để sử dụng cuốn sách này thì đó là các bạn đang ở mức level 5 – 5.5 và muốn nâng band điểm của mình lên c', 'https://www.mediafire.com/file/x87ggmw42cab0e7/MARVELLOUS_TECHNIQUE_FOR_IELTS_WRITING.pdf/file', '1 3 10,1 3 11,1 3 13,1 5 10,1 5 11,1 5 13'),
(31, 'Ielts', 'Writing', 'Intermediate', '15 Days’ Practice for IELTS Writing', '15-day-for-ielts-writing-aland-ielts.jpg', 'Wang hong xia', '15 Days Practice for IELTS là bộ sách đặc biệt, được biên soạn với lộ trình học cụ thể theo từng ngày để các bạn nâng cao kiến thức IELTS trong vòng 15 ngày cày cuốc. Nhưng, sách phù hợp với các bạn đã ôn thi IELTS và có nền tảng nhất định là 5.0 IELTS trở lên.', 'https://drive.google.com/drive/u/0/folders/0Bz_qyGoXgkePQ2cwZzNhQktaQ3c', '1 3 10,1 3 11,1 3 13,1 5 10,1 5 11,1 5 13'),
(32, 'Ielts', 'Writing', 'Intermediate', 'Academic Writing for IELTS ', 'bia-sach-Academic-Writing-Practice-for-ielts.jpg', 'Sam McCarter', 'Thực hành Viết học thuật cho IELTS dành cho sinh viên chuẩn bị cho Bài kiểm tra Viết trong Mô-đun học thuật của Hệ thống kiểm tra tiếng Anh quốc tế (IELTS), được quản lý bởi Hội đồng Anh, Đại học Cambridge tại Đại học Cambridge (UCLES) và IELTS Australia. Cuốn sách này nhằm vào những ứng cử viên nhằm đạt được Điểm số từ 6 trở lên trong thành phần Viết học thuật trong IELTS.\r\n', 'https://drive.google.com/file/d/1UNKB4YtMbCvCJkR6V3mYLWusqbSqCwzz/view', '1 3 10,1 3 11,1 3 13,1 5 10,1 5 11,1 5 13'),
(33, 'Ielts', 'Listening', 'Advanced', 'Listening recent actual test', 'IELTS Recent Actual Listening Test Vol 4 - ielts fighter.png', 'Internation group', 'IELTS Listening Recent Actual Test With Answers (Vol 4) là 1 trong những tựa sách hàng đầu từ NXB New Channel International Education Group dành cho dân học IELTS, download trọn bộ hoàn toàn miễn phí tại thư viện sách ALT.', 'https://drive.google.com/drive/u/0/folders/1lTOv6QJu66hk7lNpsecb3URjoraStXJL', '1 3 8,1 3 11,1 3 12,1 6 8,1 6 11,1 6 12'),
(34, 'Ielts', 'Speaking', 'Advanced', 'Tips for IELTS Speaking (Target 7+)', 'tipsforieltsspeakingalandielts.jpg', 'Adam Smith', '★ Tên cuốn sách: Tips for IELTS Speaking (Target 7+)\r\n★ Tác giả: Adam Smith\r\n★ Phù hợp cho: Band 5.5 – 6.0\r\n★ Tóm tắt: Sách mang đến cho người học một loạt thông tin về bài thi IELTS Speaking, cùng các mẹo hữu ích để vượt qua bài thi này với số điểm cao, 7.0 IELTS trở lên.\r\n★ Ưu điểm: Cuốn sách này phân tích vô cùng chi tiết và tỉ mỉ về bài thi Speaking. Cùng các Sample Answer cực hay để người học tham khảo và phát triển ý tưởng về câu trả lời của mình.\r\n', 'https://drive.google.com/file/d/18ji3nv_gV4ERJ4zhH1AssGoYC_UHEcAt/view', '1 3 9,1 3 11,1 3 13,1 6 9,1 6 11,1 6 13'),
(35, 'Ielts', 'Speaking', 'Advanced', ' 40 IELTS Speaking Tips', 'Ieltsmaterial.com-40-ielts-speaking-part-2-tips-questions-and-aband-9-answers.png', 'Simon', 'Có lẽ, nhiều bạn đã biết đến thầy Simon, thầy nổi tiếng về phong cách diễn đạt ngôn từ và hướng tư duy ý tưởng rất hay và sáng tạo, phong cách Speaking của thầy được đánh giá dễ hiểu, rõ ràng và mạch lạc.\r\n\r\nNhiều bạn khi luyện speaking luôn nghĩ rằng mình phải có ý tưởng thật cao siêu, hay sử dụng từ vựng khó /cấu trúc tiếng Anh thật phức tạp để ghi điểm nhưng thực chất việc tư duy đơn giản, rõ ràng sẽ giúp các bạn giải quyết vấn đề làm sao có ý tưởng cũng như làm sao để sắp xếp ý tưởng một các', 'https://drive.google.com/file/d/0B7PqGrg9aj4ybmh3Sm42NmxhZnM/edit', '1 3 9,1 3 11,1 3 13,1 6 9,1 6 11,1 6 13'),
(36, 'Ielts', 'Speaking', 'Advanced', 'IELTS Speaking ', 'mat-clark-ielts-speaking-1-638.jpg', 'Mat Clark', 'Khi nhắc tới sách IELTS Speaking chắc chắn Mat clark IELTS speaking là cuốn sách không thể không nói tới!\r\nBởi đây là Mat clark IELTS speaking sẽ đem đến cho các bạn cái nhìn tổng quan về phần thi IELTS speaking, giải thích cặn kẽ tầm quan trọng của sự khác biệt văn hóa trong cách nói, cách dùng ngôn từ, khẩu âm dẫn đến những khó khăn cốt lõi của việc học tiếng Anh\r\n', 'https://drive.google.com/file/d/0BzMJh9__cGrANjVPMmc0d05LRTg/view', '1 3 9,1 3 11,1 3 13,1 6 9,1 6 11,1 6 13'),
(37, 'Ielts', 'Speaking', 'Advanced', 'Speaking for IELTS – Collins', 'Collins-speaking-for-ielts-.jpg', 'Karen kovacs', 'Bộ sách Collins Speaking For IELTS By Karen Kovacs (Ebook & Audio) dành cho các bạn nào đang luyện thi IELTS ở trình độ 5.0 – 5.5 muốn nâng cao kiến thức tiếng Anh của bản thân tầm 6.5 – 7.0 . Speaking for IELTS được chia làm 12 bài học. Mỗi bài sẽ tập trung vào một chủ đề đáp ứng chủ đề có thể xuất hiện trong kỳ thi IELTS. VỚi cách này sẽ giúp bạn học từng từ ý tưởng lên quan đến các chủ đề.\r\n', 'https://drive.google.com/file/d/1cEdHDf2XUkfhaaOwKKUmxesWbhiXoU4C/view', '1 3 9,1 3 11,1 3 13,1 6 9,1 6 11,1 6 13'),
(38, 'Ielts', 'Reading', 'Advanced', 'Reading Comprehension Skills ', 'Pages-from-Reading-Comprehension-Skills-and-Strategies-level-8_Part1.jpg', 'Sanddle Back', 'Giới thiệu bộ Reading Comprehension Skills and Strategies\r\nBộ sách được phân chia level từ 3-8, giúp các bạn lựa chọn mức band điểm phù hợp với bản thân. Dù là bắt đầu hay mong muốn tăng điểm cao trong Reading thì đều nên tham khảo những cuốn sách này\r\n', 'https://drive.google.com/file/d/0B7PqGrg9aj4ySVNXa3ZhWTM0Nkk/view', '1 3 7,1 3 11,1 3 12,1 6 7,1 6 11,1 6 12'),
(39, 'Ielts', 'Reading', 'Advanced', 'A book for ielts', 'bia-sach-a-book-for-ielts.jpg', 'MC carter', 'Sách dành cho IELTS là một ấn phẩm tự học với hai đĩa CD dành cho sinh viên chuẩn bị cho Mô-đun học thuật của Hệ thống kiểm tra tiếng Anh quốc tế (IELTS) do Hội đồng Anh, Đại học Cambridge khảo sát địa phương (UCLES) quản lý IELTS Úc.', 'https://drive.google.com/drive/folders/1IVZ-Vv-DHBpfQArHEaZWKVLzqqFQCwJ6', '1 3 7,1 3 11,1 3 12,1 6 7,1 6 11,1 6 12'),
(40, 'Ielts', 'Reading', 'Advanced', 'IELTS Advantage – Reading Skills', 'ielts advantage reading.jpg', 'Jeremy Taylor', 'Lợi thế về IELTS: Kỹ năng đọc là một nguồn tài nguyên toàn diện để vượt qua bài kiểm tra đọc IELTS học thuật với điểm từ 6.5 .77.0 trở lên. Những sinh viên đang làm bài kiểm tra IELTS chung cũng có thể được hưởng lợi từ cuốn sách. Cuốn sách này dạy một loạt các chiến lược chính để đọc hiệu quả hơn và hiểu văn bản dễ dàng hơn, chẳng hạn như đọc lướt, quét và đọc tốc độ, giúp học sinh có kết quả tốt hơn trong bài Đọc.', 'https://drive.google.com/file/d/1YgaFb1IXt5euZYpRNhwuAZOyBCySy8-V/view', '1 3 7,1 3 11,1 3 12,1 6 7,1 6 11,1 6 12'),
(41, 'Ielts', 'Reading', 'Advanced', 'IELTS Reading Recent Actual Test', 'IELTS-Reading-Recent-Actual-Tests-Vol-5.png', 'Skt', 'Sách Phù hợp cho các bạn đang lên kế hoạch luyện đề IELTS để nắm rõ cấu trúc đề thi reading và rèn luyện kiến thức đã học được tốt nhất. \r\nNghĩa là khoảng band 4.0-5.0 nhé. Vì đây là sách luyện đề mà.\r\nĐây là cuốn sách tổng hợp đề thi IELTS reading thật, nên sẽ không phù hợp với những bạn mất gốc bắt đầu ôn thi IELTS ngay lập tức sử dụng tài liệu để ôn tập\r\n', 'https://drive.google.com/drive/folders/1g1jyPTZ0zNpX6JI06E9_OovuMKJBCD1l', '1 3 7,1 3 11,1 3 12,1 6 7,1 6 11,1 6 12'),
(44, 'Ielts', 'Writing', 'Advanced', 'A Solution to score 8.0', 'solution to score 8.0.png', 'Rekkles', 'Dựa trên kinh nghiệm làm giáo viên dạy viết IELTS và nhà văn chuyên nghiệp, tôi đã thu thập được nhiều tài liệu viết chân thực từ các trung tâm kiểm tra và các phương tiện truyền thông khác. Cuốn sách này là kết quả của sự kết hợp giữa hai năm kinh nghiệm giảng dạy và nghiên cứu các kỹ năng viết IELTS, được xây dựng dựa trên nhiều giờ đồng hồ tạo ra các mẫu viết gốc cho các sinh viên chuẩn bị làm bài kiểm tra IELTS. Cuốn sách này đã được phát triển để sử dụng trong lớp học và để tự học', 'https://www.mediafire.com/file/bwwgpmn68c3kcls/A_Solution_to_score_8.0.pdf/file', '1 3 10,1 3 11,1 3 13,1 6 10,1 6 11,1 6 13'),
(45, 'Ielts', 'Writing', 'Advanced', 'IELTS Advantage Writing skills', 'ielts-advantage-writing-skills-1-638.jpg', 'Richard Brown', 'Sách hướng dẫn cách để chuẩn bị và viết 1 bài IELTS Writing Task 1 ( Academic Module) hoàn chỉnh và hiệu quả. Không giống như Task 2, theo nhiều cách nhìn nhận thì Task 1 tương đối phức tạp hơn', 'https://drive.google.com/file/d/1FjIRwjF-kjItsYedlfnMsi9sULiDCrql/view', '1 3 10,1 3 11,1 3 13,1 6 10,1 6 11,1 6 13'),
(46, 'Ielts', 'Writing', 'Advanced', 'IELTS Ryan ', 'ielts ryan.jpg', 'Ryan', 'Cuốn sách này đã được viết để cung cấp cho sinh viên IELTS một bản tóm tắt ngắn gọn về cách viết một bài luận hiệu quả trong phần Nhiệm vụ 2 của các kỳ thi IELTS Học thuật và Tổng quát . Hy vọng rằng cuốn sách này hoạt động như một phần bổ sung cho các tiết mục viết tài nguyên IELTS của sinh viên chứ không phải là nguồn hướng dẫn duy nhất của sinh viên cho các nghiên cứu của họ trong việc viết bài luận', 'http://www.mediafire.com/file/09cd1u8lnn4hll3/ielts_academic_and_general_task_2_-_how_to_write_at_a_', '1 3 10,1 3 11,1 3 13,1 6 10,1 6 11,1 6 13'),
(47, 'Toeic', 'Listening', 'Elementary', 'Tactics For Listening', 'Tactics-For-Listening-Basic.jpg', 'Jack C. Richards', '•	Basic Tactics for Listening: Sách luyện nghe cơ bản, dành cho người mất gốc hoặc mới bắt đầu (~ Band 1.0 trở lên)•	Basic Tactics for Listening: Sách luyện nghe cơ bản, dành cho người mất gốc hoặc mới bắt đầu (~ Band 1.0 trở lên)', 'http://www.mediafire.com/file/p72nbgqcl2ty76d/Basic_Tactics_for_Listening.rar/file', '2 3 8,2 3 12,2 4 8,2 4 12'),
(48, 'Toeic', 'Listening', 'Elementary', 'Economy TOEIC', 'NewEconomyTOEIC_LC_2018.jpg', 'Lim jung Sub', 'Nhiều người sẽ tự hỏi,điểm gì khác biệt giữa Longman và Economy .Khi học hai bộ sách này,có người cho rằng Economy hơn về các từ kinh tế.Thực ra hai bộ sách không có sự khác biệt,đều tuyển tập các đề thi giúp bạn luyện tập.TOEIC thường ra các chủ đề liên quan đến cuộc sống hàng ngày,công việc ,vui chơi,giải trí ,du lịch…. tất nhiên đều liên quan tới kinh tế như công việc công ty,giao dich ngân hàng..Sách này làm tăng cơ hội luyện tập cho bạn với các dạng đề thi thực tế của New TOEIC.Sách bao gồm', 'https://docs.google.com/document/d/1K0d73NEAigyi9vhP7REGc2HfGq0ctcRl7F0CXco911c/edit', '2 3 8,2 3 12,2 4 8,2 4 12'),
(49, 'Toeic', 'Listening', 'Elementary', 'Hackers TOEIC', 'HackersTOEIC_Listen.jpg', 'David cho', 'Sách luyện thi toeic Hacker TOEIC Reading là cuốn sách toeic hot nhất trên thị trường hiện nay do tác giả David Cho biên soạn . Điểm đặc biệt ,đây là cuốn sách luyện thi TOEIC hiếm hoi được viết bởi người Mỹ bản ngữ thay vì các tác giả Hàn Quốc như hầu hết các sách luyện thi TOEIC trên thị trường Việt Nam. Sách tập trung chú trọng vào luyện kiến thức,kỹ năng chứ ko phải là sách luyện đề thi toeic như Economy , Jim hay Longman.', 'https://drive.google.com/file/d/1mjVG7Db4tLa0EA6RijS83JgAuJA3lrSd/view', '2 3 8,2 3 12,2 4 8,2 4 12'),
(50, 'Toeic', 'Listening', 'Elementary', 'Toeic Icon LC Basic ', 'TOEIC-ICON-213x300.jpg', 'Vũ Hoàng Đạt', 'Sách Toeic Icon LC Basic được biên soạn cho đối tượng bắt đầu làm quen với bài thi Toeic. Sách bắt đầu từ những điều cơ bản nhất nhưng cực kỳ hữu ích đối với các bạn đang luyện thi Toeic.\r\nKhuyên dùng : Dành cho các bạn mới bắt đầu học tiếng anh hoặc có điểm thi TOEIC dưới 350 điểm.\r\n', 'https://drive.google.com/file/d/0Bz28czj7dr8YRmZKUHFGQTNYRmM/view', '2 3 8,2 3 12,2 4 8,2 4 12'),
(51, 'Toeic', 'Reading', 'Elementary', 'Abc toeic reading ', 'abc-toeic-reading-212x300.jpg', 'Park Hye Yoeng', 'ABC TOEIC Reading Hiểu đã được thiết kế cẩn thận để đáp ứng nhu cầu của bạn. Cuốn sách được chia thành hai phần. Phần 1 bao gồm 12 chương tập trung vào các cấu trúc ngữ pháp cơ bản và từ vựng thường thấy trong TOEIC. Bạn chắc chắn sẽ thấy phần này thực sự hữu ích, không chỉ cho tiếng Anh nói chung mà còn cho việc đào tạo TOEIC của bạn. Phần 2 trình bày các loại câu hỏi và loại văn bản điển hình được đưa ra nhiều nhất trong bài kiểm tra TOEIC. Điều quan trọng, các mẹo làm bài kiểm tra thực tế cộn', 'https://drive.google.com/file/d/152tf0_sfhIsanjvsrBb_VOdjOcU63A7i/view', '2 3 7,2 3 12,2 4 7,2 4 12'),
(52, 'Toeic', 'Reading', 'Elementary', 'ETS toeic 2018 RC ', 'ETS-TOEIC_TEST.jpg', 'Adrew Guiloyle', 'ETS: viết tắt Educational Testing Service (Viện Khảo thí giáo dục Hoa Kỳ) là tổ chức giáo dục phi lợi nhuận hoạt động vì sự tiến bộ và công bằng giáo dục thông qua việc nghiên cứu và biên soạn các chương trình kiểm tra, đánh giá ngôn ngữ với quy mô lớn, trong đó có các bài thi được chấp nhận rộng rãi trên toàn thế giới như TOEFL, TOEIC, GRE, SAT. Chính vì vậy, bộ sách ETS TOEIC phát hành chắc chắn là những tài liệu chất lượng để bạn có bộ đề thi TOEIC tốt nhất!', 'https://drive.google.com/file/d/1W6_U5NGnQZvbsUB38uTQc40UoyueOb3B/view', '2 3 7,2 3 12,2 4 7,2 4 12'),
(53, 'Toeic', 'Reading', 'Elementary', 'Economy reading ', 'toeic-1538005371_new-format-economy-toeic-rc-2019.png', 'David Seena', 'Sách được biên soạn dành cho full cấp độ từ cơ bản tới nâng cao, cấp độ của Economy TOEIC được sắp xếp theo độ khó tăng dần từ Vol 1 tới Vol 5. \r\nVới mỗi Vol sẽ gồm 2 cuốn là Economy TOEIC LC 1000 ( PDF + audio) và Economy TOEIC RC (PDF)  để giúp các bạn luyện full kĩ năng nghe và đọc cho các bạn. Ở Vol thấp bản nghe sẽ được đọc chậm hơn và rõ hơn để các  bạn làm quen dần.\r\nCác Vol level cao hơn, mức độ khó của bài đọc cũng như mức độ khó của các bài nhe (tốc độ đọc, đa dạng giọng đọc) tăng lên.', 'https://drive.google.com/file/d/1-yjn-LlfkcjdGc0X1Dvaz7UFNo6PuZ4O/view', '2 3 7,2 3 12,2 4 7,2 4 12'),
(54, 'Toeic', 'Listening', 'Intermediate', 'Tactics For Listening Developing', 'Tactics-for-listening-expand.jpg', ' Jack C.Richards', 'Chiến thuật nghe phiên bản thứ ba là một khóa học nghe giàu hoạt động với sự thành công đã được chứng minh trong việc xây dựng các kỹ năng nghe và trò chuyện. Bây giờ với Tactics for tests, nó cung cấp rất nhiều thực hành về kiểm tra và kỹ thuật thi. Kết quả là người nghe tự tin - và kỳ thi thành công.\r\n\r\nKhóa học nghe tiếng Anh Mỹ ba cấp độ này sử dụng các đoạn ngắn và các hoạt động thực tế, có liên quan để thu hút và thúc đẩy sinh viên.\r\n', 'https://drive.google.com/file/d/0B7U1F417pct0b3Z5bmJ1TGdnSEU/view', '2 3 8,2 3 12,2 5 8,2 5 12'),
(55, 'Toeic', 'Listening', 'Intermediate', 'Listening Carefully', 'Listen-carefully-Luyen-ky-nang-nghe-tieng-anh-500x554.jpg', 'Jack C.Richards', 'Chiến thuật nghe phiên bản thứ ba là một khóa học nghe giàu hoạt động với sự thành công đã được chứng minh trong việc xây dựng các kỹ năng nghe và trò chuyện. Bây giờ với Tactics for tests, nó cung cấp rất nhiều thực hành về kiểm tra và kỹ thuật thi. Kết quả là người nghe tự tin - và kỳ thi thành công.\r\n\r\nKhóa học nghe tiếng Anh Mỹ ba cấp độ này sử dụng các đoạn ngắn và các hoạt động thực tế, có liên quan để thu hút và thúc đẩy sinh viên.\r\n', 'http://www.mediafire.com/file/wd1qk8r68525bb6/Listen%252BCarefully%252B%2528book%2529.pdf/file', '2 3 8,2 3 12,2 5 8,2 5 12'),
(56, 'Toeic', 'Listening', 'Intermediate', 'Tomato TOEIC compact part 1&2', 'tomato compact.jpg', 'Kim Jyoen', 'Giáo trình Tomato này đã được các giáo viên dạy TOEIC và giáo viên người bản ngữ có chuyên môn đóng góp xây dựng và hoàn thành một cách hoàn chỉnh nhằm giúp bạn đạt được điểm số mong muốn. Các tác giả đã cất công dự thi TOEIC và tiến hành nghiên cứu những câu hỏi sát với thực tế để đúc kết những chiến thuật làm bài thi hiệu quả nhất dành cho các bạn.', 'https://drive.google.com/file/d/1C-N9jij3M_Wv9ctcR2ua4w-dyRL0N0OJ/view', '2 3 8,2 3 12,2 5 8,2 5 12'),
(57, 'Toeic', 'Listening', 'Intermediate', 'ETS toeic 2018 LC', 'ETS-TOEIC-2018-LC-1000-full-New-format-1.png', 'Adrew Guiloyle', 'Cuốn sách ETS TOEIC 2018 phiên bản 2018 không dành cho các bạn mới bắt đầu luyện thi TOEIC. Toàn bộ 5 đề trong cuốn sách khá sát với đề thi thật cả về độ dài và độ khó, được biên soạn theo cấu trúc đề thi mới. Như vậy, với các bạn đã hoàn thành xong bước chuẩn bị kiến thức cơ bản và bước vào giai đoạn luyện đề, đây sẽ là một tài liệu vô cùng giá trị đồng hành cùng các bạn.\r\nCuốn sách phù hợp với các bạn có target 600+, tuy nhiên các bạn có target thấp hơn một chút cũng hoàn toàn có thể tận dụng ', 'https://drive.google.com/file/d/1ZrC4CtZnlxHeSxGSeSeF9FCcg5Tth1mN/view', '2 3 8,2 3 12,2 5 8,2 5 12'),
(58, 'Toeic', 'Reading', 'Intermediate', 'Jim’s Toeic 1000 Reading Comprehension ', '1000 reading comprehension.jpg', 'Jim Lee', 'Bộ sách này gồm 2 cuốn 1000 Listening Comprehension Practice Test Items for the New TOEIC Test và 1000 Reading Comprehension Practice Test Items for the New TOEIC Test.\r\n2 cuốn này có độ khó tương đương đề thi thật và đặc biệt là bộ từ vựng, các tình huống, dạng ngữ pháp, độ dài các câu hỏi gần giống như 1 đề thi TOEIC thật.\r\nJim’s Toeic là bộ tài liệu luyện thi Toeic giống cấu trúc của các bộ Economy Toeic hay ETS Toeic Test, chỉ bao gồm các đề làm bài đơn thuần.', 'https://drive.google.com/file/d/19ccg2YNY36kqhPEWtOSNPBDvKD62V9-3/view', '2 3 7,2 3 12,2 5 7,2 5 12'),
(59, 'Toeic', 'Reading', 'Intermediate', 'Tomato TOEIC compact part 3&4', 'TomatoTOEIC_CompactPart34-cover.jpg', 'Kim Jyoen', 'Giáo trình Tomato này đã được các giáo viên dạy TOEIC và giáo viên người bản ngữ có chuyên môn đóng góp xây dựng và hoàn thành một cách hoàn chỉnh nhằm giúp bạn đạt được điểm số mong muốn. Các tác giả đã cất công dự thi TOEIC và tiến hành nghiên cứu những câu hỏi sát với thực tế để đúc kết những chiến thuật làm bài thi hiệu quả nhất dành cho các bạn.', 'https://drive.google.com/file/d/1RiHJNp7bfiT791FyxxSlXKoEmPy9Od9L/view', '2 3 7,2 3 12,2 5 7,2 5 12'),
(60, 'Toeic', 'Reading', 'Intermediate', 'Big Step Toeic past 2 ', 'big step toeic  2.jpg', 'Kim Soyeong và Park Won', 'Điểm mạnh của cuốn Big Step TOEIC 2 chính là phần LC và RC được cấu thành một tài liệu duy nhất để giải thích nội dung giống nhau,  giúp người mới học có thể dễ dàng tiếp cận TOEIC. LC sẽ nhắm đến giải quyết từng dạng câu hỏi tương ứng với part 1,2,3,4 của đề thi, trong khi đó RC sẽ giúp học viên củng cố ngữ pháp và tập trung phần khó nhất của đề thi TOEIC là part 7. Ngoài ra còn có các phần phân tích bài thi thật rất thực tế.', 'https://drive.google.com/file/d/0B80lJiVt_aKzRkY0SWw0ZmJGNGc/view', '2 3 7,2 3 12,2 5 7,2 5 12'),
(61, 'Toeic', 'Reading', 'Intermediate', 'Finish toeic 1000 rc ', 'Finish-Toeic-1000-RC-214x300.jpg', 'Jully A', 'Cuốn Finish TOEIC 1000 RC giúp bạn nắm rõ hơn cấu trúc đề thi, thói quen ra đề, củng cố và học thêm nhiều từ vựng mới. Cuốn sách này đặc biệt thích hợp với các bạn chuẩn bị bước vào kì thi TOEIC với các bài test TOEIC Reading gồm 100 câu thuộc part 5, 6, 7.\r\nHãy luyện tập thật nhiều để rút ra những kinh nghiệm của bản thân trước kì thi TOEIC.\r\n', 'https://drive.google.com/file/d/0Bz28czj7dr8YWlNPb0xCMGZZZUk/view', '2 3 7,2 3 12,2 5 7,2 5 12'),
(62, 'Toeic', 'Listening', 'Advanced', 'Tactics For Listening Expanding', 'tactics for listening expanding.jpg', 'Jack C.Richards', 'Chiến thuật nghe phiên bản thứ ba là một khóa học nghe giàu hoạt động với sự thành công đã được chứng minh trong việc xây dựng các kỹ năng nghe và trò chuyện. Bây giờ với Tactics for tests, nó cung cấp rất nhiều thực hành về kiểm tra và kỹ thuật thi. Kết quả là người nghe tự tin - và kỳ thi thành công.\r\n\r\nKhóa học nghe tiếng Anh Mỹ ba cấp độ này sử dụng các đoạn ngắn và các hoạt động thực tế, có liên quan để thu hút và thúc đẩy sinh viên.\r\n', 'https://drive.google.com/file/d/0B7U1F417pct0OW9xUkVwNW5YT2s/view', '2 3 8,2 3 12,2 6 8,2 6 12'),
(63, 'Toeic', 'Listening', 'Advanced', '1000 LISTENING COMPREHENSION ', 'Jim1000-Listening.jpg', 'Jack C.Richards', 'Bộ sách này gồm 2 cuốn 1000 Listening Comprehension Practice Test Items for the New TOEIC Test và 1000 Reading Comprehension Practice Test Items for the New TOEIC Test.\r\n2 cuốn này có độ khó tương đương đề thi thật và đặc biệt là bộ từ vựng, các tình huống, dạng ngữ pháp, độ dài các câu hỏi gần giống như 1 đề thi TOEIC thật.\r\n', 'https://www.fshare.vn/file/O5C32RDB6ONW?token=1574324278', '2 3 8,2 3 12,2 6 8,2 6 12'),
(64, 'Toeic', 'Listening', 'Advanced', 'Tomato TOEIC compact part 3&4', 'TomatoTOEIC_CompactPart34-cover.jpg', 'Kim Jyoen', 'Giáo trình Tomato này đã được các giáo viên dạy TOEIC và giáo viên người bản ngữ có chuyên môn đóng góp xây dựng và hoàn thành một cách hoàn chỉnh nhằm giúp bạn đạt được điểm số mong muốn. Các tác giả đã cất công dự thi TOEIC và tiến hành nghiên cứu những câu hỏi sát với thực tế để đúc kết những chiến thuật làm bài thi hiệu quả nhất dành cho các bạn\r\n', 'https://drive.google.com/file/d/1un780J_pqLH9o8FSRNmTzsmvFHzlcgO8/view', '2 3 8,2 3 12,2 6 8,2 6 12'),
(65, 'Toeic', 'Listening', 'Advanced', 'Tomato Compact Part 5 & 6', 'TomatoTOEIC_CompactPart56.jpg', 'Kim Jyoen', 'Giáo trình Tomato này đã được các giáo viên dạy TOEIC và giáo viên người bản ngữ có chuyên môn đóng góp xây dựng và hoàn thành một cách hoàn chỉnh nhằm giúp bạn đạt được điểm số mong muốn. Các tác giả đã cất công dự thi TOEIC và tiến hành nghiên cứu những câu hỏi sát với thực tế để đúc kết những chiến thuật làm bài thi hiệu quả nhất dành cho các bạn', 'https://drive.google.com/open?id=0BwKOvq_5jx76X3hzUGdWN2NScWc', '2 3 8,2 3 12,2 6 8,2 6 12'),
(66, 'Toeic', 'Reading', 'Advanced', '600 Essential Words For The TOEIC ', '600 essential words.jpg', 'Piglet', '600 ESSENTIAL WORDS FOR THE TOEIC TEST, không cần giới thiệu quá nhiều, tiêu đề của cuốn sách đã nói lên mục tiêu mà các học viên sẽ đạt được qua cuốn sách này. Cuốn sách được biên soạn bởi Barrons Educational Series sẽ cung cấp những vốn từ cần thiết nhất dành cho các học viên ôn, luyện thi TOEIC.\r\nVới mục tiêu như vậy, đối tượng nhắm tới của tài liệu này trải dài từ những người mới bắt đầu đến cả những người đã có trình độ mức khá. Bất kể là trình độ nào thì sự làm giàu về vốn từ cho bản thân ', 'https://drive.google.com/file/d/0B80lJiVt_aKzVU5vQVJvbDVwV2c/view', '2 3 7,2 3 12,2 6 7,2 6 12'),
(67, 'Toeic', 'Reading', 'Advanced', 'Big Step Toeic past3', 'alt-Big-step-TOEIC-3.jpg', 'Kim Soyeong và Park Won', 'Bộ sách Big Step TOEIC được săn lùng nhiều nhất vì nội dung được thiết kế phù hợp với các bạn học từ trình độ sơ cấp đến trung cấp và cao cấp.\r\nBộ sách giúp người học nâng cao khả năng ngôn ngữ và cải thiện điểm số TOEIC theo từng level từ thấp đến cao\r\n', 'https://drive.google.com/file/d/0B80lJiVt_aKzdDcwdHRqRHBZa3M/view', '2 3 7,2 3 12,2 6 7,2 6 12');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ID` int(11) NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Answer1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Answer2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Answer3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Answer4` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Answer5` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Answer6` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Answer7` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ID`, `Description`, `Answer1`, `Answer2`, `Answer3`, `Answer4`, `Answer5`, `Answer6`, `Answer7`) VALUES
(1, 'Bạn muốn tài liệu nào ?', 'Toeic ', 'Ielts', '', '', '', '', ''),
(2, 'Trình độ hiện tại của bạn ?', 'Tất cả trình độ', 'Người mới bắt đầu', 'Trung cấp', 'Cao cấp', '', '', ''),
(3, 'Bạn muốn tài liệu cho kĩ năng nào ?', 'Đọc', 'Nghe', 'Nói', 'Viết', '4 kĩ năng', 'Đọc và nghe', 'Nói và viết');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `ID` int(11) NOT NULL,
  `Array` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Result` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`ID`, `Array`, `Result`) VALUES
(1, '1 3 7 ', ''),
(2, '1 3 8', ''),
(3, '1 3 9', ''),
(4, '1 3 10', ''),
(5, '1 3 11', ''),
(6, '1 3 12 ', ''),
(7, '1 3 13', ''),
(8, '1 4 7', ''),
(9, '1 4 8', ''),
(10, '1 4 9', ''),
(11, '1 4 10', ''),
(12, '1 4 11', ''),
(14, '1 4 12', ''),
(15, '1 4 13', ''),
(17, '1 5 7', ''),
(18, '1 5 8', ''),
(19, '1 5 9', ''),
(20, '1 5 10', ''),
(21, '1 5 11', ''),
(22, '1 5 12', ''),
(23, '1 5 13', ''),
(25, '1 6 7', ''),
(26, '1 6 8', ''),
(27, '1 6 9', ''),
(28, '1 6 10', ''),
(29, '1 6 11', ''),
(30, '1 6 12', ''),
(31, '1 6 13', ''),
(33, '2 3 7', ''),
(34, '2 3 8', ''),
(35, '2 3 12', ''),
(36, '2 4 7', ''),
(37, '2 4 8', ''),
(38, '2 4 12', ''),
(39, '2 5 7', ''),
(40, '2 5 8', ''),
(41, '2 5 12', ''),
(42, '2 6 7', ''),
(43, '2 6 8', ''),
(44, '2 6 12', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
