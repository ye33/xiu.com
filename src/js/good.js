// 判断用户状态
if(Cookie.get('username')) {
	var logname = Cookie.get('username');
	console.log(logname);
	$('#thesuer').html(`欢迎您!&nbsp;${logname}&nbsp;<a id="exit" href="#" title="退出">退出</a>`);
} else {
	$('#thesuer').html(`<a id="user" href="../html/reg.html" title="登录/注册">登录/注册</a>`);
}

if($('#user')) {
	$('#thesuer').on('click', '#user', function() {
		window.open('../html/reg.html');
	})
}

if($('#exit')) {
	$('#exit').click(function() {
		var now = new Date();
		now.setDate(now.getDate() - 1);
		Cookie.set('username', 'no', {
			expires: now,
			path: '/Xiu/this-xiu/src'
		});
		//		Cookie.remove('username');
		$('#thesuer').html(`<a id="user" href="#" title="登录/注册">登录/注册</a>`);
	});
}

var id = Cookie.get('id');
console.log(id);
var price = 0;
var original = 0;
var imgurl = '';
var brand = '';

$.ajax({
	type: 'get',
	url: '../api/checkgood.php',
	async: true,
	data: {
		'id': id
	},
	success: function(str) {
		//      console.log(str);
		var obj = JSON.parse(str)[0];
		//      console.log(obj);
		var arr = obj.imgurl.split('&');
		//      console.log(arr);
		price = obj.price;
		original = obj.original;
		imgurl = arr[0];
		brand = obj.brand;
		//渲染放大镜
		var html = '';
		for(var i = 0; i < arr.length; i++) {
			html += `<li><img src="${arr[i]}" data-lsrc="${arr[i]}" data-maxSrc="${arr[i]}"></li>`;
		}
		//		console.log(html);
		$('#MagnifierWrap2 .spec-items ul').html(html); //生成节点
		$('#MagnifierWrap2 .spec-items ul li').eq(0).addClass('on'); //第一个li样式为on

		//第一个大图的渲染
		var str = `<img class="MagTargetImg" src="${arr[0]}" data-src="${arr[0]}">`;
		$('#MagnifierWrap2 .MagnifierMain').html(str);

		//调用放大镜插件：传最大盒子id即可
		MagnifierF("MagnifierWrap2");

		//渲染文字信息
		var html = `<h2>${obj.name}</h2>
				<ul>
					<li class="clearfix">
						<span  class="space1">品牌</span>
						<p>
							<a id="brand" href="javascript:;">${obj.brand}</a>
							<a href="javascript:;">已有96条品牌评论</a>
							<span>商品编号：${obj.id}</span>
						</p>
					</li>
				</ul>`;
		$('.title').html(html);

		var html1 = `<span>限时抢购</span>
					<p>
						<span class="s1"><i>¥</i>${obj.original}</span>
						<span class="s2" id="countTime">剩余：<i></i>天<i></i>小时<i></i>分<i></i>秒</span>
					</p>`;
		$('.goodPrice .hot').html(html1);
		$('.xiuPrice>p>span').html(obj.price);
		$('.place>p>span').eq(0).html(obj.place2);
		$('#thesum').html($('#num').val() * obj.original);
		$('#imgInfor2 img').prop('src', imgurl);

		// 倒计时
		var timer=setInterval(countTime,1000);
		countTime();
		function countTime(){
		    var startTime=new Date();
		    var endDay=new Date('2018/12/13 00:00:00');
		    var dayMs=(endDay-startTime)/1000;

		    var objtime=diffeTime(dayMs);
		    if(dayMs<=0){
		        clearInterval(timer);
		    }

			$('#countTime').html(`剩余：<i>${objtime.day}</i>天<i>${objtime.hour}</i>时<i>${objtime.minute}</i>分<i>${objtime.second}</i>秒`);
		}

		var sizearr = obj.size.split('&');
		var sizehtml = '';
		for(var i = 0; i < sizearr.length; i++) {
			sizehtml += `<span class="same">${sizearr[i]}</span>`;
		}
		$('#theSize').html(sizehtml);
		$('#theSize span').eq(0).addClass('sizeActive');
	}
});

$('.goodText .color').on('click', '.same', function() {
	$('.goodText .color .same').removeClass('sizeActive');
	$(this).toggleClass('sizeActive');
});

$('#theSize').on('click', '.same', function() {
	$('#theSize .same').removeClass('sizeActive');
	$(this).toggleClass('sizeActive');
});

$('#pei').hover(function() {
	$('#pei img').css('display', 'block');
}, function() {
	$('#pei img').css('display', 'none');
});

$('#sui').hover(function() {
	$('#sui em').css('display', 'block');
}, function() {
	$('#sui em').css('display', 'none');
});

var number = 1;
$('#cut').click(function() {
	number--;
	if(number <= 1) {
		number = 1;
	}
	$('#num').val(number);
	$('#thesum').html($('#num').val() * original);
});

$('#add').click(function() {
	number++;
	if(number >= 10) {
		number = 10;
	}
	$('#num').val(number);
	$('#thesum').html($('#num').val() * original);
});

function buy() {
	var goodnum = $('#num').val();
	var color = $('.color .sizeActive').text();
	var size = $('#theSize .sizeActive').text();
	var name = $('.title>h2').text();

	$.ajax({
		type: 'get',
		url: '../api/cart.php',
		async: true,
		data: {
			'number': goodnum,
			'id': id,
			'color': color,
			'size': size,
			'name': name,
			'brand': brand,
			'price': price,
			'original': original,
			'imgurl': imgurl
		},
		success: function(str) {
			console.log(str);
//			updatenumber();
			initlogocart();
//			$('#cartnum').html(`<i>${cartnum*1+goodnum*1}</i>`);
		}
	});
}
$('#toCart').click(function() {
	buy();
//	updatenumber();
});

$('#buy').click(function() {
	buy();
});

$('#tocart2').click(function() {
	buy();
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

//商品信息和品牌评论
$('#headTab .tabL a').hover(function() {
	$(this).addClass('active');
}, function() {
	$(this).removeClass('active');
});

$('#headTab .tabL a').click(function() {
	$('#headTab .tabL a').removeClass('btnInfor');
	$(this).addClass('btnInfor');
});

//切换商品信息和品牌评论
var ischange = true;
$('#headTab .tabL a').click(function() {
	if(ischange) {
		$('#headTab .tabL a').removeClass('btnInfor');
		$(this).addClass('btnInfor');
		$('.inforBox').css('display', 'none');
		$('#conInfor').addClass('conInfor');
		$('.tabInforR').css('display', 'none');
	} else {
		$('.inforBox').css('display', 'block');
		$('#conInfor').removeClass('conInfor');
		$('.tabInforR').css('display', 'block');
	}
	ischange = !ischange;
});

$(window).scroll(function() {
	if($(window).scrollTop() >= 500) {
		$('#headTab').addClass('fixedTop');
	} else {
		$('#headTab').removeClass('fixedTop');
	}
});

//留言
$('#btnText').click(function(){
	window.open('../html/content.html');
});

var fpages=1;
var frows=0;
$.ajax({
	type: 'get',
	url: '../api/checkwords.php',
	async: true,
	data: {
		'page':fpages,
		'qty':3
	},
	success: function(str) {
		// console.log(str);
		var obj=JSON.parse(str);
		createCon(obj);
		frows=Math.ceil(obj.total/obj.qty);
		for(var i=0;i<frows;i++){
			var str=`<span>${i+1}</span>`;
			$('#fpages').html($('#fpages').html()+str);
		}
		$('#fpages').find('span').eq(0).addClass('active');
	}
});

function createCon(obj){
	var html='';
	var arr=obj.datalist;
	for(var i=0;i<arr.length;i++){
		html+=`<li class="clearfix">
				<div class="user fl">
					<img src="../img/good/none.jpg" alt="" />
					<p>x****6</p>
					<a href="javascript:;">已购买过此商品</a>
				</div>
				<div class="say fr">
					<img src="../img/good/g1_100_100(3).jpg" alt="" />
					<div class="sayWhat fl">
						<p class="rank">评分：<span></span><i>已获赠券</i>颜色：米色</p>
						<p>尺码：IT40</p>
						<p class="think">该用户认为实际尺码：<span>[${arr[i].size}]</span></p>
						<p class="words">${arr[i].content}</p>
						<p class="item">
							<a href="javascript:;">【IT40码】女士Studio羊毛西装外套(尺码偏大,建议买小1码)</a>
							<span class="fr">发表于${arr[i].time}</span>
						</p>
					</div>
				</div>
			</li>`;
		}

		$('#mainCon').html(html);
}

function sendrequire(fpages){
	$.ajax({
		type: 'get',
		url: '../api/checkwords.php',
		async: true,
		data: {
			'page': fpages,
			'qty': 3
		},
		success: function(str) {
			var obj = JSON.parse(str);
			createCon(obj);
			$('#fpages span').removeClass('active');
			$('#fpages span').eq(obj.page-1).addClass('active');
		}
	});
}

$('#fpages').on('click', 'span', function() {
	fpages = $(this).text();
	sendrequire(fpages);
});

$('#fpagef').on('click', function() {
	fpages--;
	if(fpages <= 1) {
		fpages = 1;
	}

	sendrequire(fpages);
});

$('#fpagel').on('click', function() {
	fpages++;
	if(fpages >= frows) {
		fpages = frows;
	}

	sendrequire(fpages);
});