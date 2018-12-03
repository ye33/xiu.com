// 选项卡
var tabBtn = $('#reg .tabBtn span');
tabBtn.click(function() {
	tabBtn.removeClass('active');
	$(this).toggleClass('active');
	$('#reg form').css('display', 'none');
	$('#reg form').eq($(this).index()).css('display', 'block');
});

// 二维码登录
var isok = true;
$('#reg .code').click(function() {
	if(isok) {
		$('#reg form').css('display', 'none');
		$('#codeImg').css('display', 'block');
		$('.tabBtn').css('display', 'none');
	} else {
		$('#register').css('display', 'block');
		$('.tabBtn span').removeClass('active');
		$('.tabBtn span').eq(0).addClass('active');
		$('#codeImg').css('display', 'none');
		$('.tabBtn').css('display', 'block');
	}
	$(this).toggleClass('codeActive');
	$('#reg .code a').toggleClass('active');
	isok = !isok;
});

// 用户注册：验证用户名是否存在
var isok1 = false;
$('#name').keyup(function() {
	var val = $('#name').val();
	console.log(val);
	var str = checkReg.trim(val); //去除前后空格

	if(str && checkReg.username(str)) {
		$.ajax({
			type: 'get',
			url: '../api/regcheck.php',
			async: true,
			data: {
				'username': str
			},
			success: function(str) {
				console.log(str);
				if(str == '0') {
					$('#infor1').html('该用户名已存在');
					$('#infor1').css('color', 'red');
				} else {
					$('#infor1').html('该用户名可以注册');
					$('#infor1').css('color', 'green');
					isok1 = true;
				}
			}
		});
	} else {
		$('#infor1').html('用户名不符合规则');
		$('#infor1').css('color', 'red');
		isok1 = false;
	}
});

// 验证密码
var isok2 = false;
$('#password').keyup(function() {
	var val = $('#password').val();
	var str = checkReg.trim(val);

	if(str && checkReg.psw(str)) {
		//非空且符合正则
		$('#infor2').html('密码可以使用');
		$('#infor2').css('color', 'green');
		isok2 = true;
	} else {
		$('#infor2').html('密码不符合规则');
		$('#infor2').css('color', 'red');
		isok2 = false;
	}
});

$('#getNum').click(function() {
	$(this).html(AuthCode());
	$(this).addClass('getNumActive');
});

// 验证随机码
var isok3 = false;
$('#number').keyup(function() {
	var val = $('#number').val();
	var str = checkReg.trim(val);

	if(str == $('#getNum').html()) {
		$('#infor3').html('验证码正确');
		$('#infor3').css('color', 'green');
		isok3 = true;
	} else {
		$('#infor3').html('验证码有误');
		$('#infor3').css('color', 'red');
		isok3 = false;
	}
});

//点击注册登录
$('#regBtn').click(function() {
	if(isok1 && isok2 && isok3) {
		$.ajax({
			type: 'post',
			url: '../api/reginsert.php',
			async: true,
			data: {
				'name': $('#name').val(),
				'psw': $('#password').val()
			},
			success: function(str) {
				Cookie.set('username', $('#name').val(), {
					'path': '/Xiu/this-xiu/src'
				});
				location.href = '../xiu.com.html';
			}
		});
	} else {
		$('#infor3').html('请输入完整信息');
		$('#infor3').css('color', 'red');
	}
});

// 用户登录，验证用户名和密码是否正确
$('#logBtn').click(function() {
	var valName = $('#lname').val().trim();
	var valPsw = $('#lpassword').val().trim();
	if(valName && valPsw) {
		$.ajax({
			type: 'post',
			url: '../api/logincheck.php',
			async: true,
			data: {
				'name': $('#lname').val(),
				'psw': $('#lpassword').val()
			},
			success: function(str) {
				console.log(str);
				if(str == 'yes') {
					Cookie.set('username', $('#lname').val(), {
						'path': '/Xiu/this-xiu/src'
					});
					location.href = '../xiu.com.html';
				} else {
					$('#infor2').html('用户名或密码错误');
					$('#infor2').css('color', 'red');
				}
			}
		});
	} else {
		$('#linfor2').html('请输入完整信息');
		$('#linfor2').css('color', 'red');
	}
});