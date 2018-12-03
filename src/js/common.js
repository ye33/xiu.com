/* 
 * @Author: Marte
 * @Date:   2018-10-18 18:02:25
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-12-02 23:52:38
 */

//getid(id)
//通过id查找元素
//参数：传id名进来

function getid(id) {
	return document.getElementById(id);
}
//------------------------------------------------------------------------

//authCode()
//生成包含数字和字母的四位随机验证码

function AuthCode() {
	var str = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	var authCode = '';
	for(var i = 0; i < 4; i++) {
		authCode += str.charAt(parseInt(Math.random() * str.length));
		// console.log(authCode);
	}
	return authCode;
}
//-------------------------------------------------------------------------

//randColor(color)
//生成随机颜色，十进制或者rgb模式
//参数：16或者rgb

function randColor(color) {
	if(color == 16) {
		var str = '0123456789abcdef';
		var color = '#';
		for(var i = 0; i < 6; i++) {
			color += str.charAt(parseInt(Math.random() * str.length));
		}
		return color;

	} else if(color == rgb) {
		var r = parseInt(Math.random() * 256);
		var g = parseInt(Math.random() * 256);
		var b = parseInt(Math.random() * 256);
		var color = 'rgb(' + r + ',' + g + ',' + b + ')';

		return color;
	} else {
		alert('参数传错了');
	}
}
//-------------------------------------------------------------------------

//filtertxt(str)
//过滤敏感词汇，将敏感词转换为**
//参数：字符串

function filtertxt(str) {
	var sensitive = ['装逼', '草泥马', '特么的', '撕逼', '装13', '逼格', '傻逼', '绿茶婊', '你妈的', '表砸', '逗比', '我靠', '然并卵', '日了狗', '你妹'];

	//for()循环遍历
	// for(var i=0;i<str.length;i++){
	//     //将每个敏感词放到正则中
	//     var reg=new RegExp(sensitive[i],'gi');

	//     //将敏感词替换为**
	//     str=str.replace(reg,'**');
	// }

	//map(fn)遍历字符串
	sensitive.map(function(item) {
		var reg = new RegExp(item, 'gi');
		str = str.replace(reg, '**');
	})

	return str;
}
//-------------------------------------------------------------------------

//addZero(num)
//封装时间补零函数
//参数：时间

function addZero(num) {
	if(num < 10) {
		return num = '0' + num;
	} else {
		return '' + num;
	}
}
//-------------------------------------------------------------------------

//diffeTime(time)
//封装时间函数，把毫秒转为天时分秒
//参数：时间差

function diffeTime(diffetime) {
	var day = Math.floor(diffetime / 60 / 60 / 24);
	var hour = Math.floor(diffetime / 60 / 60 % 24);
	var minute = Math.floor(diffetime / 60 % 60);
	var second = Math.floor(diffetime % 60);

	// hour=addZero(hour);
	minute=addZero(minute);
	second=addZero(second);

	return {
		'day': day,
		'hour': hour,
		'minute': minute,
		'second': second
	};
}
//-------------------------------------------------------------------------

//strToObj(str)
//封装字符串转为对象的函数
//参数：字符串
//如下：
// var str='goodid=2&url=../images/img2.jpg&bname=东野圭吾：学生街的日子&author=（日）东野圭吾&price=¥37.10&oPrice=¥49.50&ebook=';
// var obj={goodid: "2", url: "../images/img2.jpg", bname: "东野圭吾：学生街的日子", author: "（日）东野圭吾", price: "¥37.10", …}

function strToObj(str) {
	var arr = str.split('&');
	var obj = {};

	for(var i = 0; i < arr.length; i++) {
		var arr1 = arr[i].split('=');
		obj[arr1[0]] = arr1[1];
	}

	return obj;
}

//objToStr(obj)
//封装对象转为字符串的函数
//参数：对象

function objToStr(obj) {
	var str = '';
	for(var key in obj) {
		str += key + '=' + obj[key] + '&';
	}

	str = str.slice(0, -1);
	return str;
}
//-------------------------------------------------------------------------

//bind(ele,eventName,fn)
//封装事件监听兼容处理的函数
//参数：节点、事件名、事件处理函数

function bind(ele, eventName, fn) {
	if(ele.addEventListener) {
		ele.addEventListener(eventName, fn, false);
	} else {
		ele.attachEvent('on' + eventName, fn);
	}
}
//-------------------------------------------------------------------------

//getstyle(obj,name)
//封装获取非行间样式的函数（获取的值带单位）
//参数：节点、属性名

function getstyle(obj, name) {
	if(obj.currentStyle) {
		return obj.currentStyle[name];
	} else {
		return getComputedStyle(obj, false)[name];
	}
}
//-------------------------------------------------------------------------

//move(obj,json,fn)
//封装运动框架函数：多对象、多属性、链式运动框架
//参数一：对象名（节点）
//参数二：属性，目标值（传入json对象===键名：属性名，键值：目标值）
//参数三：回调函数（可选参数）（多项运动）

function move(obj, json, fn) {

	//先关闭定时器，避免出现定时器效果叠加
	clearInterval(obj.timer);
	//开启定时器，给每个对象绑定一个定时器属性，唯一性
	obj.timer = setInterval(function() {

		//设置一个开关，确定回调函数的执行
		var istrue = true;

		//遍历传入的json对象，获取属性名，调用非行间样式函数获取初始值
		for(var key in json) {
			var cur = 0;

			if(key == 'opacity') {
				cur = getstyle(obj, key) * 100;
			} else {
				cur = parseInt(getstyle(obj, key));
			}

			//根据初始值（通过非行间样式函数获取）和目标值（通过传入的json获取），判断speed的方向，计算缓冲速度
			var speed = (json[key] - cur) / 6;
			speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed); //除不尽有小数会产生晃动

			//运动，将不断变化的值通过行间样式赋给需要运动的节点
			if(key == 'opacity') {
				obj.style.opacity = (cur + speed) / 100;
				obj.style.filter = `alpha(opacity:${cur+speed})`;
			} else {
				obj.style[key] = cur + speed + 'px';
			}

			//如果传入的json对象中有属性未达到目标值，开关关闭
			if(cur != json[key]) {
				istrue = false;
			} else {
				//待所有属性达到目标值后再执行回调函数
				istrue = true;
			}
		}

		if(istrue) {
			clearInterval(obj.timer);
			if(fn) {
				fn();
			}
		}

	}, 30);
}

//-------------------------------------------------------------------------

//checkReg对象：多种正则的集合
//验证正则：trim()、username()、nickname()、email()、idCard()、tel()、birthday()、psw()、confirmpsw()

var checkReg = {
	//去除前后空格
	trim: function(str) {
		var reg = /^\s+|\s+$/g;
		return str.replace(reg, '');
	},
	//用户名字母开头,3-20位
	username: function(str) {
		var reg = /^[a-zA-Z][\w\-]{2,19}$/;
		return reg.test(str);
	},
	//昵称必须是汉字,3-12位
	nickname: function(str) {
		var reg = /^[\u2E80-\u9FFF]{3,12}$/;
		return reg.test(str);
	},
	//电子邮件
	email: function(str) {
		var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		return reg.test(str);
	},
	//身份证
	idCard: function(str) {
		var reg = /^(\d{17}|\d{14})[\dX]$/;
		return reg.test(str);
	},
	//手机号码
	tel: function(str) {
		var reg = /^1[3-9]\d{9}$/;
		return reg.test(str);
	},
	//生日
	birthday: function(str) {
		var reg = /^\d{4}\-\d{1,2}\-\d{1,2}$/;
		return reg.test(str);
	},
	//密码：以字母开头，长度在6~18之间，只能包含字母、数字和下划线
	psw: function(str) {
		var reg = /^[a-zA-Z]\w{5,17}$/;
		return reg.test(str);
	},
	//确认密码
	confirmpsw: function(str1, str2) {
		return str1 === str2;
	}
}
//-------------------------------------------------------------------------

//封装cookie函数：一个对象多重功能
//存: Cookie.set()
//取: Cookie.get()
//删: Cookie.remove()

var Cookie = {
	//设置cookie，存数据到cookie里面
	set: function(name, value, prop) {
		var str = name + '=' + value;
		//json(prop)存后面一些可选参数
		//expires:设置失效时间
		if(prop.expires) {
			str += ';expires=' + prop.expires.toUTCString(); //把时间转成字符串
		}
		//设置path路径
		if(prop.path) {
			str += ';path=' + prop.path;
		}
		//domain设置可访问cookie的域名
		if(prop.domain) {
			str += ';domain=' + prop.domain;
		}
		document.cookie = str;
	},

	//获取cookie数据
	get: function(key) {
		var cookies = document.cookie;
		// name=tiantian; age=18; usn=yuanyuan; pws=456123

		var arr = cookies.split('; ');
		//['name=tiantian','age=18','usn=yuanyuan','pws=456123']
		for(var i = 0; i < arr.length; i++) {
			var arr2 = arr[i].split('=');
			//['name','tiantian']
			if(key == arr2[0]) {
				return arr2[1];
			}
		}
	},

	//删除
	remove: function(key) {
		//删的原理:设置过期时间
		var now = new Date();
		now.setDate(now.getDate() - 1);
		//重新设置时间
		this.set(key, 'no', {
			expires: now
		});
	}
}
//-------------------------------------------------------------------------

//封装ajax函数，向后端发送请求，接收数据
// 参数一：请求方式：get/post
// 参数二：接口路径
// 参数三：传给后端的数据(可选)，如name='tiantian'&psw=123456  
// 参数四：成功的回调函数(可选的)

function ajax(method, url, data, success) {
	//先创建对象
	var xhr = new XMLHttpRequest();
	//判断发送请求的方式
	if(method == 'GET' && data) {
		//如果以get方式发送，在url后拼接需要传递的参数
		url += '?' + data;
	}
	xhr.open(method, url, true);

	if(method == 'GET') {
		//get方式直接发送请求
		xhr.send();
	} else {
		//post方式需要设置请求头，将数据放在send里传输
		xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		xhr.send(data);
	}

	//判断请求响应状态，接收数据
	xhr.onreadystatechange = function() {
		if(xhr.readyState == 4) {
			if(xhr.status == 200) {
				//成功接收数据，进行dom操作
				if(success) {
					//有回调函数就执行
					success(xhr.responseText);
					//实参，将操作放函数外
				}
			} else {
				//404 找不到页面，408请求超时
				alert('出错了，状态码是：' + xhr.status);
			}
		}
	}
}