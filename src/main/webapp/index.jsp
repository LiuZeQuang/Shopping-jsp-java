<%@ page import="com.example.websx.bean.User" %>
<%@ page import="com.example.websx.dbUtils.Util" %>
<%@ page import="com.example.websx.bean.Product" %>
<%@ page import="java.util.concurrent.locks.Condition" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>果物购商城-综合网购首选-正品低价、品质保障、配送及时、轻松购物</title>

    <!-- 引入我们 favicon 图标 -->
    <link rel="shortcut icon" href="favicon.ico">
    <!-- 引入我们初始化样式文件 -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入我们公共的样式文件 -->
    <link rel="stylesheet" href="css/common.css">
    <!-- 引入我们 index.css 文件 -->
    <link rel="stylesheet" href="css/index.css">
    <!-- 引入我们 index.js 文件 -->
    <script src="js/index.js"></script>
    <!-- 引入我们 animate.js 文件 -->
    <script src="js/animate.js"></script>
    <!-- 引入我们 indetail.js 文件 -->
    <script src="js/indetail.js"></script>


</head>

<body>
    <!-- 快捷导航模块 -->
    <section class="shortcut">
        <div class="w">
            <div class="fl">
                <ul>
                    <li>果物购欢迎你！&nbsp;</li>
                    <li>
                        <a href="Login.jsp">请登录</a>&nbsp;
                        <a href="register.jsp" class="style_red">免费注册</a>
                    </li>
                </ul>
            </div>
            <div class="fr">
                <ul>
                    <a href="AboutUs.jsp"><li>关于我们</li></a>
                    <li></li>
                    <a href="leaveword.jsp" id="t"><li>联系客服</li></a>
                    <li></li>
                    <a href="#"><li id="wx">关注果物购</li></a>
                    <li></li>
                    <a href="#"><li id="tuichu">退出登录</li></a>
                    <li></li>
                    <a href="personal.jsp" id="h"><li>个人中心</li></a>
                </ul>
            </div>
        </div>
    </section>

    <!-- header头部模块 -->
    <header class="header w">
        <!-- logo模块 -->
        <div class="logo">
            <h1>
                <a href="index.jsp" title="果物购商城">果物购商城</a>
            </h1>
        </div>
        <!-- search 头部模块制作 -->
        <form action="Search" class="search">
            <input type="search" name="product" placeholder="哈密瓜">
            <input type="submit" value="搜索" id="SS" style="cursor: pointer">
        </form>
        <!-- hotwords模块制作 -->
        <div class="hotwords">
            <a href="detail.jsp">广西福寿螺</a>
            <a href="detail.jsp">湖北大葱</a>
            <a href="detail.jsp">惠州香蕉</a>
            <a href="detail.jsp">青藏牛肉</a>
            <a href="detail.jsp">国产西瓜</a>
            <a href="detail.jsp">广州皮蛋</a>
            <a href="detail.jsp">贵州青瓜</a>
        </div>
        <!-- 购物车模块 -->
        <a href="shopcar.jsp" id="s">
            <div class="shopcar">
                我的购物车
            </div>
        </a>
    </header>

    <!-- nav模块制作 -->
    <nav class="nav">
        <div class="w">
            <div class="dropdown">
                <div class="dt">全部商品分类</div>
                <div class="dd">
                    <ul>
                        <li><a href="#">水果</a></li>
                        <li><a href="#">海鲜</a></li>
                        <li><a href="#">肉类</a></li>
                        <li><a href="#">葱类</a></li>
                        <li><a href="#">蛋类</a></li>
                        <li><a href="#">辣椒</a></li>
                        <li><a href="#">菌类</a></li>
                        <li><a href="#">蔬菜</a></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
            </div>
            <div class="navitems">
                <ul>
                    <li><a href="detail.jsp">新疆生蚝</a></li>
                    <li><a href="detail.jsp">广东韭菜</a></li>
                    <li><a href="detail.jsp">湖南辣椒</a></li>
                    <li><a href="detail.jsp">阳台苹果</a></li>
                    <li><a href="detail.jsp">河南蘑菇</a></li>
                    <li><a href="detail.jsp">海南椰子</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- 首页专有的模块 main -->
    <div class="w">
        <div class="main">
            <div class="focus">
                <!-- 左侧按钮 -->
                <a href="javascript:;" class="arrow-l">
                    &lt;
                </a>
                <!-- 右侧按钮 -->
                <a href="javascript:;" class="arrow-r">
                    &gt;
                </a>
                <!-- 核心的滚动区域 -->
                <ul>
                    <li>
                        <img src="upload/lbt/focus0.png" alt="">
                    </li>
                    <li>
                        <img src="upload/lbt/focus1.png" alt="">
                    </li>
                    <li>
                        <img src="upload/lbt/focus2.png" alt="">
                    </li>
                    <li>
                        <img src="upload/lbt/focus3.png" alt="">
                    </li>
                </ul>
                <!-- 小圆圈 -->
                <ol class="circle"></ol>
            </div>
            <div class="newsflash">
                <div class="news">
                    <div class="news_hd">
                        <h5>果物购快报</h5>
                        <a href="#" class="more">更多</a>
                    </div>
                    <div class="news_bd">
                        <ul>
                            <li><a href="#"><strong>【特惠】</strong>迎接收获季 全民半价购水果</a></li>
                            <li><a href="#"><strong>【公告】</strong>果物稳占水果网购第一</a></li>
                            <li><a href="#"><strong>【特惠】</strong>百元新人大礼包限量领</a></li>
                            <li><a href="#"><strong>【公告】</strong>上果物 享新疆大生蚝</a></li>
                            <li><a href="#"><strong>【特惠】</strong>每日享折扣果物销十里</a></li>
                        </ul>
                    </div>
                </div>
                <div class="bargain">
                    <ul>
                        <li><img src="upload/bargain1.png" alt=""></li>
                        <li><img src="upload/bargain2.png" alt=""></li>
                        <li><img src="upload/bargain3.png" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- 推荐模块main -->
    <div class="w recom">
        <div class="recom_hd">
            <img src="images/recom.png" alt="">
        </div>
        <div class="recom_bd">
            <ul>
                <li><img src="upload/recom1.png" alt=""></li>
                <li><img src="upload/recom2.png" alt=""></li>
                <li><img src="upload/recom3.png" alt=""></li>
            </ul>
        </div>

    </div>

    <!-- 楼层区域制作 -->
    <div class="floor">
        <!-- 水果楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>水果</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd fruit">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 海鲜楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>海鲜</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd seafood">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 肉类楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>肉类</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd meat">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 葱类楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>葱类</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd onion">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 蛋类楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>蛋类</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd egg">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 辣椒楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>辣椒</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd Pepper">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 菌类楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>菌类</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd fungus">
                <ul>
                </ul>
            </div>
        </div>
        <!-- 蔬菜楼层 -->
        <div class="w shuiguo">
            <div class="box_hd">
                <h2>蔬菜</h2>
                <div class="tab_list">
                    <ul>
                        <li><a href="detail.jsp">热门</a>|</li>
                        <li><a href="detail.jsp">圣女果</a>|</li>
                        <li><a href="detail.jsp">美味螃蟹</a>|</li>
                        <li><a href="detail.jsp">新鲜猪肉</a>|</li>
                        <li><a href="detail.jsp">超大鸭蛋</a>|</li>
                        <li><a href="detail.jsp">干净平菇</a>|</li>
                        <li><a href="detail.jsp">漂亮生菜</a>|</li>
                        <li><a href="detail.jsp">大葱王</a>|</li>
                        <li><a href="#">更多</a></li>
                    </ul>
                </div>
            </div>
            <div class="box_bd vegetable">
                <ul>
                </ul>
            </div>
        </div>
    </div>

    <!-- 底部模块的制作 -->
    <footer class="footer">
        <div class="w">
            <div class="mod_service">
                <ul>
                    <li>
                        <h5 class="icon1"></h5>
                        <div class="service_txt">
                            <h4>正品保障</h4>
                            <p>正品保障，提供发票</p>
                        </div>
                    </li>
                    <li>
                        <h5 class="icon2"></h5>
                        <div class="service_txt">
                            <h4>极速物流</h4>
                            <p>极速物流，极速送达</p>
                        </div>
                    </li>
                    <li>
                        <h5 class="icon3"></h5>
                        <div class="service_txt">
                            <h4>无忧售后</h4>
                            <p>7天无理由退换货</p>
                        </div>
                    </li>
                    <li>
                        <h5 class="icon4"></h5>
                        <div class="service_txt">
                            <h4>特色服务</h4>
                            <p>私人定制家电套餐</p>
                        </div>
                    </li>
                    <li>
                        <h5 class="icon5"></h5>
                        <div class="service_txt">
                            <h4>帮助中心</h4>
                            <p>您的购物指南</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="mod_help">
                <dl>
                    <dt>购物指南</dt>
                    <dd><a href="#">购物流程</a></dd>
                    <dd><a href="#">会员介绍</a></dd>
                    <dd><a href="#">生活旅行/团购</a></dd>
                    <dd><a href="#">常见问题</a></dd>
                    <dd><a href="#">大家电</a></dd>
                    <dd><a href="#">联系客服</a></dd>
                </dl>
                <dl>
                    <dt>配送方式</dt>
                    <dd><a href="#">上门自提</a></dd>
                    <dd><a href="#">211限时达</a></dd>
                    <dd><a href="#">配送服务查询</a></dd>
                    <dd><a href="#">配送费收取标准</a></dd>
                    <dd><a href="#">海外配送</a></dd>
                </dl>
                <dl>
                    <dt>支付方式</dt>
                    <dd><a href="#">货到付款</a></dd>
                    <dd><a href="#">在线支付</a></dd>
                    <dd><a href="#">分期付款</a></dd>
                    <dd><a href="#">邮局汇款</a></dd>
                    <dd><a href="#">公司转账</a></dd>
                </dl>
                <dl>
                    <dt>售后服务</dt>
                    <dd><a href="#">售后政策</a></dd>
                    <dd><a href="#">价格保护</a></dd>
                    <dd><a href="#">退款说明</a></dd>
                    <dd><a href="#">返修/退换货</a></dd>
                    <dd><a href="#">取消订单</a></dd>
                </dl>
                <dl>
                    <dt>特殊服务</dt>
                    <dd><a href="#">夺宝岛</a></dd>
                    <dd><a href="#">DIY装机</a></dd>
                    <dd><a href="#">延保服务</a></dd>
                    <dd><a href="#">果物购E卡</a></dd>
                    <dd><a href="#">果物购通信</a></dd>
                </dl>
                <dl>
                    <dt>服务中心</dt>
                    <dd>
                        <img src="images/wx_cz.jpg" alt="">
                        果物购客户端
                    </dd>
                </dl>
            </div>
            <div class="mod_copyright">
                <div class="links">
                    <a href="#">关于我们</a> |
                    <a href="#">联系我们</a> |
                    <a href="#">联系客服</a> |
                    <a href="#">商家入驻</a> |
                    <a href="#">营销中心</a> |
                    <a href="#">手机果物购</a> |
                    <a href="#">友情链接</a> |
                    <a href="#">销售联盟</a> |
                    <a href="#">果物购社区</a> |
                    <a href="#">果物购公益</a> |
                    <a href="#">English Site</a> |
                    <a href="#">Contact U</a>
                </div>
                <div class="copyright">
                    地址：北京市昌平区建材城西路金燕龙办公楼一层 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱: zhanghj+itcast.cn <br>
                    京ICP备08001421号京公网安备110108007702
                </div>
            </div>
        </div>
    </footer>

    <%-- 返回顶部 --%>
    <div class="slider-bar">返回<br>顶部</div>

    <%-- 二维码 --%>
    <div class="erweima">
        <img src="images/wx_cz.jpg" alt="">
        <h4>扫描二维码</h4>
    </div>

    <script>
        <%--动态生成产品--%>
        <%response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        Product[] product = new Util().ShangPing();
        int i = 0;
        while (product[i] != null){
            if (product[i].getCategory().equals("水果")) {%>
                var ul = document.querySelector('.fruit').querySelector('ul');
            <%} else if (product[i].getCategory().equals("海鲜")){%>
                var ul = document.querySelector('.seafood').querySelector('ul');
            <%} else if (product[i].getCategory().equals("肉类")){%>
                var ul = document.querySelector('.meat').querySelector('ul');
            <%} else if (product[i].getCategory().equals("葱类")){%>
                var ul = document.querySelector('.onion').querySelector('ul');
            <%} else if (product[i].getCategory().equals("蛋类")){%>
                var ul = document.querySelector('.egg').querySelector('ul');
            <%} else if (product[i].getCategory().equals("辣椒")){%>
                var ul = document.querySelector('.Pepper').querySelector('ul');
            <%} else if (product[i].getCategory().equals("菌类")){%>
                var ul = document.querySelector('.fungus').querySelector('ul');
            <%} else if (product[i].getCategory().equals("蔬菜")){%>
                var ul = document.querySelector('.vegetable').querySelector('ul');
            <%}%>
                var a = document.createElement('a');
                a.href = 'detail.jsp';
                ul.appendChild(a);

                var li = document.createElement('li');
                a.appendChild(li);

                var img = document.createElement('img');
                img.src = '<%=product[i].getImg()%>';
                li.appendChild(img);

                var h4 = document.createElement('h4');
                h4.innerHTML = '<%=product[i].getName()%>';
                li.appendChild(h4);

                var h3 = document.createElement('h3');
                h3.innerHTML = '<%=product[i].getPrice()%>';
                li.appendChild(h3);

                var h1 = document.createElement('h1');
                h1.innerHTML = '立即抢购';
                li.appendChild(h1);
            <%i++;
        }%>

        // 用户功能控制
        var t = document.querySelector('.fr').querySelector('#t');
        var h = document.querySelector('.fr').querySelector('#h');
        var as = document.querySelector(".hotwords").querySelectorAll('a');
        var shop = document.querySelector('#s');
        var lis = document.querySelector(".navitems").querySelector("ul").querySelectorAll("li");

        var floor = document.querySelector('.floor');
        var footer = document.querySelector('.footer');
        var slider_bar = document.querySelector('.slider-bar');
        var erweima = document.querySelector('.erweima');
        if ( localStorage.getItem('name') !== '' && <%=new User().getUsername()%> !== null){
            t.onclick = function () {
                return true;
            }
            h.onclick = function () {
                return true;
            }
            for (var j = 0; j<as.length; j++){
                as[j].onclick = function () {
                    return true;
                }
            }
            shop.onclick = function () {
                return true;
            }
            for (var i = 0; i < lis.length; i++){
                var a = lis[i].querySelector("a");
                a.onclick = function () {
                    return true;
                }
            }
            floor.style.display = 'block';
            footer.style.display = 'block';
            slider_bar.style.display = 'block';
        } else {
            t.onclick = function () {
                alert("未登录，请先登录")
                return false;
            }
            h.onclick = function () {
                alert("未登录，请先登录")
                return false;
            }
            for (var j = 0; j<as.length; j++){
                as[j].onclick = function () {
                    alert("未登录，请先登录")
                    return false;
                }
            }
            shop.onclick = function () {
                alert("未登录，请先登录")
                return false;
            }
            for (var i = 0; i < lis.length; i++){
                var a = lis[i].querySelector("a");
                a.onclick = function () {
                    alert("未登录，请先登录")
                    return false;
                }
            }
            floor.style.display = 'none';
            footer.style.display = 'none';
            slider_bar.style.display = 'none';
        }
    </script>


</body>

</html>