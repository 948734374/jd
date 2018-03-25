<%@page import="org.springframework.ui.Model"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>首页</title>
<link href="css/main.css" rel="stylesheet">
<script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script>
	var i = 0;
	var timer;
	var aimg = [ "img/jsimg1.jpg", "img/jsimg2.jpg", "img/jsimg3.jpg",
			"img/jsimg4.jpg", "img/jsimg5.jpg" ];
	$(function() {
		$("#center img").hover(function() {
			clearTimeout(timer);
		}, function() {
			timer = setTimeout("changimg()", 1000);
		});

		$(".item").hover(function() {
			$(".list").eq($(this).index()).show();
		}, function() {
			$(".list").eq($(this).index()).hide();
		});

	});

	function changimg() {
		i++;
		if (i == 5)
			i = 0;
		//获得操作对象
		$("#center img").attr("src", aimg[i]);
		timer = setTimeout("changimg()", 1000);
	}
<%Cookie[] cookies = request.getCookies();

			String username = null;

			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					if (cookies[i].getName().equals("name")) {
						username = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
						out.print(username);
					} else {
						username = "请登录";
					}
				}
			}
			request.setAttribute("user", username);%>
	
</script>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="h_top">
				<ul class="hl">
					<li>配送至: 北京</li>
				</ul>
				<ul class="hr">
					<li>您好 <a target="_blank" href="dolog">${user}</a>
					</li>
					<li class="spacer"></li>
					<li>我的订单</li>
					<li class="spacer"></li>
					<li>我的京东</li>
					<li class="spacer"></li>
					<li>京东会员</li>
					<li class="spacer"></li>
					<li>企业采购</li>
					<li class="spacer"></li>
					<li><span class="phone"></span>手机京东</li>
					<li class="spacer"></li>
					<li>关注京东</li>
					<li class="spacer"></li>
					<li>客户服务</li>
					<li class="spacer"></li>
					<li>网站导航</li>
				</ul>
			</div>
			<div id="h_body">
				<div>
					<a href=""><img src="img/JD-logo.png"></a>
				</div>
				<div class="h_body_div2">
                   <form action="dosearch" method="post">
					<input type="text" class="text"  name="COMNAME"  placeholder="手表">
					<input type="submit" class="button" value="搜索">
					</form>
					<ul>
						<li>团购疯抢</li>
						<li>团购疯抢</li>
						<li>团购疯抢</li>
						<li>团购疯抢</li>
						<li>团购疯抢</li>
						<li>团购疯抢</li>
					</ul>
				</div>
				<div class="h_body_div3">
					<span class="span1"></span><span class="span2">我的购物车&nbsp;&nbsp;&nbsp;&nbsp;></span>
				</div>
			</div>
			<div id="h_bottom">
				<div class="h_all">
					<a>全部商品分类</a>
				</div>
				<div class="h_nav">
					<ul>
						<li><a>服装城</a></li>
						<li><a>美妆馆</a></li>
						<li><a>京东超市</a></li>
						<li><a>生鲜</a></li>
						<li><a>全球购</a></li>
						<li><a>闪购</a></li>
						<li><a>团购</a></li>
						<li><a>拍卖</a></li>
						<li><a>金融</a></li>
					</ul>
				</div>
			</div>
			<hr>
		</div>
		<div id="body">
			<div id="left">
				<div class="item">
					<h3>
						<a target="_blank">家用电器</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item">
					<h3>
						<a target="_blank">手机</a>、<a target="_blank">数码</a>、<a
							target="_blank">京东通信</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item">
					<h3>
						<a target="_blank">电脑、办公</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank">家居</a>、<a target="_blank">家具</a>、<a
							target="_blank" href="//channel.jd.com/decoration.html">家装</a>、<a
							target="_blank" href="//channel.jd.com/kitchenware.html">厨具</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//channel.jd.com/1315-1342.html">男装</a>、<a
							target="_blank" href="//channel.jd.com/1315-1343.html">女装</a>、<a
							target="_blank" href="//channel.jd.com/children.html">童装</a>、<a
							target="_blank" href="//channel.jd.com/1315-1345.html">内衣</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//channel.jd.com/beauty.html">个护化妆</a>、<a
							target="_blank" href="//channel.jd.com/1620-1625.html">清洁用品</a>、<a
							target="_blank" href="//channel.jd.com/pet.html">宠物</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//channel.jd.com/shoes.html">鞋靴</a>、<a
							target="_blank" href="//channel.jd.com/bag.html">箱包</a>、<a
							target="_blank" href="//channel.jd.com/jewellery.html">珠宝</a>、<a
							target="_blank" href="//channel.jd.com/1672-2615.html">奢侈品</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//channel.jd.com/sports.html">运动户外</a>、<a
							target="_blank" href="//channel.jd.com/watch.html">钟表</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="http://car.jd.com/">汽车</a>、<a
							target="_blank" href="//che.jd.com">汽车用品</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//baby.jd.com">母婴</a>、<a target="_blank"
							href="//channel.jd.com/toys.html">玩具乐器</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//channel.jd.com/food.html">食品</a>、<a
							target="_blank" href="//channel.jd.com/wine.html">酒类</a>、<a
							target="_blank" href="//fresh.jd.com">生鲜</a>、<a target="_blank"
							href="//china.jd.com">特产</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//health.jd.com">医药保健</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item">
					<h3>
						<a target="_blank" href="//book.jd.com/">图书</a>、<a target="_blank"
							href="//mvd.jd.com/">音像</a>、<a target="_blank"
							href="//e.jd.com/ebook.html">电子书</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//caipiao.jd.com/">彩票</a>、<a
							target="_blank" href="//trip.jd.com/">旅行</a>、<a target="_blank"
							href="//chongzhi.jd.com/">充值</a>、<a target="_blank"
							href="//piao.jd.com/">票务</a>
					</h3>
					<i>&gt;</i>
				</div>
				<div class="item ">
					<h3>
						<a target="_blank" href="//licai.jd.com/">理财</a>、<a
							target="_blank" href="//z.jd.com/">众筹</a>、<a target="_blank"
							href="//baitiao.jd.com">白条</a>、<a target="_blank"
							href="//bao.jd.com/">保险</a>
					</h3>
					<i>&gt;</i>
				</div>
			</div>

			<div id="center">
				<img src="img/jsimg1.jpg">
				<div id="list_1" class="list"></div>
				<div id="list_2" class="list"></div>
			</div>
			<div id="right">
				<div id="right_top">
					<div id="mt">
						<p>
							<span1>京都快报</span1>
							<span2>更多></span2>
						</p>

					</div>
					<div id="mc">
						<ul>
							<li><span>[特惠]</span>华中周年7.28元秒不停</li>
							<li><span>[公告]</span>华东华北强降雨配送延迟</li>
							<li><span>[特惠]</span>三星Tab pro S预约抽奖送平板</li>
							<li><span>[公告]</span>丹寨馆百日庆 传承文化邀你赏</li>
							<li><span>[欧德]</span>堡牛奶部分第二件半价</li>
						</ul>
					</div>
				</div>
				<div id="right_middle">
					<ul>
						<li><a><i id="p1"></i><span>话费</span></a></li>
						<li><a><i id="p2"></i><span>机票</span></a></li>
						<li><a><i id="p3"></i><span>电影票</span></a></li>
						<li><a><i id="p4"></i><span>游戏</span></a></li>
						<li><a><i id="p5"></i><span>彩票</span></a></li>
						<li><a><i id="p6"></i><span>加油卡</span></a></li>
						<li><a><i id="p7"></i><span>酒店</span></a></li>
						<li><a><i id="p8"></i><span>火车票</span></a></li>
						<li><a><i id="p9"></i><span>公筹</span></a></li>
						<li><a><i id="p10"></i><span>理财</span></a></li>
						<li><a><i id="p11"></i><span>礼品卡</span></a></li>
						<li><a><i id="p12"></i><span>白条</span></a></li>
					</ul>
				</div>
				<div id="right_bottom">

					<img src="img/r_bottom.jpg" />

				</div>
			</div>
		</div>
		<div id="body1">
			<div id="left2">
				<img src="img/time.png">
			</div>
			<div class="right">
				<img src="img/body11.png" />
			</div>
			<div class="right">
				<img src="img/body12.png" />
			</div>
			<div class="right">
				<img src="img/body13.png" />
			</div>
			<div class="right">
				<img src="img/body14.png" />
			</div>
		</div>
		<div id="body2">
			<div id="body21">
				<span id="span1">猜你喜欢</span> <span id="span2"></span> <span
					id="span3">换一批</span>
			</div>
			<div id="body22">
				<ul>
					<li>
						<div class="p-img">
							<a><img src="img/pingban.jpg"> </a>
						</div>
						<div class="p-info">
							<div class="p-name">
								<a>iPad Air 2 平板电脑 9.7（16G WLAN版)</a>
							</div>
							<div class="p-price">￥ "2888.00"</div>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a><img src="img/bingxiang.jpg"> </a>
						</div>
						<div class="p-info">
							<div class="p-name">
								<a>美的（Midea）BCD-206TM(E)206升三门冰</a>
							</div>
							<div class="p-price">￥ "1396.00"</div>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a><img src="img/jimu.jpg"> </a>
						</div>
						<div class="p-info">
							<div class="p-name">
								<a>COGO积高积木儿童塑料拼装玩具</a>
							</div>
							<div class="p-price">￥ "78.00"</div>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a><img src="img/daoju.jpg"> </a>
						</div>
						<div class="p-info">
							<div class="p-name">
								<a>304不锈钢刀架菜刀架厨房筷筒刀具砧</a>
							</div>
							<div class="p-price">￥ "78.00"</div>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a><img src="img/pijiu.jpg"> </a>
						</div>
						<div class="p-info">
							<div class="p-name">
								<a>[京东超市]青岛Tsingdao啤酒奥古</a>
							</div>
							<div class="p-price">￥ "105.00"</div>
						</div>
					</li>
					<li>
						<div class="p-img">
							<a><img src="img/jiasi.jpg"> </a>
						</div>
						<div class="p-info">
							<div class="p-name">
								富安娜家私</a>
							</div>
							<div class="p-price">￥ "149.00"</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="body3">
			<h2>京东·品质生活</h2>
			<div class="body31">
				<div class="body311">
					<a target="_blank" href="//xinpin.jd.com/"> <img
						src="img/pz1.jpg"></a>
				</div>
				<div class="body312">
					<a target="_blank" href="//hao.jd.com/"> <img
						src="img/body31.jpg">
					</a> <a clstag="h|keycount|2015|13g" target="_blank"
						href="//hao.jd.com/ilist.html" class="has-item-small"> <img
						src="img/body33.jpg">
					</a>
				</div>
				<div class="body313">
					<div class="body3131">
						<img src="img/body3131.jpg">
					</div>
					<div class="body3132">
						<img src="img/body3132.png"> <img src="img/body3133.jpg">
					</div>
				</div>
				<div class="body314"></div>
			</div>
		</div>
		<div id="footer">
			<div id="footer1">
				<div class="slogen"></div>
				<div class="w">
					<dl class="fore1">
						<dt>购物指南</dt>
						<dd>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-29.html">购物流程</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-151.html">会员介绍</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-297.html">生活旅行/团购</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue.html">常见问题</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-136.html">大家电</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/index.html">联系客服</a>
							</div>
						</dd>
					</dl>
					<dl class="fore2">
						<dt>配送方式</dt>
						<dd>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-81-100.html">上门自提</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-81.html">211限时达</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/103-983.html">配送服务查询</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a>
							</div>
							<div>
								<a target="_blank" href="//en.jd.com/chinese.html">海外配送</a>
							</div>
						</dd>
					</dl>
					<dl class="fore3">
						<dt>支付方式</dt>
						<dd>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-172.html">货到付款</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-173.html">在线支付</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-176.html">分期付款</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-174.html">邮局汇款</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-175.html">公司转账</a>
							</div>
						</dd>
						<dl class="fore2">
							<dt>配送方式</dt>
							<dd>
								<div>
									<a rel="nofollow" target="_blank"
										href="//help.jd.com/user/issue/list-81-100.html">上门自提</a>
								</div>
								<div>
									<a rel="nofollow" target="_blank"
										href="//help.jd.com/user/issue/list-81.html">211限时达</a>
								</div>
								<div>
									<a rel="nofollow" target="_blank"
										href="//help.jd.com/user/issue/103-983.html">配送服务查询</a>
								</div>
								<div>
									<a rel="nofollow" target="_blank"
										href="//help.jd.com/user/issue/109-188.html">配送费收取标准</a>
								</div>
								<div>
									<a target="_blank" href="//en.jd.com/chinese.html">海外配送</a>
								</div>
							</dd>
						</dl>
					</dl>
					<dl class="fore4">
						<dt>售后服务</dt>
						<dd>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/321-981.html">售后政策</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-132.html">价格保护</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/130-978.html">退款说明</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//myjd.jd.com/repair/repairs.action">返修/退换货</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//help.jd.com/user/issue/list-50.html">取消订单</a>
							</div>
						</dd>
					</dl>
					<dl class="fore5">
						<dt>特色服务</dt>
						<dd>
							<div>
								<a target="_blank" href="//help.jd.com/user/issue/list-133.html">夺宝岛</a>
							</div>
							<div>
								<a target="_blank" href="//help.jd.com/user/issue/list-134.html">DIY装机</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank" href="//fuwu.jd.com/">延保服务</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank"
									href="//o.jd.com/market/index.action">京东E卡</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank" href="//mobile.jd.com/">京东通信</a>
							</div>
							<div>
								<a rel="nofollow" target="_blank" href="//s.jd.com/">京东JD+</a>
							</div>
						</dd>
					</dl>
					<div id="coverage">
						<div class="dt">京东自营覆盖区县</div>
						<div class="dd">
							<p>京东已向全国2649个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
							<p class="ar">
								<a target="_blank" href="//help.jd.com/user/issue/103-983.html">查看详情&nbsp;&gt;</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="w">
				<div id="footer2" clstag="h|keycount|2015|33a">
					<div class="links">
						<a rel="nofollow" target="_blank"
							href="//www.jd.com/intro/about.aspx">关于我们</a>|<a rel="nofollow"
							target="_blank" href="//www.jd.com/contact/">联系我们</a>| <a
							rel="nofollow" target="_blank"
							href="//help.jd.com/user/custom.html">联系客服</a>|<a rel="nofollow"
							target="_blank" href="//www.jd.com/contact/joinin.aspx">商家入驻</a>|<a
							rel="nofollow" target="_blank" href="//jzt.jd.com">营销中心</a>|<a
							rel="nofollow" target="_blank" href="//app.jd.com/">手机京东</a>| <a
							target="_blank" href="//club.jd.com/links.aspx">友情链接</a>|<a
							target="_blank" href="//media.jd.com/">销售联盟</a>|<a
							href="//club.jd.com/" target="_blank">京东社区</a>|<a
							href="//gongyi.jd.com" target="_blank">京东公益</a>|<a
							href="//en.jd.com/" target="_blank">English Site</a>|<a
							href="//en.jd.com/help/question-58.html" target="_blank">Contact
							Us</a>
					</div>
					<div class="copyright">
						<a target="_blank"
							href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11000002000088"><img
							src="img/logo1.png"> 京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a
							target="_blank"
							href="//img14.360buyimg.com/da/jfs/t256/349/769670066/270505/3b03e0bb/53f16c24N7c04d9e9.jpg">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a
							rel="nofollow"
							href="//img30.360buyimg.com/uba/jfs/t1036/328/1487467280/1405104/ea57ab94/5732f60aN53b01d06.jpg"
							target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
							href="//misc.360buyimg.com/wz/wlwhjyxkz.jpg" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;©&nbsp;2004&nbsp;-&nbsp;2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733<br>京东旗下网站：<a
							href="https://www.jdpay.com/" target="_blank">京东钱包</a>
					</div>
					<div class="authentication">
						<a target="_blank"
							href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202007080200026">
							<img width="103" height="32" alt="经营性网站备案中心" src="img/logo2.png">
						</a> <a target="_blank"
							href="https://ss.knet.cn/verifyseal.dll?sn=2008070300100000031&amp;ct=df&amp;pa=294005">
							<img border="true" width="103" height="32"
							oncontextmenu="return false;" name="CNNIC_seal" alt="可信网站"
							src="img/logo3.png">
						</a> <a target="_blank" href="http://www.bj.cyberpolice.cn/index.do">
							<img width="103" height="32" alt="网络警察" src="img/logo4.jpg">
						</a> <a target="_blank"
							href="https://search.szfw.org/cert/l/CX20120111001803001836">
							<img width="103" height="32" src="img/logo5.png">
						</a> <a target="_blank" href="http://www.12377.cn"><img
							width="103" height="32" src="img/logo6.jpg"></a> <a
							target="_blank" href="http://www.12377.cn/node_548446.htm"><img
							width="103" height="32" src="img/logo7.jpg"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>