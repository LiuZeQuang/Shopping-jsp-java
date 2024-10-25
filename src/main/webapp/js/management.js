window.addEventListener('load', function () {
    // 获取元素
    var lis = document.querySelector('.left').querySelectorAll('li');
    var user_body = document.querySelector('.user_body');
    var commodity_body = document.querySelector('.commodity_body');
    var buy_body = document.querySelector('.buy_body');
    var comment_body = document.querySelector('.comment_body');
    var nav = document.querySelector('#nav');

    lis[0].addEventListener('click', function () {
        user_body.style.display = 'block';
        commodity_body.style.display = 'none';
        buy_body.style.display = 'none';
        comment_body.style.display = 'none';
        nav.innerHTML = '用户管理';
    })
    lis[1].addEventListener('click', function () {
        user_body.style.display = 'none';
        commodity_body.style.display = 'block';
        buy_body.style.display = 'none';
        comment_body.style.display = 'none';
        nav.innerHTML = '商品管理';
    })
    lis[2].addEventListener('click', function () {
        user_body.style.display = 'none';
        commodity_body.style.display = 'none';
        buy_body.style.display = 'block';
        comment_body.style.display = 'none';
        nav.innerHTML = '订单管理';
    })
    lis[3].addEventListener('click', function () {
        user_body.style.display = 'none';
        commodity_body.style.display = 'none';
        buy_body.style.display = 'none';
        comment_body.style.display = 'block';
        nav.innerHTML = '留言管理';
    })
})