<%@ page import="com.example.websx.bean.User" %>
<%@ page import="com.example.websx.dbUtils.Util" %>
<%@ page import="com.example.websx.bean.Product" %>
<%@ page import="com.example.websx.bean.Comment" %>
<%@ page import="com.example.websx.bean.Use" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>果物购-管理员后台</title>
    <!-- 引入我们 favicon 图标 -->
    <link rel="shortcut icon" href="favicon.ico">
    <!-- 引入我们初始化样式文件 -->
    <link rel="stylesheet" href="css/base.css">
    <!-- 引入我们的 management.css 样式 -->
    <link rel="stylesheet" href="css/management.css">
    <!-- 引入我们的 management.js 文件 -->
    <script src="js/management.js"></script>
</head>

<body>
    <%response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");%>
    <!-- 头部模块制作 -->
    <header>
        <div class="text">管理员后台</div>
    </header>

    <!-- 主体模块制作 -->
    <div class="body">
        <!-- 主体左模块制作 -->
        <div class="left">
            <div class="left-top-top">菜单列表</div>
            <div class="left-top">基本设置</div>
            <ul>
                <li>用户管理</li>
                <li>商品管理</li>
                <li>订单管理</li>
                <li>留言管理</li>
            </ul>
        </div>
        <!-- 主体右模块制作 -->
        <div class="right">
            <!-- 右侧头模块制作 -->
            <div class="right_top">
                <a href="index.jsp"><div class="text1">首页</div></a>/
                <div class="text1" id="nav">用户管理</div>/
                <div class="text1">语言：中文</div>
            </div>
            <!-- 用户管理 -->
            <div class="user_body">
                <div class="user_th">
                    <ul>
                        <li>用户名</li>
                        <li>密码</li>
                        <li>性别</li>
                        <li>邮箱</li>
                        <li>电话</li>
                        <li>地址</li>
                        <li>操作</li>
                    </ul>
                </div>
                <div class="user_td">
                    <ul></ul>
                </div>
            </div>
            <!-- 商品管理 -->
            <div class="commodity_body">
                <div class="commodity_th">
                    <ul>
                        <li>商品名称</li>
                        <li>商品主图</li>
                        <li>商品类别</li>
                        <li>商品单价</li>
                        <li>操作</li>
                    </ul>
                </div>
                <div class="commodity_td">
                    <ul></ul>
                </div>
            </div>
            <!-- 订单管理 -->
            <div class="buy_body">
                <div class="buy_th">
                    <ul>
                        <li>用户名</li>
                        <li>商品名称</li>
                        <li>商品主图</li>
                        <li>商品单价</li>
                        <li>商品数量</li>
                        <li>小计</li>
                        <li>操作</li>
                    </ul>
                </div>
                <div class="buy_td">
                    <ul></ul>
                </div>
            </div>
            <!-- 留言管理 -->
            <div class="comment_body">
                <div class="comment_th">
                    <ul>
                        <li>用户名</li>
                        <li>留言</li>
                        <li>操作</li>
                    </ul>
                </div>
                <div class="comment_td">
                    <ul></ul>
                </div>
            </div>
        </div>
    </div>
    <script>
        // 用户管理
        var user_ul = document.querySelector('.user_td').querySelector('ul');
        <%response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        Use user[] = new Util().YongHu();
        for (int i = 0; user[i] != null; i++) {%>
            var li = document.createElement('li');
            user_ul.appendChild(li);

            var form = document.createElement('form');
            form.action = 'UserUpdate';
            form.method = 'get';
            li.appendChild(form);

            var input = document.createElement('input');
            input.className = 'user_text';
            input.value = '<%=user[i].getUsername()%>';
            input.name = 'username'
            form.appendChild(input);

            var input = document.createElement('input');
            input.className = 'user_text';
            input.value = '<%=user[i].getPassword()%>';
            input.name = 'password';
            form.appendChild(input);

            var input = document.createElement('input');
            input.className = 'user_text';
            input.value = '<%=user[i].getGender()%>';
            input.name = 'gender';
            form.appendChild(input);

            var input = document.createElement('input');
            input.className = 'user_text';
            input.value = '<%=user[i].getMailbox()%>';
            input.name = 'mailbox';
            form.appendChild(input);

            var input= document.createElement('input');
            input.className = 'user_text';
            input.value = '<%=user[i].getTel()%>';
            input.name = 'tel';
            form.appendChild(input);

            var input = document.createElement('input');
            input.className = 'user_text';
            input.value = '<%=user[i].getAddress()%>';
            input.name = 'address';
            form.appendChild(input);

            var input = document.createElement('input');
            input.className = 'user_update';
            input.value = '保存';
            input.type = 'submit';
            form.appendChild(input);

            var form = document.createElement('form');
            form.action = 'UserDelete';
            form.method = 'get';
            li.appendChild(form);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'username';
            input.value = '<%=user[i].getUsername()%>';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'submit';
            input.value = '移除';
            input.className = 'user_delete';
            form.appendChild(input);
        <%}%>

        // 商品管理
        var  commodity_ul = document.querySelector('.commodity_body').querySelector('.commodity_td').querySelector('ul');
        <%Product product[] = new Util().ShangPing();
        for(int i = 0; product[i] != null; i++) {%>
            var li = document.createElement('li');
            commodity_ul.appendChild(li);

            var form = document.createElement('form');
            form.action = 'CommodityUpdate';
            form.method = 'get';
            li.appendChild(form);

            var input = document.createElement('input');
            input.type = 'text';
            input.value = '<%=product[i].getName()%>';
            input.name = 'name';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.value = '<%=product[i].getImg()%>';
            input.name = 'img';
            form.appendChild(input);

            var div = document.createElement('div');
            form.appendChild(div);

            var img = document.createElement('img');
            img.src = '<%=product[i].getImg()%>';
            div.appendChild(img);

            var input = document.createElement('input');
            input.type = 'text';
            input.value = '<%=product[i].getCategory()%>';
            input.name = 'category';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'text';
            input.value = '<%=product[i].getPrice()%>';
            input.name = 'price';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'submit';
            input.className = 'commodity_update';
            input.value = '保存';
            form.appendChild(input);

            var form = document.createElement('form');
            form.action = 'CommodityDelete';
            form.method = 'get';
            li.appendChild(form);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.value = '<%=product[i].getName()%>';
            input.name = 'name';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'submit';
            input.className = 'commodity_delete';
            input.value = '移除';
            form.appendChild(input);
        <%}%>

        //订单管理
        var buy_ul = document.querySelector('.buy_body').querySelector('.buy_td').querySelector('ul');
        var i = 0;
        <%Product product1[] = new Util().DingDan();
        for(int i = 0; product1[i] != null; i++) {%>
            var li = document.createElement('li');
            buy_ul.appendChild(li);

            var div = document.createElement('div');
            div.innerHTML = '<%=product1[i].getUser()%>';
            div.className = 'buy_text';
            li.appendChild(div);

            var div = document.createElement('div');
            div.innerHTML = '<%=product1[i].getName()%>';
            div.className = 'buy_text';
            li.appendChild(div);

            var div = document.createElement('div');
            div.className = 'buy_text';
            li.appendChild(div);

            var img = document.createElement('img');
            img.src = '<%=product1[i].getImg()%>'
            div.appendChild(img);

            var div = document.createElement('div');
            div.innerHTML = '<%=product1[i].getPrice()%>';
            div.className = 'buy_text buyp';
            li.appendChild(div);

            var div = document.createElement('div');
            div.innerHTML = '<%=product1[i].getNumber()%>';
            div.className = 'buy_text buyn';
            li.appendChild(div);

            var div = document.createElement('div');
            div.innerHTML = getNum();
            div.className = 'buy_text';
            li.appendChild(div);

            var div = document.createElement('div');
            div.className = 'buy_text';
            li.appendChild(div);

            var form = document.createElement('form');
            form.action = 'BuyDelete';
            form.method = 'get';
            div.appendChild(form);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.name =  'product';
            input.value = '<%=product1[i].getName()%>';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.name =  'username';
            input.value = '<%=product1[i].getUser()%>';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'submit';
            input.value = '移除';
            input.className = 'buy_delete';
            form.appendChild(input);

        function getNum(){
            var ns = buy_ul.querySelectorAll(".buyn");
            var n = ns[i].innerText
            var ps = buy_ul.querySelectorAll(".buyp");
            var p = ps[i++].innerText.substr(1);
            return "￥" + (p * n);
        }
        <%}%>

        // 留言管理
        var comment_ul = document.querySelector('.comment_td').querySelector('ul');
        <%Comment comment[] = new Util().LiuYan();
        for(int i = 0; comment[i] != null; i++) {%>
            var li = document.createElement('li');
            comment_ul.appendChild(li);

            var div = document.createElement('div');
            div.innerHTML = '<%=comment[i].getUser()%>';
            div.className = 'comment_text';
            li.appendChild(div);

            var div = document.createElement('div');
            div.innerHTML = '<%=comment[i].getCommentName()%>';
            div.className = 'comment_text';
            li.appendChild(div);

            var div = document.createElement('div');
            div.className = 'comment_text';
            li.appendChild(div);

            var form =  document.createElement('form');
            form.action = 'CommentDelete';
            form.method = 'get';
            div.appendChild(form);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.name =  'content';
            input.value = '<%=comment[i].getCommentName()%>';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'hidden';
            input.name =  'username';
            input.value = '<%=comment[i].getUser()%>';
            form.appendChild(input);

            var input = document.createElement('input');
            input.type = 'submit';
            input.value = '移除';
            input.className = 'comment_delete';
            form.appendChild(input);

        <%}%>
    </script>
</body>

</html>