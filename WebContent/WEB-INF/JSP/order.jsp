<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>订单结算页-京东商城</title>
<link href="css/order.css" rel="stylesheet">
</head>
<body>
	<div id="container">
		<div id="header">
			<div class="h_top">
				<ul class="fl">
					<li class="fore0">送至：北京</li>
				</ul>
				<ul class="fr">
					<li class="fore1"><a href="">大帆子 退出</a></li>
					<li class="spacer"></li>
					<li class="fore2"><a href="">我的订单</a></li>
					<li class="spacer"></li>
					<li class="fore2"><a href="">我的京东</a></li>
					<li class="spacer"></li>
					<li class="fore2"><a href="">京东会员</a></li>
					<li class="spacer"></li>
					<li class="fore2"><a href="">企业采购</a></li>
					<li class="spacer"></li>
					<li class="fore3">
						<div class="cileft"></div>
						<div>手机京东</div>
					</li>
					<li class="spacer"></li>
					<li class="fore2"><a href="">关注京东</a></li>
					<li class="spacer"></li>
					<li class="fore2"><a href="">客户服务</a></li>
					<li class="spacer"></li>
					<li class="fore4"><a href="">网站导航</a></li>
				</ul>
			</div>
			<div class="h_bottom">
				<div class="logo">
					<a href=""><img src="img/logo-jd.png"> </a> <a href=""
						class="link2"> <b></b>
					</a>
				</div>
				<div class="stepflex">
					<dl class="first">
						<dt class="s-num">1</dt>
						<dd class="s-text">
							1.我的购物车 <s></s>
						</dd>
					</dl>
					<dl class="doing">
						<dt class="s-num">2</dt>
						<dd class="s-text">
							2.填写核对订单信息 <s></s> <b></b>
						</dd>
					</dl>
					<dl class="last">
						<dt class="s-num">3</dt>
						<dd class="s-text">
							3.成功提交订单 <b></b>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<div id="body">
			<div class="content">
				<div class="checkout">
					<span class="tit">填写并核对订单信息</span>
				</div>
				<div class="steps">
					<div class="step-tit">
						<h3>收货人信息</h3>
						<div class="extra-r">
							<a href="" class="ftx-05">新增收货地址</a>
						</div>
					</div>
					<div class="step-cont">
						<div class="myname">
							<div class="selectname">
								&nbsp&nbsp&nbsp罗一帆
								<div class="nameimg">
									<img src="img/selected.png">
								</div>
							</div>
							<div class="mydata">罗一帆&nbsp&nbsp&nbsp&nbsp&nbsp北京 大兴区
								亦庄经济开发区 凉水河二街8号大族企业湾6栋B座2层&nbsp&nbsp&nbsp&nbsp&nbsp183****4234</div>
							<div class="moren">默认地址</div>
						</div>
						<div class="moreaddr">
							<span>更多地址</span> <b></b>
						</div>
					</div>
					<div class="hr"></div>
					<div class="pay">
						<div class="pay-tit">
							<h3>支付方式</h3>
						</div>
						<div class="pay-cont">
							<div class="pay-list">
								<ul class="payment">
									<li class="list1"><div class="item1">货到付款</div></li>
									<li class="list1"><div class="item1">微信支付</div></li>
									<li class="list1"><div class="item1">京东支付</div></li>
									<li class="list1"><div class="item2">
											在线支付 <b></b>
										</div></li>
									<li class="list2"><div class="item3">
											<span>更多</span> <b></b>
										</div></li>
								</ul>
							</div>
						</div>
						<div class="hr"></div>
						<div class="step-tit">
							<h3>送货清单</h3>
							<div class="extra-r">
								<a class="price-desc"><i></i>价格说明</a> <a>返回修改购物车</a>
							</div>
						</div>
						<div class="peisong">
							<div class="shopping">
								<c:forEach var="commodities" items="${detailslist}">
									<div class="shoplist">
										<div class="goods-list">
											<div class="goods-tit">
												<h4 class="shangjia">商家：京东自营</h4>
											</div>
											<div class="goods-item">
												<div class="p-img">
													<a><img src="img/${commodities.commodity.IMG}"></a>
												</div>
												<div class="goods-msg">
													<div class="p-name">${commodities.commodity.COMNAME}
														</div>
													<div class="p-price">
														<strong class="jd-price">￥${commodities.AMOUNT}</strong> <span
															class="p-num"> x1</span> <span class="p-num">有货</span>
													</div>
												</div>
												<div class="seven">
													<i class="s-img"></i> <span class="s-desc">7天无理由退货</span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="dis-modes">
									<div class="mode-item">
										<div class="mode-tit">
											<h4>配送方式</h4>
											<div class="duiying">
												<a class="jd-goods"> <i></i>对应商品
												</a>
											</div>
										</div>
										<div class="mode-nav">
											<ul>
												<li class="kuaidi"><span class="jdkd">京东快递</span> <b></b>
												</li>
											</ul>
										</div>
										<div class="mode-con">
											<ul class="mode-list">
												<li>
													<div class="fore1">
														<span class="shijian">配送时间：</span> 预计 8月4日[今天] 15:00-19:00
														送达
													</div>
													<div class="fore2">
														<a>修改</a>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="hr"></div>
				<div class="step-tit">
					<h3>发票信息</h3>
				</div>
				<div class="step-content">
					<span class="mr10">普通发票（电子）</span> <span class="mr10">个人 </span> <span
						class="mr10">明细 </span> <a class="ftx-05">修改</a>
				</div>
				<div class="hr"></div>
				<div class="step-tit">
					<h3>使用优惠/抵用</h3>
				</div>
				<div class="order-sum">
					<div class="stat">
						<div class="list">
							<span>1件商品，总商品金额：</span> <em class="price">￥80099.00</em>
						</div>
						<div class="list">
							<span>返现：</span> <em class="price">￥0.00</em>
						</div>
						<div class="list">
							<span>运费：</span> <em class="price">￥0.00</em>
						</div>
					</div>
				</div>
				<div class="trade-foot">
					<div class="foot-detail">
						<div class="fc-price">
							<span class="price-tit">应付总额：</span> <span class="price-num">￥80099.00</span>
						</div>
						<div class="fc-info">
							<span class="mr20">寄送至： 北京 大兴区 亦庄经济开发区 凉水河二街8号大族企业湾6栋B座2层</span>
							<span class="sendname">收货人：罗一帆 183****4234</span>
						</div>
					</div>
					<div class="ok">
						<button type="submit" class="button">提交订单</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>
	<iframe src="footer" name="footer" width="100%" height="600px"
		scrolling="no" frameborder="0" prefix=""></iframe>
</body>
</html>