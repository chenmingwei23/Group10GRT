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
    
    <p style="text-align:left; padding-left: 20px"> <a href="http://localhost:8080/grt/marking2"> Next tournament </a>
    </p>
    
    <!-- TITLE (Tournament Name) -->
    <h1 style="text-align:center">CounterStrike: Global Offensive Major</h1>
    <h6 style="text-align:center">Ended 31st October 2020</h6>
    <br>
    <br>
    
    
    <div class="container">
		<div>
			<img src="https://www.monsterenergy.com/media/uploads_image/2019/03/06/1600/800/8492ed0eab24eae41b35937510a696e8.jpg?mod=v1_f2538c15fcb143cfa3d8ecfac1d8db0b" width="480" height="320">
		</div>
		<div class = "text">
			The StarLadder Major, held in Berlin was the 15th Major league. Featuring 24 teams through a mixture of tournament and regional qualifiers, it had teams compete against each other for a grand prize pool of $1,000,000 USD. The Majors format has proved successful for CS:GO and Valve the games developer as their minor and major format allows teams plenty of chances to experience international competition and hone their skills for the ultimate face off.
		</div>
	</div>
	
	

	
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div>
		<div class="container1">
			<a href="https://www.youtube.com/watch?v=EkJu4laFGTs"> Game 1 </a> (rated ${avgrate1} by ${number1} users)
  			<img src="https://www.eslgaming.com/sites/default/files/styles/blog_big/public/20180303_Viola-Schuldner_IEM-Katowice_10251.jpg?itok=2yFTf1Ur" alt="Avatar" class="image" style="width:100%;">
		</div>
	  	<div class=div1>
  			Playing for the grand prize of $500,000, Astralis and AVANGAR face off in the grand finals. Astralis rising easily during the champions stage defeating Team liquid and NRG esports easily 2-0 shows the skill and strategy their team has. However, AVANGAR is not too far behind, winning their quarter finals 2-1 and the semi’s 2-0 against team Vitality and Renegades shows just how far they have come. Fighting in a best of 3 this will not be a game to miss!
  		</div>
  		

		<div style="padding-top: 75px; text-align: center; float: left;">
		<!-- User submits rating here -->
			Have you watched this game? <br> 
			Let others know what you thought! <br>
			Rate it out of 5  
		<form action="marking">  
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
			<a href="https://www.youtube.com/watch?v=obGfBdAGNqk"> Game 2 </a> (rated ${avgrate2} by ${number2} users)
  			<img src="https://e0.365dm.com/18/09/768x432/skysports-faceit-major-csgo_4426469.jpg?20180919155133" alt="Avatar" class="image" style="width:100%;">
		</div>
	  	<div class=div1>
  			A semi-final to remember, NRG esports vs Astralis, both teams have come out strong in this tournament, both sweeping the quarterfinals against their opponents 2-0. Playing on Train, Overpass and Nuke will it be the American NRG Esports that can clinch the upper hand or will Astralis, hailing from Denmark be able to continue their winning streak? The winners of this game will be able to face AVANGAR in the finals be a step closer to the $500,000 prize!
  		</div>

		<div style="padding-top: 75px; text-align: center; float: left;">
		<!-- User submits rating here -->
			Have you watched this game? <br> 
			Let others know what you thought! <br>
			Rate it out of 5  
		<form action="marking">  
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