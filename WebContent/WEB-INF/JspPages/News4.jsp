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
		<img src="https://media.contentapi.ea.com/content/dam/ea/fifa/fifa-21/ultimate-team/road-to-the-final/common/rttf-img-1-16x9.png.adapt.crop16x9.1455w.png" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">ROAD TO THE FINAL</h5>
			<p class="card-text">Road to the Final returns in FIFA 21! Follow the journey in FUT 21 with live dynamic Player Items that upgrade based on teams' progress through the world's most prestigious club competitions. Stay tuned for additional UEFA Champions and Europa League themed content throughout the campaign.</p>
			<a href = "https://www.ea.com/games/fifa/fifa-21/news/fut-21-road-to-the-final?isLocalized=true">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="http://overseas-img.qq.com/upload/webplat/info/pubgmobile/20200906/491581412125525.jpg" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">Patch Notes 1.0</h5>
			<p class="card-text">PUBG MOBILE Update 1.0 Patch Notes</p>
			<a href = "http://www.pubgmobile.com/en-US/news_detail/webplat/info/news_version3/35372/35373/35374/35386/35387/m20497/202009/868877.shtml">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://rocketleague.media.zestyio.com/rl_s1_core_no-logos.309bf22bd29c2e411e9dd8eb07575bb1.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">PATCH NOTES: FREE TO PLAY RELEASE</h5>
			<p class="card-text">Rocket League is now available for download through the Epic Games Store

The new Challenges system is live, including challenges specifically for new players

PlayStation Plus is no longer required to play Rocket League online

Season One is now live on all platforms</p>
			<a href = "https://www.rocketleague.com/news/patch-notes--free-to-play-release/">Learn more</a>
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