<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE-edge">
  <meta name="renderer" content="webkit">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="ELEC5619 GROUP_10"/>
    <meta name="description" content="SSM"/>
  <title>Forunms-G​RAND​ R​UNETERRA​ T​AVERN​</title>
  	<link rel="apple-touch-icon" href="images/icon.png">
  	<link rel="icon" href="images/icon.png">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/index.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
  <style type="text/css">
    .panel-primarys {border-color: #fd7b5d; }
    .panel-titles {margin-top: 0; margin-bottom: 0; font-size: 16px; color: #004975; text-shadow: 1px 2px 1px; }
    .panel-headings {padding: 10px 15px; border-bottom: 1px solid transparent; border-top-left-radius: 3px; border-top-right-radius: 3px; font-size: 16px;font-weight: 700;background-color: #fd7b5d;}
    .total {text-align: center;border: 1px solid #fd7b5d;border-radius: 5px;margin-bottom: 30px;display: block;background-color: #fcf8e3}
    .total div p em {display: block; font-size: 40px; line-height: 80px; font-weight: 400; } 
    .total div p span {display: block; font-size: 14px; } 
  </style>

</head>
<body>
 <!-- Header -->
<jsp:include page="top.jsp" flush="true"></jsp:include>
    
    <div class="col-md-8">
		
		<div class="card">
		<img src="https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt347b09ad78b1e2f6/5fa4531646f622769b5eba13/Moments-thumbnail.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title text-white">Worlds 2020: Moments and Memories</h5>
			<p class="card-text text-white">Relive the biggest moments of Worlds 2020!</p>
			<a href = "https://www.youtube.com/watch?v=XLnuWS113XQ">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://blog.dota2.com/wp-content/uploads/2020/10/diretide_blog.png" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title text-white">'Tis the Season</h5>
			<p class="card-text text-white">Slivers of the Mad Moon cast their waning light across the land. A dormant beast stirs in his cave, a powerful hunger overcoming the arcane tendrils that bind him in his hibernation. </p>
			<a href = "http://www.dota2.com/diretide">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://steamcdn-a.akamaihd.net/apps/csgo/blog/images/fracture/sw2_02.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title text-white">On the Case</h5>
			<p class="card-text text-white">Today's update includes some networking improvements, updates to Swamp, Mutiny, and Anubis, and an all new weapon case!</p>
			<a href = "https://blog.counter-strike.net/index.php/2020/08/31067/">Learn more</a>
		</div>
		</div>
		
		<nav>
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/grt/news">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/grt/news2">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/grt/news3">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/grt/news4">4</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="http://localhost:8080/grt/news5">5</a>
							</li>
						</ul>
		</nav>
	</div>
  <!-- Footer -->
<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html>