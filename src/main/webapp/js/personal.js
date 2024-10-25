window.addEventListener('load', function (){
    // 左侧导航栏
    var lis = document.querySelector('.left_nav').querySelectorAll('li');
    lis[0].addEventListener('click', function () {
        document.querySelector('.right_xx').style.display = 'block';
        document.querySelector('.right_dd').style.display = 'none';
        document.querySelector('.right_mm').style.display = 'none';
    })
    lis[1].addEventListener('click', function () {
        document.querySelector('.right_xx').style.display = 'none';
        document.querySelector('.right_dd').style.display = 'block';
        document.querySelector('.right_mm').style.display = 'none';
    })
    lis[2].addEventListener('click', function () {
        document.querySelector('.right_xx').style.display = 'none';
        document.querySelector('.right_dd').style.display = 'none';
        document.querySelector('.right_mm').style.display = 'block';
    })
    //操作提示
    var scSub = document.querySelector(".scSub");
    scSub.addEventListener('click',function () {
        alert("退款成功")
    })
    var bcxx = document.querySelector("#bcxx");
    bcxx.addEventListener('click',function () {
        alert("个人信息修改成功")
    })

    // 隐藏密码
    var eyes = document.querySelectorAll('.eye');
    var psw = document.querySelector('#psw');
    var flag = 0;//操纵阀
    eyes[0].addEventListener('click',function(){
        if(flag === 0) {
            this.src = "images/open.png";
            psw.type = "text";
            flag = 1;
        }else {
            this.src = "images/close.png";
            psw.type = "password";
            flag = 0;
        }
    })

    var pswa = document.querySelector("#pswa");
    var fla = 0;//操纵阀
    eyes[1].addEventListener('click',function(){
        if(fla === 0) {
            this.src = "images/open.png";
            pswa.type = "text";
            fla = 1;
        }else {
            this.src = "images/close.png";
            pswa.type = "password";
            fla = 0;
        }
    })
})