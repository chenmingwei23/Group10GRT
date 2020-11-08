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
		<img src="https://images.contentstack.io/v3/assets/blt731acb42bb3d1659/blt347b09ad78b1e2f6/5fa4531646f622769b5eba13/Moments-thumbnail.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">Worlds 2020: Moments and Memories</h5>
			<p class="card-text">Relive the biggest moments of Worlds 2020!</p>
			<a href = "https://www.youtube.com/watch?v=XLnuWS113XQ">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://blog.dota2.com/wp-content/uploads/2020/10/diretide_blog.png" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">'Tis the Season</h5>
			<p class="card-text">Slivers of the Mad Moon cast their waning light across the land. A dormant beast stirs in his cave, a powerful hunger overcoming the arcane tendrils that bind him in his hibernation. </p>
			<a href = "http://www.dota2.com/diretide">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://steamcdn-a.akamaihd.net/apps/csgo/blog/images/fracture/sw2_02.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">On the Case</h5>
			<p class="card-text">Today's update includes some networking improvements, updates to Swamp, Mutiny, and Anubis, and an all new weapon case!</p>
			<a href = "https://blog.counter-strike.net/index.php/2020/08/31067/">Learn more</a>
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