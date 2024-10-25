window.addEventListener('load', function() {
    var hots = document.querySelector(".hotwords").querySelectorAll('a');
    hots[0].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/seafood/seafood9.jpg");
        localStorage.setItem('product', "福寿螺");
        localStorage.setItem('price', "￥19");
    })
    hots[1].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/onion/onion0.jpg");
        localStorage.setItem('product', "大葱");
        localStorage.setItem('price', "￥10");
    })
    hots[2].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fruit/fruit3.jpg");
        localStorage.setItem('product', "香蕉");
        localStorage.setItem('price', "￥10");
    })
    hots[3].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/meat/meat1.jpg");
        localStorage.setItem('product', "牛肉");
        localStorage.setItem('price', "￥30");
    })
    hots[4].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fruit/fruit7.jpg");
        localStorage.setItem('product', "西瓜");
        localStorage.setItem('price', "￥10");
    })
    hots[5].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/egg/egg6.jpg");
        localStorage.setItem('product', "皮蛋");
        localStorage.setItem('price', "￥11");
    })
    hots[6].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable1.jpg");
        localStorage.setItem('product', "青瓜");
        localStorage.setItem('price', "￥12");
    })

    var navs = document.querySelector(".navitems").querySelector('ul').querySelectorAll('a');
    navs[0].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/seafood/seafood0.jpg");
        localStorage.setItem('product', "生蚝");
        localStorage.setItem('price', "￥24");
    })
    navs[1].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable5.jpg");
        localStorage.setItem('product', "韭菜");
        localStorage.setItem('price', "￥20");
    })
    navs[2].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/Pepper/Pepper2.jpg");
        localStorage.setItem('product', "小米椒");
        localStorage.setItem('price', "￥10");
    })
    navs[3].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fruit/fruit1.jpg");
        localStorage.setItem('product', "苹果");
        localStorage.setItem('price', "￥14");
    })
    navs[4].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fungus/fungus2.jpg");
        localStorage.setItem('product', "香菇");
        localStorage.setItem('price', "￥15");
    })
    navs[5].addEventListener('click', function(){
        localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fruit/fruit2.jpg");
        localStorage.setItem('product', "椰子");
        localStorage.setItem('price', "￥15");
    })

    var xnavs = document.querySelectorAll('.shuiguo');
    for (var i = 0; i < 8; i++) {
        var x1 = xnavs[i].querySelectorAll("a");
        x1[0].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fruit/fruit3.jpg");
            localStorage.setItem('product', "香蕉");
            localStorage.setItem('price', "￥10");
        });

        x1[1].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fruit/fruit9.jpg");
            localStorage.setItem('product', "圣女果");
            localStorage.setItem('price', "￥10");
        });
        x1[2].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/seafood/seafood4.jpg");
            localStorage.setItem('product', "螃蟹");
            localStorage.setItem('price', "￥55");
        });
        x1[3].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/meat/meat0.jpg");
            localStorage.setItem('product', "猪肉");
            localStorage.setItem('price', "￥20");
        });
        x1[4].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/egg/egg1.jpg");
            localStorage.setItem('product', "鸭蛋");
            localStorage.setItem('price', "￥13");
        });
        x1[5].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/fungus/fungus1.jpg");
            localStorage.setItem('product', "平菇");
            localStorage.setItem('price', "￥20");
        });
        x1[6].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/vegetable/vegetable6.jpg");
            localStorage.setItem('product', "生菜");
            localStorage.setItem('price', "￥10");
        });
        x1[7].addEventListener('click', function(){
            localStorage.setItem('tp', "http://localhost:8080/webSX_war_exploded/upload/onion/onion0.jpg");
            localStorage.setItem('product', "大葱");
            localStorage.setItem('price', "￥10");
        });
    }
})