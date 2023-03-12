/*
 Navicat Premium Data Transfer

 Source Server         : aliyun-rds
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : rm-m5ee476bu350735gjeo.mysql.rds.aliyuncs.com:3306
 Source Schema         : used_books

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 28/06/2020 10:10:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_address
-- ----------------------------
DROP TABLE IF EXISTS `sys_address`;
CREATE TABLE `sys_address`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收件人姓名',
  `address_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省市区',
  `address_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `status` tinyint(10) NOT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_address
-- ----------------------------
INSERT INTO `sys_address` VALUES (4, 1802343334, '哦豁', '北京市北京市东城区', '南京工业职业技术学院', '18805162578', 1);
INSERT INTO `sys_address` VALUES (25, 1802343215, '王欢乐', '天津市天津市和平区', '杭州市西湖 黄龙万科中心', '18805162578', 0);
INSERT INTO `sys_address` VALUES (30, 1802343215, '席光平', '江苏省-南京市-栖霞区', '南京工业职业技术学院', '18851137516', 0);
INSERT INTO `sys_address` VALUES (32, 1802343215, '王某某', '天津市天津市和平区', '杭州市西湖 黄龙万科中心', '18805162578', 1);

-- ----------------------------
-- Table structure for sys_book_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_book_detail`;
CREATE TABLE `sys_book_detail`  (
  `id` int(20) NOT NULL COMMENT 'id',
  `book_list_id` int(20) NULL DEFAULT NULL COMMENT '书单id',
  `subtype_id` int(20) NULL DEFAULT NULL COMMENT '子类别id',
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书名',
  `book_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '封面',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '作者',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书籍简介',
  `price` decimal(10, 2) NOT NULL COMMENT '原价',
  `discount` decimal(10, 2) NULL DEFAULT NULL COMMENT '折扣',
  `quantity` int(32) NOT NULL COMMENT '数量',
  `integration` int(32) NULL DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_book_detail
-- ----------------------------
INSERT INTO `sys_book_detail` VALUES (1, 1, 1, '沉默的巡游', 'http://img3m4.ddimg.cn/95/15/28522094-1_x_3.jpg', '东野圭吾', '东野圭吾强势回归高峰新作，《白夜行》《嫌疑人X的献身》后再次登顶日本年度推理榜。东野圭吾：《沉默的巡游》是我的集大成之作。这是一桩众目睽睽下的凶杀案：巡游盛典，人声鼎沸，一群失去挚爱的人为复仇走上街头', 20.00, 9.99, 3, 200);
INSERT INTO `sys_book_detail` VALUES (2, 2, 1, '夏天、烟火和我的尸体', 'http://img3m6.ddimg.cn/28/30/27941986-1_x_3.jpg', '乙一', '九岁那年夏天，我看着我的尸体漫山遍野奔跑。一部书写恶与天真的暗黑杰作。这个盛夏的故事，让人冷到骨子里。', 23.00, 9.98, 8, 300);
INSERT INTO `sys_book_detail` VALUES (3, 3, 1, '霍乱时期的爱情', 'http://img3m0.ddimg.cn/59/31/28522850-1_x_4.jpg', '加西亚 · 马尔克斯', '《百年孤独》作者马尔克斯传世名著，深刻影响莫言、余华的写作生涯，写尽人类爱情所有可能：一个人能为爱等多久？答案是五十一年九个月零四天。', 22.00, 9.99, 8, 210);
INSERT INTO `sys_book_detail` VALUES (4, 4, 1, '82年生的金智英', 'http://img3m5.ddimg.cn/67/25/27914305-1_x_10.jpg', '[韩]赵南柱 著 尹嘉玄 译', '一个女孩要经历多少看不见的坎坷，才能跌撞地长大成人。孔刘、郑裕美主演同名电影即将上映！亚洲10年来罕见的现象级畅销书，韩国总统文在寅、国民主持人刘在石、BTS团长南俊都在阅读', 21.00, 8.38, 7, 360);
INSERT INTO `sys_book_detail` VALUES (5, 5, 2, '边城', 'http://img3m3.ddimg.cn/98/23/23530913-1_x_1.jpg', '沈从文', '经典老版，定价合理。教育部推荐中小学必读名著！', 20.00, 9.79, 10, 270);
INSERT INTO `sys_book_detail` VALUES (6, 6, 2, '动物园', 'http://img3m4.ddimg.cn/19/18/24043654-1_x_5.jpg', '【日】乙一', '黑乙一的经典代表作，惊悚却洁净的字句，温暖与寒意同时交缠，令人安心却更愁怅', 23.00, 8.96, 10, 280);
INSERT INTO `sys_book_detail` VALUES (7, 7, 2, '呼兰河传（2019）', 'http://img3m0.ddimg.cn/72/9/27904410-1_x_5.jpg', '萧红，果麦文化 ', '入选新课标推荐书目，中小学生必读名著。独家版画插图，随书赠萧红版画书签！果麦出品', 15.00, 10.00, 1, 290);
INSERT INTO `sys_book_detail` VALUES (8, 8, 2, '古炉', 'http://img3m0.ddimg.cn/40/36/21009820-1_x_2.jpg', '贾平凹', '贾平凹力作 直逼二十世纪六十年代中国最大历史运动', 18.00, 10.00, 2, 360);
INSERT INTO `sys_book_detail` VALUES (9, 9, 3, '曾国藩（全三册）', 'http://img3m3.ddimg.cn/96/29/20500323-1_x_6.jpg', '唐浩明', '受中央国家机关干部欢迎的10本书之一、中纪委推荐干部必读书目。宗庆后、柳传志等商界传奇联袂推荐！一部展现中国式处世智慧的作品。', 19.00, 8.52, 1, 380);
INSERT INTO `sys_book_detail` VALUES (10, 10, 3, '楼兰', 'http://img3m1.ddimg.cn/14/28/23238581-1_x_1.jpg', '〔日〕井上靖 著，新经典 出品', '早已消失在黄沙尽头的楼兰，正在井上靖笔下得以复活！', 18.00, 10.00, 3, 400);
INSERT INTO `sys_book_detail` VALUES (11, 11, 3, '巨人的陨落（套装共3册）', 'http://img3m4.ddimg.cn/26/10/23951294-1_x_26.jpg', '[英]肯·福莱特(Ken Follett ) 著；读客文化 出品', '全球读者平均3个通宵读完，和主人公一起横穿一战！全球每3秒卖出一本！十年来，横扫欧美16国排行榜的超级小说。碾压全球畅销榜的伟大故事，18次登上10国畅销榜第1名！首次登陆中国！读客熊猫君出品', 16.00, 8.60, 11, 430);
INSERT INTO `sys_book_detail` VALUES (12, 12, 3, '敦煌', 'http://img3m1.ddimg.cn/16/35/23390251-1_x_1.jpg', '(日)井上靖 著，新经典 出品', '引领无数读者奔赴敦煌莫高窟，惊天动地讲述藏经洞千古之谜', 18.00, 7.52, 15, 460);
INSERT INTO `sys_book_detail` VALUES (13, 13, 4, '人间失格', 'http://img3m5.ddimg.cn/56/4/23761145-1_x_6.jpg', '（日）太宰治　著，杨伟　译', '超燃！“丧文化”流行，《人间失格》成了现象级畅销书，创当当3天销售50000+册的奇迹！收录作者绝笔之作《Good bye》。一个“丧失为人资格”少年的心灵独白，一个对村上春树影响至深的绝望凄美故事。', 23.00, 7.52, 15, 260);
INSERT INTO `sys_book_detail` VALUES (14, 14, 4, '活着', 'http://img3m0.ddimg.cn/7/27/25137790-1_x_4.jpg', '余华', '余华是我国当代著名作家，也是享誉世界的小说家，曾荣获众多国内外奖项。《活着》是其代表作，在全球广泛传播，销量逾千万册，获得了普遍好评，已成为中国乃至世界当代文学的经典。', 26.00, 6.86, 1, 280);
INSERT INTO `sys_book_detail` VALUES (15, 15, 4, '平凡的世界：全三册', 'http://img3m2.ddimg.cn/41/25/25090502-1_x_5.jpg', '路遥 著，新经典 出品', '新晋男神朱一龙推荐阅读。茅盾文学奖皇冠上的明珠，激励亿万读者的不朽经典。深受老师和学生喜爱的新课标必读书', 23.00, 6.89, 15, 240);
INSERT INTO `sys_book_detail` VALUES (16, 16, 4, '你想活出怎样的人生', 'http://img3m0.ddimg.cn/37/36/27911800-1_x_3.jpg', '（日）吉野源三郎 著，（日）胁田和 绘 ，新经典 出品', '影响宫崎骏一生的经典小说，入选日本学校教材，荣获日本中学教师票选“送你一本书大奖”，中日知名院士、学者一致推荐。生而为人真正重要的事，都在这本书里了！', 24.00, 9.96, 15, 260);
INSERT INTO `sys_book_detail` VALUES (17, 17, 5, '张大小姐', 'http://img3m4.ddimg.cn/25/8/25548064-1_x_2.jpg', '洪晃', '上架首月，加印三次，热销十万；一部讲述上流社会、精英人群的时尚悬念爱情侦探小说，出身豪门的红三代，公关一姐和时尚教母们，面对名利和欲望，显露虚荣本质，姚晨，谭卓倾力推荐。', 26.00, 10.00, 15, 380);
INSERT INTO `sys_book_detail` VALUES (18, 18, 5, '北京女子图鉴', 'http://img3m1.ddimg.cn/58/15/27892021-1_x_6.jpg', '王欣 反裤衩阵地', '“读的太快怕错过，读的太深怕流泪”，两年公号连载，累计留言10万+，有共鸣、有泪目、有动容、有惊叹、有心心相惜……现代女子才不会只要爱情，我们要活着的更多可能。', 18.00, 8.96, 1, 390);
INSERT INTO `sys_book_detail` VALUES (19, 19, 5, '我弥留之际 ', 'http://img3m8.ddimg.cn/84/28/22921158-1_x_1.jpg', '(美) W.福克纳 著, 杨自德, 王守芳 译', '（福克纳的代表作以及“约福克纳帕塔法世系”的重要小说之一！与马尔克斯同级的魔幻现实主义文学大家！邪恶、堕落、腐败的主题。浓厚的美国南方哥特式风格。）', 17.00, 7.85, 15, 420);
INSERT INTO `sys_book_detail` VALUES (20, 20, 5, ' 我们的时代（套装全三册，亲笔签名本）', 'http://img3m1.ddimg.cn/61/21/28486321-1_b_3.jpg-1_x_8.jpg', '王强', '首部全景展现1990-2018中国创业者群体事业兴衰与命运沉浮的长篇力作。新商业小说开山名家、《圈子圈套》作者王强积淀30年诚意奉献。吴晓波、阿耐、蔡崇达联袂推荐。', 18.00, 10.00, 15, 430);
INSERT INTO `sys_book_detail` VALUES (21, 21, 6, '侠隐', 'http://img3m5.ddimg.cn/24/14/25297395-1_x_2.jpg', '张北海', '姜文电影《邪不压正》原著小说。阿城、王安忆、王德威、骆以军、肖复兴、梁文道、姜文、高晓松、张艾嘉、朱一龙、马家辉、徐皓峰 联袂推荐。新版收录新后记，增补作者张北海答客问，讲述《侠隐》前世今生。', 19.00, 9.58, 15, 460);
INSERT INTO `sys_book_detail` VALUES (22, 22, 6, '刀背藏身：徐皓峰武侠短篇集', 'http://img3m1.ddimg.cn/44/21/23311871-1_x_4.jpg', '徐皓峰 ', '同名武打电影7月10日上映，许晴、春夏、张傲月、黄觉、耿乐主演！以情驭刀！新版腰封suiji发放！', 23.00, 10.00, 15, 350);
INSERT INTO `sys_book_detail` VALUES (23, 23, 6, '天下刀宗', 'http://img3m0.ddimg.cn/79/34/28492180-1_x_3.jpg', '雨楼清歌', '随书赠送精美海报图、武林门派分布图，2019年豆瓣阅读长篇拉力赛总冠军、幻想组首奖作品，有近 180 万阅读量，累计推荐票高达 5.7 万张，雨楼清歌是继金庸、古龙、梁羽生之后备受期望的青年武侠小说家', 16.00, 8.52, 15, 350);
INSERT INTO `sys_book_detail` VALUES (24, 24, 6, '一瓣河川', 'http://img3m7.ddimg.cn/82/19/25263397-1_x_3.jpg', '雨楼清歌', '江南、严锋、六神磊磊、小椴、宝树、陈楸帆一致推荐，豆瓣阅读征文大赛武侠组首奖作品。', 26.00, 10.00, 15, 330);
INSERT INTO `sys_book_detail` VALUES (25, 25, 7, '片寄凉太写真集 Goodbye，white', 'http://img3m3.ddimg.cn/27/32/25301853-1_x_6.jpg', '片寄凉太，天闻角川出品', '天闻角川出品：赠品：明信片两张，计入官方销量', 27.00, 6.88, 15, 330);
INSERT INTO `sys_book_detail` VALUES (26, 26, 7, '随峰成长', 'http://img3m0.ddimg.cn/87/1/24022140-1_x_6.jpg', '欢瑞世纪编', '收录剧中大量李易峰个人精美的剧照和海报，更重要的是有李易峰独家的专访哦！', 28.00, 7.90, 15, 332);
INSERT INTO `sys_book_detail` VALUES (27, 11, 8, '轻狂', 'http://img3m2.ddimg.cn/17/16/27926432-1_x_3.jpg', '巫哲', '既要今朝醉，也要万年长。畅销书作家巫哲全新燃情力作。《撒野》热血兄弟篇。轻狂一场，无悔青春。', 26.00, 8.52, 1, 320);
INSERT INTO `sys_book_detail` VALUES (28, 1, 8, '夏目友人帐', 'http://img3m2.ddimg.cn/33/18/24017532-1_x_24.jpg', '（日）村井贞之著，廖雯雯译，酷威文化 出品', '只要有想见的人，就不再会是孤身一人了。日本殿堂级漫画家绿川幸感动千万网友的超治愈系神作。中国首次日方正版授权，初次小说化。夏目、猫老师等原班人马崭新回归！酷威文化', 24.00, 8.54, 10, 340);
INSERT INTO `sys_book_detail` VALUES (29, 2, 8, '青春的梦，在青春做完', 'http://img3m2.ddimg.cn/31/32/27868432-1_x_7.jpg', '苑子文 苑子豪', '带你回到那些年千军万马奔赴的高考，回到曾经以为毕业遥遥无期转眼就各奔东西的校园。', 26.00, 8.42, 1, 360);
INSERT INTO `sys_book_detail` VALUES (30, 3, 8, '向着你的方向生长', 'http://img3m5.ddimg.cn/55/10/27917065-1_x_9.jpg', '苑子文 著，儒意欣欣 出品', '学会与自己的野心相处，你越勇敢，它越温柔', 15.00, 7.47, 2, 350);
INSERT INTO `sys_book_detail` VALUES (31, 4, 9, '十九岁的时差', 'http://img3m6.ddimg.cn/80/20/25337546-1_x_11.jpg', '王俊凯', '王俊凯的书。随书附赠精美明信片。', 16.00, 9.20, -2, 360);
INSERT INTO `sys_book_detail` VALUES (32, 5, 9, '2023非虚构成长', 'http://img3m2.ddimg.cn/82/1/25320322-1_x_7.jpg', 'TFBOYS组合', '王俊凯，王源，易烊千玺首次记录成长点滴，5万诚意文字，268页图文，关于梦想，关于生活，关于可能性，关于人生，关于十年之约。随书附赠5张概念书签。', 15.00, 8.94, 1, 410);
INSERT INTO `sys_book_detail` VALUES (33, 6, 9, '而立 24', 'http://img3m9.ddimg.cn/34/12/23777359-1_x_6.jpg', '张艺兴', '所立之处，决定了看到什么样的风景，承受什么样的责任，展现什么样的自我，活出什么样的未来。只有努力努力再努力！', 16.00, 5.52, 1, 160);
INSERT INTO `sys_book_detail` VALUES (34, 7, 9, '来得及', 'http://img3m9.ddimg.cn/97/26/23726239-1_x_3.jpg', '何炅', '不是剧本，不是剧照集，是和电影同样，关于青春和梦想的对话。书里也有花在绽放……', 18.00, 8.74, 1, 180);
INSERT INTO `sys_book_detail` VALUES (35, 8, 10, '待我有罪时套装（全三册）', 'http://img3m5.ddimg.cn/48/26/28480665-1_x_10.jpg', '丁墨 白马时光出品', '一段扑朔迷离的杀人回忆，一次毫无预兆的情感收留，一场以善为名的众恶惩罚，白马时光', 20.00, 8.94, 1, 190);
INSERT INTO `sys_book_detail` VALUES (36, 9, 10, '默读', 'http://img3m8.ddimg.cn/21/14/25206708-1_x_7.jpg', 'Priest', '《大英雄时代》《有匪》后大神级作家Priest口碑爆品 史上备受瞩目的罪案小说——人气逆天程度，没有之一！随书赠送倾予九川手绘《默读》警队全员', 26.00, 8.94, 1, 230);
INSERT INTO `sys_book_detail` VALUES (37, 10, 11, '小林漫画：人间逍遥游', 'http://img3m1.ddimg.cn/54/18/28535121-1_x_3.jpg', '林帝浣', '小林漫画：人间逍遥游（暖心一笑，就是人间良药；逍遥万里，始终情深为你；——小林心灵治愈漫画集）', 13.00, 9.16, 1, 260);
INSERT INTO `sys_book_detail` VALUES (38, 11, 11, '图案人', 'https://img3.doubanio.com/view/subject/s/public/s33646672.jpg', '雷·布拉德', '《图案人》是科幻大师雷•布拉德伯里的经典短篇小说集。以一个全身遍布可以预知未来的文身图案的神秘男子为线索，牵出18则“黑镜”式天马行空的科幻奇妙物语，每一篇都有诗意而奇诡的想象和出人意料的结局。本书曾于1969年被改编为cult电影，同名系列剧集预计将于2022年由《超感猎杀》导演迈克尔•斯特拉辛斯基搬上荧幕。\r\n\r\n作为公认的科幻大师，布拉德伯里的作品别具一格：并非硬核科幻，却能洞察人性和科技间最尖锐的矛盾，抵达内心深处的欲望和恐惧。每个故事都像一则寓言，穿梭在科幻与现实、戏谑与严肃之间，悲观而又不乏对', 15.00, 9.16, 1, 180);
INSERT INTO `sys_book_detail` VALUES (39, 11, 11, '感情研究指南', 'https://img3.doubanio.com/view/subject/s/public/s33641371.jpg', '威廉·瑞迪', '“追问一个人的情感是否发自内心，即情感的真与伪，这种提问本身没有什么意义，因为所有成年人的情感体验其实都是被训练的结果。”\r\n\r\n一个人内心的情感体验，是某种关系的体现。无论是个人、团体还是阶层的情感表达，都无法忽视社会情感准则的教化训练。本书作为情感史研究的奠基之作，提出了情感表达、情感体制、情感导航、情感自由、情感痛苦等理论，并以“情感主义”为切入点，研究启蒙时代及法国大革命时期人们情感表达方式的变化及其意义。沙龙、共济会、咖啡馆等情感避难所的出现，是人们避免情感痛苦、追求情感自由的表现。人们在日记、', 23.11, 9.05, 1, 150);
INSERT INTO `sys_book_detail` VALUES (40, 11, 11, '铜锣烧也有春天', 'https://img1.doubanio.com/view/subject/s/public/s33627369.jpg', '多利安助', '《铜锣烧也有春天》为日本当代作家多利安助川的治愈系中篇小说，展现了人的困境和希望，以及人性之光。以日式点心铜锣烧作为意象，讲述了一个走出人生失意和低谷的感人故事。故事发生在一间名为“铜锣春”的铜锣烧专卖店里，主人公千太郎是这家店的店长，与一个来自单亲家庭，感受不到关爱的中学女生若菜，以及一个长期与世隔绝的老婆婆德永，三人在经历了一连串风波和生活的困难后，深深地融入了彼此的生活，同时也改变了彼此的未来人生。该小说被日本著名导演河濑直美搬上荧幕，深刻的人生哲理和婉转的日式表达手法使得.', 12.30, 9.55, 1, 260);
INSERT INTO `sys_book_detail` VALUES (41, 12, 12, '大宋之变', 'https://img1.doubanio.com/view/subject/s/public/s33605737.jpg', '赵冬梅', '\r\n\r\n从来没有哪个朝代像宋朝这样饱受争议，有人说它积贫积弱，有人说它文明辉煌。北京大学赵冬梅教授认为，从1063年英宗即位，到1086年哲宗初司马光离世，二十四年间，宋朝政治由盛转衰，堪称“大宋之变”。\r\n\r\n本书以司马光的后半生为线索，推演英宗、神宗、哲宗三朝政坛风云，深入濮议之争、王安石变法、司马相业等历史细节，以人物为经，以事件为纬，充分展现韩琦、王安石、司马光、苏轼等文人政治家在历史大变局中的抗争与博弈，再现共治时代末期知识分子的荣光与屈辱。以抽丝剥茧的分析推理，典雅流畅的语言，探究大宋之变的错', 12.22, 9.14, 1, 260);
INSERT INTO `sys_book_detail` VALUES (42, 12, 12, '钻石与铁锈', 'https://img3.doubanio.com/view/subject/s/public/s33655243.jpg', '琼·倍滋', '★万众瞩目的天才少女，如何成为了为自由而战的民谣女王？琼•贝兹的成长之旅与回望之书。\r\n\r\n作为出道即成名的灵魂歌者，作为美国乐坛至关重要的人物，是她复兴了民谣并将其带给了庞大的主流听众群体，也是她发掘并向大众推荐了鲍勃·迪伦。', 24.20, 8.43, 1, 380);
INSERT INTO `sys_book_detail` VALUES (43, 12, 12, '猴杯', 'https://img3.doubanio.com/view/subject/s/public/s33655783.jpg', '张贵兴', '张贵兴是堪与李永平相提并论的马华文学重量级作家，他的文字密实华丽、浸淫漫漶，在港台及海外华文严肃文学创作者中，像他一样对于文本细节极致雕琢，又能 驾驭一整个宏大长篇故事的华文小说写作者，屈指可数。\r\n\r\n《猴杯》是张贵兴继《赛莲之歌》《群象》两部小说之后，“雨林三部曲”（黄锦树语）的终章，也是他的生涯代表作。他以故乡风物为背景、以魔幻现实的笔调书写家族史，在极尽曲折的四代情仇之下，《猴杯》令人惊艳的，应是他笔下浓墨重彩描绘的雨林意象，华丽文字将暴力、情欲投射在犀牛、蜥蜴、猴子、猪笼草、丝绵树……种种野兽草', 25.50, 7.65, 1, 350);
INSERT INTO `sys_book_detail` VALUES (44, 12, 12, '别想生活有答案', 'https://img9.doubanio.com/view/subject/s/public/s33628336.jpg', '越尔格', '哲学大家的思考+难以回答的问题+日常生活的例子+通俗易懂的解读=谁都可以入门哲学\r\n\r\n陈嘉映、周濂联袂推荐的哲学入门读物\r\n\r\n真实世界没有标准答案，但我们永远能够思考。\r\n\r\n哲学从来无用，哲学从来大用。\r\n\r\n它无法带给你财富、爱人与快乐，却帮助你判断价值、理解爱情和找寻幸福。\r\n\r\n它的知识空无一物，它的问题囊括宇宙，促使你不断思考，却无法给你任何一个问题的准确答案。\r\n\r\n它不给予你任何东西，但它带来的是思考后只属于你的世界图景！', 16.50, 8.88, 1, 400);
INSERT INTO `sys_book_detail` VALUES (45, 13, 13, '血殇', 'https://img1.doubanio.com/view/subject/s/public/s33621058.jpg', '理查德·普雷斯顿', '世卫组织认为，2014年的埃博拉疫情显示，“对于应对严重的流感大流行和全球公共卫生突发事件，世界并没有做好准备”。\r\n\r\n埃博拉流行病更像是某种模式的一部分，这是一种新发病毒跳出生态系统后造成的震荡波。病毒在人群中自我增殖，吞噬生命，遭遇人类这个物种的反抗，最终偃旗息鼓。然而，下一个震荡波会是什么？\r\n\r\n随着过去渐渐变成未来，现在，我打算预测一场全球性爆发，由某种生物安全四级的新发病毒引起，它能通过空气在人与人之间传播，没有疫苗，用现代医药无法医治，用术语说，这是一起四级事件。', 18.50, 9.83, 1, 350);

-- ----------------------------
-- Table structure for sys_book_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_book_list`;
CREATE TABLE `sys_book_list`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `book_list_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书单名',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '封面图',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '书单描述',
  `books_quantity` int(20) NOT NULL COMMENT '书本数',
  `like_quantity` int(20) NULL DEFAULT NULL COMMENT '收藏量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_book_list
-- ----------------------------
INSERT INTO `sys_book_list` VALUES (1, '了不起的她', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_03.jpg', '他们不是女神，他们是雌雄同体', 444, 444);
INSERT INTO `sys_book_list` VALUES (2, '寒冬的慰藉只要一本书', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_05.jpg', '22阅读驱赶寒意', 222, 22);
INSERT INTO `sys_book_list` VALUES (3, '自我管理避免人生不必要的丧失', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_09.jpg', '33以书为镜，看到改变', 33, 33);
INSERT INTO `sys_book_list` VALUES (4, '这些动漫你看过几部', 'http://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/images.jpg', '333', 333, 33);
INSERT INTO `sys_book_list` VALUES (5, '港台书籍一大波', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_101.jpg', '港台书籍一大波', 113, 10);
INSERT INTO `sys_book_list` VALUES (6, '儿童成长故事绘本', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_102.jpg', '儿童成长故事绘本', 84, 10);
INSERT INTO `sys_book_list` VALUES (7, '博物学的世界', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_105.jpg', '博物学的世界', 29, 10);
INSERT INTO `sys_book_list` VALUES (8, '成年人接受的审美再教育', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_106.jpg', '成年人接受的审美再教育', 28, 10);
INSERT INTO `sys_book_list` VALUES (9, '动物再文学中的人性描写', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_109.jpg', '动物再文学中的人物描写', 83, 10);
INSERT INTO `sys_book_list` VALUES (10, '那些能力能让你再工作上取得进步', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_110.jpg', '那些能力能让你再工作中取得进步', 65, 10);
INSERT INTO `sys_book_list` VALUES (11, '旧人，旧物，旧忆', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_113.jpg', '旧人，旧物，旧回忆', 17, 36);
INSERT INTO `sys_book_list` VALUES (12, '留住瞬间的秘密', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_114.jpg', '留住瞬间的秘密', 45, 16);
INSERT INTO `sys_book_list` VALUES (13, '程序员的自我修养', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_121.jpg', '程序员的自我修养', 34, 12);
INSERT INTO `sys_book_list` VALUES (14, '凉风有信，晨露伴读', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_122.jpg', '凉风有信，呈露伴读', 11, 2311);
INSERT INTO `sys_book_list` VALUES (15, '生活即是风景', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_125.jpg', '生活即是风景', 11, 11);
INSERT INTO `sys_book_list` VALUES (16, '政治风云中的鸥鸟', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_126.jpg', '政治风云中的鸥鸟', 11, 44);
INSERT INTO `sys_book_list` VALUES (17, '假期不安排，刷剧看书', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_129.jpg', '假期无安排，刷剧看书', 11, 2211);
INSERT INTO `sys_book_list` VALUES (18, '黄金周的出行小建议', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_13.jpg', '黄金周的出行小建议', 23, 11);
INSERT INTO `sys_book_list` VALUES (19, '与自己和解', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_130.jpg', '与自己和解', 11, 1111);
INSERT INTO `sys_book_list` VALUES (20, '瑜伽圣经', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_133.jpg', '瑜伽圣经', 11, 11);
INSERT INTO `sys_book_list` VALUES (21, '一起来吃瓜', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_134.jpg', '一起来吃瓜', 23, 11);
INSERT INTO `sys_book_list` VALUES (22, '如何提高艺术审美', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_137.jpg', '如何提高艺术审美', 11, 12);
INSERT INTO `sys_book_list` VALUES (23, '如何让亲自关系充满小欢乐', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_138.jpg', '如何让亲子关系充满小欢乐', 11, 221);
INSERT INTO `sys_book_list` VALUES (24, '风神宇宙，你了解多少', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_14.jpg', '风神宇宙你了解多少', 11, 1211);
INSERT INTO `sys_book_list` VALUES (25, '清凉一吓', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_141.jpg', '清凉一吓', 11, 11);
INSERT INTO `sys_book_list` VALUES (26, '生活就要食全酒美', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_142.jpg', '生活就要食全酒美', 21, 11);
INSERT INTO `sys_book_list` VALUES (27, '如何做品牌', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20200608140804_145.jpg', '如何做品牌', 11, 11);
INSERT INTO `sys_book_list` VALUES (28, '书籍交互', 'http://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/28.jpg', '这是一部非常具有电影感的小说集，其电影感体现在两个方面，一是沉浸式的叙事，一是蒙太奇式的转场。 ', 22, 22);
INSERT INTO `sys_book_list` VALUES (29, '热锅上的家庭', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/29.jpg', '知名心理学家李松蔚倾情作序推荐\r\n\r\n樊登读书会收听收看量破1300万\r\n\r\n40年长销不衰的原生家庭经典著作\r\n\r\n一个人或许无法突破“原生家庭”，但一家人可以\r\n\r\n重新定义心理治疗，颠覆对家庭的认识\r\n\r\n家人不必孤军奋战，家庭可以有难同当', 22, 12);
INSERT INTO `sys_book_list` VALUES (30, '七个疯子', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/30.jpg', '洞穴中，终有人挣脱束缚，明辨了太阳与影子。 (梅雨之夕评论) ', 34, 66);
INSERT INTO `sys_book_list` VALUES (32, '什么是民粹主义', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/31.jpg', '民粹主义是一种垄断“人民”的身份政治。 (野原新之助评论) ', 11, 11);
INSERT INTO `sys_book_list` VALUES (34, '银河系边缘的小失常', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/32.jpg', '这位作家是不是还有更多未展现的可能？ (H3O | 花毛一体评论) ', 22, 12);
INSERT INTO `sys_book_list` VALUES (35, '剧变', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/33.jpg', '他肯定想不到，书出版还不到一年，大规模量化试验的契机就出现了。 (锡兵评论) ', 45, 23);
INSERT INTO `sys_book_list` VALUES (37, '遗忘通论', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/34.jpg', '人需要记忆来实现理解，进而原谅，最终达到自我救赎。 (Billy评论) ', 12, 56);
INSERT INTO `sys_book_list` VALUES (39, '万有引力之虹', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/39.jpg', '《万有引力之虹》说的，就是散落一地。 (当归莳子评论) ', 123, 22);
INSERT INTO `sys_book_list` VALUES (40, '生而为人我很孤独', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/40.jpg', '作者特雷西娅·莫拉是目前德语文坛的一颗闪耀明星，1971年出生于匈牙利，1990年来到柏林洪堡大学攻读匈牙利语言文学和戏剧学，之后作为作家、译者长居德国。带有旅居背景并熟练掌握两种语言的她，各个作品都多多', 345, 321);
INSERT INTO `sys_book_list` VALUES (42, '父母相亲相爱就是对孩子最好的教育', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/42.jpg', '很早之前看过一个心理专家说：一个父亲爱孩子最基本的表现是，爱孩子的妈妈。 没错，当你生活在一个爸妈不论大小节日，都会单独出去吃饭约会甚至出国度假的家庭里，你一定能准确无误地体会到，什么是——真正的“', 12, 11);
INSERT INTO `sys_book_list` VALUES (44, '女王的两个身体', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/44.jpg', '1840年，鸦片战争爆发，中国自此被西方的坚船利炮轰开了国门。对当时的清廷官员们来说，这些“英夷”处处都不可思议，与历来所见的“夷人”都有所不同，而最可惊讶的地方之一，就是他们的统治者居然是个20岁刚出', 11, 11);
INSERT INTO `sys_book_list` VALUES (46, '撒野', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/46.jpg', '我想，左肩有你，右肩微笑。 我想，在你眼里，撒野奔跑， 我想，一个眼神，就到老。 重点学校的优等生蒋丞被寄养家庭“流放”到亲生父亲所在的钢厂，陌生的环境、粗... ', 33, 11);
INSERT INTO `sys_book_list` VALUES (48, '挪威的森林', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/48.jpg', '\r\n\r\n这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友', 33, 11);
INSERT INTO `sys_book_list` VALUES (50, '最好的我们', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/50.jpg', '你总是说青春从不曾永远，而那时候的我们，就是最好的我们。 这一次，我们和整个青春做告别。 八月长安全新力作。 你还记得高中时的同桌吗？那个少年有世界上最明朗', 22, 11);
INSERT INTO `sys_book_list` VALUES (51, '情书', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/51.jpg', '日本神户，渡边博子在未婚夫藤井树的三周年祭日上又一次陷入到悲痛和思念之中。博子在藤井树的中学同学录里找到了他在小樽市读书时的地址。由于抑制不住对爱人的怀念', 11, 22);
INSERT INTO `sys_book_list` VALUES (52, '何以笙箫默', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/52.jpg', '\r\n\r\n一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表', 11, 22);
INSERT INTO `sys_book_list` VALUES (53, '从你的全世界路过', 'http://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/%E4%B8%8B%E8%BD%BD.jpg', '《从你的全世界路过》是微博上最会写故事的人张嘉佳献给你的心动故事。 最初以“睡前故事”系列的名义在网上疯狂流传，几天内达到1,500,000 次转发，超4亿', 11, 22);
INSERT INTO `sys_book_list` VALUES (54, '从你的全世界路过', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/54.jpg', '《从你的全世界路过》是微博上最会写故事的人张嘉佳献给你的心动故事。 最初以“睡前故事”系列的名义在网上疯狂流传，几天内达到1,500,000 次转发，超4亿', 11, 22);
INSERT INTO `sys_book_list` VALUES (55, '麦田里的守望者', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/55.jpg', '这本小说一出版，就受到国内青少年的热烈欢迎，认为它道出了自己的心声，一时大、中学校的校园里到处都模仿小说主人公霍尔顿——他们在大冬天身穿风衣，倒戴着红色猎人.', 33, 11);
INSERT INTO `sys_book_list` VALUES (56, '微微一笑很倾城', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/56.jpg', '如果你“惨”遭抛弃后，忽然有个很强很拽很不可一世的男人向你求婚，你怎么反应？ 贝微微同学的反应是：“大神……你被盗号了么＝ ＝” 这个世界也太不真实了吧', 12, 12);
INSERT INTO `sys_book_list` VALUES (57, '梦里花落知多少', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/57.jpg', '《梦里花落知多少》是郭敬明出版第二部小说，此作一改《幻城》的奇幻风格，从天上回到人间。小说以北京、上海等大都市为背景，讲述了几个年青人的爱情故事，情节曲折', 22, NULL);
INSERT INTO `sys_book_list` VALUES (58, '夏日东曲', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/58.jpg', '2007年出版以来长踞《纽约时报》、美国亚马逊书店、Goodreads各种畅销书榜单。 根据这部小说改编的电影《请以你的名字呼唤我》荣获2018年第90届奥.', 11, 11);
INSERT INTO `sys_book_list` VALUES (59, '雨季不再来', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/59.jpg', '《雨季不再来》以三毛的生命历程为主题，记录了三毛17岁到22岁的成长过程，真实呈现出三毛少女时代的成长感受，辍学、自闭、叛逆，游学西班牙、德国、美国后，渐渐', 22, 11);
INSERT INTO `sys_book_list` VALUES (60, '你好旧时光', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/60.jpg', '八月长安经典之作，六周年珍藏版。赠旧时光手绘卡六张。 2015年全新修订，透明PVC盒装全三册。 完美的青春共鸣文本，写给所有人的记忆之书。 彼得潘终于走完.', 22, 11);
INSERT INTO `sys_book_list` VALUES (61, '悲伤逆流成河', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/61.jpg', '\r\n\r\n你曾经有梦见这样无边无际的月光下的水域么？ 无声起伏的黑色的巨浪，在地平线上爆发出沉默的力量。 就这样，从仅仅打湿脚底，到盖住脚背，漫过小腿，一步一步地，走.', 11, 34);
INSERT INTO `sys_book_list` VALUES (62, '三体', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/62.jpg', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的', 11, 22);
INSERT INTO `sys_book_list` VALUES (63, '呼吸', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/63.jpg', '特德·姜作品新结集，内藏《商人和炼金术师之门》《呼吸》《前路迢迢》《软件体的生命周期》《达西的新型自动机器保姆》《双面真相》《大寂静》《脐》《焦虑是自由引起.', 12, 44);
INSERT INTO `sys_book_list` VALUES (64, '海底两万里', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/64.jpg', '本书是法国举世闻名的科幻小说作家儒尔·凡尔纳的代表作之一。 作者让读者登上“鹦鹉螺号”，以平均十二公里的时速，在将近十个月的海底旅行中，随着尼摩船长和他的', 34, 22);
INSERT INTO `sys_book_list` VALUES (65, '球状闪电', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/65.jpg', '在某个离奇的雨夜，一颗球状闪电闯进了少年的视野。它的啸叫低沉中透着尖利，像是一个鬼魂在太古的荒原上吹着埙。当鬼魂奏完乐曲，球状闪电在一瞬间将少年的父母化为灰', 11, 23);
INSERT INTO `sys_book_list` VALUES (66, '一生的故事', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/66.jpg', '一瞥之下，过去与未来轰轰然同时并至， 我的意识成为长达半个世纪的灰烬，时间未至已成灰。 五十年诸般纷纭并发眼底，我的余生尽在其中。 还有，你的一生。', 12, 22);
INSERT INTO `sys_book_list` VALUES (67, '神们自己', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/67.jpg', '22世纪，地球可以和平行宇宙进行物质交换，从此拥有了源源不绝的能源。但是，只有几个人才知道危险的真相：地球上的一个无人信任的科学家、能源渐渐枯竭的星球上的一', 222, 213);
INSERT INTO `sys_book_list` VALUES (68, '醉步男', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/68.jpg', '本书收录时间旅行小说《醉步男》+日式恐怖小说《玩具修理者》。 ', 11, 111);
INSERT INTO `sys_book_list` VALUES (69, '仿生，人会遇到电子羊么', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/69.jpg', '核战后，放射尘让地球上的动物濒临灭绝，地球已不再适合人类居住。为了鼓励残存的人口移民，政府承诺，只要 移民到外 星球，就可以为每个人自动配备一个仿生人帮助其.', 111, 23);
INSERT INTO `sys_book_list` VALUES (70, '银河系列漫游指南', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/70.jpg', '地球被毁灭了，因为要在它所在的地方修建一条超空间快速通道。主人公阿瑟·邓特活下来了，因为他有一位名叫福特·长官的朋友。这位朋友表面上是个找不着工作的演员，其', 222, 111);
INSERT INTO `sys_book_list` VALUES (71, '动物帝国', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/71.jpg', '在世界螺旋状崩坍的边缘 聆听雪落的声音 一首《荒原》式的图像长诗 一部冷峻而温柔的末世启示录 重量级法漫作者恩基·比拉沉寂十年之作 ★ 编辑推荐 “这就是.', 222, 12);
INSERT INTO `sys_book_list` VALUES (72, '赡养人类', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/72.jpg', '一个职业杀手的经历，一个看似荒谬的故事。 财富和技术向着少数人集中，各个方面的贫富差距变大。突发的状况，使得富人开始向穷人抛洒财富，甚至需要 “雇佣杀手来消', 11, 34);
INSERT INTO `sys_book_list` VALUES (73, '环形无语', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/73.jpg', '对于一些人来说，童年的记忆仿佛昨天那么清晰；对我来说，童年却像是另一个世界的事。 时间是八十年代，我们还只是小孩，听磁带、看烂片、糊里糊涂玩电子游戏。我在斯..', 33, 45);
INSERT INTO `sys_book_list` VALUES (74, '沙丘', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/74.jpg', '人类每次正视自己的渺小，都是自身的一次巨大进步。 —————————— 哥白尼提出了“日心说”，我们才知道这个世界并不是宇宙的中心。 哈勃用望远镜揭开了河外..', 23, 12);
INSERT INTO `sys_book_list` VALUES (75, '黑暗的左手', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/75.jpg', '在寒冷的冬星上，生活着一群无性人，他们可以自由选择自己的性别。在每月的一个特别日子，他们自由成为男人或女人。 一名星际联盟特使，被派往冬星，完成一个秘密使命.', 23, 12);
INSERT INTO `sys_book_list` VALUES (76, '2001太空漫游', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/76.jpg', '神秘的黑色石板在史前时代启蒙了地球人类的文明。三百万年后，人类在月球上发现了同样的石板，而石板在出土瞬间立即朝土星方向发射出电磁信号。美国派太空船“发现号', 333, 23);
INSERT INTO `sys_book_list` VALUES (77, '银河帝国', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/77.jpg', '人类蜗居在银河系的一个小角落——太阳系，在围绕太阳旋转的第三颗行星上，生活了十多万年之久。 人类在这个小小的行星（他们称之为“地球”）上，建立了两百多个不同', 122, 22);
INSERT INTO `sys_book_list` VALUES (78, '美丽新世界', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/78.jpg', '《美丽新世界》是二十世纪最经典的反乌托邦文学之一。这部作品与乔治·奥威尔的《1984》、扎米亚京的《我们》并称为“反乌托邦”三书，在国内外思想界影响深远', 12, 23);
INSERT INTO `sys_book_list` VALUES (79, '小灵通漫游未来', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/79.jpg', '记者小灵通无意中登上了一艘开往未来市的气垫船，在船上结识了小虎子和小燕兄妹俩。 气垫船直接开上未来市的码头，小虎子的爸爸妈妈开着水滴形状、没有轮子的汽车来接..', 12, 222);
INSERT INTO `sys_book_list` VALUES (80, '带上他的眼睛', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/80.jpg', '人类使用地层飞船深入地球内部进行探险，一艘地层飞船在航行中失事，下沉到地心，船上只剩下一名年轻的女领航员，她只能在封闭的地心渡过余生……这是刘慈欣获小说', 11, 2222);
INSERT INTO `sys_book_list` VALUES (81, '全息玫瑰碎片', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/81.jpg', '1872年斐利亚・福克先生在伦敦改良俱乐部和会友们打赌，要在八十天内环游地球一周。在当时的情况下，这确实是一件很难办到的事，因为旅客一定要把时间掌握得非常准', 111, 122);
INSERT INTO `sys_book_list` VALUES (82, '少数派报告', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/82.jpg', '\r\n\r\n“科幻鬼才”菲利普•迪克成长于西方科技文明创造出的崭新辉煌的时代。彼时，人类进入了太空，登上了月球，成功制造出第一台工业用机器人……科技的蓬勃发展也催生出主', 111, 222);
INSERT INTO `sys_book_list` VALUES (83, '烧火工', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/83.jpg', '刘慈欣首部科幻童话作品，人气插画师BUTU绘制。“一个原本只想擦亮星星的人，决定用一生来唤醒太阳。” ◎ 编辑推荐 ☆ 刘慈欣首部科幻童话作品。 刘慈欣，中', 22, 112);
INSERT INTO `sys_book_list` VALUES (84, '万物发明指南', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/84.jpg', '如果你忽然发现自己穿越到了只在历史书中读到过的古代，你该怎么办？ - 面对陌生的原始社会，没有电、没有手机、没有网络……没有任何现代化的工具，你该如何生存下', 231, 111);
INSERT INTO `sys_book_list` VALUES (85, '余下只有噪音', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/85.jpg', '关于现代音乐的是非从未消失。在毕加索和波洛克的画作售价过亿的时候，自斯特拉文斯基的《春祭》以降，震撼人心的音乐作品仍在向听众传递不安的涟漪。现代音乐无处不在', 122, 1211);
INSERT INTO `sys_book_list` VALUES (86, '民歌', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/86.jpg', '1975年6月6日，一个雨夜，年轻的学生杨弦举办了一场作品发表会，以诗人余光中的八首诗作入歌，台湾民歌时代的故事就从这里开始了……短暂而辉煌的民歌时代，涌现.', 56, 22);
INSERT INTO `sys_book_list` VALUES (87, '漆黑青城', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/87.jpg', '✨英伦传奇摇滚乐队“山羊皮”主唱 布雷特·安德森首部回忆录 ✨堪比《只是孩子》的动人与深情 ✨《观察家报》《卫报》《伦敦标准晚报》《星期日泰晤士报》《每日电', 22, 45);
INSERT INTO `sys_book_list` VALUES (88, '聆听音乐', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/88.jpg', '《聆听音乐(第5版)》主要结构分三部分，音乐元素、音乐史和美国通俗音乐。在讨论任何音乐概念的同时都结合具体作品分析，并有一目了然的图表作必要辅助。存在于每一', 23, 12);
INSERT INTO `sys_book_list` VALUES (89, '贝多芬', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/89.jpg', '这是一个既献给伟大音乐家，也献给一颗伟大心灵的故事。 贝多芬的一生难称幸福。世人向往的爱情和圆满家庭与他无缘，病痛与磨难始终徘徊不散，健康的体魄也变成奢求', 12, 22);
INSERT INTO `sys_book_list` VALUES (90, '西方文明中的音乐', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/90.jpg', '如书名所示，《西方文明中的音乐》旨在以“西方文明”为整体舞台，展示音乐艺术在近三千年（自古希腊至20世纪初）的漫长历程中所扮演的戏剧性角色。由此出发，《西方..', 55, 67);
INSERT INTO `sys_book_list` VALUES (91, '听音乐', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/91.jpg', '作为一部多次再版的古典与现代音乐教科书，罗杰·凯密恩的《听音乐》以其独特的角度为读者展现了音乐的魅力。 作者首先介绍了掌握音乐的一些基本乐理与技巧，并通过各.', 333, 34);
INSERT INTO `sys_book_list` VALUES (92, '音乐即自由', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/92.jpg', '本书是日本著名音乐大师坂本龙一唯一口述自传。幼时的坂本龙一，因为饲养小白兔而作的一曲《小兔之歌》，使他第一次强烈地体会到音乐带来的喜悦。青年时，他是一名彻头', 45, 55);
INSERT INTO `sys_book_list` VALUES (93, '认识乐理', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/93.jpg', '\r\n\r\n不管学习哪种乐器，乐理知识必不可少！ 无需音乐基础，从零开始，轻松走进音乐世界！ .................. ※编辑推荐※ ☆ 美国高校经典教材，', 33, 11);
INSERT INTO `sys_book_list` VALUES (94, '只是孩子', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/94.jpg', '这是爱的夏天，也是躁动的夏天，一次在布鲁克林的偶遇，将两个年轻人引向了艺术、奉献和启蒙的道路。 日后，帕蒂·史密斯会成为一名诗人和表演者，罗伯特·梅普尔索普.', 45, 23);
INSERT INTO `sys_book_list` VALUES (95, '音乐的故事', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/95.jpg', '音乐如今已成为我们日常生活中不可或缺的一部分，然而音乐如何从一个单调的音符发展为多声部的歌剧，似乎仍是一个谜团。什么时候我们从单声部歌唱演进到多声部？什么时.', 23, 12);
INSERT INTO `sys_book_list` VALUES (96, '小夜曲', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/96.jpg', '本书是作者的第一部短篇集，全书以音乐为线索，由五个看似独立却又相互关联的故事组成。故事的主要人物都同音乐情牵相关：郁郁不得志的餐厅乐手，风光不再的过气歌星', 34, 12);
INSERT INTO `sys_book_list` VALUES (97, '地下乡愁蓝调', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/97.jpg', '这不仅仅是一本乐评集。 这是一本披着音乐外衣的青春事件簿，一部关于已逝年代的往事纪念册。 一九七一年，史上最伟大的摇滚乐团披头士已经解散；乐史\"三J”——吉...', 23, 11);
INSERT INTO `sys_book_list` VALUES (98, '如何听爵士', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/98.jpg', '爵士乐的精髓何在？我们该如何品鉴大师级的演奏？即兴演奏就是随意发挥吗？为什么听、如何听、听什么、听谁的，有关爵士乐的种种疑问，你都将在这里找到答案。 美国杰', 232, 11);
INSERT INTO `sys_book_list` VALUES (99, '编年史', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/99.jpg', '☆2016年诺贝尔文学奖得主唯一自传 《编年史》是美国传奇民谣歌手鲍勃•迪伦历时三年在打字机上亲手敲出来的回忆录，记录了自己生命中种种非凡的时刻——初到纽约..', 11, 123);
INSERT INTO `sys_book_list` VALUES (100, '作曲基本原理', 'https://student-manage-ll.oss-cn-beijing.aliyuncs.com/img/100.jpg', '本书结合采用了两种探讨方法：一 分析名家作品，重点是贝多芬的钢琴奏鸣曲；二 实际写作音乐曲式。作为一本分析教材，它把《和声的结构功能》中的后面几章，特别是第.', 343, 123);

-- ----------------------------
-- Table structure for sys_buy_books
-- ----------------------------
DROP TABLE IF EXISTS `sys_buy_books`;
CREATE TABLE `sys_buy_books`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `book_id` int(10) NOT NULL COMMENT '书籍id',
  `user_id` int(20) NOT NULL,
  `status` int(10) NOT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_buy_books
-- ----------------------------
INSERT INTO `sys_buy_books` VALUES (1, 1, 1802343315, 2);
INSERT INTO `sys_buy_books` VALUES (7, 3, 1802343215, 1);
INSERT INTO `sys_buy_books` VALUES (50, 1, 1802343215, 0);

-- ----------------------------
-- Table structure for sys_recycle
-- ----------------------------
DROP TABLE IF EXISTS `sys_recycle`;
CREATE TABLE `sys_recycle`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `address_id` int(20) NOT NULL COMMENT '地址id',
  `book_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '书本数量',
  `time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '下单时间',
  `recycle_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回收时间',
  `status` int(10) NULL DEFAULT NULL COMMENT '状态码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_recycle
-- ----------------------------
INSERT INTO `sys_recycle` VALUES (1, 1802343215, 4, '5-15本', '2020-06-21 14:47:25', '2020年6月22日上午', 1);
INSERT INTO `sys_recycle` VALUES (2, 1802343215, 4, '5-15本', '2020-06-21 14:47:45', '2020年6月22日上午', 2);
INSERT INTO `sys_recycle` VALUES (8, 1802343215, 1, '5-15本', '2020-06-23 19:56:23', '2020年06月21日上午', 2);
INSERT INTO `sys_recycle` VALUES (11, 1802343334, 4, '5-15本', '2020-06-24 16:19:43', '2020年6月25', 0);

-- ----------------------------
-- Table structure for sys_shopping_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_shopping_list`;
CREATE TABLE `sys_shopping_list`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `book_id` int(20) NOT NULL COMMENT '书籍id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_shopping_list
-- ----------------------------
INSERT INTO `sys_shopping_list` VALUES (32, 1802343334, 2);
INSERT INTO `sys_shopping_list` VALUES (33, 1802343334, 5);
INSERT INTO `sys_shopping_list` VALUES (36, 1802343215, 1);
INSERT INTO `sys_shopping_list` VALUES (38, 1802343215, 4);

-- ----------------------------
-- Table structure for sys_subtype
-- ----------------------------
DROP TABLE IF EXISTS `sys_subtype`;
CREATE TABLE `sys_subtype`  (
  `id` int(20) NOT NULL COMMENT 'id',
  `type_id` int(20) NOT NULL COMMENT '类别id',
  `subtype_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '子类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_subtype
-- ----------------------------
INSERT INTO `sys_subtype` VALUES (1, 1, '外国小说');
INSERT INTO `sys_subtype` VALUES (2, 1, '乡土');
INSERT INTO `sys_subtype` VALUES (3, 1, '历史');
INSERT INTO `sys_subtype` VALUES (4, 1, '社会');
INSERT INTO `sys_subtype` VALUES (5, 1, '都市');
INSERT INTO `sys_subtype` VALUES (6, 1, '武侠');
INSERT INTO `sys_subtype` VALUES (7, 2, '影视写真');
INSERT INTO `sys_subtype` VALUES (8, 2, '叛逆/成长');
INSERT INTO `sys_subtype` VALUES (9, 2, '娱乐/偶像');
INSERT INTO `sys_subtype` VALUES (10, 2, '悬疑/惊悚');
INSERT INTO `sys_subtype` VALUES (11, 3, '漫画');
INSERT INTO `sys_subtype` VALUES (12, 3, '幽默/笑话集');
INSERT INTO `sys_subtype` VALUES (13, 3, '图像小说');
INSERT INTO `sys_subtype` VALUES (14, 4, '旅游攻略');
INSERT INTO `sys_subtype` VALUES (15, 4, '地图');
INSERT INTO `sys_subtype` VALUES (16, 4, '户外探险');
INSERT INTO `sys_subtype` VALUES (17, 5, '球类');
INSERT INTO `sys_subtype` VALUES (18, 5, '舞蹈');
INSERT INTO `sys_subtype` VALUES (19, 5, '围棋');
INSERT INTO `sys_subtype` VALUES (20, 5, '极限运动');
INSERT INTO `sys_subtype` VALUES (21, 6, '名人励志处事学');
INSERT INTO `sys_subtype` VALUES (22, 6, '青少年励志');
INSERT INTO `sys_subtype` VALUES (23, 7, '一般管理学');
INSERT INTO `sys_subtype` VALUES (24, 7, '会计');
INSERT INTO `sys_subtype` VALUES (25, 7, '金融/投资');
INSERT INTO `sys_subtype` VALUES (26, 7, '经济学理论');
INSERT INTO `sys_subtype` VALUES (27, 8, '中国儿童文学');
INSERT INTO `sys_subtype` VALUES (28, 8, '少儿音乐');
INSERT INTO `sys_subtype` VALUES (29, 8, '少儿期刊');
INSERT INTO `sys_subtype` VALUES (30, 9, '理论法学');
INSERT INTO `sys_subtype` VALUES (31, 9, '法学文集/经典著作');
INSERT INTO `sys_subtype` VALUES (32, 10, '政治');
INSERT INTO `sys_subtype` VALUES (33, 10, '军事');
INSERT INTO `sys_subtype` VALUES (34, 11, '社会学');
INSERT INTO `sys_subtype` VALUES (35, 11, '社会科学总论');
INSERT INTO `sys_subtype` VALUES (36, 12, '心理咨询与治疗');
INSERT INTO `sys_subtype` VALUES (37, 12, '心理百科');
INSERT INTO `sys_subtype` VALUES (38, 12, '女性心理自助');
INSERT INTO `sys_subtype` VALUES (39, 12, '变态心理学');
INSERT INTO `sys_subtype` VALUES (40, 13, '世界史');
INSERT INTO `sys_subtype` VALUES (41, 13, '逸闻野史');
INSERT INTO `sys_subtype` VALUES (42, 13, '历史普及读物');
INSERT INTO `sys_subtype` VALUES (43, 14, '英语');
INSERT INTO `sys_subtype` VALUES (44, 14, '日语');
INSERT INTO `sys_subtype` VALUES (45, 14, '俄语');
INSERT INTO `sys_subtype` VALUES (46, 14, '德语');
INSERT INTO `sys_subtype` VALUES (47, 15, '程序设计');
INSERT INTO `sys_subtype` VALUES (48, 15, '人工智能');
INSERT INTO `sys_subtype` VALUES (49, 15, '网络与数据通信');
INSERT INTO `sys_subtype` VALUES (50, 16, '其它');

-- ----------------------------
-- Table structure for sys_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_type`;
CREATE TABLE `sys_type`  (
  `id` int(20) NOT NULL COMMENT 'id',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类别名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_type
-- ----------------------------
INSERT INTO `sys_type` VALUES (1, '历史');
INSERT INTO `sys_type` VALUES (2, '小说');
INSERT INTO `sys_type` VALUES (3, '青春文学');
INSERT INTO `sys_type` VALUES (4, '旅游/地图');
INSERT INTO `sys_type` VALUES (5, '体育/运动');
INSERT INTO `sys_type` VALUES (6, '成功励志');
INSERT INTO `sys_type` VALUES (7, '经济管理');
INSERT INTO `sys_type` VALUES (8, '童书');
INSERT INTO `sys_type` VALUES (9, '法律');
INSERT INTO `sys_type` VALUES (10, '政治/军事');
INSERT INTO `sys_type` VALUES (11, '社会/科学');
INSERT INTO `sys_type` VALUES (12, '心理学');
INSERT INTO `sys_type` VALUES (13, '外语');
INSERT INTO `sys_type` VALUES (14, '计算机/网络');
INSERT INTO `sys_type` VALUES (15, '其它');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(20) NOT NULL COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `balance` decimal(32, 2) NOT NULL COMMENT '余额',
  `discount_coupon` decimal(32, 0) NULL DEFAULT NULL COMMENT '优惠券',
  `integration` int(255) NULL DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1802343215, '吴苏苏', '18851137516', 'E10ADC3949BA59ABBE56E057F20F883E', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591931052817&di=26e8635167c10e73612b6d690418856e&imgtype=0&src=http%3A%2F%2Fdmimg.5054399.com%2Fallimg%2Fpkm%2Fpk%2F13.jpg', '安徽阜阳', 185.07, 20, 110);
INSERT INTO `sys_user` VALUES (1802343330, '别来无恙', '18805162578', 'E10ADC3949BA59ABBE56E057F20F883E', 'https://wanghuanle.oss-cn-beijing.aliyuncs.com/avatar/a%20%2884%29.jpg', '浙江杭州', 5.00, 5, 0);
INSERT INTO `sys_user` VALUES (1802343334, '小王八蛋', '19850099791', 'E10ADC3949BA59ABBE56E057F20F883E', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3406545366,2485577170&fm=26&gp=0.jpg', '江苏南京', 1.00, 5, 10);

SET FOREIGN_KEY_CHECKS = 1;
