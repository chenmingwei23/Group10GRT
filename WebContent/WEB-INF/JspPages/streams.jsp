<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>GRT Game Streams</title>


    <link href="css/st-bootstrap.min.css" rel="stylesheet">
    <link href="css/st-style.css" rel="stylesheet">
    <script src="js/st-jquery.min.js"></script>
    <script src="js/st-bootstrap.min.js"></script>
    <script src="js/st-scripts.js"></script>

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row" style="background-color: black; padding: 5px">
				<div class="col-md-10" style="color: blanchedalmond;">
					<h3>
						GRT ESPORTS
					</h3>
				</div>
				<div class="col-md-2">
					 
					<button type="button" class="btn btn-success">
						LOGIN
					</button>
				</div>
			</div>
			<div class="row" style="background-color: chocolate;">
				<div class="col-md-12" style="padding-top: 7px; padding-bottom: 7px; ">
					<ul class="nav">
						<li class="nav-item">
							<a class="nav-link disabled" href="#" style="color: white;">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#" style="color: white;">News</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="#" style="color: white;">Scores</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="${pageContext.request.contextPath }/forums" style="color: white;">Forums</a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" href="#" style="color: white;">Marking</a>
						</li>
						
					</ul>
				</div>
			</div>
			<div class="row" style="height: 560px">
				<div class="col-md-2">
					<a href="https://www.humblebundle.com/store" target="_blank"><img  style="width: 100%; height: 100%;" src="images/ad1.png" alt=""></a>
				</div>
					
				<div class="col-md-8">
					<iframe width=100% height=100% src="https://www.youtube.com/embed/ulboa1kHp8U?controls=0&amp;start=2374&autoplay=1" frameborder="0" allow="accelerometer;  clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					
				</div>

				<div class="col-md-2">
					<a href="https://www.humblebundle.com/store" target="_blank"><img  style="width: 100%; height: 100%;" src="images/ad2.png" alt=""></a>
				</div>
			</div>
			<div class="jumbotron">
				<h2>
					Dragon Quest XI S: Definitive Edition now has a 10 hour demo on Steam
				</h2>
				<p>
					Dragon Quest XI S- Definitive Edition is a reissue of the 2018 decent-albeit-safe JRPG, bringing a fully orchestral soundtrack (much demanded), a retro-styled 2D mode and much more. It doesn't release until December, but if you're keen to dive in there's now a ten hour demo available on Steam. It's the same demo that released on the Nintendo Switch, and it's a generous chunk of game time.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
			<div class="jumbotron">
				<h2>
					Dragon Quest XI S: Definitive Edition now has a 10 hour demo on Steam
				</h2>
				<p>
					Dragon Quest XI S- Definitive Edition is a reissue of the 2018 decent-albeit-safe JRPG, bringing a fully orchestral soundtrack (much demanded), a retro-styled 2D mode and much more. It doesn't release until December, but if you're keen to dive in there's now a ten hour demo available on Steam. It's the same demo that released on the Nintendo Switch, and it's a generous chunk of game time.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
			<div class="jumbotron">
				<h2>
					Dragon Quest XI S: Definitive Edition now has a 10 hour demo on Steam
				</h2>
				<p>
					Dragon Quest XI S- Definitive Edition is a reissue of the 2018 decent-albeit-safe JRPG, bringing a fully orchestral soundtrack (much demanded), a retro-styled 2D mode and much more. It doesn't release until December, but if you're keen to dive in there's now a ten hour demo available on Steam. It's the same demo that released on the Nintendo Switch, and it's a generous chunk of game time.
				</p>
				<p>
					<a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>
			</div>
		</div>
	</div>
</div>

    
    <jsp:include page="bottom.jsp" flush="true"></jsp:include>
  </body>
</html>