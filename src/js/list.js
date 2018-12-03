// 判断用户状态
if(Cookie.get('username')) {
	var logname = Cookie.get('username');
	console.log(logname);
	$('#thesuer').html(`欢迎您!&nbsp;${logname}&nbsp;<a id="exit" href="#" title="退出">退出</a>`);
} else {
	$('#thesuer').html(`<a id="user" href="../html/reg.html" title="登录/注册">登录/注册</a>`);
}

if($('#exit')) {
	$('#exit').click(function() {
		var now = new Date();
		now.setDate(now.getDate() - 1);
		Cookie.set('username', 'no', {
			expires: now,
			path: '/Xiu/this-xiu/src'
		});
		$('#thesuer').html(`<a id="user" href="#" title="登录/注册">登录/注册</a>`);
	});
}

if($('#user')) {
	$('#thesuer').on('click', '#user', function() {
		window.open('../html/reg.html');
	})
}

// 鼠标划过头部位置：女装高亮，二级分类菜单出现
$('#position .menu1').hover(function() {
	$('#position .menu1>a').addClass('active1');
	$('#position .menu2').css('display', 'block');
}, function() {
	$('#position .menu1>a').removeClass('active1');
	$('#position .menu2').css('display', 'none');
});

// 鼠标划过二级分类菜单，文字高亮
$('#position .menu2 a').hover(function() {
	$(this).addClass('active2');
}, function() {
	$(this).removeClass('active2');
});

// information商品信息
$('.information a').hover(function() {
	$(this).css({
		'color': '#fff',
		'background': '#E97012'
	});
}, function() {
	// $(this).toggleClass('active2');
	$(this).css({
		'color': '#716974',
		'background': ''
	});
});

//鼠标划过多选和更多按钮
$('.btnR .more').hover(function() {
	$(this).css({
		'color': '#EA6E10',
		'background-position': '0 -36px'
	});
}, function() {
	$(this).css({
		'color': '#000',
		'background-position': '0 -16px'
	});
});

$('.btnR .add').hover(function() {
	$(this).css({
		'color': '#EA6E10',
		'background-position': '0 -536px'
	});
}, function() {
	$(this).css({
		'color': '#000',
		'background-position': '0 -516px'
	});
});

// 点击更多
var isok = true;
$('.brand .more').click(function() {
	// console.log(123);
	$('.brand').toggleClass('brandActive');
	if(isok) {
		$(this).html('收起');
	} else {
		$(this).html('展开');
	}
	isok = !isok;
});

//点击多选
$('.brand .add').click(function() {
	// console.log(123);
	$('.brand').addClass('brandActive2');
});

// 多选面板里点击取消
$('.brand .sure .no').click(function() {
	// console.log(123);
	$('.brand').removeClass('brandActive2');
	$('.brand').removeClass('brandActive');
	$('.brand a').removeClass('pick');
});

$('.brand a').click(function() {
	$(this).toggleClass('pick');
	$('.brand .yes').css({
		'color': '#fff',
		'background': '#f20'
	});
});

// 点击更多
var isok2 = true;
$('.size .more').click(function() {
	$('.size').toggleClass('sizeActive');
	if(isok2) {
		$(this).html('收起');
	} else {
		$(this).html('展开');
	}
	isok2 = !isok2;
});

//点击多选
$('.size .add').click(function() {
	$('.size').addClass('sizeActive2');
});

// 多选面板里点击取消
$('.size .sure .no').click(function() {
	$('.size').removeClass('sizeActive2');
	$('.size').removeClass('sizeActive');
	$('.size a').removeClass('pick');
});

$('.size a').click(function() {
	$(this).toggleClass('pick');
	$('.size .yes').css({
		'color': '#fff',
		'background': '#f20'
	});
});

// 点击更多
var isok3 = true;
$('.color .more').click(function() {
	// console.log(123);
	$('.color').toggleClass('colorActive');
	if(isok3) {
		$(this).html('收起');
	} else {
		$(this).html('展开');
	}
	isok3 = !isok3;
});

//点击多选
$('.color .add').click(function() {
	$('.color').addClass('colorActive2');
});

// 多选面板里点击取消
$('.color .sure .no').click(function() {
	$('.color').removeClass('colorActive2');
	$('.color').removeClass('colorActive');
	$('.color a').removeClass('pick');
});

$('.color a').click(function() {
	$(this).toggleClass('pick');
	$('.color .yes').css({
		'color': '#fff',
		'background': '#f20'
	});
});

// 点击显示颜色、尺寸面板
var isEnd = true;
$('.end p').click(function() {
	if(isEnd) {
		$('.size').css('display', 'block');
		$('.color').css('display', 'block');
		$(this).html('精简选项<i></i>');
		$('.end i').css('background-position', '0 -591px');
	} else {
		$('.size').css('display', 'none');
		$('.color').css('display', 'none');
		$(this).html('更多选项(尺码、颜色等)<i></i>');
		$('.end i').css('background-position', '0 -570px');
	}

	isEnd = !isEnd;
});

var data='';
var rule='';
// 渲染列表页
var page = 1;
var rows = 0;
var rowsin=0;
var rowsout=0;
var num = 0;
var now = 1;
var placeform='';
// var place='';
$.ajax({
	type: 'get',
	url: '../api/goodlist.php',
	async: true,
	data: {
		'page': page,
		'qty': 32,
		'data':'id',
		'rule':'asc',
		'place':'all'
		// 'rank':$('#upPrice').prop('class')
		// 'rank':$('#upPrice').className()
	},
	success: function(str) {
		// console.log(str);
		var obj = JSON.parse(str);
		// console.log(obj);
		var arr = obj.datalist;
		create(arr);
		rows = Math.ceil(obj.total / obj.qty);
		rowsin = Math.ceil(obj.total2 / obj.qty);
		rowsout = Math.ceil(obj.total3 / obj.qty);
		createpage(rows);
		// for(var i = 0; i < rows; i++) {
		// 	++num;
		// 	var str2 = `<span class="change">${num}</span>`;
		// 	$('#createPage').html($('#createPage').html() + str2);
		// }
		// var pageBtn = $('#createPage').find('span');
		// pageBtn.eq(0).prop('class', 'active');
		// $('#page .total').html('共' + num + '页');
		// $('#totalpage').html('1/' + num);
	}
});

function createpage(rows){
	num=0;
	$('#createPage').html('');
	for(var i = 0; i < rows; i++) {
			++num;
			var str2 = `<span class="change">${num}</span>`;
			$('#createPage').html($('#createPage').html() + str2);
		}
		var pageBtn = $('#createPage').find('span');
		pageBtn.eq(0).prop('class', 'active');
		$('#page .total').html('共' + num + '页');
		$('#totalpage').html('1/' + num);
}

function create(arr) {
	var res = arr.map(function(item) {
		var url = item.imgurl.split('&')[0];
		var html = `<li data-id=${item.id}>
            <img src="${url}" alt="" style="width: 234px;height: 312px;"/>
            <div class="infor">
                <h2>${item.brand}</h2>
                <h3>${item.name}</h3>
                <p class="price">
                    ¥<span>${item.price}</span>
                    ¥<span><del>${item.original}</del></span>
                </p>
                <p class="activity">${item.activity}</p>
                <div class="sizeIn">
                    <p>可售尺码：</p>
                    <span class="active">IT36</span>
                    <span>IT38</span>
                    <span>IT40</span>
                </div>
            </div>
        </li>`;
		return html;
	}).join('');
	return $('#goodlist').html(res);
}

function send(now) {
	if($('#allPlace').prop('data-id')){
		placeform='all';
	}else if($('#placeIn').prop('data-id')){
		placeform='inside';
	}else if($('#placeOut').prop('data-id')){
		placeform='outside';
	}else{
		placeform='all';
	}

	if($('#upPrice').prop('data-id')){
		data='price';
		rule='asc';
		// place=placeform;
	}else if($('.defal').prop('data-id')){
		data='id';
		rule='asc';
		// place=placeform;
	}else if($('#downP').prop('data-id')){
		data='discount';
		rule='asc';
		// place=placeform;
	}else if($('#downT').prop('data-id')){
		data='time';
		rule='desc';
		// place=placeform;
	}else{
		data='id';
		rule='asc';
		// place=placeform;
	}

	$.ajax({
		type: 'get',
		url: '../api/goodlist.php',
		async: true,
		data: {
			'page': now,
			'qty': 32,
			'rank': data,
			'rule':rule,
			'place':placeform
		},
		success: function(str) {
			var obj = JSON.parse(str);
			// console.log(obj);
			var arr = obj.datalist;
			create(arr);
			var pageBtn = $('#createPage').find('span');
			// console.log(pageBtn);
			pageBtn.removeAttr('class');
			pageBtn.prop('class', 'change');
			pageBtn.eq(now - 1).prop('class', 'active');
		}
	});
}

//点击页码 
$('#createPage').on('click', 'span', function() {
	now = $(this).text();
	var thepage = $(this);
	send(now, thepage);
});

// 顶部上下页
$('#page').on('click', '.back', function() {
	now--;
	if(now <= 1) {
		now = 1;
	}

	send(now);
	// update();
});

$('#page').on('click', '.ahead', function() {
	now++;
	if($('#placeIn').prop('data-id')){
		if(now >= rowsin) {
			now = rowsin;
		}
	}else if($('#placeOut').prop('data-id')){
		if(now >= rowsout) {
			now = rowsout;
		}
	}else{
		if(now >= rows) {
			now = rows;
		}
	}
	send(now);
});

// 底部上下页以及首页尾页
$('#prev').on('click', function() {
	console.log(now);
	now--;
	if(now <= 1) {
		now = 1;
	}

	send(now);
	$('#totalpage').html(now + '/' + num);
	// update();
});

$('#next').on('click', function() {
	console.log(now);
	now++;
	if($('#placeIn').prop('data-id')){
		if(now >= rowsin) {
			now = rowsin;
		}
	}else if($('#placeOut').prop('data-id')){
		if(now >= rowsout) {
			now = rowsout;
		}
	}else{
		if(now >= rows) {
			now = rows;
		}
	}

	send(now);
	$('#totalpage').html(now + '/' + num);
	// update();
});

$('#page').on('click', '.first', function() {
	send(1);
});
$('#page').on('click', '.last', function() {
	if($('#placeIn').prop('data-id')){
		send(rowsin);
	}else if($('#placeOut').prop('data-id')){
		send(rowsout);
	}else{
		send(rows);
	}
});

//价格升序功能
$('#upPrice').click(function() {
	$('.rankrule').prop('data-id','');
		$(this).prop('data-id','up')
		send(now);
});

// 默认排序
$('.defal').click(function() {
	$('.rankrule').prop('data-id','');
		$(this).prop('data-id','up');
		send(now);
});

// 按折扣排序
$('#downP').click(function() {
	$('.rankrule').prop('data-id','');
		$(this).prop('data-id','up')
		send(now);
});

// 按上架时间
$('#downT').click(function() {
	$('.rankrule').prop('data-id','');
		$(this).prop('data-id','up')
		console.log($(this).prop('data-id'));
		send(now);
});

$('#allPlace').click(function() {
	// $('.rankrule').prop('data-id','');
	$('.rankrule2').prop('data-id','');
		$(this).prop('data-id','up');
		console.log($(this).prop('data-id'));
		send(now);
		// num=0;
		createpage(rows);
});

$('#placeIn').click(function() {
	// $('.rankrule').prop('data-id','');
	$('.rankrule2').prop('data-id','');
		$(this).prop('data-id','up');
		console.log($(this).prop('data-id'));
		send(now);
		// num=0;
		createpage(rowsin);
});

$('#placeOut').click(function() {
	// $('.rankrule').prop('data-id','');
	$('.rankrule2').prop('data-id','');
		$(this).prop('data-id','up');
		console.log($(this).prop('data-id'));
		send(now);
		// num=0;
		createpage(rowsout);
});

// 点击li跳转至详情页
$('#goodlist').on('click', 'li', function() {
	var id = $(this).data('id');
	Cookie.set('id', id, {});
	window.open('../html/good.html');
});

// 轮播图
$.ajax({
	type: 'get',
	url: '../api/goodlist.php',
	async: true,
	data: {
		'page': 3,
		'qty': 10
	},
	success: function(str) {
		// console.log(str);
		var arr = JSON.parse(str).datalist;
		// console.log(arr);
		var html = '';
		var sildeurl = '';

		for(var i = 0; i < arr.length; i++) {

			sildeurl = (arr[i].imgurl).split('&')[0];
			// console.log(sildeurl);
			html += `<li>
                    <img style="width:160px;" src="${sildeurl}" alt="" />
                    <div class="infor">
                        <h2>${arr[i].brand}</h2>
                        <h3>${arr[i].name}</h3>
                        <p class="price">
                            ¥<span>${arr[i].original}</span>
                            ¥<span><del>${arr[i].price}</del></span>
                        </p>
                    </div>
                </li>`;
		}
		// console.log(html);
		// console.log($('#moveimg'));
		$('#moveimg').html(html);

		// 底部轮播图
		//重置ul的宽度
		var wNum = $('#moveimg li').size() * $('#moveimg li').eq(0).outerWidth();
		$('#moveimg').css('width', wNum);
		var iW = $('#moveimg li').eq(0).outerWidth() * 5;

		//轮播开始
		var timer = null;
		clearInterval(timer);
		timer = setInterval(next, 4000);

		function next() {
			$('#moveimg').animate({
				'left': -iW
			}, 2000, function() {
				$('#moveimg li:lt(5)').insertAfter($('#moveimg li:last'));
				$('#moveimg').css('left', 0);
			});
		}

		function prev() {
			for(var i = 0; i < 5; i++) {
				$('#moveimg li:last').insertBefore($('#moveimg li:first'));
			}
			$('#moveimg').css('left', -iW);
			$('#moveimg').animate({
				'left': 0
			}, 2000);
		}

		//鼠标划入轮播区暂停定时器
		$('#recommend').hover(function() {
			clearInterval(timer);
		}, function() {
			clearInterval(timer);
			timer = setInterval(next, 5000);
		});

		$('#nextBtn').click(function() {
			next();
		});

		$('#prevBtn').click(function() {
			prev();
		});

		// 鼠标划过左右按钮高亮
		$('#prevBtn').hover(function() {
			$(this).css('background-position', '0 -747px');
		}, function() {
			$(this).css('background-position', '0 -823px');
		});

		$('#nextBtn').hover(function() {
			$(this).css('background-position', '-25px -747px');
		}, function() {
			$(this).css('background-position', '-25px -823px');
		});

	}
});

// 侧边栏
for(var i = 0; i < $('#sideBar a').size(); i++) {
	$('#sideBar a').hover(function() {
		$(this).css('background-positionX', '-68px');
	}, function() {
		$(this).css('background-positionX', '-2px');
	});
}

$('#sideBar span').hover(function() {
	$(this).css({
		'color': '#fff',
		'background': '#D43D36'
	});
}, function() {
	$(this).css({
		'color': '#FE0A09',
		'background': '#fff'
	});
});
// 关闭侧边栏
$('#sideBar span').click(function() {
	$('#sideBar').css('display', 'none');
});

// 返回顶部
$('#sideBar .backTop').click(function() {
	$('body,html').stop().animate({
		scrollTop: 0
	}, 900);
});

// 吸顶导航，导航透明度改变
$(window).scroll(function() {
	if($(window).scrollTop() >= 42) {
		$('#mainNav').addClass('mainNavFix');
		$('#mainNav').css('background', 'rgba(51,51,51,.9)');
		$('#subNav').addClass('subNavFix');
		$('#subNav').css('background', 'rgba(247,247,247,.9)');
	} else {
		$('#mainNav').removeClass('mainNavFix');
		$('#mainNav').css('background', 'rgb(51,51,51)');
		$('#subNav').removeClass('subNavFix');
		$('#subNav').css('background', 'rgb(247,247,247)');
	}
});

// 商品区动画
// 头部排序按钮，右侧页码
$('.defal').click(function(){
	$(this).addClass('active');
	$('#upPrice').removeClass('activea2');
	$('#downT').removeClass('activea1');
	$('#downP').removeClass('activea1');
});

$('#downP').click(function(){
	$(this).addClass('activea1');
	$('#upPrice').removeClass('activea2');
	$('#downT').removeClass('activea1');
	$('.defal').removeClass('active');
});

$('#downT').click(function(){
	$(this).addClass('activea1');
	$('#upPrice').removeClass('activea2');
	$('#downP').removeClass('activea1');
	$('.defal').removeClass('active');
});

$('#upPrice').click(function(){
	$(this).addClass('activea2');
	$('#downT').removeClass('activea1');
	$('#downP').removeClass('activea1');
	$('.defal').removeClass('active');
});

$('.goodsTop .prev').hover(function() {
	$(this).css('color', '#FF6801');
	$('.prev i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -400px');
}, function() {
	$(this).css('color', '#000');
	$('.prev i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -480px');
});

$('.goodsTop .next').hover(function() {
	$(this).css('color', '#FF6801');
	$('.next i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -420px');
}, function() {
	$(this).css('color', '#000');
	$('.next i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -460px');
});

// 底部页码
$('#page .back').hover(function() {
	$(this).css('color', '#FF6801');
	$('.back i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -400px');
}, function() {
	$(this).css('color', '#000');
	$('.back i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -440px');
});

$('#page .ahead').hover(function() {
	$(this).css('color', '#FF6801');
	$('.ahead i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -420px');
}, function() {
	$(this).css('color', '#000');
	$('.ahead i').css('background', 'url(../img/list/xsearchico20120615.png) no-repeat 0 -460px');
});

$('#page').on('mouseover', '.change', function() {
	$(this).addClass('active');
});
$('#page').on('mouseout', '.change', function() {
	$(this).removeClass('active');
});

// 鼠标划过商品
$('#goodlist').on('mouseover', 'h3', function() {
	$(this).css('color', '#FF6801');
});
$('#goodlist').on('mouseout', 'h3', function() {
	$(this).css('color', '#737273');
});

$('#goodlist').on('mouseover', 'li', function() {
	$(this).css('border', '2px solid #E7E7E7');
	var act = $('#goodlist .activity').eq($(this).index());
	var size = $('#goodlist .sizeIn').eq($(this).index());
	act.stop().animate({
		'top': -15,
		'opacity': 0
	}, 300);
	size.stop().animate({
		'bottom': 85,
		'opacity': 0.8
	}, 300);
});
$('#goodlist').on('mouseout', 'li', function() {
	var act = $('#goodlist .activity').eq($(this).index());
	var size = $('#goodlist .sizeIn').eq($(this).index());
	$(this).css('border', '2px solid #fff');
	act.stop().animate({
		'top': -25,
		'opacity': 1
	}, 300);
	size.stop().animate({
		'bottom': 70,
		'opacity': 0
	}, 300);
});