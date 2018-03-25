<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>二手东</title>
<link href="css/login.css" rel="stylesheet">
<link rel="icon" href="//www.jd.com/favicon.ico"
	mce_href="//www.jd.com/favicon.ico" type="image/x-icon">
<script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script>
	$(function() {

		$(".loginform a").click(function() {
			$(".loginform a").css("color", "black");
			$(this).css("color", "red");

		});
		$(".loginform a").hover(function() {
			$(this).css("color", "red");

		});
		$(".loginform1").click(function() {
			$("#photo").show();
		});
		$(".loginform2").click(function() {
			$("#photo").hide();
		});
		$("img[id='1']").hover(function() {

			$("img[id='1']").css("margin", "70px 174px 70px 0px");
			$("img[id='2']").css("display", "block");

			$("img[id='2']").css("margin", "-235px 0px 70px 170px");
		}, function() {
			$("img[id='1']").css("margin", "70px 87px 70px 87px");
			$("img[id='2']").css("display", "none")
		});
	});
</script>
</head>
<body>
	<div id="container">
		<div id="head">
			<div id="head-logo">
				<img src="img/JD-logo2.png" /> <b></b>
			</div>
		</div>
		<div id="body">
			<div id="body-middle">
				<div id="back">
					<div class="loginform">
						<div id="b-t">
							<div class="loginform1">
								<a>扫码登陆</a>
							</div>
							<div class="loginform2 ">
								<a>账户登录</a>
							</div>
						</div>
						<div id="photo">
							<img id="1" src="img/erweima.png" /> <img id="2"
								src="img/erweima~.png" />
						</div>
						<div id="worn">
							<b></b>
							<div id="left">公共场所不建议自动登录，以防账号丢失</div>
						</div>
						<div id="mc">
							<form action="dologin" method="post">
								<div id="text1">
									<b></b> <input  name="USERNAME" type="text"
										class="input1">
								</div>
								<div id="text2">
									<b></b> <input name="PASSWORD" type="text"
										class="input1">
								</div>

								<div id="safe">
									<input type="checkbox" tabindex="3" class="input2">
									<p class="p">自动登录</p>
									<P class="p1">忘记密码</P>
								</div>
								<div id="loginlogo">
									<input id="a" type="submit" value="登陆">
								</div>
							</form>
						</div>
						<div id="ul">
							<div id="li">
								<ul>
									<li class="li">京东钱包</li>
									<li class="li">QQ</li>
									<li class="li">微信</li>
								</ul>
							</div>
						</div>
						<div id="x">
							<b></b> <a href="reg"><p>立即注册</p> </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="bottom">
			<div id="w">
				<a><b></b>登陆界面，调查问卷</a>
			</div>
			<div class="q">
				<ul class="hr">
					<li>关于我们</li>
					<li class="spacer"></li>
					<li>联系我们</li>
					<li class="spacer"></li>
					<li>人才招聘</li>
					<li class="spacer"></li>
					<li>商家入驻</li>
					<li class="spacer"></li>
					<li>广告服务</li>
					<li class="spacer"></li>
					<li>手机京东</li>
					<li class="spacer"></li>
					<li>友情链接</li>
					<li class="spacer"></li>
					<li>销售联盟</li>
					<li class="spacer"></li>
					<li>销售联盟</li>
					<li class="spacer"></li>
					<li>销售联盟</li>
				</ul>
			</div>
			<div class="q">
				<div class="copyright">
					Copyright&nbsp;©&nbsp;2004-2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有</div>
			</div>
		</div>
	</div>
</body>
</html>