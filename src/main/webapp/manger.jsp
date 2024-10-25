<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>果物购-管理员登录</title>
    <!-- 引入我们 favicon 图标 -->
    <link rel="shortcut icon" href="favicon.ico">
    <!-- 引入我们自己的管理员注册页面css -->
    <link rel="stylesheet" href="css/manger.css">
    <!-- 引入我们的 manger.js -->
    <script src="js/manger.js"></script>
</head>

<body>
<div>

</div>
    <div class="reg_form">
        <form action="Manger" method="get" onsubmit="return toVaild()">
            <ul>
                <li>
                    <label>账号:</label>
                    <input type="text" class="inp" name="mangername">
                </li>
                <li>
                    <label>登陆密码:</label>
                    <input type="password" class="inp" name="password" id="password">
                    <img src="images/close.png" class="eye" style="cursor: pointer">
                </li>
                <li>
                    <input type="submit" value="登录" class="btn" style="cursor: pointer">
                </li>
            </ul>
        </form>
    </div>
    <script>
        function toVaild(){
            var inps = document.querySelectorAll('.inp');
            if(inps[0].value === '' || inps[1].value === ''){
                alert("账号或登陆密码为空")
                return false;
            }else {
                return true;
            }
        }
    </script>
</body>

</html>