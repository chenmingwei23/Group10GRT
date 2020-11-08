<!-- Author: Daniel Saverimuttu -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>

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
    
    
    <!-- CSS -->    
    <style> 
    .panel-primarys {border-color: #fd7b5d; }
    .panel-titles {margin-top: 0; margin-bottom: 0; font-size: 16px; color: #004975; text-shadow: 1px 2px 1px; }
    .panel-headings {padding: 10px 15px; border-bottom: 1px solid transparent; border-top-left-radius: 3px; border-top-right-radius: 3px; font-size: 16px;font-weight: 700;background-color: #fd7b5d;}
    .total {text-align: center;border: 1px solid #fd7b5d;border-radius: 5px;margin-bottom: 30px;display: block;background-color: #fcf8e3}
    .total div p em {display: block; font-size: 40px; line-height: 80px; font-weight: 400; } 
    .total div p span {display: block; font-size: 14px; } 
    
	.container {
	  	display: flex;
  		align-items: center;
  		justify-content: center
  		
	}

	.text {
 		font-size: 20px;
 		padding-left: 20px;
	}
	
	.container1 {
		padding-left: 100px;
  		position: relative;
  		width: 25%;
  		text-align: center;
}

	.image {
  		display: block;
 		width: 100%;
 		height: auto;
  		float: left;
}

	.div1 {
		word-wrap: break-word;
		width: 800px;
		font-size: 20px;
 		padding-left: 50px;
 		padding-right: 50px;
 		float: left;
 		align-items: center;
	}

	
    </style>

</head>

<body>


    <jsp:include page="top.jsp" ></jsp:include>
    
    <main role="main" class="col-md px-4 \">
        <!--overall-->
        <div id="marking"
            class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 bg-secondary card-body text-center">
            <h2 class="overallanalyticspoint text-warning text-center" id="overallanalyticspoint">Marking</h2>
        </div>
    </main>
    
    <p style="text-align:right; padding-right: 20px"> <a href="http://localhost:8080/grt/marking2"> Previous tournament </a>
    </p>
    
    <!-- TITLE (Tournament Name) -->
    <h1 style="text-align:center">League of Legends Worlds</h1>
    <h6 style="text-align:center">Ended 31st October 2020</h6>
    <br>
    <br>
    
    <!-- Tournament image and description -->
    <div class="container">
		<div>
			<img src="https://specials-images.forbesimg.com/imageserve/5dc7d659e0af7b0006b0fce8/960x0.jpg?fit=scale" width="480" height="320">
		</div>
		<div class = "text">
			Worlds is the biggest League of Legends tournaments of the year and a fitting end to the esports season. Held this year in Shanghai, China LoL once again saw 22 teams compete for the title of Best LoL e-sports team. A title one will have to prove they deserve through a series of play offs and elimination rounds where teams will compete in a best of 5 system. However, it will all be worth it for a share in the grand total prize pool of $2,340,000 USD.
		</div>
	</div>
	
	

	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<!-- Game 1 -->
	<div>
		<div class="container1">
		<!-- Image, link to game and rating -->
			<a href="https://www.youtube.com/watch?v=1VjyIsaUGEI"> Game 1 </a> (rated ${avgrate1} by ${number1} users)
  			<img src="https://estnn.com/wp-content/uploads/2020/10/Damwon_vs._Suning_2.jpg" alt="Avatar" class="image" style="width:100%;">
		</div>
	  	<div class=div1>
	  	<!-- Text description -->
  			The grand finale to a year of League of legends e-sports, the moment every diehard fan of LoL has been looking forward. This year however was extra special for the home team Chinese fans as the Chinese team Suning had made it to the finals, easily breezing past Fellow Chinese JD Gaming and Top Esports 3-1. Facing them was South Korean Damwon Gaming, who similarly had ease in previous rounds winning 3-0 against fellow Koreans DRX and winning 3-1 against European G2 Esports.
  		</div>
  		

		<div style="padding-top: 75px; text-align: center; float: left;">
		<!-- User submits rating here -->
			Have you watched this game? <br> 
			Let others know what you thought! <br>
			Rate it out of 5  
			<form action="marking" style="padding-top:20px">  
				Rating : <input id="numb" type="number" min="1" max="5" name="userrate1"/> <br><br>  
				<input type="submit" name="submit" value="Rate me!">
				<input type="hidden" name ="totalcount1" value = "${counting1}"> 
				<input type="hidden" name ="totaluser1" value = "${number1}"> 
			</form>  
		
			<div style="display: none"> 
			<!-- Information to pass to the backend* -->
			<!-- *temporary until database can be implemented -->
				total number of users = ${totnum1}    		
				counter = ${counting1}
    			number of users = ${number1}
				average rating = ${avgrate1}
			</div>
    	</div>  
	</div>
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<!-- Game 2 -->
	<div>
		<div class="container1">
		<!-- Image, link to game and rating -->
			<a href="https://www.youtube.com/watch?v=YYX_935Ub-Y"> Game 2 </a> (rated ${avgrate2} by ${number2} users)
  			<img src="https://www.esportsbets.com/wp-content/uploads/2019/11/lol-worlds-second-semi-final-g2-esports-skt1.jpg" alt="Avatar" class="image" style="width:100%;">
		</div>
	  	<div class=div1>
	  	<!-- Text description -->
  			This semi-final game featured a Chinese playoff on home turf with Top Esports and Suning facing off for a chance to fight Damwon Gaming in the finals. So far Suning hasn’t had much trouble making it to the semi finals while Top Esports had come out of a tight game against Fnatic 3-2 just the week before. An interesting game to watch to see if Top Esports have come up with anything to ensure a cleaner win this time around.
  		</div>

		<div style="padding-top: 75px; text-align: center; float: left;">
		<!-- User submits rating here -->
			Have you watched this game? <br> 
			Let others know what you thought! <br>
			Rate it out of 5  
			<form action="marking" style="padding-top:20px">  
		<!-- User submits rating here -->  
		
			rating : <input id="numb" type="number" min="1" max="5" name="userrate2"/> <br><br>  
			<input type="submit" name="submit" value="Rate me!">
			<input type="hidden" name ="totalcount2" value = "${counting2}"> 
			<input type="hidden" name ="totaluser2" value = "${number2}"> 
		</form>
		<div style="display: none"> 
		<!-- Information to pass to the backend* -->
		<!-- *temporary until database can be implemented -->
			total number of users = ${totnum2}    		
			counter = ${counting2}
    		number of users = ${number2}
			average rating = ${avgrate2}
		</div>
    </div>  
    
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
    <!-- Footer -->
    <jsp:include page="bottom.jsp" flush="true"></jsp:include>


    <! -- Bootstrap -->
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
        <script src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
        <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>


</body>

</html>