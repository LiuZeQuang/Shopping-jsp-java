<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>果物购-用户注册</title>
  <!-- 引入我们 favicon 图标 -->
  <link rel="shortcut icon" href="favicon.ico">
  <!-- 引入我们初始化样式文件 -->
  <link rel="stylesheet" href="css/base.css">
  <!-- 引入我们自己的注册页面css -->
  <link rel="stylesheet" href="css/register.css">
  <!-- 引入我们的 register.js -->
  <script src="js/register.js"></script>
</head>

<body>
  <div class="w">
    <!-- 头部 -->
    <header>
      <div class="logo">
        <a href="index.jsp"> <img src="images/logo.png" alt=""></a>
      </div>
    </header>

    <!-- 主体 -->
    <div class="registerarea">
      <h3>
        注册新用户
        <div class="login">我有账号，去<a href="Login.jsp">登陆</a></div>
      </h3>
      <div class="reg_form">
        <form action="SignInServlet" method="get" onsubmit="return toVaild()">
          <ul>
            <li>
              <label>账号:</label>
              <input type="text" class="inp" name="username" id="name">
              <span class="namem"></span>
            </li>
            <li>
              <label>登陆密码:</label>
              <input type="password" class="inp" name="password" id="psw">
              <img src="images/close.png" class="eye" style="cursor: pointer">
              <span class="pswm"></span>
            </li>
            <li class="safe">
              安全程度
              <em class="ruo">弱</em>
              <em class="zhong">中</em>
              <em class="qiang">强</em>
            </li>
            <li>
              <label>确认密码:</label>
              <input type="password" class="inp" name="pass" id="pswa">
              <img src="images/close.png" class="eye" style="cursor: pointer">
              <span class="pswam"></span>
            </li>
            <li class="agree">
              <input type="checkbox" id="TY" style="cursor: pointer">
              同意协议并注册
              <a href="#">《果物购用户协议》</a>
            </li>
            <li>
              <input type="submit" value="完成注册" class="btn" style="cursor: pointer">
            </li>
          </ul>
        </form>
      </div>
    </div>

    <!-- 底部 -->
    <div class="mod_copyright">
      <div class="links">
        <a href="#">关于我们</a> |
        <a href="#">联系我们</a> |
        <a href="#">联系客服</a> |
        <a href="#">商家入驻</a> |
        <a href="#">营销中心</a> |
        <a href="#">手机品优购</a> |
        <a href="#">友情链接</a> |
        <a href="#">销售联盟</a> |
        <a href="#">品优购社区</a> |
        <a href="#">品优购公益</a> |
        <a href="#">English Site</a> |
        <a href="#">Contact U</a>
      </div>
      <div class="copyright">
        地址：北京市昌平区建材城西路金燕龙办公楼一层 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱: zhanghj+itcast.cn <br>
        京ICP备08001421号京公网安备110108007702
      </div>
    </div>
  </div>

  <script>
      function toVaild(){
          var name = document.querySelector('#name');
          var psw = document.querySelector('#psw');
          var pswa = document.querySelector('#pswa');
          var ty = document.querySelector('#TY');
          if (name.value == '' || psw.value == '' || pswa.value == ''){
            alert('请输入完整信息');
            return false;
          }else if(psw.value !== pswa.value){
            alert("两次密码输入不一致");
              return false;
          }else if (!(ty.checked)){
            alert("未勾选果物购用户协议")
            return false;
          }else {
            return true;
          }
      }
  </script>
</body>

</html>