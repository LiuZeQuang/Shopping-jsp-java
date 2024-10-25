window.addEventListener('load', function() {
    // 存入内容
    var div = document.querySelector(".floor");
    var a = div.querySelectorAll("a");
    for (var i = 0; i < a.length; i++) {
        a[i].addEventListener('click', function () {

            var img = this.querySelector("img").src;
            var h4 = this.querySelector("h4").innerHTML;
            var h3 = this.querySelector("h3").innerHTML;

            localStorage.setItem('tp', img);
            localStorage.setItem('product', h4);
            localStorage.setItem('price', h3);
        })
    }

    // 返回顶部
    var sliderBar = document.querySelector(".slider-bar");
    var floorTop = div.offsetTop;
    var sliderbarTop = sliderBar.offsetTop - floorTop;
    document.addEventListener('scroll', function () {
        if (window.pageYOffset >= 900){
            sliderBar.style.position = "fixed";
            sliderBar.style.top = sliderbarTop + "px";
            sliderBar.style.display = "block";
        } else {
            sliderBar.style.position = "absolute";
            sliderBar.style.top = "1400px";
            sliderBar.style.display = "none";
        }
    })
    sliderBar.addEventListener('click', function(){
        window.scrollTo(0,0);
    })

    // nav模块
    var ul = document.querySelector(".dd").querySelector("ul");
    var lis =  ul.querySelectorAll("li");
    lis[0].addEventListener('click', function(){
        window.scrollTo(0,840);
    })
    lis[1].addEventListener('click', function(){
        window.scrollTo(0,1360);
    })
    lis[2].addEventListener('click', function(){
        window.scrollTo(0,1880);
    })
    lis[3].addEventListener('click', function(){
        window.scrollTo(0,2400);
    })
    lis[4].addEventListener('click', function(){
        window.scrollTo(0,2920);
    })
    lis[5].addEventListener('click', function(){
        window.scrollTo(0,3440);
    })
    lis[6].addEventListener('click', function(){
        window.scrollTo(0,3960);
    })
    lis[7].addEventListener('click', function(){
        window.scrollTo(0,4480);
    })

    // 鼠标样式
    sliderBar.addEventListener('mouseover', function(){
        sliderBar.style.cursor = "pointer";
    })

    // 二维码
    var wx = document.querySelector('#wx');
    var erweima = document.querySelector('.erweima');
    wx.addEventListener('click', function(){
        erweima.style.display = "block";
        erweima.style.cursor = "pointer";
    })
    erweima.addEventListener('click', function(){
        erweima.style.display = "none";
    })

    // 用户功能控制
    var tuichu = document.querySelector('#tuichu');
    tuichu.addEventListener('click', function(){
        localStorage.setItem('name', '');
        location.reload();
    })


})