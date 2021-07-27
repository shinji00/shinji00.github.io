<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산리오 성격테스트</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="js/jQuery.js"></script>
<script>
$(function() {
	$("#myForm").hide();
	 	
setTimeout(function() {
	
	$("#myForm").show();
	
	$("#loading").hide();
	
	
},3000);

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
        <img src="img/loading3.gif">    
    </div>
    <script type="text/javascript">
function (){
   
    $("#loading").css("visibility","hidden");
   
}

</script>
 </center> 
<style> *{
font-family: 'Jua', sans-serif;
font-size: 15pt;
} </style>
<script type="text/javascript">
function copy(val){
	const t = document.createElement("textarea");
	document.body.appendChild(t);
	t.value = val;
	t.select();
	document.execCommand('copy');
	document.body.removeChild(t);
}

function urlClipCopy(){
	var url = window.document.location.href;
	copy(url);
	alert("클립보드에 URL이 복사되었습니다");
}
</script>
<link rel="stylesheet" href="css/result.css">
</head>
<body>
<form id="myForm">
<table id="rTbl">

<tr><td class="r2" colspan="2">
 ${myName }님과 ${name }님의 궁합은 ... ! </td> </tr>
 
<tr> 
<td class="i">나</td>
<td class="i">친구</td>
<tr>
<td class="i">
	<c:choose>
		<c:when test="${myMbti.equals('ISTJ')}"><img src="img/ag2.png" width="200px" height="200px"><p> 어그레츠코</c:when>
		<c:when test="${myMbti.equals('ISFJ')}"><img src="img/melody.png" width="200px" height="200px"><p> 마이멜로디</c:when>
		<c:when test="${myMbti.equals('INFJ')}"><img src="img/ichigo.png" width="200px" height="200px"><p> 딸기왕국의 임금님</c:when>
		<c:when test="${myMbti.equals('INTJ')}"><img src="img/kudetama.png" width="200px" height="200px"><p> 구데타마</c:when>
		<c:when test="${myMbti.equals('ISTP')}"><img src="img/penn.jpg" width="200px" height="200px"><p> 파닥파닥 페피</c:when>
		<c:when test="${myMbti.equals('ISFP')}"><img src="img/mimeru.png" width="200px" height="200px"><p> 위시미멜</c:when>
		<c:when test="${myMbti.equals('INFP')}"><img src="img/dani.jpg" width="200px" height="200px"><p> 디어다니엘</c:when>
		<c:when test="${myMbti.equals('INTP')}"><img src="img/kuromi.png" width="200px" height="200px"><p> 쿠로미</c:when>
		<c:when test="${myMbti.equals('ESTP')}"><img src="img/pom.jpg" width="200px" height="200px"><p> 폼폼푸린</c:when>
		<c:when test="${myMbti.equals('ESFP')}"><img src="img/pekuru.jpg" width="200px" height="200px"><p> 아히루노페클</c:when>
		<c:when test="${myMbti.equals('ENFP')}"><img src="img/pochaco.jpg" width="200px" height="200px"><p> 포챠코</c:when>
		<c:when test="${myMbti.equals('ENTP')}"><img src="img/keropi.jpg" width="200px" height="200px"><p> 케로케로케로피</c:when>
		<c:when test="${myMbti.equals('ESTJ')}"><img src="img/hellokitty.jpg" width="200px" height="200px"><p> 헬로키티</c:when>
		<c:when test="${myMbti.equals('ESFJ')}"><img src="img/cinnamo.jpg" width="200px" height="200px"><p> 시나모롤</c:when>
		<c:when test="${myMbti.equals('ENFJ')}"><img src="img/donn.jpg" width="200px" height="200px"><p> 한교동</c:when>
		<c:when test="${myMbti.equals('ENTJ')}"><img src="img/bad.jpeg" width="200px" height="200px"><p> 배드바츠마루</c:when>
	</c:choose>
</td>
<td class="i">
	<c:choose>
		<c:when test="${fMbti.equals('ISTJ')}"><img src="img/ag2.png" width="200px" height="200px"><p> 어그레츠코</c:when>
		<c:when test="${fMbti.equals('ISFJ')}"><img src="img/melody.png" width="200px" height="200px"><p> 마이멜로디</c:when>
		<c:when test="${fMbti.equals('INFJ')}"><img src="img/ichigo.png" width="200px" height="200px"><p> 딸기왕국의 임금님</c:when>
		<c:when test="${fMbti.equals('INTJ')}"><img src="img/kudetama.png" width="200px" height="200px"><p> 구데타마</c:when>
		<c:when test="${fMbti.equals('ISTP')}"><img src="img/penn.jpg" width="200px" height="200px"><p> 파닥파닥 페피</c:when>
		<c:when test="${fMbti.equals('ISFP')}"><img src="img/mimeru.png" width="200px" height="200px"><p> 위시미멜</c:when>
		<c:when test="${fMbti.equals('INFP')}"><img src="img/dani.jpg" width="200px" height="200px"><p> 디어다니엘</c:when>
		<c:when test="${fMbti.equals('INTP')}"><img src="img/kuromi.png" width="200px" height="200px"><p> 쿠로미</c:when>
		<c:when test="${fMbti.equals('ESTP')}"><img src="img/pom.jpg" width="200px" height="200px"><p> 폼폼푸린</c:when>
		<c:when test="${fMbti.equals('ESFP')}"><img src="img/pekuru.jpg" width="200px" height="200px"><p> 아히루노페클</c:when>
		<c:when test="${fMbti.equals('ENFP')}"><img src="img/pochaco.jpg" width="200px" height="200px"><p> 포챠코</c:when>
		<c:when test="${fMbti.equals('ENTP')}"><img src="img/keropi.jpg" width="200px" height="200px"><p> 케로케로케로피</c:when>
		<c:when test="${fMbti.equals('ESTJ')}"><img src="img/hellokitty.jpg" width="200px" height="200px"><p> 헬로키티</c:when>
		<c:when test="${fMbti.equals('ESFJ')}"><img src="img/cinnamo.jpg" width="200px" height="200px"><p> 시나모롤</c:when>
		<c:when test="${fMbti.equals('ENFJ')}"><img src="img/donn.jpg" width="200px" height="200px"><p> 한교동</c:when>
		<c:when test="${fMbti.equals('ENTJ')}"><img src="img/bad.jpeg" width="200px" height="200px"><p> 배드바츠마루</c:when>
	</c:choose>
</td>
</tr>


<!-- 확인용으로 표시해둔것!!! 완전히 완성되면 지울것!!!-->
<!-- 내 이름: ${myName}<br>
내 mbti: ${myMbti}<br>
친구 이름: ${name}<br>
친구 mbti: ${fMbti}<br> -->
<!-- 확인용으로 표시해둔것!!! -->


 <tr> <td class="g" colspan="2">
 <c:choose>
 <c:when test="${myMbti.equals('ENTJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ISFP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('INFP') || fMbti.equals('ESFP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ENTJ') || fMbti.equals('ESFJ')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ISFJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ENTP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ISFJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ISTJ') || fMbti.equals('ENTP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESTJ') || fMbti.equals('ESFP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ISFP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('INTJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ESFP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ESTP') || fMbti.equals('ISFP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESTJ') || fMbti.equals('ISFJ')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('ESFJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('INTP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ESFJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ENFJ') || fMbti.equals('ISFJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESTP') || fMbti.equals('ISFP')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('ESFP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ESTJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('INFP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ISFP') || fMbti.equals('INTP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESTP') || fMbti.equals('ENFJ')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('INFJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ESFJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('INTP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ISTP') || fMbti.equals('ENTP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESFP') || fMbti.equals('ENTJ')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('INTJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ISTJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ENFP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ENTP') || fMbti.equals('ISFP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ENTJ') || fMbti.equals('INFJ')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('ENFJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ISFJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ENTP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ENFP') || fMbti.equals('INTP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ISFP') || fMbti.equals('INTJ')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('ENTJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ENFJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ISTP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('INTP') || fMbti.equals('ESTP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ISFJ') || fMbti.equals('ESTJ')}"> 최악은 면했지만... 좋은 것도 아닌... </c:when>
		<c:when test="${fMbti.equals('ISTJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ENFP')}">
	<c:choose>
		<c:when test="${fMbti.equals('ISTJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ISFJ') || fMbti.equals('ESFJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESFP') || fMbti.equals('ESTP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ISTP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('INFJ')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ESTP')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ESFP') || fMbti.equals('ISTP')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('INFP') || fMbti.equals('ISTJ')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ESTJ')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('INFP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ESTJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ENTJ') || fMbti.equals('INTJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('INFJ') || fMbti.equals('ISTP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ESTP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ESTP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('INFJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('INTJ') || fMbti.equals('ENFJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ESTJ') || fMbti.equals('ENFP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('INFP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ESFP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('INTJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('INFJ') || fMbti.equals('ENTJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ENFP') || fMbti.equals('ENTP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('INTP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ISTP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ENFJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ESFJ') || fMbti.equals('INFJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ISFP') || fMbti.equals('INFP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ENFP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
 <c:when test="${myMbti.equals('ISFP')}">
 	<c:choose>
		<c:when test="${fMbti.equals('ENTJ')}"> 100%! 니 맘이 내 맘! 천생연분이야 </c:when>
		<c:when test="${fMbti.equals('ESTJ') || fMbti.equals('INTJ')}"> 더 좋은 관계로 발전할 수 있겠어! </c:when>
		<c:when test="${fMbti.equals('ISFJ') || fMbti.equals('INTP')}"> 최악은 면했지만.. 좋은 것도 아닌.. </c:when>
		<c:when test="${fMbti.equals('ENTP')}"> 0%.......다시 생각해 보자.. </c:when>
		<c:otherwise> 음 ... 그냥 무난하네~ </c:otherwise>
	</c:choose>
</c:when> 
</c:choose>
</td> </tr>



<tr><td colspan="2">
 <form>
 <button class="rbtn" type="button" onclick="urlClipCopy();" id="share">친구에게 공유하기</button>
</form> </td></tr>
</table>
<table id="resultB">
	<tr><div style="text-align: center;">
	<button class="rbtn2" type="button" onclick="location.href='HC'">처음으로</button> </div></tr>
	</table>
</form>

</body>
</html>