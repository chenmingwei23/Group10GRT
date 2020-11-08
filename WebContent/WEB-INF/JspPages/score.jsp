<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%response.setContentType("text/html");response.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="zh-CN">
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
  <style type="text/css">
    .panel-primarys {border-color: #fd7b5d; }
    .panel-titles {margin-top: 0; margin-bottom: 0; font-size: 16px; color: #004975; text-shadow: 1px 2px 1px; }
    .panel-headings {padding: 10px 15px; border-bottom: 1px solid transparent; border-top-left-radius: 3px; border-top-right-radius: 3px; font-size: 16px;font-weight: 700;background-color: #fd7b5d;}
    .total {text-align: center;border: 1px solid #fd7b5d;border-radius: 5px;margin-bottom: 30px;display: block;background-color: #fcf8e3}
    .total div p em {display: block; font-size: 40px; line-height: 80px; font-weight: 400; } 
    .total div p span {display: block; font-size: 14px; } 
  </style>

</head>
<body>
<jsp:include page="top.jsp" flush="true"></jsp:include>

<script type="text/javascript">
var arrHead = new Array();
arrHead = ['', 'begin_at', 'Game Type', 'Team 1', 'Team 2', 'Winner', 'News'];
function createTable() {
    var empTable = document.createElement('table');
    empTable.setAttribute('id', 'scores');  // table id.
    empTable.setAttribute('class', 'table table-hover');
    var tr = empTable.insertRow(-1);
    for (var h = 0; h < arrHead.length; h++) {
        var th = document.createElement('th'); // the header object.
        th.innerHTML = arrHead[h];
        tr.appendChild(th);
    }
    var div = document.getElementById('cont');
    
    div.appendChild(empTable);    // add table to a container.
}
function getResponse()
{
	console.log("hi");
    $.ajax({
    type: 'GET',
    url: 'https://api.pandascore.co/matches/past?page[size]=100&token=YBLFWCylx7KqDIfwhOAvaSN7g_PLkUb9ZvrQmqVI4xT1NlILrZA',
    data: {},
    dataType: 'json',    
    success: function(data) 
    { 
    	for (var i = 0; i < data.length; i++){
        	addRow(data[i]);
    		console.log(data[i]);
    	}
    	
        //console.log(data[0].begin_at); 
        
    },
    error: function() { alert('something bad happened'); }
    });
}    
getResponse();
// function to add new row.
function addRow(data) {
    var empTab = document.getElementById('scores');
    var rowCnt = empTab.rows.length;    // get the number of rows.
    var tr = empTab.insertRow(rowCnt); // table row.
    tr = empTab.insertRow(rowCnt);
    for (var c = 0; c < arrHead.length; c++) {
        var td = document.createElement('td');          // TABLE DEFINITION.
        td = tr.insertCell(c);
        if (c == 0) {   // if its the first column of the table.
        
        }
        else if (c == 1){
            var ele = document.createElement('input');
            ele.setAttribute('type', 'text');
            if (data.original_scheduled_at == null) {
            	ele.setAttribute('value', data.modified_at.slice(0,10));
                }
            else {
            	ele.setAttribute('value', data.original_scheduled_at.slice(0,10));
            }
            td.appendChild(ele);
        }
        else if (c == 2){
            var ele = document.createElement('input');
            ele.setAttribute('type', 'text');
            ele.setAttribute('value', data.videogame.name);
            td.appendChild(ele);
        }
        else if (c == 3){
            var ele = document.createElement('input');
            ele.setAttribute('type', 'text');
            if (data.opponents[0].opponent.acronym == null) {
            	ele.setAttribute('value', "unknown");
                }
            else {
            	ele.setAttribute('value', data.opponents[0].opponent.acronym);
        	}	
            td.appendChild(ele);
        }
        else if (c == 4){
            var ele = document.createElement('input');
            ele.setAttribute('type', 'text');
            if (data.opponents[1].opponent.acronym == null) {
            	ele.setAttribute('value', "unknown");
                }
            else {
            	ele.setAttribute('value', data.opponents[1].opponent.acronym);
        	}	
            td.appendChild(ele);
        }
        else if (c == 5){
            var ele = document.createElement('input');
            ele.setAttribute('type', 'text');
            if (data.winner == null) {
            	ele.setAttribute('value', "unknown");
                }
            else {
            	ele.setAttribute('value', data.winner.acronym);	
        	}
            td.appendChild(ele);
        }
        else if (c == 6){
            var ele = document.createElement('input');
            ele.setAttribute('type', 'text');
            ele.setAttribute('value', data.name);
            td.appendChild(ele);
        }
    }
}
	 
  
</script>

<!-- 主体 -->
<div class="container">
<div class="login_top">
          <h4 class="score_title">SCORES</h4>
</div>

 <body onload="createTable()">

    <div id="cont"></div>   <!--the container to add the table.-->
</body>
</div>

<!-- /主体 -->

<jsp:include page="bottom.jsp" flush="true"></jsp:include>
</body>
</html> 