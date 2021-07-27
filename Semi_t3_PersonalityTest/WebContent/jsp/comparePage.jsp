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
<style> *{
font-family: 'Jua', sans-serif;
font-size: 15pt;
} </style>

<script type="text/javascript" src="js/validCheck.js"></script>
<script type="text/javascript">
	function check() {
		let nameInput = document.myForm.name;

		if (isEmpty(nameInput)) {
			alert('닉네임을 입력해주세요');
			nameInput.value = "";
			nameInput.focus();
			return false;
		}
		
		if (containKR(nameInput)){
			alert('알파벳이나 숫자만 입력해주세요');
			nameInput.value = "";
			nameInput.focus();
			return false;
		}
	}
	
	function checkF() {
		let nameInput = document.myForm2.name;

		if (isEmpty(nameInput)) {
			alert('친구의 닉네임을 입력해주세요');
			nameInput.value = "";
			nameInput.focus();
			return false;
		}
	}
	
</script>
<link rel="stylesheet" href="css/result.css">
</head>
<body>
<table>
<c:if test="${whetherDuplicated == 2 }">
	<form action="CompareController" method="post" name="myForm" onsubmit="return check();">
		<table id="rTbl">
		<tr>
			<td class="rt" colspan=3>결과를 친구와 비교해보고 싶다면 <br> 닉네임을 등록하세요!</td>
		</tr>
		<tr>
			<td class="r1">내 닉네임</td> </tr>
			<tr> <td>
			<input  class="r3" name="name" placeholder="10글자 이내 알파벳 및 숫자 입력" maxlength="10">
			<input name="mbti" value="${mbtiResult }" type="hidden">
			</td> </tr>
			<tr>
			<td><button class="rbtn">중복확인</button></td>
		</tr> 
	</form>
</c:if>
</table>

<table>
<c:if test="${whetherDuplicated == 1 }">
<form action="CompareController" method="post" name="myForm" onsubmit="return check();">
		<table id="rTbl">
		<tr>
			<td class="rt" colspan=3>중복된 닉네임입니다! 다시 등록해주세요!</td>
		</tr>
		<tr>
			<td class="r1">내 닉네임</td> </tr>
			<tr><td>
			<input name="name" placeholder="10글자 이내 알파벳 및 숫자 입력" maxlength="10">
			<input name="mbti" value="${mbtiResult }" type="hidden">
			</td> </tr>
			<tr> <td><button class="rbtn">중복확인</button></td>
		</tr>
	</form>
</c:if>
	</table>

<table>
<c:if test="${whetherDuplicated == 0 }">
<form action="CompareRegController" method="post" name="myForm2" onsubmit="return checkF();">
		<table id="rTbl">
		<tr>
			<td class="rt" colspan=3>닉네임을 등록했습니다. <br> 친구의 이름을 입력해주세요.</td>
		</tr>
		<tr>
			<td class="r1">내 닉네임</td> </tr>
			<td class="r2" colspan=2>${name }
			<input name="myName" value="${name }" type="hidden">
			<input name="myMbti" value="${mbtiResult }" type="hidden">
			</td>
		
		<tr>
			<td  class="r1">친구 닉네임</td>
			<tr> <td>
			<input class="r3" name="name">
			</td> </tr>
			<tr> <td><button class="rbtn">결과보기</button></td>
		</tr>
		
	</form>
</c:if>
</table>

<c:if test="${whetherDuplicated == 3 }">
<form action="CompareRegController" method="post" name="myForm2" onsubmit="return checkF();">
		<table id="rTbl">
		<tr>
			<td class="rt" colspan=3>존재하지 않는 닉네임입니다. <br> 친구의 이름을 다시 입력해주세요.</td>
		</tr>
		<tr>
			<td class="r1">내 닉네임</td>
			<tr> <td class="r2" colspan=2>${myName }
			<input name="myName" value="${myName }" type="hidden">
			<input name="myMbti" value="${myMbti }" type="hidden">
			</td>
		</tr>
		<tr>
			<td class="r1"> 친구 닉네임</td> </tr>
		<tr>	<td>
			<input class="r3" name="name">
			</td> </tr> <tr>
			<td><button class="rbtn">결과보기</button></td>
		</tr>
	</form>
</c:if>

	</table>
	<table id="resultB"> <tr>
	<div style="text-align: center;">
	<button class="rbtn2" onclick="location.href='HC'">처음으로</button> </div></tr>
	
	</table>
	
	
</body>
</html>