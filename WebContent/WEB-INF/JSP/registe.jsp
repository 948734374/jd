<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>个人注册</title>
<link href="css/register.css" rel="stylesheet" />
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/jquery-validation-1.15.1.js"></script>

<script>
	$(
			function() {

				$("#form-account").blur(function() {
					$.ajax({
						type : "POST",
						url : "first",
						data : {
							USERNAME : $("#form-account").val()
						},

						dataType : "json",
						success : function(data) {

							//$("#form-account").next().empty(); //清空resText里面的所有内容
							if (data == 1) {
								var $emp = [ '<span>恭喜,该名称可用!</span>' ];
								$("#form-account").parent().next().append($emp)
							} else {
								var $enp = $('<span>该用户名已被注册!</span>');
								$("#form-account").parent().next().append($enp)

							}
						}
					});
				})

				$(".select").hide();
				var $span1 = $('<span><div class="i-def"></div>支持中文、字母、数字、“-”“_”的组合，4-20个字符</span>');
				$("input[name='USERNAME']").focus(
						function() {
							if ($(this).next().html() == "") {
								$(this).parent().parent().children().eq(1)
										.append($span1);
								$(this).removeAttr("placeholder");
							}
						}).blur(
						function() {
							$(this).parent().parent().children().eq(1)
									.children().eq(0).remove();
							$(this).attr("placeholder", "您的账户和登录名");
						});

				var $span2 = $('<span><div class="i-def"></div>建议使用字母、数字和符号两种及以上的组合，6-20个字符</span>');
				$("input[name='PASSWORD']")
						.focus(
								function() {
									if ($(this).parent().parent().next().html.length == 0)
										$(this).parent().parent().children()
												.eq(3).append($span2);
									$(this).removeAttr("placeholder");
								})
						.blur(
								function() {
									$(this).parent().parent().children().eq(3)
											.children().eq(0).remove();
									$(this).attr("placeholder", "建议至少使用两种字符组合");
								});
				var $span3 = $('<span><div class="i-def"></div>请再次输入密码</span>');
				var $tip = $('<span style="color: red"><div class="pic"></div>两次密码输入不一致</span>');
				$("input[name='equalTopwd']").focus(function() {
					$(this).parent().parent().children().eq(5).append($span3);
					$(this).removeAttr("placeholder");
				}).blur(
						function() {
							$(this).parent().parent().children().eq(5)
									.children().eq(0).remove();
							$(this).attr("placeholder", "请再次输入密码");
							if ($(this).parent().parent().children().eq(2)
									.children().eq(2).val() != $(this).val()) {
								$(this).parent().parent().children().eq(5)
										.append($tip);
							}
						});
				var $span4 = $('<span><div class="i-def"></div>完成验证后，可以使用该手机登录和找回密码</span>');
				$("input[name='TELEPHONE']")
						.focus(
								function() {
									$(this).parent().parent().children().eq(2)
											.children().eq(0).remove();
									$(this).parent().parent().children().eq(2)
											.append($span4);
									$(this).removeAttr("placeholder");
								})
						.blur(
								function() {
									var $tel = $('<span><div class="i-def"></div>手机号码格式不正确!</span>');
									$(this).parent().parent().children().eq(2)
											.children().eq(0).remove();
									if ((this).html.length != 11)
										$(this).parent().parent().children()
												.eq(2).attr($tel);
									$(this).attr("placeholder", "建议使用常用手机");
								});

				var $span5 = $('<span><div class="i-def"></div>看不清？点击图片更换验证码</span>');
				$("input[name='authcode']").focus(function() {
					$(this).parent().parent().children().eq(8).append($span5);
					$(this).removeAttr("placeholder");
				}).blur(
						function() {
							$(this).parent().parent().children().eq(8)
									.children().eq(0).remove();
							$(this).attr("placeholder", "请输入验证码");
						});
				$("input[name='mobilecode']").focus(function() {
					$(this).removeAttr("placeholder");
				}).blur(function() {
					$(this).attr("placeholder", "请输入手机验证码");
				});

				$(".form-item-phone label").bind("click", function() {
					var $content = $(this).parent().next();
					if ($content.is(":visible")) {
						$content.hide();
					} else {
						$content.show();
					}
				})
				$(".phone-suggest li").click(function() {
					$(".select-country .value").hide();
					$(this).children().clone().appendTo(".select-country")

				})

				$("#regist-form").validate({
					errorPlacement : function(error, element) {
						error.appendTo(element.parent().children().eq(2));
					}
				})
				/* 	$("input[name='TELEPHONE']").blur(function() {
						var $tel = $('<span><div class="i-def"></div>手机号码格式不正确!</span>');
						$(this).parent().parent().children().eq(2).append($tel);
					}) */
			})
</script>
</head>
<body>
	<div id="container">
		<div id="header">

			<div class="h_left">
				<div class="logo-img">
					<a href=""><img src="img/logo-201305-b.png"></a>
				</div>
				<div class="logo-title">欢 迎 注 册</div>
			</div>
			<div class="h_right">
				<div class="have-account">
					已有账号 <a href="log">请登录</a>
				</div>
			</div>

		</div>
		<div id="body">
			<div class="b_left">
				<form id="regist-form" method="post" novalidate="novalidate"
					action="doregister">
					<div class="form-item">
						<label>用 户 名</label> <input type="text" id="form-account"
							name="USERNAME" rangelength="4,20" autocomplete="off"
							maxlength="20" placeholder="您的账户和登录名">
						<div class="qqqq"></div>
					</div>
					<div class="input-tip"></div>
					<div class="form-item">
						<label>设 置 密 码</label>
						<!--
                    <input style="display:none" type="password" name="pwd" class="field"/>
-->
						<input type="password" id="form-pwd" name="PASSWORD"
							rangelength="6,20" autocomplete="off" maxlength="20"
							placeholder="建议至少使用两种字符组合">
						<div class="qqqq"></div>
					</div>
					<div class="input-tip"></div>
					<div class="form-item">
						<label>确 认 密 码</label> <input type="password" id="form-equalTopwd"
							name="equalTopwd" class="field" autocomplete="off" maxlength="20"
							placeholder="请再次输入密码">
						<div class="qqqq"></div>
						-
					</div>
					<div class="input-tip"></div>
					<div class="item-phone-wrap">
						<div class="form-item form-item-phone">
							<label class="select-country" id="select-country"
								country_id="0086">
								<div class="value">中国 + 86</div> <a href="javascript:void(0)"
								class="arrow"></a>
							</label> <input type="text" id="form-phone" name="TELEPHONE"
								class="remote" placeholder="建议使用常用手机" autocomplete="off">
							<div class="qqqq"></div>
						</div>
						<div class="select">
							<div class="scrollbar" style="height: 321px;">
								<div class="track" style="height: 321px;">
									<div class="thumb"
										style="top: 0px; height: 78.0613636363636px;">
										<div class="end"></div>
									</div>
								</div>
							</div>
							<div class="viewport">
								<div class="overview" style="top: 0px;">
									<ul class="suggest-container phone-suggest"
										style="display: block;">
										<li item_id="0086" class="selected">
											<div class="value">中国 +86</div>
										</li>
										<li item_id="0886" class="current">
											<div class="value">台湾 +886</div>
										</li>
										<li item_id="0852" class="">
											<div class="value">香港 +852</div>
										</li>
										<li item_id="0060" class="">
											<div class="value">马来西亚 +60</div>
										</li>
										<li item_id="0065" class="">
											<div class="value">新加坡 +65</div>
										</li>
										<li item_id="0081" class="">
											<div class="value">日本 +81</div>
										</li>
										<li item_id="0082" class="">
											<div class="value">韩国 +82</div>
										</li>
										<li item_id="0001" class="">
											<div class="value">美国 +1</div>
										</li>
										<li item_id="0001" class="">
											<div class="value">加拿大 +1</div>
										</li>
										<li item_id="0061" class="">
											<div class="value">澳大利亚 +61</div>
										</li>
										<li item_id="0064" class="">
											<div class="value">新西兰 +64</div>
										</li>
										<li item_id="0971" class="">
											<div class="value">阿联酋 +971</div>
										</li>
										<li item_id="0244" class="">
											<div class="value">安哥拉 +244</div>
										</li>
										<li item_id="0853" class="">
											<div class="value">澳门 +853</div>
										</li>
										<li item_id="0055" class="">
											<div class="value">巴西 +55</div>
										</li>
										<li item_id="0045" class="">
											<div class="value">丹麦 +45</div>
										</li>
										<li item_id="0049" class="">
											<div class="value">德国 +49</div>
										</li>
										<li item_id="0007" class="">
											<div class="value">俄罗斯 +7</div>
										</li>
										<li item_id="0033" class="">
											<div class="value">法国 +33</div>
										</li>
										<li item_id="0063" class="">
											<div class="value">菲律宾 +63</div>
										</li>
										<li item_id="0358" class="">
											<div class="value">芬兰 +358</div>
										</li>
										<li item_id="0031" class="">
											<div class="value">荷兰 +31</div>
										</li>
										<li item_id="0420" class="">
											<div class="value">捷克 +420</div>
										</li>
										<li item_id="0041" class="">
											<div class="value">瑞士 +41</div>
										</li>
										<li item_id="0046" class="">
											<div class="value">瑞典 +46</div>
										</li>
										<li item_id="0066" class="">
											<div class="value">泰国 +66</div>
										</li>
										<li item_id="0058" class="">
											<div class="value">委内瑞拉 +58</div>
										</li>
										<li item_id="0034" class="">
											<div class="value">西班牙 +34</div>
										</li>
										<li item_id="0039" class="">
											<div class="value">意大利 +39</div>
										</li>
										<li item_id="0091" class="">
											<div class="value">印度 +91</div>
										</li>
										<li item_id="0062" class="">
											<div class="value">印度尼西亚 +62</div>
										</li>
										<li item_id="0044" class="">
											<div class="value">英国 +44</div>
										</li>
										<li item_id="0084" class="suggest-li-last">
											<div class="value">越南 +84</div>
										</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="input-tip"></div>
						<div class="orEmail">
							或 <a href="javascript:;">邮箱验证</a>
						</div>
					</div>
					<div class="form-item">
						<label id="l">验 证 码</label> <input type="text" id="authcode"
							name="authcode" class="field form-authcode" autocomplete="off"
							maxlength="6" placeholder="请输入验证码"> <img class="img-code"
							title="换一换" id="imgAuthCode"
							onclick="this.src= document.location.protocol +'//authcode.jd.com/verify/image?a=0&amp;acid=78e61ff0-00e3-4775-8165-b0449b378540&amp;uid=78e61ff0-00e3-4775-8165-b0449b378540&amp;srcid=reg&amp;is=ffc641e1f3283f30cf58a6ed4d0c97ec&amp;yys='+new Date().getTime()"
							ver_colorofnoisepoint="#888888"
							src="https://authcode.jd.com/verify/image?a=0&amp;acid=78e61ff0-00e3-4775-8165-b0449b378540&amp;uid=78e61ff0-00e3-4775-8165-b0449b378540&amp;srcid=reg&amp;is=ffc641e1f3283f30cf58a6ed4d0c97ec&amp;yys=1470140568116">
					</div>
					<div class="input-tip"></div>
					<div class="form-item">
						<label>手机验证码</label> <input type="text" id="phonecode"
							name="mobilecode" class="field phonecode" autocomplete="off"
							maxlength="6" placeholder="请输入手机验证码">
						<button id="getPhoneCode" class="btn-phonecode" type="button">获取验证码</button>
						<i class="qqqq"></i>
					</div>
					<div class="input-tip"></div>
					<div class="form-agreen">
						<div>
							<input type="checkbox" name="agreen" checked="" />
							<div class="t">
								我已阅读并同意 <a href="javascript:;" id="protocol">《京东用户注册协议》</a>
							</div>
						</div>
						<div class="input-tip">
							<span></span>
						</div>
					</div>
					<div>
						<button type="submit" class="btn-register">立即注册</button>
					</div>
				</form>
			</div>
			<div class="b_right">
				<div class="phone-fast-reg">
					<img src="img/phone.jpg">
				</div>
				<div class="company-reg">
					<a href="../reg/company" target="_blank"> <i class="i-company"></i>
						<span>企业用户注册</span>
					</a>
				</div>
				<div class="inter-cust">
					<a href="//reg.joybuy.com/reg/person.html" target="_blank"> <i
						class="i-global"></i> <span>INTERNATIONAL<br>CUSTOMERS
					</span>
					</a>
				</div>

			</div>
		</div>
		<div id="footer">
			<div class="links">
				<a rel="nofollow" target="_blank"
					href="//www.jd.com/intro/about.aspx"> 关于我们</a>| <a rel="nofollow"
					target="_blank" href="//www.jd.com/contact/">联系我们</a>| <a
					rel="nofollow" target="_blank" href="//zhaopin.jd.com/">人才招聘</a>| <a
					rel="nofollow" target="_blank"
					href="//www.jd.com/contact/joinin.aspx">商家入驻</a>| <a rel="nofollow"
					target="_blank" href="//www.jd.com/intro/service.aspx">广告服务</a>| <a
					rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>| <a
					target="_blank" href="//club.jd.com/links.aspx">友情链接</a>| <a
					target="_blank" href="//media.jd.com">销售联盟</a>| <a
					href="//club.jd.com/" target="_blank">京东社区</a>| <a
					href="//gongyi.jd.com" target="_blank">京东公益</a>| <a target="_blank"
					href="//en.jd.com/" clstag="pageclick|keycount|20150112ABD|9">English
					Site</a>
			</div>
			<div class="copyright">
				Copyright©2004-2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有</div>
		</div>

		<a target="_blank"
			href="//surveys.jd.com/index.php?r=survey/index/sid/447941/lang/zh-Hans"
			class="feedback"
			style="margin-top: -85px; position: fixed; right: 0px; bottom: 50%;"></a>
	</div>
</body>
</html>