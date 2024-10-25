window.addEventListener('load', function(){
    // 本地存储
    div = document.querySelector(".text_bd");
    tp = localStorage.getItem("tp");
    img = document.querySelector("img");
    img.src = tp;
    document.querySelector("#img").value = tp;
    document.querySelector("#img1").value = tp;

    product = localStorage.getItem("product");
    h4 = div.querySelector("h4");
    h4.innerHTML = product;
    document.querySelector("#product").value = product;
    document.querySelector("#product1").value = product;

    price = localStorage.getItem("price");
    h3 = div.querySelector("h3");
    h3.innerHTML = price;
    document.querySelector("#price").value = price;
    document.querySelector("#price1").value = price;

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