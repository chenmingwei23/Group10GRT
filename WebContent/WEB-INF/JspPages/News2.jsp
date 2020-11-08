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
<jsp:include page="top.jsp" flush="true"></jsp:include>
    
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
		<img src="https://warcraft3.info/uploaded_images/HHOSa093lXJp4EM5InsXEeerUFCh9IyEZ7VdCOKj.jpeg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">Warcraft 3 Nations League - Regional Qualifiers Preview</h5>
			<p class="card-text">This Sunday the 27th, the regional qualifiers for the Warcraft 3 Nations League are going to start. Competing for the final spots in the group stage, starting November 1st, will be teams from Europe and the Americas. Warcraft3.info contacted team managers from each region and compiled their statements in this preview article.</p>
			<a href = "https://warcraft3.info/articles/358">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://www.pubg.com/wp-content/uploads/2020/10/3-3-1365x768.png" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">SEASON 9 DISCOVER PARAMO</h5>
			<p class="card-text">Update 9.1 – Now on the Test Server</p>
			<a href = "https://www.pubg.com/2020/10/14/season-9-patch-notes/">Learn more</a>
		</div>
		</div>
		
		<div class="card">
		<img src="https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/blog/body/bocw/BO-S01-ROADMAP.jpg" class="card-img-top" alt="..." height = "300">
		<div class="card-body">
			<h5 class="card-title">THE FUTURE OF CALL OF DUTY®: WARZONE™: MODERN WARFARE AND BLACK OPS COLD WAR</h5>
			<p class="card-text">The free-to-play, free-for-everyone console and PC experience evolves starting this December 10th with the release of Call of Duty®: Black Ops Cold War Season One. The following intel explains how.</p>
			<a href = "https://www.callofduty.com/blog/2020/11/The-Future-of-Call-of-Duty-Warzone-1">Learn more</a>
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