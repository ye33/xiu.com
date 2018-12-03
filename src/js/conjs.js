function initlogocart() {
	var url = '';
	if($('body').data('id')) {
		theurl = 'api/logocart.php';
	} else {
		theurl = '../api/logocart.php';
	}
	$.ajax({
		type: 'get',
		url: theurl,
		async: true,
		data: {},
		success: function(str) {
			if(str==1){
				$('#logoCartNum').html('0');
				$('#logocartnum').html('0');
				$('#logocartsum').html('¥' + '0.00');
				if($('#cartnum')){
					$('#cartnum').html(`<i>0</i>`);
				}
			}else{
				// console.log(str);
				var obj = JSON.parse(str);
				var arr = obj.list;
				// console.log(arr);
				var html = '';
				var imgurl = '';

				for(var i = 0; i < arr.length; i++) {
					if($('body').data('id')) {
						imgurl = arr[i].imgurl.slice(3);
					} else {
						imgurl = arr[i].imgurl;
					}

					html += `<li data-id=${arr[i].id}>
		                    <a href="javascript:;" class="smallpic"><img src="${imgurl}"/></a>
		                    <div class="fl">
		                        <p>${arr[i].brand}</p>
		                        <p class="infor">${arr[i].name}</p>
		                        <p>￥${arr[i].original} x ${arr[i].number}</p>
		                    </div>
		                    <a href="javascript:;" class="del fr">删除</a>
		                </li>`;
				}
				//	        console.log(html);
				$('#logoCart>ul').html(html);
				$('#logoCartNum').html(obj.number);
				$('#logocartnum').html(obj.number);
				$('#logocartsum').html('¥' + obj.sum);
				if($('#cartnum')){
					$('#cartnum').html(`<i>${obj.number}</i>`);
				}
			}
		}
	});
}

initlogocart();
var delurl = '';
$('#logoCart>ul').on('click', '.del', function() {
	var id = $(this).parent().data('id');
	$(this).parent().remove();
	if($('body').data('id')) {
		delurl = 'api/delete.php';
	} else {
		delurl = '../api/delete.php';
	}
	$.ajax({
		type: 'get',
		url: delurl,
		async: true,
		data: {
			'id': id
		},
		success: function(str) {
			console.log(str);
			initlogocart();
		}
	});
});

var url3 = '';
$('#logoCartBottom>a').click(function() {
	if($('body').data('id')) {
		$(this).prop('href', 'html/cart.html');
	} else {
		$(this).prop('href', 'cart.html');
	}
});

// logo区购物车，鼠标划过出现
$('#myCart').hover(function() {
	$('#myCart .mycartOne').addClass('activeCart');
	$('#logoCart').css('display', 'block');
}, function() {
	$('#myCart .mycartOne').removeClass('activeCart');
	$('#logoCart').css('display', 'none');
});

//划过购物车删除按钮，高亮
$('#logoCart').on('mouseover','.del',function() {
	$(this).css({
		'color': '#D50214',
		'text-decoration': 'none'
	});
});

$('#logoCart').on('mouseout','.del',function() {
	$(this).css({
		'color': '#464444',
		'text-decoration': 'underline'
	});
});

//划过商品标题时出现文字介绍
$('#logoCart').on('mouseover','.infor',function() {
	$(this).attr('title',$(this).text());
	$(this).css({
		'color': '#FF7F20'
	});
});

$('#logoCart').on('mouseout','.infor',function() {
	$(this).removeAttr('title');
	$(this).css({
		'color': '#000'
	});
});

//logo区我的秀，出现高亮
$('#myXiu').hover(function() {
	$('#myXiu').addClass('myXiu2');
	$('#myXiu2').css('display', 'block');
}, function() {
	$('#myXiu').removeClass('myXiu2');
	$('#myXiu2').css('display', 'none');
});

$('#myXiu2 a').hover(function() {
	$(this).css('color', '#D50214');
}, function() {
	$(this).css('color', '#000');
});

//主导航区，鼠标划过高亮
$('.mainNav li a').hover(function() {
	$(this).addClass('active');
	$('.mainNav li a').eq(0).addClass('active');
}, function() {
	$(this).removeClass('active');
	$('.mainNav li a').eq(0).addClass('active');
});

//次级导航区，划过二级导航出现，一级高亮
var navLis = $('.subNav>ul>li');
var nav1 = $('.subNav>ul>li>a');
navLis.hover(function() {
	nav1.eq($(this).index()).addClass('active');

	$('.subNav2').eq($(this).index()).css('display', 'block');
}, function() {
	nav1.eq($(this).index()).removeClass('active');
	$('.subNav2').eq($(this).index()).css('display', 'none');
});

// 鼠标划过二级导航，文字高亮
$('.subNav>ul h2').hover(function() {
	$(this).css('color', '#FF7F20');
}, function() {
	$(this).css('color', '#000');
});

$('.subNav>ul h3').hover(function() {
	$(this).css('color', '#FF7F20');
}, function() {
	$(this).css('color', '#000');
});

$('.subNav2 a').hover(function() {
	$(this).addClass('hot2');
}, function() {
	$(this).removeClass('hot2');
});

$('.subNav2').on('click', 'h2', function() {
	if($('body').data('id')) {
		location.href = 'html/list.html';
	} else {
		location.href = 'list.html';
	}
});

$('.subNav2').on('click', 'h3', function() {
	if($('body').data('id')) {
		location.href = 'html/list.html';
	} else {
		location.href = 'list.html';
	}
});

$('.subNav2').on('click', 'a', function() {
	if($('body').data('id')) {
		$(this).prop('href', 'html/list.html');
	} else {
		$(this).prop('href', 'list.html');
	}
});

//尾部
//免税说明
$('.service2 .customs').hover(function() {
	$('.service2 .customs p').css('display', 'block');
}, function() {
	$('.service2 .customs p').css('display', 'none');
});
// 二维码
$('.service3 .webchat').hover(function() {
	$('.service3 .webchat img').css('display', 'block');
}, function() {
	$('.service3 .webchat img').css('display', 'none');
});