一、 项目背景和目的
	该项目名字为《果物购平台》，客户端主要实现用户对商品的购买收藏，网站信息的查询，个人信息的修改，登录控制等功能，服务端主要实现管理员对用户，商品，订单，留言等管理

二、 技术选型
系统环境： windows 10（64位）操作系统。
开发软件：IntelliJ IDEA 2022.3.2，Navicat12
开发技术：HTML5，CSS3，JavaScript，jQuery，JSP，JAVA，MySQL8.0

三、项目部署
mysql密码修改在Util类和web.xml里面

四、客户端：
采用模板技术制作网页的头部和尾部，建立了一个公共样式common.css，在京东官网拷贝了一份初始化样式base.css。我将页面划分为快捷导航——shortcut，头部——header，导航——nav，首页专有的模块——main，推荐模块——recom， 楼层区域——floor，底部制作——footer。其中含有登录，注册，关于我们，联系客服，关注果物购，退出登录，个人中心，我的购物车，搜索等功能。
登录注册：密码含义隐藏与显示功能，账号密码匹配错误提示，注册的信息输入错误提示。
关于我们：有一段对于我们网站的介绍
联系客服：可以对管理员进行留言，反馈
关注果物购：有一个二维码
退出登录：可以退出当前账号，登录其他账号
个人中心：分为三层，有个人信息的修改，我的订单和修改密码功能
我的购物车：里面有全选，商品介绍，图片，价格等信息，可以对多个商品进行选择购买，对某条购物车信息移除，清空购物车等功能
主页：所有链接点的连接，楼层导航跳转，返回顶端，轮播图，logo返回主页等功能。主要功能是搜索跳转和商品点击跳转。
商品详情页：里面包含商品图片和价格，功能有加入购物车和立即购买按钮，旁边有选择购买的数量，加入购物车会将商品存入我的购物车中

五、服务端
	主要分为四个部分，用户管理，商品管理，订单管理，留言管理
用户管理：会展示用户的名字，密码，地址，电话等信息，其中包括保存和删除操作
商品管理：会展示商品的图片，价格，类别，名字等信息，其中包括保存和删除操作，里面的保存和删除会影响到主页面的商品显示。
订单管理：会展示订单的用户，商品，数量，价格等信息，其中包括保存和删除操作
留言管理：会展示那个用户发出的留言和留言信息，其中值包括删除操作，不能修改

六、数据库——webxs
  1.buy——订单
  
      SET NAMES utf8mb4;
      SET FOREIGN_KEY_CHECKS = 0;
      
      -- ----------------------------
      -- Table structure for buy
      -- ----------------------------
      DROP TABLE IF EXISTS `buy`;
      CREATE TABLE `buy`  (
        `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名字',
        `product` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单产品名字',
        `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单产品图片',
        `number` int(4) NULL DEFAULT NULL COMMENT '订单产品数量',
        `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单价格'
      ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
      
      -- ----------------------------
      -- Records of buy
      -- ----------------------------
      INSERT INTO `buy` VALUES ('1234', '椰子', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit2.jpg', 1, '￥15');
      INSERT INTO `buy` VALUES ('123', '皖鱼', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood7.jpg', 1, '￥20');
      INSERT INTO `buy` VALUES ('123', '哈密瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit6.jpg', 2, '￥25');
      INSERT INTO `buy` VALUES ('123', '苹果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit1.jpg', 8, '￥14');
      INSERT INTO `buy` VALUES ('123', '西瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit7.jpg', 4, '￥10');
      INSERT INTO `buy` VALUES ('1234', '哈密瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit6.jpg', 1, '￥25');
      INSERT INTO `buy` VALUES ('1234', '鲍鱼', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood3.jpg', 3, '￥60');
      INSERT INTO `buy` VALUES ('12345', '螃蟹', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood4.jpg', 2, '￥55');
      INSERT INTO `buy` VALUES ('12345', '龙虾', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood1.jpg', 3, '￥50');
      INSERT INTO `buy` VALUES ('12345', '西瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit7.jpg', 2, '￥10');
      
      SET FOREIGN_KEY_CHECKS = 1;

      
  2.comment——留言

      SET NAMES utf8mb4;
      SET FOREIGN_KEY_CHECKS = 0;
      
      -- ----------------------------
      -- Table structure for comment
      -- ----------------------------
      DROP TABLE IF EXISTS `comment`;
      CREATE TABLE `comment`  (
        `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
        `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容'
      ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
      
      -- ----------------------------
      -- Records of comment
      -- ----------------------------
      INSERT INTO `comment` VALUES ('123', '这是一款非常优秀的产品，质量很好，性能出色，使用非常方便，非常值得推荐。');
      INSERT INTO `comment` VALUES ('123', '这是一家非常出色的公司，他们的产品质量很高，服务态度也非常好。我非常满意他们的表现！');
      INSERT INTO `comment` VALUES ('1234', '这是一个非常棒的产品，质量优秀，性能稳定，物超所值！强烈推荐！');
      INSERT INTO `comment` VALUES ('1234', '这个产品品质优秀，性价比高，非常值得推荐购买！');
      INSERT INTO `comment` VALUES ('12345', '反反复复');
      
      SET FOREIGN_KEY_CHECKS = 1;


  3.commodity——商品

      SET NAMES utf8mb4;
      SET FOREIGN_KEY_CHECKS = 0;
      
      -- ----------------------------
      -- Table structure for commodity
      -- ----------------------------
      DROP TABLE IF EXISTS `commodity`;
      CREATE TABLE `commodity`  (
        `product` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名字',
        `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品图片',
        `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类别',
        `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品价格'
      ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
      
      -- ----------------------------
      -- Records of commodity
      -- ----------------------------
      INSERT INTO `commodity` VALUES ('芒果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit0.jpg', '水果', '￥12');
      INSERT INTO `commodity` VALUES ('苹果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit1.jpg', '水果', '￥14');
      INSERT INTO `commodity` VALUES ('椰子', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit2.jpg', '水果', '￥15');
      INSERT INTO `commodity` VALUES ('香蕉', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit3.jpg', '水果', '￥10');
      INSERT INTO `commodity` VALUES ('雪梨', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit4.jpg', '水果', '￥11');
      INSERT INTO `commodity` VALUES ('葡萄', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit5.jpg', '水果', '￥19');
      INSERT INTO `commodity` VALUES ('哈密瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit6.jpg', '水果', '￥25');
      INSERT INTO `commodity` VALUES ('西瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit7.jpg', '水果', '￥10');
      INSERT INTO `commodity` VALUES ('水蜜桃', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit8.jpg', '水果', '￥12');
      INSERT INTO `commodity` VALUES ('圣女果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit9.jpg', '水果', '￥10');
      INSERT INTO `commodity` VALUES ('生蚝', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood0.jpg', '海鲜', '￥24');
      INSERT INTO `commodity` VALUES ('龙虾', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood1.jpg', '海鲜', '￥50');
      INSERT INTO `commodity` VALUES ('基围虾', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood2.jpg', '海鲜', '￥23');
      INSERT INTO `commodity` VALUES ('鲍鱼', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood3.jpg', '海鲜', '￥60');
      INSERT INTO `commodity` VALUES ('螃蟹', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood4.jpg', '海鲜', '￥55');
      INSERT INTO `commodity` VALUES ('咸鱼', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood5.jpg', '海鲜', '￥20');
      INSERT INTO `commodity` VALUES ('扇贝', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood6.jpg', '海鲜', '￥40');
      INSERT INTO `commodity` VALUES ('皖鱼', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood7.jpg', '海鲜', '￥20');
      INSERT INTO `commodity` VALUES ('章鱼', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood8.jpg', '海鲜', '￥25');
      INSERT INTO `commodity` VALUES ('福寿螺', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood9.jpg', '海鲜', '￥19');
      INSERT INTO `commodity` VALUES ('猪肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat0.jpg', '肉类', '￥20');
      INSERT INTO `commodity` VALUES ('牛肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat1.jpg', '肉类', '￥30');
      INSERT INTO `commodity` VALUES ('羊肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat2.jpg', '肉类', '￥44');
      INSERT INTO `commodity` VALUES ('兔肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat3.jpg', '肉类', '￥33');
      INSERT INTO `commodity` VALUES ('鸡肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat4.jpg', '肉类', '￥21');
      INSERT INTO `commodity` VALUES ('鸭肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat5.jpg', '肉类', '￥24');
      INSERT INTO `commodity` VALUES ('鹅肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat6.jpg', '肉类', '￥34');
      INSERT INTO `commodity` VALUES ('蛙肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat7.jpg', '肉类', '￥44');
      INSERT INTO `commodity` VALUES ('鸽子肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat8.jpg', '肉类', '￥43');
      INSERT INTO `commodity` VALUES ('鳄鱼肉', 'http://localhost:8080/webSX_war_exploded/upload/meat/meat9.jpg', '肉类', '￥54');
      INSERT INTO `commodity` VALUES ('大葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion0.jpg', '葱类', '￥10');
      INSERT INTO `commodity` VALUES ('分葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion1.jpg', '葱类', '￥12');
      INSERT INTO `commodity` VALUES ('楼葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion2.jpg', '葱类', '￥12');
      INSERT INTO `commodity` VALUES ('胡葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion3.jpg', '葱类', '￥11');
      INSERT INTO `commodity` VALUES ('羊角葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion4.jpg', '葱类', '￥10');
      INSERT INTO `commodity` VALUES ('地角葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion5.jpg', '葱类', '￥12');
      INSERT INTO `commodity` VALUES ('小葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion6.jpg', '葱类', '￥12');
      INSERT INTO `commodity` VALUES ('改良葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion7.jpg', '葱类', '￥11');
      INSERT INTO `commodity` VALUES ('水沟葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion8.jpg', '葱类', '￥12');
      INSERT INTO `commodity` VALUES ('青葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion9.jpg', '葱类', '￥10');
      INSERT INTO `commodity` VALUES ('鸡蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg0.jpg', '蛋类', '￥12');
      INSERT INTO `commodity` VALUES ('鸭蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg1.jpg', '蛋类', '￥13');
      INSERT INTO `commodity` VALUES ('鹅蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg2.jpg', '蛋类', '￥15');
      INSERT INTO `commodity` VALUES ('鹌鹑蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg3.jpg', '蛋类', '￥12');
      INSERT INTO `commodity` VALUES ('鸵鸟蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg4.jpg', '蛋类', '￥22');
      INSERT INTO `commodity` VALUES ('鸽蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg5.jpg', '蛋类', '￥12');
      INSERT INTO `commodity` VALUES ('皮蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg6.jpg', '蛋类', '￥11');
      INSERT INTO `commodity` VALUES ('鳄鱼蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg7.jpg', '蛋类', '￥19');
      INSERT INTO `commodity` VALUES ('乌龟蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg8.jpg', '蛋类', '￥15');
      INSERT INTO `commodity` VALUES ('鸟蛋', 'http://localhost:8080/webSX_war_exploded/upload/egg/egg9.jpg', '蛋类', '￥10');
      INSERT INTO `commodity` VALUES ('朝天椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper0.jpg', '辣椒', '￥12');
      INSERT INTO `commodity` VALUES ('二荆条', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper1.jpg', '辣椒', '￥11');
      INSERT INTO `commodity` VALUES ('小米椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper2.jpg', '辣椒', '￥10');
      INSERT INTO `commodity` VALUES ('七星椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper3.jpg', '辣椒', '￥12');
      INSERT INTO `commodity` VALUES ('魔鬼椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper4.jpg', '辣椒', '￥10');
      INSERT INTO `commodity` VALUES ('甜椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper5.jpg', '辣椒', '￥10');
      INSERT INTO `commodity` VALUES ('牛角椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper6.jpg', '辣椒', '￥12');
      INSERT INTO `commodity` VALUES ('杭椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper7.jpg', '辣椒', '￥20');
      INSERT INTO `commodity` VALUES ('美人椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper8.jpg', '辣椒', '￥20');
      INSERT INTO `commodity` VALUES ('螺丝椒', 'http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper9.jpg', '辣椒', '￥10');
      INSERT INTO `commodity` VALUES ('金针菇', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus0.jpg', '菌类', '￥10');
      INSERT INTO `commodity` VALUES ('平菇', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus1.jpg', '菌类', '￥20');
      INSERT INTO `commodity` VALUES ('香菇', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus2.jpg', '菌类', '￥15');
      INSERT INTO `commodity` VALUES ('牛肝菌', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus3.jpg', '菌类', '￥16');
      INSERT INTO `commodity` VALUES ('猴头菇', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus4.jpg', '菌类', '￥10');
      INSERT INTO `commodity` VALUES ('鸡枞菌', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus5.jpg', '菌类', '￥34');
      INSERT INTO `commodity` VALUES ('杏鲍菌', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus6.jpg', '菌类', '￥15');
      INSERT INTO `commodity` VALUES ('羊肚菌', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus7.jpg', '菌类', '￥41');
      INSERT INTO `commodity` VALUES ('银耳', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus8.jpg', '菌类', '￥66');
      INSERT INTO `commodity` VALUES ('竹荪', 'http://localhost:8080/webSX_war_exploded/upload/fungus/fungus9.jpg', '菌类', '￥10');
      INSERT INTO `commodity` VALUES ('西红柿', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable0.jpg', '蔬菜', '￥10');
      INSERT INTO `commodity` VALUES ('青瓜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable1.jpg', '蔬菜', '￥12');
      INSERT INTO `commodity` VALUES ('茄子', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable2.jpg', '蔬菜', '￥12');
      INSERT INTO `commodity` VALUES ('豆角', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable3.jpg', '蔬菜', '￥12');
      INSERT INTO `commodity` VALUES ('胡萝卜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable4.jpg', '蔬菜', '￥10');
      INSERT INTO `commodity` VALUES ('韭菜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable5.jpg', '蔬菜', '￥20');
      INSERT INTO `commodity` VALUES ('生菜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable6.jpg', '蔬菜', '￥10');
      INSERT INTO `commodity` VALUES ('芹菜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable7.jpg', '蔬菜', '￥15');
      INSERT INTO `commodity` VALUES ('南瓜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable8.jpg', '蔬菜', '￥15');
      INSERT INTO `commodity` VALUES ('空心菜', 'http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable9.jpg', '蔬菜', '￥14');
      
      SET FOREIGN_KEY_CHECKS = 1;


  4.manger——管理员
      
      SET NAMES utf8mb4;
      SET FOREIGN_KEY_CHECKS = 0;
      
      -- ----------------------------
      -- Table structure for manger
      -- ----------------------------
      DROP TABLE IF EXISTS `manger`;
      CREATE TABLE `manger`  (
        `mangername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员',
        `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码'
      ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
      
      -- ----------------------------
      -- Records of manger
      -- ----------------------------
      INSERT INTO `manger` VALUES ('1234', '1234');
      INSERT INTO `manger` VALUES ('123', '123');
      
      SET FOREIGN_KEY_CHECKS = 1;


  5.shopcar——购物车

      SET NAMES utf8mb4;
      SET FOREIGN_KEY_CHECKS = 0;
      
      -- ----------------------------
      -- Table structure for shopcar
      -- ----------------------------
      DROP TABLE IF EXISTS `shopcar`;
      CREATE TABLE `shopcar`  (
        `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
        `product` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购物车产品',
        `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购物车产品图片',
        `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购物车产品价格'
      ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
      
      -- ----------------------------
      -- Records of shopcar
      -- ----------------------------
      INSERT INTO `shopcar` VALUES ('1234', '芒果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit0.jpg', '￥11');
      INSERT INTO `shopcar` VALUES ('1234', '分葱', 'http://localhost:8080/webSX_war_exploded/upload/onion/onion1.jpg', '￥12');
      INSERT INTO `shopcar` VALUES ('123', '龙虾', 'http://localhost:8080/webSX_war_exploded/upload/seafood/seafood1.jpg', '￥50');
      INSERT INTO `shopcar` VALUES ('123', '水蜜桃', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit8.jpg', '￥12');
      INSERT INTO `shopcar` VALUES ('123', '哈密瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit6.jpg', '￥25');
      INSERT INTO `shopcar` VALUES ('123', '苹果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit1.jpg', '￥14');
      INSERT INTO `shopcar` VALUES ('1234', '苹果', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit1.jpg', '￥14');
      INSERT INTO `shopcar` VALUES ('123', '西瓜', 'http://localhost:8080/webSX_war_exploded/upload/fruit/fruit7.jpg', '￥10');
      
      SET FOREIGN_KEY_CHECKS = 1;


  6.user——用户
      
      SET NAMES utf8mb4;
      SET FOREIGN_KEY_CHECKS = 0;
      
      -- ----------------------------
      -- Table structure for user
      -- ----------------------------
      DROP TABLE IF EXISTS `user`;
      CREATE TABLE `user`  (
        `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
        `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
        `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
        `mailbox` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
        `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
        `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
        PRIMARY KEY (`username`) USING BTREE
      ) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;
      
      -- ----------------------------
      -- Records of user
      -- ----------------------------
      INSERT INTO `user` VALUES ('123', '123', '男', '123', '12345678910', '广东');
      INSERT INTO `user` VALUES ('1234', '1234', '女', '1234', '12345678', '惠州市');
      INSERT INTO `user` VALUES ('12345', '1234', '男', '12345@qq.com', '12345678910', '广东省惠州市');
      
      SET FOREIGN_KEY_CHECKS = 1;
