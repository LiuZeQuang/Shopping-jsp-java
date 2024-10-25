window.addEventListener('load', function () {
    // 用户名
    var name = document.querySelector('#name');
    var namem = document.querySelector('.namem');
    name.onblur = function () {
        if (this.value === '') {
            namem.className = 'namem error';
            namem.innerHTML = '用户名不能为空';
        } else {
            namem.className = 'namem success';
            namem.innerHTML = '您输入的正确';
        }
    }

    // 登陆密码
    var psw = document.querySelector('#psw');
    var pswm = document.querySelector('.pswm');
    psw.onblur = function () {
        if (this.value === '') {
            pswm.className = 'pswm error';
            pswm.innerHTML = '登陆密码不能为空';
        } else {
            pswm.className = 'pswm success';
            pswm.innerHTML = '您输入的正确';
        }
    }

    // 确认密码
    var pswa = document.querySelector('#pswa');
    var pswam = document.querySelector('.pswam');
    pswa.onblur = function () {
        if (this.value === '') {
            pswam.className = 'pswam error';
            pswam.innerHTML = '确认密码不能为空';
        } else if(this.value !== psw.value) {
            pswam.className = 'pswam error';
            pswam.innerHTML = '两次密码输入不一致';
        } else {
            pswam.className = 'pswam success';
            pswam.innerHTML = '您输入的正确';
        }
    }

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