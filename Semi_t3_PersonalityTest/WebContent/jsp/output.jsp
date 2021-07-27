<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/output.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="js/jQuery.js"></script>
<script>
$(function() {
	$("#myForm").hide();
	 	
setTimeout(function() {
	
	$("#myForm").show();
	
	$("#loading").hide();
	
	
},1000);

});
</script>
<style type="text/css">
#loading{
margin-top: 300px;
}
</style>
</head>

<body id="body2">
 <center>
 <div id="loading">
        <img src="img/loading.gif">    
    </div>
    <script type="text/javascript">
function (){
   
    $("#loading").css("visibility","hidden");
   
}

</script>
 </center> 
<style> *{
font-family: 'Jua', sans-serif;
font-size: 27pt;
}


 </style>


	<form action="TestController" method="post" id="myForm">

		<table id="resultTbl">

			<tr class="resultT">
				<td class="RT1"><h1>나랑 비슷한 캐릭터는 ?!</h1></td> 
			</tr> 

				<tr>
		<td><jsp:include page="${contentPage }"></jsp:include></td>					
				</tr>
				</table>
		</form>

					
</body>
</html>