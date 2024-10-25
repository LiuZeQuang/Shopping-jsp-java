<%@ page import="com.example.websx.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>果物购-用户留言</title>

    <!-- 引入我们 favicon 图标 -->
    <link rel="shortcut icon" href="favicon.ico">
    <!-- 引入我们初始化样式文件 -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入我们公共的样式文件 -->
    <link rel="stylesheet" href="css/common.css">
    <!-- 引入我们 leaveword.css 文件 -->
    <link rel="stylesheet" href="css/leaveword.css">
    <!-- 引入我们 indetail.js 文件 -->
    <script src="js/indetail.js"></script>
</head>

<body>
    <%response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");%>
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
                    <a href="leaveword.jsp"><li>联系客服</li></a>
                    <li></li>
                    <a href="#"><li id="wx">关注果物购</li></a>
                    <li></li>
                    <a href="#"><li id="tuichu">退出登录</li></a>
                    <li></li>
                    <a href="personal.jsp"><li>个人中心</li></a>
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
        <a href="shopcar.jsp">
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

    <!-- 主体模块的制作 -->
    <form action="LeaveWord" method="get">
        <input type="hidden" name="user" value="<%=new User().getUsername()%>">
        <textarea cols="50" rows="10" wrap="hard" name="text"></textarea>
        <div>
            <input type="submit" value="提交" id="tij">
            <input type="reset" value="重置">
        </div>
    </form>

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

    <script>
        var tij = document.querySelector('#tij');
        tij.addEventListener('click', function () {
            alert("提交成功");
        })
    </script>
</body>

</html>