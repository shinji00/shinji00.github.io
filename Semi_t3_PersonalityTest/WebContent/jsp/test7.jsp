<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트7</title>
<link rel="stylesheet" href="css/test.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<style>
* {
font-family: 'Jua', sans-serif;
color: #ff5893;
font-size: 25pt;
}
</style>
</head>
<body>
<center>
<c:forEach var="i" begin="1" end="${param.n+1}">
<img src="img/pr.png" width="48px">
</c:forEach>
<c:forEach var="i" begin="1" end="${11-param.n}">
<img src="img/next.png" width="48px">
</c:forEach>

<br>
<font style="font-size: 40pt">Q${param.n+1}. 친구가 시험에 떨어졌다. 뭐라고 해주지? <p></font>

<img src="img/7.png">
<br>
<form action="TestController" method="post">
<input name="n" value=${param.n+1} type="hidden">
<input name="a" value=${r.getE()} type="hidden">
<input name="b" value=${r.getI()} type="hidden">
<input name="c" value=${r.getN()} type="hidden">
<input name="d" value=${r.getS()} type="hidden">
<input name="e" value=${r.getT()+1} type="hidden">
<input name="f" value=${r.getF()} type="hidden">
<input name="g" value=${r.getJ()} type="hidden">
<input name="h" value=${r.getP()} type="hidden"><br>
<button>무슨 시험인데? 몇 점이었는데?</button><p>
</form>

<form action="TestController" method="post">
<input name="n" value=${param.n+1} type="hidden">
<input name="a" value=${r.getE()} type="hidden">
<input name="b" value=${r.getI()} type="hidden">
<input name="c" value=${r.getN()} type="hidden">
<input name="d" value=${r.getS()} type="hidden">
<input name="e" value=${r.getT()} type="hidden">
<input name="f" value=${r.getF()+1} type="hidden">
<input name="g" value=${r.getJ()} type="hidden">
<input name="h" value=${r.getP()} type="hidden">
<button>괜찮아, 수고했어. 다음엔 꼭 붙을 거야</button><p>
</form>
</center>
</body>
</html>