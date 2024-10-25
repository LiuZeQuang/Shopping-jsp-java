window.addEventListener('load', function(){
    // 操作提示
    var shop = document.querySelector("#shop");
    shop.addEventListener("click", function(){
        alert("商品成功加入购物车")
    })

    var buy = document.querySelector("#buy");
    buy.addEventListener("click", function(){
        alert("购买成功")
    })

    // 增减商品数量模块，文本框改变模块
    var itxt = document.querySelector(".itxt");
    var num = document.querySelector("#num");
    var increment = document.querySelector(".increment");
    increment.addEventListener('click', function (){
        var n = itxt.value;
        itxt.value = ++n;
        num.value = n;
    });
    var decrement = document.querySelector(".decrement");
    decrement.addEventListener('click', function (){
        var n = itxt.value;
        if (n == 1) {
            return false;
        }
        itxt.value = --n;
        num.value = n;
    });
    itxt.addEventListener('change', function (){
        num.value = this.value;
    });
})