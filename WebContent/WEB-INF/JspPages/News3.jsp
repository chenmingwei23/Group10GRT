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
		<img src="http://overseas-img.qq.com/upload/webplat/info/pubgmobile/20200903/788761020672256.jpeg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">PUBG MOBILE New Era All-New Anti-Cheating System Upgrade</h5>
			<p class="card-text">In order to protect the interests of the majority of players and ensure a healthy atmosphere within the game, PUBG MOBILE has been committed to maintaining the fairness of the game and preserving the gaming experience.
In our anti-cheat team, we have recently achieved some breakthroughs and developments, which we will make public to all the players.</p>
			<a href = "http://www.pubgmobile.com/en-US/news_detail/webplat/info/news_version3/35372/35373/35374/35386/35408/m20497/202009/869178.shtml">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://cdn2.unrealengine.com/fortnite-throwback-axe-pickaxe-1920x1080-433374381.jpg" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">DAY 1 READY: FORTNITE ARRIVES NEXT WEEK ON XBOX SERIES X|S AND PS5</h5>
			<p class="card-text">Next gen = next week!! Once you’ve taken in that sweet smell of unboxing a brand-new Xbox or PlayStation (or both, if you’re super lucky), a next-gen version of Fortnite will be ready and waiting for you to download. The Fortnite builds on Xbox Series X|S and PS5 aren’t simply tweaked last-gen builds but new native ones to harness the power of the new consoles!
</p>
			<a href = "https://www.epicgames.com/fortnite/en-US/news/day-1-ready-fortnite-arrives-next-week-on-xbox-series-x-s-and-ps5">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://cdn.supercell.com/supercell.com/201105180339/supercell.com/files/lc_larryshot_newsarticle_frontpage_2436x1125.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">THE FIRST EVER CLASH ANIMATED SHORT FILM LOST & CROWNED IS OUT NOW</h5>
			<p class="card-text">Get ready to see an all new side of the Clash Universe!</p>
			<a href = "https://supercell.com/en/news/first-ever-clash-animated-short-film-out-now/7467/">Learn more</a>
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