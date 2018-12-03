//判断用户状态
function reg() {
	$('#welcome').html(`${logname}&nbsp;您好&nbsp;欢迎光临走秀网!`);
	$('#status').html('退出');
	$('#status').prop('href', '#');
	$('#status').prop('title', '[退出]');
}

function exit() {
	$('#welcome').html(`&nbsp;您好!&nbsp;欢迎光临走秀网!`);
	$('#status').html('[登录/注册]');
	$('#status').prop('href', '../html/reg.html');
	$('#status').prop('title', '登录/注册');
}

if(Cookie.get('username')) {
	var logname = Cookie.get('username');
	console.log(logname);
	reg();
} else {
	exit();
}

$('#status').on('click', function() {
	if($(this).text() == '退出') {
		var now = new Date();
		now.setDate(now.getDate() - 1);
		Cookie.set('username', 'no', {
			expires: now,
			path: '/Xiu/this-xiu/src'
		});

		location.href('cart.html');
		//		exit();
	}
})

var arr = [];
var delarr = [];
$.ajax({
	type: 'get',
	url: '../api/checkcart.php',
	async: true,
	data: {},
	success: function(str) {
		create(str);
		update();
	}
});

function create(str) {
	var arr = JSON.parse(str);
	console.log(arr);
	var res = arr.map(function(item) {
		var html = `<div class="item" data-id="${item.id}">
                    	<ul class="clearfix">
        				<li class="pick">
                            <input type="checkbox" />
                        </li>
                        <li class="infor">
                            <img src="${item.imgurl}" alt="" />
                            <p>${item.brand}</p>
                            <p>${item.name}</p>
                            <p>颜色 : ${item.color} 尺码 : ${item.size}</p>
                        </li>
                        <li class="pric">
                            <p>¥&nbsp;${item.price}</p>
                            <p class="good_total">¥&nbsp;${item.original}</p>
                        </li>
                        <li class="number">
                            <span class="cut">-</span>
                            <input class="num"type="text" value="${item.number}"/>
                            <span class="add">+</span>
                        </li>
                        <li class="done">
                            <a class="like" href="javascript:;">移至收藏夹</a>
                            <a class="del" href="javascript:;">删除</a>
                        </li>
                           </ul>
           			</div>`;

		return html;

	}).join('');

	$('#goodLis').html($('#goodLis').html() + res);
	$('.pick input').prop('checked', 'checked');

	changeColor();
	countNum();

}

function changeColor() {
	for(var i = 0; i < $('.pick input').size(); i++) {
		console.log(12345);
		if($('.pick input').eq(i).prop('checked')) {
			console.log(12345);
			$('.pick input').eq(i).parent().parent().parent().css('background', '#fff4e8');
		} else {
			$('.pick input').eq(i).parent().parent().parent().css('background', '');
		}
	}
}

//点击加减按钮改变数量
$('#goodLis').on('click', '.add', function() {
	var val = $(this).prev().val();
	// console.log(val);
	val++;
	if(val >= 10) {
		val = 10;
	}
	//接口：更新订单表该商品数量
	$(this).prev().val(val);
	require($(this));
	countNum();

});

$('#goodLis').on('click', '.cut', function() {
	var val = $(this).next().val();
	// console.log(val);
	val--;
	if(val <= 1) {
		val = 1;
	}
	//接口：更新订单表该商品数量
	$(this).next().val(val);
	require($(this));
	countNum();

});

//加减数量发送ajax请求
function require(nowthis) {
	var id = (nowthis.parent().parent().parent()).attr('data-id');
	var val = nowthis.parent().find('input').val();
	// console.log(id);
	$.ajax({
		type: 'get',
		url: '../api/update.php',
		async: true,
		data: {
			'id': id,
			'number': val
		},
		success: function(str) {
			console.log(str);
		}
	});
	countNum();
}

//删除该行商品
$('#goodLis').on('click', '.del', function() {
	var id = $(this).parent().parent().parent().data('id');
	// console.log(id);
	var answer = confirm('您确定要删除该商品吗？');
	if(answer) {
		//页面删除
		$(this).parent().parent().parent().remove();
		//接口：删除订单表该商品
		$.ajax({
			type: 'get',
			url: '../api/delete.php',
			async: true,
			data: {
				'id': id
			},
			success: function(str) {
				console.log(str);
			}
		});
	}
	countNum();
	update();
	changeColor();
})

//全选
var selectAll = $('#count').find('input');
var isok = false;

selectAll.on('click', function() {
	if(isok) {
		$('.pick input').prop('checked', 'checked');
	} else {
		$('.pick input').prop('checked', '');
	}

	isok = !isok;
	countNum();
	changeColor();
})

//更新购物车列表，无商品则隐藏最后一行
function update() {
	if($('.pick').size() == 0) {
		$('#count').css('display', 'none');
		$('#cartHead').css('display', 'none');
	}else{
		$('#count').css('display', 'block');
		$('#cartHead').css('display', 'block');
	}
}
update();
//判断商品复选框的状态，删除、数量、总价以复选框的状态为依据
function countNum() {
	//设置空数组，循环判断每行商品复选框是否被勾选，如被勾选则将该行下标push进数组里
	delarr.length = 0;
	arr.length = 0;
	var len = $('.pick input').size();
	for(var i = 0; i < len; i++) {
		if($('.pick input').eq(i).prop('checked')) {
			var delindex = ($('.pick').eq(i).parent().parent()).data('id')
			arr.push(i);
			delarr.push(delindex);

		}
	}
	console.log(arr);
	console.log(delarr);

	// 根据复选框状态计算数量和总价
	var allnum = 0;
	var totalprice = 0;
	for(var i = 0; i < arr.length; i++) {
		var allPrice = $('.good_total').eq(arr[i]).text();
		allPrice = ($.trim(allPrice).substring(2)) * 1;
		// console.log(allPrice);
		allnum += $('.num').eq(arr[i]).val() * 1; //数量
		//      totalprice+=allPrice;//价格
		totalprice += allPrice * allnum;
	}

	$('#allnum').html(`已选商品&nbsp;<span>${allnum}</span>&nbsp;件`);
	$('#totalprice').html(`总计（不含运费）：<span>￥${totalprice.toFixed(2)}</span>`);
}

//点击复选框选择商品，计算数量和价格
$('#goodLis').on('click', '.pick input', function() {
	countNum(); //先更新复选框状态再判断是否全部复选框已被勾选
	if($('.pick input').size() == arr.length) {
		$('#count input').prop('checked', 'checked');
		isok = false;
	} else {
		$('#count input').removeAttr('checked');
		isok = true;
	}
	changeColor();
})

$('#count input').prop('checked', 'checked');
countNum();

//全删与删除多条
$('#delall').on('click', function() {
	countNum(); //先更新复选框状态再根据最新数组循环
	var answer = confirm('您确定要删除所选商品吗？');
	if(answer) {
		var isok = false;
		for(var i = arr.length - 1; i >= 0; i--) { //从后面开始删除
			//删除订单表信息，注意这里删除的是该id的商品信息，存储在delarr中，存储的是要删除的商品的id
			// console.log(delarr[i]);
			$.ajax({
				type: 'get',
				url: '../api/delete.php',
				async: true,
				data: {
					'id': delarr[i]
				},
				success: function(str) {
					console.log(str);
				}
			});

			$('.pick').parent().parent().eq(arr[i]).remove();
			//注意这里删除的是页面的li节点，存储在arr中，存储的是li的下标
		}

		//更新状态
		changeColor();
		countNum();
		update();
	}
})

//手动输入时更新商品数量和总价
$('#goodLis').on('change', '.num', function() {
	require($(this));
	countNum();
})

$('#goodLis').on('mouseover', '.done>a', function() {
	console.log(123);
	$(this).css('color', '#EB7416');
});
$('#goodLis').on('mouseout', '.done>a', function() {
	$(this).css('color', '#5B5B5B');
});

$('#count a').hover(function() {
	$(this).addClass('thisActive');
}, function() {
	$(this).removeClass('thisActive');
});

$(window).scroll(function() {
	if($(window).scrollTop() >= 300) {
		$('#count').addClass('fixBottom');
	} else {
		$('#count').removeClass('fixBottom');
	}
});