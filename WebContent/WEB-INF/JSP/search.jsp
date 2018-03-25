<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>搜索结果</title>
<link href="css/search.css" rel="stylesheet">

</head>
<body>
	<iframe src="header" name="header" width="100%" height="180px"
		scrolling="no" frameborder="0" prefix=""></iframe>

	<div id="body">
		<div id="filter">
			<div id="f_top">
				<div class="f_sort">
					<a href="#" class="curr">综合排序</a> <a href="#" class="curr_1">销量</a>
					<a href="#" class="curr_1">价格</a> <a href="#" class="curr_1">评论数</a>
					<a href="#" class="curr_1">新品</a>
				</div>
				<div class="f_search">
					<input type="text" value="在结果中搜索" class="txt"> <a href="#"
						class="btn">确定</a>
				</div>
			</div>
			<div id="f_bottom">
				<div class="f_store">
					<div class="f_store_1">配送至</div>
					<div class="f_store_2">
						<div class="text">北京朝阳区三环以内</div>
					</div>
				</div>
				<div class="f_feature">
					<ul>
						<li><a href="#"> <span></span>京东配送
						</a></li>
						<li><a href="#"> <span></span>货到付款
						</a></li>
						<li><a href="#"> <span></span>仅显示有货
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="goodsList">
				<ul>
					<c:forEach var="commodities" items="${commodities}">
						<li class="li_1">
							<div class="wrap_1">
								<div class="img">
									<img src="img/${commodities.IMG}" width="220px" height="220px">
								</div>
								<div class="price">
									<strong> <em>￥</em> <i>${commodities.PRICE}</i>
									</strong>
								</div>
								<div class="name">

									<a href="goxiangqing?commodotyid=${commodities.COMID}">${commodities.DESCRIBE}</a>

								</div>
								<div class="commit">
									<strong> 已有 <a href="#">6500+</a> 人评价
									</strong>
								</div>
								<div class="operate">
									<a href="#"><i></i>加入购物车</a>
								</div>

							</div>
						</li>
					</c:forEach>
				</ul>
		</div>
		<div id="page">
			<div id="bottom_page" class="wrap">
				<span class="num"> <a class="prev"> <i><</i> <em>上一页</em>
				</a> <a class="curr">1</a> <a href="#">2</a> <a href="#">3</a> <a
					href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
					<b>...</b> <a class="next"> <em>下一页</em> <i>></i>
				</a>
				</span> <span class="skip"> <em> 共<b>100</b>页&nbsp;&nbsp;到第
				</em> <input type="text" class="txt" value="1"> <em>页</em> <a
					class="btn">确定</a>
				</span>
			</div>
		</div>
	</div>

	<iframe src="footer" name="footer" width="100%" height="600px"
		scrolling="no" frameborder="0" prefix=""></iframe>

</body>
</html>