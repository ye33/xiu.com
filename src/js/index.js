// 判断用户状态
if(Cookie.get('username')) {
	var logname = Cookie.get('username');
	console.log(logname);
	$('#thesuer').html(`欢迎您!&nbsp;${logname}&nbsp;<a id="exit" href="#" title="退出">退出</a>`);
} else {
	$('#thesuer').html(`<a id="user" href="html/reg.html" title="登录/注册">登录/注册</a>`);
}

if($('#exit')) {
	$('#exit').click(function() {
		Cookie.remove('username');
		$('#thesuer').html(`<a id="user" href="html/reg.html" title="登录/注册">登录/注册</a>`);
	});
}

// 滚动距离大于等于300时侧边栏出现
$(window).scroll(function() {
	if($(window).scrollTop() >= 670) {
		$('#sideL').css('display', 'block');
		$('#sideR').css('display', 'block');
	} else {
		$('#sideL').css('display', 'none');
		$('#sideR').css('display', 'none');
	}
});
//二维码与遮罩
$('#sideL').click(function() {
	$('#cover').css('display', 'block');
	$('#cover').css('height', $(document).outerHeight());
	$('#cover img').click(function() {
		$('#cover').css('display', 'none');
	});
});

//鼠标划过右侧楼层跳跃面板
$('#sideR').hover(function() {
	$('#sideR').stop().animate({
		'right': -50
	}, 400);
}, function() {
	$('#sideR').stop().animate({
		'right': -115
	}, 400);
});

// 点击楼层跳转
for(var i = 0; i < $('#sideR .skip').size(); i++) {
	$('#sideR .skip').click(function() {
		var _this = this;
		var index = $(_this).index();
		var toTop = $('#main .goal').eq(index);
		$('body,html').stop().animate({
			scrollTop: (toTop.offset()).top
		}, 900);
	});
}

$('.toTop').click(function() {
	$('body,html').stop().animate({
		scrollTop: 0
	}, 900);
});

//中间商品区渲染
var obj = {};
$.ajax({
	type: 'get',
	url: 'api/index1.php',
	async: true,
	data: {},
	success: function(str) {
		var obj = JSON.parse(str);
		// console.log(obj);

		var arr1 = obj.cid1;
		var one = arr1.slice(0, 1);
		$('#f1_goods .one').html(create(one));
		var two = arr1.slice(1, 5);
		$('#f1_goods .two').html(create(two));
		var three = arr1.slice(5);
		$('#f1_goods .three').html(create(three));
		$('#f2_goods .three').html(create(obj.cid2));
		$('#f3_goods .three').html(create(obj.cid3));
		$('#f4_goods .three').html(create(obj.cid4));
		$('#f5_goods .two').html(create(obj.cid5));
	}
});

function create(arr) {
	var res = arr.map(function(item) {
		return `<li data-id=${item.id}><a href="javascript:;"><img src="${item.imgurl}" alt="" /></a></li>`;
	}).join('');

	return res;
}

//点击商品跳转至详情页
$('#main').on('click', 'li', function() {
	location.href = "html/list.html";
});

//鼠标划过商品时的动画效果
$('#main .main').on('mouseenter', 'li', function() {
	$(this).stop().animate({
		'top': -6
	}, 500);
});

$('#main .main').on('mouseleave', 'li', function() {
	$(this).stop().animate({
		'top': 0
	}, 500);
});