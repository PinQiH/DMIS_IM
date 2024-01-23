-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Dec 05, 2023, 06:16 AM
-- 伺服器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 資料庫: `ccc`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `announcements`
-- 

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publish_date` date default NULL,
  `issuing_unit` varchar(255) default NULL,
  `expiration_date` date default NULL,
  `category` varchar(255) default NULL,
  `content` text,
  `related_url` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `announcements`
-- 

INSERT INTO `announcements` VALUES (1, '轉知-海聯會113學年度辦理國內大學畢業之僑生及港澳生申請碩、博士班招生資訊事宜。', '2023-10-31', '教務處綜合業務組　張憶君', '2023-12-15', '招生資訊', '一、海聯會113學年度辦理皆揭入學管道，報名日期自112年11月1日至112年12月15日截止。 二、海聯會為擴大招生生源，預計於報名期間辦理研究所線上升學講座，學生可於112年11月10日中午12點前填寫意願問卷(網址:https://lurl.cc/zhX0LR) 三、招生簡章、校系規定及名額可至本會網站下載、查詢(http://www.overseas.ncnu.edu.tw)', 'http://www.overseas.ncnu.edu.tw');
INSERT INTO `announcements` VALUES (2, '公告本校113學年度碩士班甄試入學招生簡章暨說明會資訊，歡迎踴躍報名。', '2023-10-27', '教務處綜合業務組　洪瑋君', '2023-12-31', '招生資訊', '一、本次招生無販售紙本簡章，請自行網路下載(可點選本公告參考網址進入)。 二、招生系所別：財務金融系理財與稅務管理碩士班。 三、招生名額、報考資格、報名事項及其他相關事項，請詳閱招生簡章。 四、報名日期：一律採網路報名，自112年11月16日(星期四)10:00起至112年12月15日(星期五)16:00止，報名資料以限時掛號郵寄、快遞或親送方式送達本校教務處綜合業務組，請於112年12月15日前寄達(以郵戳為憑)，逾時不受理。 五、口試日期：112年12月23日(星期六)。 六、本校於112年11月22日(星期三)18:30-19:30辦理碩士暨碩專班入學招生說明會，採網路報名(網址：https://forms.gle/auvmFyEijRjiTfJh9)，報名至112年11月20日(星期一)截止。 七、聯絡電話：本校教務處綜合業務組02-2658-5801分機2121~2127。', 'https://recruit.takming.edu.tw/p/404-1002-3514.php');
INSERT INTO `announcements` VALUES (3, '113學年度&#8203;``【oaicite:0】``&#8203;報名、考試日期及相關注意事項。', '2023-10-26', '教務處綜合業務組　孫銘襄', '2024-05-31', '招生資訊', '一、二技統一入學測驗由「財團法人技專校院入學測驗中心基金會」辦理，报名期间：112年11月28日(星期二)上午9时起至112年12月5日(星期二)下午5时止；考试日期：113年4月28日(星期日)。 二、113学年度二技统一入学测验简章预订于112年10月30日(星期一)于该中心基金会网站(https://www.tcte.edu.tw)公告，考试简章内含有关之试务时程、作业规定及试场规则等事项，请考生务必详阅简章。 三、本校「113学年度日间部二技申请入学」将采计该测验成绩，占基本总分之10%。 四、本校113学年度日间部二技申请入学简章，预定于113年4月12日(五)起公告，欢迎考生踴躍报考。', 'https://www.tcte.edu.tw');
INSERT INTO `announcements` VALUES (4, '體育室辦理運動嘉年華趣味體能競賽活動，歡迎本校教職員工生踴躍參加!', '2023-10-31', '體育室　李文娟', '2023-11-09', '校內活動', '體育室與教學資源中心辦理【112年創新運動新視界SHKA運動素養培育計畫運動嘉年華趣味體能競賽活動】,歡迎本校教職員工生踴躍參加! 活動日期：112.11/7-9日。 活動時間：8:20-17:00。 活動地點：綜合大樓六樓體育館。 參加方式：無需報名,現場領取闖關卡即可參加。 活動內容：趣味體能競賽項目10項。包含:彈簧腿立定跳、垂直跳、軟Q柔軟度、百發百中投籃神射手、手眼協調抓抓樂、射飛鏢、九宮格擲準、九宮格套圈圈、太鼓達人、神拳拳擊手等10項。 競賽敘獎：區分教職員男、女子組、學生男、女子組。分別計算成績；每項趣味體能競賽取前三名敘獎。(需參與體驗項目至少5項才能列入敘獎計算對象) 活動內容及詳情請洽體育室各教師或洽體育室分機2671有專人為您服務~~~', '');
INSERT INTO `announcements` VALUES (5, '本校58週年校慶暨第30屆運動大會注意事項', '2023-10-31', '學務處生活輔導組　黃力', '2023-11-18', '校內公告', '一、本校創校58週年校慶暨第30屆運動大會（為本校重大集會），訂於112年11月11日（星期六）舉行，全校老師及一、二、三年級學生均應到校參加（日四技四年級及二技二年級自由參加），於113年4月3日補假乙天。 二、校慶當天活動程序表如附件，學生除參加表演，穿著表演規定之服裝外，當日各時段均請穿著系服、運動鞋，於上午9時、下午15時各實施點名一次，並請導師簽名，點名未到者，每次以缺課四節計。所有出缺席之認定均以導師簽名之點名單為準，導師得視實際情形認定之。 三、請系秘書及導師預先安排各班集合教室（以各系所屬空間優先考量），以利點名及休息，人數少之班級可共用教室。 四、當天上午各班點名單除一年級於開幕典禮時由系教官現場發放收回外，二、三年級請副班長08:30至生輔組領取，於集合教室執行點名，10:00前交回；下午點名單請各班副班長14:30再至生輔組領取，並於16:00前交回。 五、校慶暨運動會開幕典禮請一年級（不含二技）各班於08：40時綜合大樓六樓體育館就位，09：00時正式開始，請準時到校（典禮集合位置圖如附件或至生輔組網頁查詢）。 六、校慶期間所有公差勤務及不克到校參加者，均應於11月10日前完成請假手續，以利導師掌握班級動態，無特殊原因不得於事後補請假。老師及行政人員請依人事室規定行之。 七、校慶當日學生活動以校園內為範圍，若有公差勤務必須離校，請派遣單位師長特別注意人員安全。運動競賽期間，田徑場上非運動員仍須遵守大會工作人員管制，以免影響競賽進行。使用各活動場地、教室及攤位之同學，應於活動結束後，負責將場地完成清掃回復原狀，經主管單位檢查後，始得離開。 八、點名、請假、獎懲等規定，請參考本校學生上課集會點名規定、學生請假規定、學生獎懲規定。 九、先期預演 11月8日（三）12：20～14：30時於綜合大樓六樓體育館實施預演，參加人員：大會司儀、襄儀、一年級各班班長、獻獎代表；一年級班長請於12:20就位，表演社團請於14:30進場預演。 十、一、二、三年級導師校慶當日如因公不克出席者，請妥善安排職務代理人，以利點名作業。 十一、本注意事項如有未盡事宜，另行通知。', '');
INSERT INTO `announcements` VALUES (6, '本校58週年校慶暨第30屆運動大會注意事項', '2023-10-31', '學務處生活輔導組　黃力', '2023-11-18', '校內公告', '一、本校創校58週年校慶暨第30屆運動大會（為本校重大集會），訂於112年11月11日（星期六）舉行，全校老師及一、二、三年級學生均應到校參加（日四技四年級及二技二年級自由參加），於113年4月3日補假乙天。 二、校慶當天活動程序表如附件，學生除參加表演，穿著表演規定之服裝外，當日各時段均請穿著系服、運動鞋，於上午9時、下午15時各實施點名一次，並請導師簽名，點名未到者，每次以缺課四節計。所有出缺席之認定均以導師簽名之點名單為準，導師得視實際情形認定之。 三、請系秘書及導師預先安排各班集合教室（以各系所屬空間優先考量），以利點名及休息，人數少之班級可共用教室。 四、當天上午各班點名單除一年級於開幕典禮時由系教官現場發放收回外，二、三年級請副班長08:30至生輔組領取，於集合教室執行點名，10:00前交回；下午點名單請各班副班長14:30再至生輔組領取，並於16:00前交回。 五、校慶暨運動會開幕典禮請一年級（不含二技）各班於08：40時綜合大樓六樓體育館就位，09：00時正式開始，請準時到校（典禮集合位置圖如附件或至生輔組網頁查詢）。 六、校慶期間所有公差勤務及不克到校參加者，均應於11月10日前完成請假手續，以利導師掌握班級動態，無特殊原因不得於事後補請假。老師及行政人員請依人事室規定行之。 七、校慶當日學生活動以校園內為範圍，若有公差勤務必須離校，請派遣單位師長特別注意人員安全。運動競賽期間，田徑場上非運動員仍須遵守大會工作人員管制，以免影響競賽進行。使用各活動場地、教室及攤位之同學，應於活動結束後，負責將場地完成清掃回復原狀，經主管單位檢查後，始得離開。 八、點名、請假、獎懲等規定，請參考本校學生上課集會點名規定、學生請假規定、學生獎懲規定。 九、先期預演 11月8日（三）12：20～14：30時於綜合大樓六樓體育館實施預演，參加人員：大會司儀、襄儀、一年級各班班長、獻獎代表；一年級班長請於12:20就位，表演社團請於14:30進場預演。 十、一、二、三年級導師校慶當日如因公不克出席者，請妥善安排職務代理人，以利點名作業。 十一、本注意事項如有未盡事宜，另行通知。', '');
INSERT INTO `announcements` VALUES (7, '&#8203;``【oaicite:0】``&#8203;美國Metropolitan State University(MSU)，歡迎同學踴躍報名參加', '2023-10-30', '研究發展處國際交流中心　簡怡婷', '2023-11-20', '校內演講/講座', '說明會講者： 馮文德 主任\r\n    說明會日期：112年11月20日 星期一\r\n    說明會時間：中午12:20-13:00\r\n    說明會地點：本校綜合大樓2樓A215會議室\r\n\r\n    主辦單位：本校研發處 國際交流中心A219-1 《如有任何問題請洽詢：02-26585801分機2441》\r\n\r\n    ★關於MSU雙聯學位\r\n    ◎一舾兩得：「3年在台，1年在美」，4年取得台、美兩校學士學位。\r\n    ◎公立大學：台灣教育部認可之美國州立大學。\r\n    ◎最省的學費：兩校學分相互移轉，省下大筆費用。\r\n    ◎在美主修：全球企業經營管理\r\n    ◎國際化經歷：1年美國留學，體驗當地文化生活，提升職場競爭力。\r\n    ◎專業英文師資：大一至大三加修英文輔導課程，達到美國大學「英文托福」入學門檻。\r\n    ◎獎學金：高額獎學金，含教育部學海系列及各項獎學金，金額依實際審核辦理。\r\n    ◎美國曼徹普立敦大學中文介紹：https://sites.google.com/view/tm-msu-dual-degree', 'https://forms.gle/Nzxy5iA8VvB4YcL86');
INSERT INTO `announcements` VALUES (8, '「ILTEA國際英檢」校園團考報名截止日延長至11/5，請同學踴躍報名!!', '2023-10-25', '通識教育中心　林艷萍', '2023-11-05', '校內公告', '「ILTEA國際英檢」校園團考報名截止日延長至11/5，請同學踴躍報名!!\r\n\r\n    ．測驗日期：2023年11月29日(三)下午\r\n    ．報名截止日：2023年11月5日(日) 24:00止\r\n    ．測驗地點：又新樓4-6樓\r\n<br>\r\n    ★報名網址：<a href=https://forms.gle/78po2Puc33p7VkMf7>https://forms.gle/78po2Puc33p7VkMf7</a>\r\n    免費下載全真模考題、單字範圍www.iltea.tw/product_list/1/1/163\r\n<br>\r\n    ★「ILTEA國際英檢」測驗簡介\r\n    ．閱讀、聽力測驗皆為選擇題，聽力播放2次。<br>\r\n    ．A2(閱、聽)共57題 ； B1(閱、聽)共60題。測驗時間約1小時。\r\n    ．題材以日常生活周遭事物實用為主，易理解判斷。\r\n  <br>  ．兩科各達60分以上者，核發「ILTEA國際英檢」通過證書。\r\n<br>\r\n    ★報名步驟\r\n    1. 報名費先轉帳匯款後，才能進行線上報名登錄。(請保留匯款收據)\r\n    銀行：中國信託 城中分行(ATM轉帳代號822)\r\n    帳號：107-540-585-878\r\n    戶名：中華國際人力資源有限公司\r\n<br>\r\n    2. 費用說明：\r\n    ▲ A2 初級報名費 $ 600\r\n    ▲ A2 初級報名費 $ 600 + 線上模擬練習題(二個月期) $ 140 = $740\r\n    ▲ A2 初級報名費 $ 600 + 書面模擬考題本(含郵資) $ 405 = $1,005<br>\r\n    ▲ B1 中級報名費 $ 700\r\n    ▲ B1 中級報名費 $ 700 + 線上模擬練習題(二個月期)$ 140 = $840\r\n    ▲ B1 中級報名費 $ 700 + 書面模擬考題本(含郵資) $ 365 = $1,065\r\n<br>\r\n    ★匯款、報名等相關問題，請洽詢考試部專線 02-23112939\r\n    洽詢時間: 週一至週五 09:00-18:00', 'https://docs.google.com/forms/d/e/1FAIpQLSeZWrQEJGU0sqiGpZlJ4k3WDKxIbLd5Oe84StgboeLvW5wWNg/viewform');
INSERT INTO `announcements` VALUES (9, '2023 年【I 秀我系】校園短片競賽開始了', '2023-10-23', '校務研究中心　宮大凱', '2023-11-30', '校內活動', '德明財經科技大學在培育人才方面可說是不留餘力。無論是專業師資、多\r\n    樣性且創新的課程、饒富趣味的課後活動、甚至提搶上陣的大四實習歷鍊,在\r\n    在孕育學生未來專業表現與永續發展的量能。該次校園短影片競賽,主要以同\r\n    學就讀系為主角,希望透過同學的眼,帶領大家認識這個系的有趣、辛酸、競\r\n    爭、挑戰、和學習等。藉由你的投稿和分享,讓我們感受你在這個系的點點滴\r\n    滴,同時留下大學生活精彩的紀錄。\r\n\r\n    參賽資格\r\n\r\n    限德明財經科技大學在學之學生,每支參賽影片可由一位或多位德明同學\r\n    共同創作。\r\n\r\n    活動時程\r\n\r\n    1. 公告日期:即日起\r\n    2. 報名及繳件期間:即日起至2023/11/18(六)\r\n    3. 初賽結果公告:11/22(三)\r\n    4. 複賽期間:11/22(三)12:00PM~11/27(一)12:00PM\r\n    5. 得獎名單公告:2023/11/30(五)\r\n\r\n    作品規格\r\n    1. 影片主題為各系學生介紹就讀系的一切。\r\n    2. 影片長度在 2-5 分鐘,拍攝工具、影片類型均不限\r\n    3. 影片內容須符合普通級,並不得違反公共秩序或善良風俗\r\n    4. 請注意影片內容不可侵犯著作權\r\n\r\n    報名方式\r\n    請於報名開放期間，進入競賽報名網址投稿\r\n    報名網址：\r\n    https://forms.gle/BxKwdnjdFrkkVnKR7', 'https://forms.gle/BxKwdnjdFrkkVnKR7');
INSERT INTO `announcements` VALUES (10, '&#8203;``【oaicite:0】``&#8203;學輔中心112學年度性別平等教育有獎徵答 得獎名單及正確解答', '2023-10-16', '學務處學生輔導中心　游翔富', '2023-11-03', '校內公告', '領獎規則：\r\n    1.領獎期限：11/03（五）前，週一至週五上午8:20-下午5:00\r\n    2.領獎地點：學生輔導中心 總圖書館（伯南館）3樓\r\n    3.注意事項：須由本人攜帶學生證簽收領取（逾期未領，視同放棄）\r\n\r\n    ◎得獎名單與正確解答如附件所示，有任何疑惑請洽學輔中心游老師（分機2236）', NULL);
INSERT INTO `announcements` VALUES (11, '圖書館出版「德明家族」電子書，歡迎點閱共賞，謝謝！', '2023-09-20', '圖書館 鄭淑麗', '2023-12-31', '校內公告', '請點選相關網址，「德明家族」電子書目次如下：\r\n    01天道酬勤──謝志宏學長......................................................01\r\n    02跨越人生的萬里千尋──王德勝學長...................................08\r\n    03心靈的引路者──許世鵬學長..............................................15\r\n    04為學子開啟一扇窗──王晴樺老師.......................................20\r\n    05緣來「德明」──李育綺、駱燕老師....................................25\r\n    06「德明」是我生長的第二故鄉──羅慧嫺、楊嘉裕老師.......28\r\n    07我與「德明」的共舞──蕭穎謙、賴淑慧老師.....................31\r\n    08當我們與「德明」同在一起──林雪如、黃元直老師..........34\r\n    09「德明」讓我們的生命交會──簡志宇老師、留秀陵學姐....36\r\n    電子書版權頁................................................................................38', 'https://www2.takming.edu.tw/lib/file/「德明家族」電子書-1120905.pdf');
INSERT INTO `announcements` VALUES (12, '113年罕見疾病防治工作補助計畫', '2023-10-31', '學務處衛生保健組 許安妮', '2024-12-31', '校內活動', '衛生福利部「113年罕見疾病防治工作補助計畫」公開甄選作業須知1份（如附件）。', NULL);
INSERT INTO `announcements` VALUES (13, '112-1就學貸款所得審查不合格續貸方式', '2023-10-25', '學務處生活輔導組 李育綺', '2023-11-10', '校內公告', '本學期就學貸款所得經財政部審查年度為111年父、母及本人三人之所得審查結果，請注意個人手機簡訊通知。接獲不合格通知同學請於11/3（五）前依下列說明至A117學務處生活輔導組繳交相關資料，才算完成資格可辦理本學期就學貸款。（晚間17:00後請至A115-1進修部辦公室） ＊逾期未辦理完成且無聯繫者視同不符資格將直接取消申貸就學貸款。 審查級別說明： B級＜自付半額＞：111年家庭總所得（父、母、學生本人）收入介於114-120萬之間，依規定得辦理就學貸款，但須自付半額貸款利息。續貸辦理方式：請至生輔組A117領取並簽立「願自付半額利息切結書」（附件一第二頁）後才可繼續辦理就學貸款。 C級＜自付全額＞：111年家庭總所得（父、母、學生本人）收入超過120萬以上，依規定家中需有其他兄弟姊妹同時於本學期就讀高中或大學檢附相關資料並自付全額貸款利息，得辦理就學貸款。續貸辦理方式：繳交齊全以下四樣文件者，才可繼續辦理就學貸款。 1.請至生輔組A117領取並簽立「願自付全額利息切結書」。（附件一第一頁） 2.繳交本人身分證正、反面影本。 3.繳交有就讀高中或大學其兄弟姊妹之學生證正、反面影本（請蓋本學期註冊章），如學生證為悠遊卡無註冊章者，請以「在學證明」代替。 4.繳交其兄弟姊妹之身分證正、反面影本或戶籍謄本（正本、三個月內）或新式戶口名簿（影本），三項擇一。 項目2-4文件請黏貼於附件二 ＊填寫範例請看附件三 如有相關問題請於09:00-16:30期間洽詢生輔組2658-5801分機2211李育綺老師.', 'https://edu.law.moe.gov.tw/LawContent.aspx?id=FL008654');
INSERT INTO `announcements` VALUES (14, '提供近期常見詐騙手法宣導圖文', '2023-10-30', '學務處生活輔導組 周漳明', '2024-04-29', '校內公告', '近期警局受理之詐欺案類，投資詐欺案件仍為高發常見之詐騙手法，為提升防詐暨「識詐」知能，避免落入詐騙陷阱，提供投資詐欺等宣導圖文資料.', NULL);
INSERT INTO `announcements` VALUES (15, '112實習資訊（華泰銀行）', '2023-10-30', NULL, '2024-05-19', '徵才資訊', '全學年實習招募：程式設計3人\r\n\r\n履歷收件截止日：5/19(五)前將電子檔寄至: s0002@hwataibank.com.tw (標題[德明資管系]實習履歷-OOO)\r\n需檢附資料：\r\n1.制式履歷表(如附件)\r\n2.照片電子檔兩吋大頭照片電子檔。\r\n3.歷年成績單\r\n※履歷經初審通過後，將另行安排至總行個別面試。', NULL);
INSERT INTO `announcements` VALUES (16, '112年實習資訊（橘子集團X台灣核智—APP測試專員）', '2023-11-30', NULL, '2024-05-19', '徵才資訊', '112橘子集團X台灣核智提供資訊技術的工作職缺，歡迎大三生應徵~~', NULL);
INSERT INTO `announcements` VALUES (17, '112年實習資訊（橘子集團X台灣核智—APP測試專員）', '2023-10-30', NULL, '2024-05-19', '徵才資訊', '112橘子集團X台灣核智提供資訊技術的工作職缺，歡迎大三生應徵~~', NULL);
INSERT INTO `announcements` VALUES (18, '112年實習資訊（橘子集團X台灣核智—APP測試專員）', '2023-10-30', NULL, '2024-05-19', '徵才資訊', '112橘子集團X台灣核智提供資訊技術的工作職缺，歡迎大三生應徵~~', NULL);
INSERT INTO `announcements` VALUES (19, '112實習資訊（鼎新電腦—先鋒實習計畫）', '2023-11-02', NULL, '2024-05-19', '徵才資訊', '鼎新電腦提供資訊技術的工作職缺，歡迎大三生應徵~~', NULL);
INSERT INTO `announcements` VALUES (20, '112年實習資訊（台灣經濟新報—資料庫編輯）', '2023-11-02', NULL, '2024-05-19', '徵才資訊', '台灣經濟新報提供資訊技術的工作職缺，歡迎大三生應徵~~', NULL);
INSERT INTO `announcements` VALUES (21, '112年實習資訊（台灣酷樂時代—軟體測試）', '2023-11-02', NULL, '2024-05-19', '徵才資訊', '台灣酷樂時代提供資訊技術的工作職缺，歡迎大三生應徵~~', NULL);
INSERT INTO `announcements` VALUES (22, '2023年富邦人壽聯合招募計畫正式啟動', '2023-11-02', NULL, '2024-05-19', '徵才資訊', '2023年富邦人壽聯合招募計畫正式啟動，履歷收件至2023/1/8止，詳細資訊請查看附件 ：', NULL);
INSERT INTO `announcements` VALUES (23, '喜訊分享~2021 FinTech金融服務校際創意競賽第二名', '2021-12-01', NULL, NULL, '榮譽榜', '德明財經科技大學參加「2021Fintech金融服務校際創意競賽」，本次競賽來自全國將近100件創意作品，由指導老師陳怡雅帶領的財金系、AI跨領域專班共5位同學，贏得「監管科技與金融安全組」第二名，成績亮眼。 \r\n\r\n本次競賽入圍之隊伍，來自全國各公私立大專院校及研究所學生，對於金融科技與各項創新技術提出多樣化創意提案，競爭激烈。由財金系江憲軒(穀保家商商經科)、徐靖媛(治平高中資處科)、梁嘉恩(松山家商國貿科)、謝佳錚(三重商工國貿科)同學及資管系AI跨領域專班王群善(磐石高中普通科)同學以「金融界的數位天眼」企劃案，運用最新科技概念：「大數據」、「AI智慧」、「區塊鏈」以「數位身份證」開發資訊平台，運用AI人臉辨識技術，在洗錢防制上作為第一道防線，此平台期望提升金融業在辦理業務時更有效率，作品獲得評審們一致肯定，具金融創新性及技術應用與整合可行性。\r\n\r\n德明科大財金系擁有前瞻的教學理念，集結豐厚的專業師資，將理論與實務結合的創新思維，培養具備財務金融知能之財務人才，已成為國內培育未來FinTech人才重要平台與企業產學合作之關鍵夥伴。', NULL);
INSERT INTO `announcements` VALUES (24, '110年資管系專題競賽前三名', '2021-07-12', NULL, NULL, '榮譽榜', '110年資管系專題競賽前三名', NULL);
INSERT INTO `announcements` VALUES (25, '喜訊分享~2021全國技專校院學生實務專題製作競賽(商業群)：第一名', '2021-06-15', NULL, NULL, '榮譽榜', '資訊管理系再傳捷報，本系徐翠琇老師指導學生李灝諹、王承駿、陳朋遠、賀泓維、王奕凱、呂承翰以實務專題：【AIOT智能停車整合應用GoGo Parking】，在教育部舉辦「2021全國技專校院學生實務專題製作競賽」，從1343報名件數，經初賽篩選出114隊伍進入決賽，資管系學生從初賽一路到決賽，最終在此競賽中榮獲商業群第一名殊榮，表現優異卓越，為校爭光。', NULL);
INSERT INTO `announcements` VALUES (0, '113學年度【二技統一入學測驗】報名、考試日期及相關注意事項。', '2023-10-26', '教務處綜合業務組 孫銘襄', '2024-05-31', '招生資訊', '一、二技統一入學測驗由「財團法人技專校院入學測驗中心基金會」辦理，報名期間：112年11月\r\n28日(星期二)上午9時起至112年12月5日(星期二)下午5時止；考試日期：113年4月28日(星期日)。\r\n\r\n二、113學年度二技統一入學測驗簡章預訂於112年10月30日(星期一)於該中心基金會網<a href=https://www.tcte.edu.tw>https://www.tcte.edu.tw</a>公告，考試簡章內含有關之試務時程、作業規定及試場規則等事項，請考生務必詳閱簡章。\r\n\r\n三、本校「113學年度日間部二技申請入學」將採計該測驗成績，佔基本總分之10%。\r\n\r\n四、本校113學年度日間部二技申請入學簡章，預定於113年4月12日(五)起公告，歡迎考生踴躍報考。', 'https://www.tcte.edu.tw');
INSERT INTO `announcements` VALUES (0, '【寒假轉學考】公告本校112學年度第2學期轉學考入學招生簡章', '2023-10-24', '教務處綜合業務組 鄧秀蘭', '2024-02-29', '招生資訊', '一、一律採網路報名與網路繳交書面資料方式，報名與上傳資料時間自112年11月13日(星期一)上午10:00起至113年1月26日(星期五)晚上24:00截止，請考生於指定時間內完成網路登錄報名、上傳書面資料，逾期不受理。\r\n\r\n二、報名前請先準備以下資料檔案：\r\n1.身分證正面(必繳)、2.身分證反面(必繳)、3.學生證正反面或在學證明(請合併成一個檔案後上傳，必繳)、4.符合報名資格之歷年成績單(成績單或修業證明書等資料請合併成一個檔案後上傳，必繳)、5.繳費單證明(低收入戶請上傳低收入戶證明)、6.中低收入戶證明上傳(中低收戶入戶必繳)、7.僑生入學原始分發文件、專科肄(畢)生運動績優證明、退伍軍人之退伍令(符合此項者須上傳文件)、8.其他補充資料 (選繳)。\r\n\r\n三、招生名額、報考資格、報名規定事項及其他相關事項等請詳閱招生簡章，請至本校網頁查詢。\r\n\r\n聯絡電話：(02)2658-5801分機2125\r\n招生專線：(02)7746-1888教務處綜合業務組', 'http://www.takming.edu.tw/recruit/exam_index.asp');
INSERT INTO `announcements` VALUES (0, '公告本校「深德明心新生入學獎學金作業規定」修正案，請查照。', '2023-06-15', '教務處綜合業務組 孫婉庭', '2023-12-31', '招生資訊', '依據：112年6月8日行政會議決議。\r\n公告事項：修正後規章全文如附件，修正後規章上傳本校TIP法規查詢及招生資訊網。', NULL);
INSERT INTO `announcements` VALUES (0, '113學年度【二技統一入學測驗】報名、考試日期及相關注意事項。', '2023-10-26', '教務處綜合業務組 孫銘襄', '2024-05-31', '招生資訊', '一、二技統一入學測驗由「財團法人技專校院入學測驗中心基金會」辦理，報名期間：112年11月\r\n28日(星期二)上午9時起至112年12月5日(星期二)下午5時止；考試日期：113年4月28日(星期日)。\r\n\r\n二、113學年度二技統一入學測驗簡章預訂於112年10月30日(星期一)於該中心基金會網<a href=https://www.tcte.edu.tw>https://www.tcte.edu.tw</a>公告，考試簡章內含有關之試務時程、作業規定及試場規則等事項，請考生務必詳閱簡章。\r\n\r\n三、本校「113學年度日間部二技申請入學」將採計該測驗成績，佔基本總分之10%。\r\n\r\n四、本校113學年度日間部二技申請入學簡章，預定於113年4月12日(五)起公告，歡迎考生踴躍報考。', 'https://www.tcte.edu.tw');
INSERT INTO `announcements` VALUES (0, '【寒假轉學考】公告本校112學年度第2學期轉學考入學招生簡章', '2023-10-24', '教務處綜合業務組 鄧秀蘭', '2024-02-29', '招生資訊', '一、一律採網路報名與網路繳交書面資料方式，報名與上傳資料時間自112年11月13日(星期一)上午10:00起至113年1月26日(星期五)晚上24:00截止，請考生於指定時間內完成網路登錄報名、上傳書面資料，逾期不受理。\r\n\r\n二、報名前請先準備以下資料檔案：\r\n1.身分證正面(必繳)、2.身分證反面(必繳)、3.學生證正反面或在學證明(請合併成一個檔案後上傳，必繳)、4.符合報名資格之歷年成績單(成績單或修業證明書等資料請合併成一個檔案後上傳，必繳)、5.繳費單證明(低收入戶請上傳低收入戶證明)、6.中低收入戶證明上傳(中低收戶入戶必繳)、7.僑生入學原始分發文件、專科肄(畢)生運動績優證明、退伍軍人之退伍令(符合此項者須上傳文件)、8.其他補充資料 (選繳)。\r\n\r\n三、招生名額、報考資格、報名規定事項及其他相關事項等請詳閱招生簡章，請至本校網頁查詢。\r\n\r\n聯絡電話：(02)2658-5801分機2125\r\n招生專線：(02)7746-1888教務處綜合業務組', 'http://www.takming.edu.tw/recruit/exam_index.asp');
INSERT INTO `announcements` VALUES (0, '公告本校「深德明心新生入學獎學金作業規定」修正案，請查照。', '2023-06-15', '教務處綜合業務組 孫婉庭', '2023-12-31', '招生資訊', '依據：112年6月8日行政會議決議。\r\n公告事項：修正後規章全文如附件，修正後規章上傳本校TIP法規查詢及招生資訊網。', NULL);
INSERT INTO `announcements` VALUES (0, '113學年度【二技統一入學測驗】報名、考試日期及相關注意事項。', '2023-10-26', '教務處綜合業務組 孫銘襄', '2024-05-31', '招生資訊', '一、二技統一入學測驗由「財團法人技專校院入學測驗中心基金會」辦理，報名期間：112年11月\r\n28日(星期二)上午9時起至112年12月5日(星期二)下午5時止；考試日期：113年4月28日(星期日)。\r\n\r\n二、113學年度二技統一入學測驗簡章預訂於112年10月30日(星期一)於該中心基金會網站(https://www.tcte.edu.tw)公告，考試簡章內含有關之試務時程、作業規定及試場規則等事項，請考生務必詳閱簡章。\r\n\r\n三、本校「113學年度日間部二技申請入學」將採計該測驗成績，佔基本總分之10%。\r\n\r\n四、本校113學年度日間部二技申請入學簡章，預定於113年4月12日(五)起公告，歡迎考生踴躍報考。', 'https://www.tcte.edu.tw');
INSERT INTO `announcements` VALUES (0, '【寒假轉學考】公告本校112學年度第2學期轉學考入學招生簡章', '2023-10-24', '教務處綜合業務組 鄧秀蘭', '2024-02-29', '招生資訊', '一、一律採網路報名與網路繳交書面資料方式，報名與上傳資料時間自112年11月13日(星期一)上午10:00起至113年1月26日(星期五)晚上24:00截止，請考生於指定時間內完成網路登錄報名、上傳書面資料，逾期不受理。\r\n\r\n二、報名前請先準備以下資料檔案：\r\n1.身分證正面(必繳)、2.身分證反面(必繳)、3.學生證正反面或在學證明(請合併成一個檔案後上傳，必繳)、4.符合報名資格之歷年成績單(成績單或修業證明書等資料請合併成一個檔案後上傳，必繳)、5.繳費單證明(低收入戶請上傳低收入戶證明)、6.中低收入戶證明上傳(中低收戶入戶必繳)、7.僑生入學原始分發文件、專科肄(畢)生運動績優證明、退伍軍人之退伍令(符合此項者須上傳文件)、8.其他補充資料 (選繳)。\r\n\r\n三、招生名額、報考資格、報名規定事項及其他相關事項等請詳閱招生簡章，請至本校網頁查詢。\r\n\r\n聯絡電話：(02)2658-5801分機2125\r\n招生專線：(02)7746-1888教務處綜合業務組', 'http://www.takming.edu.tw/recruit/exam_index.asp');
INSERT INTO `announcements` VALUES (0, '公告本校「深德明心新生入學獎學金作業規定」修正案，請查照。', '2023-06-15', '教務處綜合業務組 孫婉庭', '2023-12-31', '招生資訊', '依據：112年6月8日行政會議決議。\r\n公告事項：修正後規章全文如附件，修正後規章上傳本校TIP法規查詢及招生資訊網。', NULL);

-- --------------------------------------------------------

-- 
-- 資料表格式： `calendars`
-- 

CREATE TABLE `calendars` (
  `calendar_id` int(11) NOT NULL,
  `calendar_name` varchar(255) NOT NULL,
  `calendar_link` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `calendars`
-- 

INSERT INTO `calendars` VALUES (1, '112學年度行事曆 (112.3.9 教育部核備112.11.6 行政會議修正)', 'https://secretary.takming.edu.tw/var/file/4/1004/img/871489827.pdf', '2023-11-08 06:31:34');
INSERT INTO `calendars` VALUES (2, '111學年行事曆 (111.03.15臺教技(四)字第1110025866號函核備)-111.0.7.4行政會議後修訂', 'https://secretary.takming.edu.tw/var/file/4/1004/img/53/135123082.pdf', '2023-11-08 06:31:34');
INSERT INTO `calendars` VALUES (3, '110學年度行事曆(110.03.25教育部核備版本)', 'https://secretary.takming.edu.tw/var/file/4/1004/img/53/354794713.pdf', '2023-11-08 06:31:34');
INSERT INTO `calendars` VALUES (4, '109學年度第2學期行事曆(110.02.22教育部核備版本)', 'https://secretary.takming.edu.tw/var/file/4/1004/img/53/416710148.pdf', '2023-11-08 06:31:34');
INSERT INTO `calendars` VALUES (5, '108學年度第2學期行事曆(109.02.11教育部核備版本)', 'https://secretary.takming.edu.tw/var/file/4/1004/img/53/139792999.pdf', '2023-11-08 06:31:34');

-- --------------------------------------------------------

-- 
-- 資料表格式： `restaurants`
-- 

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `phone` varchar(20) default NULL,
  `hours` varchar(255) default NULL,
  `cuisine` varchar(255) default NULL,
  `rating` decimal(3,1) default NULL,
  `image_path` varchar(255) default NULL,
  `date` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `restaurants`
-- 

INSERT INTO `restaurants` VALUES (1, '恩家食堂', '台北市內湖區環山路一段92號', '(02) 2797-0211', '8:00-13:00', '早餐與早午餐', 4.1, './assets/images/恩家食堂.jpg', '週一至週日:');
INSERT INTO `restaurants` VALUES (2, '泛美台式自助餐', '台北市內湖區文湖街71號', '(02) 2657-9776', '10:00-20:00', '自助餐', 3.5, './assets/images/自助餐.jpg', '週一至週日:');
INSERT INTO `restaurants` VALUES (3, '佳佳義大利麵', '台北市內湖區文湖街67號', '(02) 2659-2707', '11:00-14:00、17:00-20:00', '義大利麵', 4.6, './assets/images/家家家.jpg', '週一至週六:');
INSERT INTO `restaurants` VALUES (4, '三顧茅廬-內湖文湖店', '台北市內湖區文湖街73號', '(02) 2797-7107', '11:00-13:30、16:30-23:00/16:00-23:00', '滷味', 4.8, './assets/images/三顧茅廬盧.jpg', '週一至週五: /週日:');
INSERT INTO `restaurants` VALUES (5, '豬窩窩咖啡廚房', '台北市內湖區文湖街65號', '(02) 2658-8268', '6:30-14:30', '早午餐、焗飯、義大利麵', 4.4, './assets/images/豬窩窩窩.jpg', '週一周二、週四至週日:');
INSERT INTO `restaurants` VALUES (6, '285小老闆', '台北市內湖區內湖路一段285巷68弄7號', '0921-804-333', '11:30-13:30、17:00-21:00', '餛飩麵、意麵、乾麵', 4.3, './assets/images/285.jpg', '週一至週五:');
INSERT INTO `restaurants` VALUES (7, '有人知影快炒', '台北市內湖區內湖路一段285巷65弄7號', '(02)2799-4415', '11:00-14:00,17:00-20:00', '炒飯、炒麵、湯麵、燴飯', 4.0, './assets/images/快炒.jpg', '週一至週五、週日:');
INSERT INTO `restaurants` VALUES (8, '包子&ME嘉義火雞肉飯', '台北市內湖區內湖路一段285巷59弄19號', '(02)2627-5575', '11:30-14:00 、17:00-20:00', '雞肉飯、滷肉飯、肉羹麵', 4.3, './assets/images/雞肉飯.jpg', '週一至五:');
INSERT INTO `restaurants` VALUES (9, '來佳海南雞飯', '台北市內湖區內湖路一段285巷8弄3號', '(02)2797-5417', '10:30-20:15、10:30-15:30/16:30-18:50', '海南雞飯', 3.8, './assets/images/海南.jpg', '週一至週五:/週日:');
INSERT INTO `restaurants` VALUES (10, '日久阿囉哈早餐', '台北市內湖區內湖路一段285巷65弄1號', '(02)2799-5883', '6:00-12:00', '早餐', 4.9, './assets/images/早餐.jpg', '週一至週日:');

-- --------------------------------------------------------

-- 
-- 資料表格式： `teachers`
-- 

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `school` varchar(255) default NULL,
  `research_interests` text,
  `email` varchar(255) default NULL,
  `office` varchar(255) default NULL,
  `phone` varchar(20) default NULL,
  `type` varchar(255) default NULL,
  `image_path` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `teachers`
-- 

INSERT INTO `teachers` VALUES (1, '韓文銘', '副教授 (兼資管系主任)', '國立台灣科技大學資訊管理所博士', '軟體專案管理、軟體測試、軟體流程改善與評估', 'wmhan@takming.edu.tw', 'A418-4', '2760、5263', '專任教師', './assets/images/wmhan.jpg');
INSERT INTO `teachers` VALUES (2, '林建福', '教授 (兼資訊學院院長)', '國立台灣大學 電機工程研究所(資訊科學組) 博士', 'Parallel Task Scheduling、Data Compression、Data Security 、Decision Mathematics', 'alfu@takming.edu.tw', NULL, NULL, '專任教師', './assets/images/alfu.jpg');
INSERT INTO `teachers` VALUES (3, '劉崑義', '副教授', '美國賓州州立大學人力教育暨發展博士', '人力資源資訊系統、管理資訊系統、資料庫管理系統、系統分析', 'tony@takming.edu.tw', 'B204', '5122', '專任教師', './assets/images/tony.jpg');
INSERT INTO `teachers` VALUES (4, '蔡旭琛', '副教授', '中原大學應用數學系博士', 'Fuzzy clustering algorithm、Neural Network、Applied Mathemathic', 'lv@takming.edu.tw', 'B209', '5149', '專任教師', './assets/images/lv.jpg');
INSERT INTO `teachers` VALUES (5, '盧瑞山', '副教授', '國立台灣大學環境工程學研究所(環境資訊學博士)', '區塊鏈技術與金融科技、大數據與資料採礦、機器學習與人工智慧(AI)應用、網路行銷', 'rslu@takming.edu.tw', 'B305', '5225', '專任教師', './assets/images/rslu.jpg');
INSERT INTO `teachers` VALUES (6, '徐敏珠', '助理教授', '國立政治大學資訊管理學系管理學博士', '資訊管理、企業電子化、數位學習', 'mchsu@takming.edu.tw', 'A312', '5192', '專任教師', './assets/images/mchsu.jpg');
INSERT INTO `teachers` VALUES (7, '謝濱燦', '助理教授', '國立成功大學資訊工程博士', '金鑰協議及身份認證、破密分析、數位簽章', 'bintsan@takming.edu.tw', 'B204', '5121', '專任教師', './assets/images/binstan.jpg');
INSERT INTO `teachers` VALUES (8, '許正憲', '助理教授', '國立中正大學資訊工程所碩士', '演算法設計、計算幾何、資料庫系統與應用、數位內容、Web程式設計', 'jeffhsu@takming.edu.tw', 'B314', '5510', '專任教師', './assets/images/jeffshu.jpg');
INSERT INTO `teachers` VALUES (9, '王欣鈴', '助理教授', '美國東德州州立大學電腦科學研究所碩士', 'e化企業、電子商務、資料庫系統與應用', 'sandia@takming.edu.tw', 'A418-3', '5262', '專任教師', './assets/images/sandia.jpg');
INSERT INTO `teachers` VALUES (10, '林泰穎', '助理教授', '中原大學工業與系統工程博士', '品質管理與工程、資料挖礦', 'taiying@takming.edu.tw', 'A317', '2763', '專任教師', './assets/images/taiying.jpg');
INSERT INTO `teachers` VALUES (11, '徐翠琇', '講師', 'DePaul University, U.S.A. Computer Science 碩士', '資料庫引擎架構、大數據分析、資訊系統開發、專案管理', 'tracy@takming.edu.tw', 'A512', '5766', '專任教師', './assets/images/tracy.png');
INSERT INTO `teachers` VALUES (12, '周嘉榮', '講師', '國立中央大學資訊暨電子工程研究所碩士', '電腦網路、網路規劃與管理、RHCE、CCNA', 'joe@takming.edu.tw', 'A512', '5766', '專任教師', './assets/images/joe.jpg');
INSERT INTO `teachers` VALUES (13, '劉憶瑩', '講師', '台灣科技大學資訊管理所博士', '資訊管理、資訊安全管理系統', 'annie@takming.edu.tw', 'B314', '5511', '專任教師', './assets/images/annie.jpg');
INSERT INTO `teachers` VALUES (14, '葉承宇', '兼任講師', '國立台灣科技大學資訊管理所博士', '敏捷產品開發、軟體專案管理、軟體測試、軟體工程、軟體品質管理', '0004240@takming.edu.tw', NULL, NULL, '兼任教師', './assets/images/業承宇.png');
INSERT INTO `teachers` VALUES (15, '王龍發', '助理教授', '淡江大學數學研究所碩士', 'Dynamic Web Page Design、Network Communication、PHP Web Programming', 'wlf@takming.edu.tw', 'B314', '5512', '退休教師', './assets/images/王龍發.jpg');
INSERT INTO `teachers` VALUES (16, '黃志泰', '副教授 兼電算中心主任', '元智大學資訊工程博士', 'Information Extraction、text mining、Semantic Web、Location-Based Services、Question and Answering、資訊網路與感測、情境感知', 'hgt@takming.edu.tw', 'B209', '5151', '專任教師', './assets/images/hgt.jpg');
INSERT INTO `teachers` VALUES (17, '賀盛志', '助理教授', '國防大學理工學院國防科學研究所(電子組)博士', '資訊安全、大數據分析、人工智慧應用', 'hsztkm@takming.edu.tw', 'A307-2', '5212', '專任教師', './assets/images/hsztkm.jpg');