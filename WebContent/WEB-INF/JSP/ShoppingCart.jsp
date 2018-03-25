<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<link href="css/cartmain.css" rel="stylesheet">
<script src="js/jquery-3.1.0.min.js"></script>
<!--<script src="js/shopp.js"></script>-->
<script>
	$(function() {
		$("input[name='add']").click(function() {
			var $modle = $(".cart-item-list:eq(0)");
			var $newPro = $modle.clone(true);
			$("#cart-floatbar").before($newPro);
			calTotal();
		});
		$("input[name='addpro']").click(function() {
			$(this).prev().val(parseInt($(this).prev().val()) + 1);
			$("input[name='num']").trigger("change");
			calTotal();
		});
		$("input[name='reduce']").click(function() {
			if (parseInt($(this).next().val()) > 1) {
				$(this).next().val(parseInt($(this).next().val()) - 1);
				$("input[name='num']").trigger("change");
				calTotal();
			}
		});
		$("input[name='num']").change(
				function() {
					var num2 = parseFloat($(this).val());
					var num1 = parseFloat($(this).parent().parent().prev()
							.children().eq(0).text());
					$(this).parent().parent().next().children().eq(0).text(
							num1 * num2);
					calTotal();
					doAjax($(this).next().next().val(), $(this).val());
				});
		$("input[name='toggle-checkboxes']").click(
				function() {
					$("input[name='checkItem']").prop(
							"checked",
							$("input[name='toggle-checkboxes']")
									.prop("checked"));
					calTotal();
				});
		$("input[name='checkItem']").click(function() {
			calTotal();
		})
		//        删除
		$("a[name='delete']").click(
				function() {
					$(this).parent().parent().parent().parent().parent()
							.parent().parent().remove();
					calTotal();
					$(this).parent().prev().prev().children().children().eq(1)
							.val(0);
					doAjax($(this).parent().prev().prev().children().children()
							.eq(3).val(), $(this).parent().prev().prev()
							.children().children().eq(1).val());
				});
		function doAjax(goodid, amount) {
			$.ajax({
				type : "post",
				url : "changecount",
				data : {
					goodid : goodid,
					amount : amount
				},
				dataType : "text",
				success : function(data) {
					if (data == "false") {
						alert("error");
					}
				}
			})
		}
		function calTotal() {
			var sum = 0;
			$(".goods-item").each(function() {
				if ($(this).prev().children().children().prop("checked")) {
					sum += parseFloat($(this).children().eq(5).text())
				}
			});
			$(".price-sum em").text(sum);
		}

	});
</script>
</head>
<body>
	<div id="container">
		<div id="header">
			<div id="h_top">
				<ul class="hl">
					<li>送至：北京</li>44
				</ul>
				<ul class="hr">
					<li>您好，<c:choose>
							<c:when test="${user!=null}">${user.USERNAME}</c:when>
							<c:otherwise>请登录</c:otherwise>
						</c:choose></li>
					<li class="spacer"></li>

					<li>我的订单</li>
					<li class="spacer"></li>

					<li>我的京东</li>
					<li class="spacer"></li>

					<li>京东会员</li>
					<li class="spacer"></li>

					<li>企业采购</li>
					<li class="spacer"></li>

					<li>手机京东</li>
					<li class="spacer"></li>

					<li>关注京东</li>
					<li class="spacer"></li>

					<li>客户服务</li>
					<li class="spacer"></li>

					<li>网站导航</li>
				</ul>
			</div>
			<div id="h_body">
				<div id="logo">
					<a href="//www.jd.com/" class="link1"><img
						src="img/logo-jd.png" alt="京东商城"></a> <a href="#none"
						class="link2"><b></b>购物车</a>
				</div>
				<div class="search">
					<div class="form">
						<input type="text" class="text" name="sousuo"> <input
							type="button" class="button" value="搜索">
					</div>
				</div>
			</div>
		</div>
		<div id="body" class="cart">
			<div class="w">
				<div id="chunjie" class="mb10"></div>
				<div class="ww">
					<ul class="ww1">
						<li class="ww11"><em>全部商品</em></li>
						<li class="ww12"><a class="" href="//cart.yiyaojd.com/cart">
								<em>京东大药房</em>
						</a></li>
					</ul>
					<div class="ww2">
						<span class="label">配送至：</span>
						<div class="ww22">北京朝阳区</div>
					</div>
				</div>
			</div>
			<form action="addtrade" method="post">
				<div class="body1">
					<div class="w">
						<div class="body11">
							<div class="body111">
								<div class="cart-thead">
									<div class="column t-checkbox">
										<div class="cart-checkbox">
											<input type="checkbox" name="toggle-checkboxes"
												class="jdcheckbox"
												clstag="clickcart|keycount|xincart|cart_allCheck">
										</div>
										全选
									</div>
									<div class="column t-goods">商品</div>
									<div class="column t-props"></div>
									<div class="column t-price">单价(元)</div>
									<div class="column t-quantity">数量</div>
									<div class="column t-sum">小计(元)</div>
									<div class="column t-action">操作</div>
								</div>

								<div class="cart-list">

									<div class="cart-item-list">
										<c:forEach items="${cartMap}" var="cartMap">
											<div class="cart-tbody">

												<div class="item-list" name="one">
													<div class="item-single item-item">
														<div class="item-form">
															<div class="cell p-checkbox">
																<div class="cart-checkbox">
																	<input p-type="1291293_1" type="checkbox"
																		name="checkItem" value="${cartMap.key}"
																		data-bind="cbid" class="jdcheckbox"
																		clstag="clickcart|keycount|xincart|cart_checkOn_sku">
																</div>
															</div>
															<div class="goods-item">
																<div class="p-img">
																	<a href="//item.jd.com/1291293.html" target="_blank"
																		class="J_zyyhq_1291293"><img
																		src="img/${cartMap.value.commodity.IMG}"></a>
																</div>
																<div class="item-msg">
																	<div class="p-name">
																		<a clstag="clickcart|keycount|xincart|cart_sku_name"
																			href="//item.jd.com/1291293.html" target="_blank">${cartMap.value.commodity.DESCRIBE }</a>
																	</div>
																	<div class="p-extend">
																		<span class="promise" _giftcard="giftcard_1291293">
																			<i class="jd-giftcard-icon"></i> <a
																			data-tips="选择礼品卡包装，将单独下单结算"
																			clstag="clickcart|keycount|xincart|cart_lipin"
																			class="ftx-03 gift-packing"
																			href="javascript:void(0);">购买礼品包装</a>
																		</span> <span class="promise" _yanbao="yanbao_1291293_"></span>
																	</div>
																</div>
																<div class="cell new">
																	<div class="props-txt" title="金鬼">颜色：金鬼</div>
																</div>
																<div class="cell p-price">
																	<strong>${cartMap.value.commodity.PRICE }</strong>
																</div>
																<div class="cell p-quantity">
																	<div class="quantity-form">
																		<input type="button" name="reduce"
																			class="decrement disabled" value="-"> <input
																			type="text" value="${cartMap.value.amount }"
																			class="itxt" name="num" size="4" maxlength="4">
																		<input type="button" name="addpro" class="increment"
																			value="+"> <input type="hidden" name="one"
																			value="${cartMap.key}">
																	</div>
																</div>
																<div class="cell p-sum">
																	<strong>${cartMap.value.commodity.PRICE}</strong>
																</div>
																<div class="cell p-ops">
																	<a name="delete">删除</a> <a>移到我的关注</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>

								</div>

							</div>
						</div>
						<div id="cart-floatbar">
							<div class="ui-ceilinglamp-1" style="width: 990px; height: 52px;">
								<div class="cart-toolbar" style="width: 988px; height: 50px;">
									<div class="toolbar-wrap">
										<div class="selected-item-list hide" style="display: none;">
										</div>
										<div class="options-box">
											<div class="select-all">
												<div class="cart-checkbox">
													<input type="checkbox" name="toggle-checkboxes"
														class="jdcheckbox"
														clstag="clickcart|keycount|xincart|cart_allCheck">
												</div>
												全选
											</div>
											<div class="operation">
												<a href="#none"
													clstag="clickcart|keycount|xincart|cart_somesku_del"
													class="remove-batch">删除选中的商品</a> <a href="#none"
													class="follow-batch"
													clstag="clickcart|keycount|xincart|cart_somesku_guanzhu">移到我的关注</a>
												<a class="J_clr_nosale" href="#none"
													clstag="pageclick|keycount|201508251|23">清除下柜商品</a>
											</div>
											<div class="clr"></div>
											<div class="toolbar-right">
												<div class="normal">
													<div class="comm-right">
														<div class="btn-area">
															<input type="submit" class="submit-btn" value="去结算">

														</div>
														<div class="price-sum">
															<div>
																<span class="txt">总价（不含运费）：</span> <span
																	class="price sumPrice"><em data-bind="80099.00">¥0</em></span>
																<br> <span class="txt">已节省：</span> <span
																	class="price totalRePrice">- ¥0.00</span>
															</div>
														</div>
														<div class="amount-sum">
															已选择<em>1</em>件商品<b class="up"
																clstag="clickcart|keycount|xincart|cart_thumbnailOpen"></b>
														</div>

														<div class="clr"></div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	<div id="footer">
		<iframe src="footer" width="1210" height="876" scrolling="no"
			frameborder="0"></iframe>
	</div>
	</div>
</body>
</html>