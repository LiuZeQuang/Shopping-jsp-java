$(function() {
    // 1. 全选 全不选功能模块
    $(".checkall").change(function () {
        $(".j-checkbox, .checkall").prop("checked", $(this).prop("checked"));
        if ($(this).prop("checked")) {
            $(".cart-item").addClass("check-cart-item");
        } else {
            $(".cart-item").removeClass("check-cart-item");
        }
        shanc();
    });
    // 2. 如果小复选框被选中的个数等于3 就应该把全选按钮选上，否则全选按钮不选。
    $(".j-checkbox").change(function () {
        if ($(".j-checkbox:checked").length === $(".j-checkbox").length) {
            $(".checkall").prop("checked", true);
        } else {
            $(".checkall").prop("checked", false);
        }
        if ($(this).prop("checked")) {
            $(this).parents(".cart-item").addClass("check-cart-item");
        } else {
            $(this).parents(".cart-item").removeClass("check-cart-item");
        }
        shanc();
    });
    // 3. 增减商品数量模块 首先声明一个变量，当我们点击+号（increment），就让这个值++，然后赋值给文本框。
    $(".increment").click(function () {
        var n = $(this).siblings(".itxt").val();
        n++;
        $(this).siblings(".itxt").val(n);
        var p = $(this).parents(".p-num").siblings(".p-price").html();
        p = p.substr(1);
        var price = (p * n);
        $(this).parents(".p-num").siblings(".p-sum").html("￥" + price);
        getSum();
    });
    $(".decrement").click(function () {
        var n = $(this).siblings(".itxt").val();
        if (n == 1) {
            return false;
        }
        n--;
        $(this).siblings(".itxt").val(n);
        var p = $(this).parents(".p-num").siblings(".p-price").html();
        p = p.substr(1);
        $(this).parents(".p-num").siblings(".p-sum").html("￥" + (p * n));
        getSum();
    });
    //  4. 用户修改文本框的值 计算 小计模块
    $(".itxt").change(function () {
        var n = $(this).val();
        var p = $(this).parents(".p-num").siblings(".p-price").html();
        p = p.substr(1);
        $(this).parents(".p-num").siblings(".p-sum").html("￥" + (p * n).toFixed(2));
        getSum();

    });
    // 5. 计算总计和总额模块
    getSum();
    function getSum() {
        var count = 0; // 计算总件数
        var money = 0; // 计算总价钱
        $(".j-checkbox:checked").parents(".cart-item").find(".itxt").each(function (i, ele) {
            count += parseInt($(ele).val());
        });
        $(".amount-sum em").text(count);
        $(".j-checkbox:checked").parents(".cart-item").find(".p-sum").each(function (i, ele) {
            money += parseFloat($(ele).text().substr(1));
        });
        $(".price-sum em").text("￥" + money.toFixed(2));
        jies();//结算
    }

    // 6. 删除商品模块
    // 删除选中的商品
    function shanc() {
        var str = document.querySelectorAll('.j-checkbox[type="checkbox"]:checked');
        var bt1 = document.querySelector('#bt1');
        bt1.value = '';
        for (var i = 0; i < str.length; i++) {
            bt1.value += str[i].parentNode.parentNode.querySelector(".bb").value + ',';
        }
        getSum();
    }
    // 清空购物车 删除全部商品
    var bbs = document.querySelectorAll(".bb");
    var bt2 = document.querySelector('#bt2');
    for (var i = 0; i < bbs.length; i++) {
        bt2.value += bbs[i].value + ',';
    }
    // 结算购物车,购买选中的商品
    function jies() {
        var str = document.querySelectorAll('.j-checkbox[type="checkbox"]:checked');
        var bt3 = document.querySelector('#bt3');
        bt3.value = '';
        for (var i = 0; i < str.length; i++) {
            var jie = str[i].parentNode.parentNode
            bt3.value += jie.querySelector('.p-msg').innerText + ',';//产品名字
            bt3.value += jie.querySelector('img').src + ',';//图片
            bt3.value += jie.querySelector('.itxt').value + ',';//产品数量
            bt3.value += jie.querySelector('.p-price').innerText + ',';//产品价格
        }
    }
    //7. 操作提示
    $(".scSub").click(function () {
        alert("删除成功");
    });
    $('#qk').click(function () {
        alert("已全部清空");
    });
    $('#js').click(function () {
        alert("购买成功");
    });
})