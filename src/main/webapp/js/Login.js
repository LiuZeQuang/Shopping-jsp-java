window.addEventListener('load', function (){
    var btn = document.querySelector('.btn');
    var user = document.querySelector('#user');
    btn.addEventListener('click',function () {
        localStorage.setItem('name',user.value);
    })

    // 隐藏密码
    var eye = document.querySelector('.eye');
    var password = document.querySelector('#password');
    var flag = 0;//操纵阀
    eye.addEventListener('click',function(){
        if(flag === 0) {
            this.src = "images/open.png";
            password.type = "text";
            flag = 1;
        }else {
            this.src = "images/close.png";
            password.type = "password";
            flag = 0;
        }
    })
})