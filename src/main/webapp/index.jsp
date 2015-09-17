<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<meta charset="UTF-8">
	<title>问答网站</title>
	<head>
		<script type="text/javascript" src = "../static/script/bower_components/jquery/dist/jquery.js"></script>
		<script type="text/javascript" src = "../static/script/bower_components/js-cookie/src/js.cookie.js"></script>
		<script type="text/javascript" src = "../static/script/index.js"></script>
		<script type="text/javascript" src = "../static/script/dialog.js"></script>
		<link rel="stylesheet" href="../static/css/index.css">
	</head>
	<body>
		<div class="navbar-wrapper">
			<div class = "navbar">
				<div class = "navbar-item right">
					<a href="#" class = "navbar-link">指 南</a>
					<a href="#" class="navbar-link">帮 助</a>
					<a id = "registerBtn" href="#" class="navbar-link">注 册</a>
					<a id = "loginBtn" href="#" class="navbar-link">登 录</a>						
				</div>
				<a href="#" class = "navbar-item marg-r10">
					<img src="../static/image/logo-wh.gif" class = "logo">
				</a>
				<div class="navbar-item">
					<form action="#" method="post" class = "navbar-form">
						<input type="text" name="content" id="SearchContent" class = "marg-r5">
						<input type="submit" value="提 问">
					</form>
				</div>
				<div class="clear-both"></div>
			</div>
		</div>
		<div class="subnavbar">
			<div class="subnavbar-item right">
				<a href="#" class = "navbar-tag">问 题</a>
				<a href="#" class = "navbar-tag">文 档</a>
				<a href="#" class = "navbar-tag">标 签</a>
				<a href="#" class = "navbar-tag">用 户</a>
				<a href="#" class = "navbar-tag navbar-last-tag">勋 章</a>
			</div>
			<img src="../static/image/color-logo.png" class = "sublogo">
		</div>
		<div class="guidenavbar">
			<div class="guidenavbar-content">
				<div class="guidenavbar-item textblock">
					<p class="guidenavbar-text">
						这是一个由众多业内精英人士及爱好者组成的、汇集了工程行业问题和回答的专业网站，它没有任何额外的注册要求，并且100%免费。
					</p>
					<button class = "guidenavbar-btn">花几分钟看一看</button>
				</div>
				<div class="guidenavbar-item imageblock">
					<img src="../static/image/guide1.png" id = "GuideImage1" class = "image">
					<img src="../static/image/guide2.png" id = "GuideImage2" class = "image">
					<img src="../static/image/guide3.png" id = "GuideImage3" class = "image lastimage">
				</div>
				<a id = "closeGuideNavBar" href="#" class = "guidenavbar-close">
					<img src="../static/image/close.png"></img>
				</a>
			</div>
		</div>
		<div class="main-wrapper">	
			<div class="main-content">
				<div class="navbar main-content-title">
					<div class="navbar-item right">
						<a href="#" class="link">最新</a>
						<a href="#" class="link active">热门</a>
						<a href="#" class="link">未答</a>
					</div>
					<span class = "title">动态问答</span>
				</div>
				<ul>
					<c:forEach items = "${questionList}" var="question">
						<li>
							<div class = "content-section">
								<ul class="operation-wrapper">
									<li class="operation">
										<span class = "number"><c:out value = "${question.qgoodnum}"/></span><br>
										<span class = "word">赞</span>
									</li>
									<li class="operation">
										<span class = "number"><c:out value = "${question.qbadnum}"/></span><br>
										<span class = "word">踩</span>
									</li>
									<li class="operation">
										<span class = "number"><c:out value = "${question.qviewtimes}"/></span><br>
										<span class = "word">浏 览</span>
									</li>
								</ul>
								<div class="content-wrapper">
									<p class = "content-title"><c:out value = "${question.qtitle}"/></p>
									<div class="content-status-wrapper">
										<ul class="tag-wrapper">
											<li class="tag">工程管理</li>
											<li class="tag last">工程咨询</li>
										</ul>
										<div class="status-wrapper">
											<span class = "status"><c:out value = "${question.qcreatetime}"/></span>
											<span class = "status poster"><c:out value = "${question.qcreateuserid}"/></span>
											<span class = "status">123</span>
										</div>
									</div>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
				<button class = "loading-more">加载更多问题</button>
			</div>
			<div class="side">
				<ul>
					<li class="side-section">
						<h4>社区日志</h4>
						<ul>
							<li>
								<span>256</span> 个问题
							</li>
							<li>
								<span>85</span>% 回答率
							</li>
							<li>
								<span>2000</span> 注册用户
							</li>
							<li>
								<span>600</span> 今日访客
							</li>
							<li>
								<span>500</span> 文档
							</li>
						</ul>
					</li>
					<li class="side-section">
						<h4>热门问题:</h4>
						<p>
							1、PPP项目的具体实施程序是什么？包含哪些方面的工作？
							2、PPP项目是一次社会资本进入基础设施市场的革命？还是一次换个花样的招商引资？
							3、BIM的发展能够建筑行业带来革命吗？能否像3D打印机一样，带领建筑行业进入全新的3D时代？
							4、2015年6月住建部发布的新的勘察设计管理条例有哪些变化？对我们的具体工作有何影响？
							5、一级建造师年底取消批准制，改为评级制，对建筑行业后续的发展有何影响？
							6、施工过程中的设计变更一般分为哪几类？谁有比较好的防治措施？
							7、地源热泵推行这么多年为什么没有推行开来？具体有哪些优缺点？
							8、五星级酒店工程的主要技术难点有哪些？请列举五点？
							9、结构改造过程中的垃圾垂直运输处理有哪些好的方法？
							10、项目实施方案如何在没有设计方案的前提下计算技术经济指标？
						</p>
					</li>
					<li class="side-section">
						<h4>今日top10:</h4>
						<ul>
							<li>1. 鲁班</li>
							<li>2. 路人甲</li>
							<li>3. Jay</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="footer-wrapper">
			<div class="footer">
				<span class="first link">指 南</span>
				<span class="link">帮 助</span>
				<span class="link">日 志</span>
				<span class="link">保 密</span>
				<span class="link">建 议</span>
				<span class="last link">关于我们</span>
				<p class="info">Copyright@2015-2020 了了 当前版本15.07.01<br>沪ICP备02105593号-1</p>
			</div>
		</div>
	</body>
	<script src = "../static/script/index.js"></script>
	<script>
		
	</script>
</html>