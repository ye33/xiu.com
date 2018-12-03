if(Cookie.get('username')) {
	var logname = Cookie.get('username');
	// console.log(logname);
	$('#thesuer').html(`欢迎您!&nbsp;${logname}&nbsp;<a id="exit" href="#" title="退出">退出</a>`);

	// 登录状态才能发表留言
	// 留言
	$('#size span').click(function(){
		$('#size span').removeClass('active');
		$(this).toggleClass('active');
	});

	$('#subBtn').click(function(){
		var words=$('#words').val().trim();
		var size=$('#size .active').text();
		if(words){
			//过滤敏感词汇
			words=filtertxt(words);
			$.ajax({
				type: 'get',
				url: '../api/contentinsert.php',
				async: true,
				data: {
					'name':logname,
					'size':size,
					'content':words
				},
				success: function(str) {
					// console.log(str);
					location.href='../html/good.html';
				}
			});

		}else{
			alert('no');
		}
	});

} else {
	$('#thesuer').html(`<a id="user" href="../html/reg.html" title="登录/注册">登录/注册</a>`);
	$('#theCover').css('display','block');
	$('#mainCover').css({'display':'block','height':$(document).outerHeight()});
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



