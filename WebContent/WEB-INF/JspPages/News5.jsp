<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="/css/style.css" rel="stylesheet" type="text/css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>News</title>
<style> .col-md-8{
	position: relative;
	margin: auto;
}
</style>
</head>
<body>
 <!-- Header -->
    <%@ include file = "header.jsp" %>
    
    <div class="col-md-8">
		<nav>
			<ol class="breadcrumb">
			<li class="breadcrumb-item">
			<a href="/Group10">Home</a>
			</li>
			<li class="breadcrumb-item active">
			News
			</li>
			</ol>	
		</nav>

		<div class="card">
		<img src="https://overseas-img.qq.com/upload/webplat/info/bodproximabeta/20201022/621529248082.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">Beta 28 Patch Note</h5>
			<p class="card-text">Hello everyone! We are excited to officially announce the Antaris Battlefield Season Games update plan!</p>
			<a href = "https://www.arenaofvalor.com/webplat/info/news_version3/26190/33375/33376/33731/m19427/202010/873264.shtml">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://staticctf.akamaized.net/J3yJr34U2pZ2Ieem48Dwy9uqj5PNUQTn/7EmZhjtF0cETg2aok55hlA/4124e16cf4e9d6298382773ffa0d6986/R6S_Y5S4_Aruni_Keyart.jpg" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">MEET ARUNI, NIGHTHAVEN’S NEWEST RECRUIT</h5>
			<p class="card-text">I’ve known Apha “Aruni” Tawanroong for years. She was a detective with the Royal Thai Police when we met. I didn’t think she liked me at first, but she was just sizing me up.</p>
			<a href = "https://www.ubisoft.com/en-gb/game/rainbow-six/siege/news-updates/3gg6Q2hZ479bhJzACGVEZw/meet-aruni-nighthavens-newest-recruit">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://web2.hirez.com/smite-media//wp-content/uploads/2020/10/Smite-SWAG-Nov2-8-2560x695.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">SWAG: November 2-8</h5>
			<p class="card-text">Cowabunga! The TMNT Update is going live TOMORROW! (Tuesday!)
Start the TMNT Battle Pass and start earning all kinds of rewards!
To get the full list of rewards available on the free and paid tracks, check out the Update Notes. </p>
			<a href = "https://www.smitegame.com/news/swag-november-2-8/">Learn more</a>
		</div>
		</div>
		
		<nav>
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link" href="/Group10/News">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="/Group10/News2">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="/Group10/News3">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="/Group10/News4">4</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="/Group10/News5">5</a>
							</li>
						</ul>
					</nav>
	</div>
  <!-- Footer -->
    <%@ include file = "footer.jsp" %>
</body>
</html>