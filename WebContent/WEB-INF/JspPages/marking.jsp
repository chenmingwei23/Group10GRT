<!-- Author: Daniel Saverimuttu -->

<!DOCTYPE html>
<html>

<head>
    <title>Marking League</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="/js/main.js"></script>

    <link href="/css/style.css" rel="stylesheet" type="text/css">
    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    <!-- CSS -->    
    <style> 
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
			Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
			dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
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
  			Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
			dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
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
  			Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
			dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
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