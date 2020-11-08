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
    <!-- Header -->
    <jsp:include page="top.jsp" ></jsp:include>

    <main role="main" class="col-md px-4 \">
        <!--overall-->
        <div id="marking"
            class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 bg-secondary card-body text-center">
            <h2 class="overallanalyticspoint text-warning text-center" id="overallanalyticspoint">Marking</h2>
        </div>
    </main>
    
    <p style="text-align:left; padding-left: 20px"> <a href="http://localhost:8080/grt/marking"> Next tournament </a>
    <span style="float: right; padding-right: 20px"> <a href="http://localhost:8080/grt/marking3"> Previous tournament </a>
    </span>
    </p>
    
    <!-- TITLE (Tournament Name) -->
    <h1 style="text-align:center">Dota 2 International</h1>
    <h6 style="text-align:center">Ended 25 August 2019</h6>
    <br>
    <br>
    
    
    <div class="container">
		<div>
			<img src="https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fmikestubbs%2Ffiles%2F2017%2F09%2F36053602790_1689f3e569_z.jpg" width="480" height="320">
		</div>
		<div class = "text">
			Dota 2 “The International” is a highlight of the e-sports community. Not only is a grand finale to the Dota 2 esports league featuring play offs in the lower “Pro Circuit” but also boasts some of the highest prize pools in e-sports history. This year teams played to compete for a grand prize pool of $34 million USD cementing the tournaments high roller status. This time the International featured 18 teams with 12 invites and 6 more through regional qualifiers.
		</div>
	</div>
	
	

	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div>
		<div class="container1">
			<a href="https://www.youtube.com/watch?v=sQh8nnB-0BU"> Game 1 </a> (rated ${avgrate1} by ${number1} users)
  			<img src="https://i.ytimg.com/vi/A2AEc3YhG14/maxresdefault.jpg" alt="Avatar" class="image" style="width:100%;">
		</div>
	  	<div class=div1>
  			A game to be remembered, regardless of the winner we would have our first 2-time international victor. Featuring Team OG and Team Liquid. Team liquid, most notably rising through the lower bracket cleanly with almost all games being a 2-0 sweep in their favour. However, will it be enough to overcome Team OG? With an entire $15 million USD going to the victor, the stakes have never been higher!
  		</div>
  		

		<div style="padding-top: 75px; text-align: center; float: left;">
		<!-- User submits rating here -->
			Have you watched this game? <br> 
			Let others know what you thought! <br>
			Rate it out of 5  
		<form action="marking2">  
			rating : <input id="numb" type="number" min="1" max="5" name="userrate1"/> <br><br>  
			<input type="submit" name="submit" value="Rate me!">
			<input type="hidden" name ="totalcount1" value = "${counting1}"> 
			<input type="hidden" name ="totaluser1" value = "${number1}"> 
		</form>  
		
		<div style="display: none"> 
			total number of users = ${totnum1}    		
			counter = ${counting1}
    		number of users = ${number1}
			average rating = ${avgrate1}
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
	<div>
		<div class="container1">
			<a href="https://www.youtube.com/watch?v=MwabQiwEdjM"> Game 2 </a> (rated ${avgrate2} by ${number2} users)
  			<img src="https://i.ytimg.com/vi/sOz9a6rFNQA/maxresdefault.jpg" alt="Avatar" class="image" style="width:100%;">
		</div>
	  	<div class=div1>
  			Featuring a game from the Chongqing Major, the match between EG and Ehome has been considered an instant classic. While some may tout that it is considered “the greatest game of dota 2 ever played” theres no debate that this game deserved to be immortalised in some way. Blasting past the 1 hour mark this game proved to have a nail biting ending that any Dota fan that considers themselves an e-sports fan should miss! 
  		</div>

		<div style="padding-top: 75px; text-align: center; float: left;">
		<!-- User submits rating here -->
			Have you watched this game? <br> 
			Let others know what you thought! <br>
			Rate it out of 5  
		<form action="marking2">  
			rating : <input id="numb" type="number" min="1" max="5" name="userrate2"/> <br><br>  
			<input type="submit" name="submit" value="Rate me!">
			<input type="hidden" name ="totalcount2" value = "${counting2}"> 
			<input type="hidden" name ="totaluser2" value = "${number2}"> 
		</form>
		<div style="display: none"> 
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