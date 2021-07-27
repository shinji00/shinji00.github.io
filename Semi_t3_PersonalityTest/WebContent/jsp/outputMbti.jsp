<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/output.css">
</head>
<body>
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
	
	<table>
		<c:choose>
				<c:when test="${r2.getMBTIResult().equals('ISTJ') }">
			<table id="MbtiTbl">
		<tr> <td class="RT3">
					어그레츠코 </td></tr> 
				<tr><td><img src="img/ag2.png" width="300px"></td> </tr>
				<tr> <td class="RT5"> 캐러리맨상사 주식회사 경리부에서 일하는 레서판다. <br>
늘 동경하던 상사의 직원이 되었지만, 현실은 무리한 일을 강요하는 상사와 <br> 제멋대로인 동료에게 휘둘리고 있어요. 
일일이 말대꾸 하지는 않지만, 화가 쌓이면 <br>참지 못하고 혼자 노래방에서 데스메탈을 부르며 스트레스를 해소합니다.
 </td> </tr>
 </table>
 
 <table id="charac">
 <tr>
 <td>
 📌 시간약속에 철저하고 어기는 사람은 딱 질색! <br>
 📌 내 얘기도 잘 안하고 남 얘기에도 관심 NO! <br> 
 📌 즉흥보단 계획을 세우는 편<br> 
 📌 한번 시작하면 뭐든 끝을 봐야 하는 성격 <br> 
 </td>
 </tr> 
 </table>
					
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td id="RImg"><img src="img/pochaco.jpg" width="200px" height="200px"><p> 포차코</td>
					<td id="RImg"><img src="img/donn.jpg" width="200px" height="200px"><p> 한교동</td>
				</tr>
			</table>
				  </c:when>
				  
				  
						<c:when test="${r2.getMBTIResult().equals('ISFJ') }">
			<table  id="MbtiTbl">
		<tr> <td class="RT3">
					마이멜로디 </td></tr> 
				<tr>	<td><img src="img/melody.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 마이멜로디는 밝고 명랑하며 남동생을 아끼는 여자아이예요. <br> 마이멜로디의 보물은 할머니가 만들어준 귀여운 두건이랍니다. 
				<br> 좋아하는 음식은 아몬드파운드 케이크고, 엄마와 함께 쿠키 굽는 것을 좋아해요.</td> </tr>
					</table>

<table id="charac">
 <tr>
 <td>
 📌 다른 사람의 감정을 잘 캐치하고 공감능력 GOOD! <br>
 📌 대화할 때 주로 듣는 입장! <br> 
 📌 부탁받으면 거절을 못 하는 편 <br>
 📌 계획은 필수, 계획대로 진행되어야 마음이 편함 <br> 
 </td>
 </tr> 
 </table>
 
 
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/keropi.jpg" width="200px" height="200px"><p> 케로케로케로피</td>
					<td><img src="img/kudetama.png" width="200px" height="200px"><p> 구데타마</td>
				</tr>
			</table>
				  </c:when>
			
						<c:when test="${r2.getMBTIResult().equals('INFJ') }">
			<table  id="MbtiTbl">
		<tr> <td class="RT3">
					딸기왕국의 임금님 </td></tr> 
				<tr>	<td><img src="img/ichigo.png" width="300px"></td> </tr>
				<tr> <td class="RT5"> 누구에게나 친절하고 상냥한 성격이에요.
				<br> 항상 평화나 우정을 생각하고 친하게 지내길 바라며 <br> 모두에게 메세지를 보내고 있어요 </td> </tr>
					</table>

<table id="charac">
 <tr>
 <td>
 📌 겉은 냉소적이지만, 속은 반대인 인간 겉바속촉! <br>
 📌 신중하고 완벽주의적이며 상상력이 풍부한 편 <br> 
 📌 상대방의 감정을 단번에 파악함 <br>
 📌 절친이나 가족에게도 예외 없이 선이 존재함 <br> 
 </td>
 </tr> 
 </table>
 
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/pom.jpg" width="200px" height="200px"><p> 폼폼푸린</td>
					<td><img src="img/ag.jpg" width="200px" height="200px"><p> 어그레츠코</td>
				</tr>
			</table>
				  </c:when>
			
						<c:when test="${r2.getMBTIResult().equals('INTJ') }">
			<table  id="MbtiTbl">
	<tr> <td class="RT3">
					구데타마 </td></tr> 
				<tr>	<td><img src="img/kudetama.png" width="300px"></td> </tr>
				<tr> <td class="RT5"> 삶아도 좋아, 구워도 좋아, 그대로도 좋아! <br>
				여러 가지 요리 방법이 있지만 구데타마는 뒹굴뒹굴 의욕 없는 달걀이랍니다.
				<br> 지금 먹으려고 하는 그 달걀도 사실은 뒹굴뒹굴하고 있을지도..!? </td> </tr>
					</table>

<table id="charac">
 <tr>
 <td>
 📌 목표달성에 큰 행복감을 느끼는 목표 지향적인 성격! <br> 
 📌 관심 분야 외에는 무신경! <br>
 📌 공감에 약해서 고민 상담을 잘 못 들어줌 <br> 
 📌 독립적인 성향이 강하고 감정에 휘둘리는 거 싫어! <br>
 </td>
 </tr> 
 </table>


			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/pekuru.jpg" width="200px" height="200px"><p> 아히루노페클</td>
					<td><img src="img/melody.jpg" width="200px" height="200px"><p> 마이멜로디</td>
				</tr>
			</table>
				  </c:when>
			
						<c:when test="${r2.getMBTIResult().equals('ISTP') }">
			<table  id="MbtiTbl">
			<tr> <td class="RT3">
					파닥파닥 페피 </td></tr>
				<tr>	<td><img src="img/penn.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 탐험을 좋아하는 말괄량이 부엉이 남자아이에요.
				<br>체리, 나무열매, 낮잠을 정말 좋아한답니다.
 </td> </tr>
					 </table>
					 
<table id="charac">
 <tr>
 <td>
 📌 자기주장이 강하며 호불호가 확실한 마이웨이! <br> 
 📌 틀에 박힌 계획은 질색, 융통성을 중요시 하는 타입 <br>
 📌 쓸데없는 말, 마음에도 없는 소리 하는 거 싫어함 <br> 
 📌 무미건조해 보이지만 친해지면 말도 장난도 많이 함  <br>
 </td>
 </tr> 
 </table>

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/donn.jpg" width="200px" height="200px"><p> 한교동</td>
					<td><img src="img/dani.jpg" width="200px" height="200px"><p> 디어다니엘</td>
				</tr>
			</table>
				  </c:when>
			
						<c:when test="${r2.getMBTIResult().equals('ISFP') }">
			<table id="MbtiTbl">
				<tr> <td class="RT3">
					위시미멜 </td></tr> 
				<tr>	<td><img src="img/mimeru.png" width="300px"></td> </tr>
					<tr> <td class="RT5"> 즐겁게 현재를 살아가는 위시마멜
					<br> 2010년 프랑스에서 건너 온 토끼여자아이에요.
					<br> 가끔 세침떼기 같지만 솔직하고 상냥한 마음의 소유자예요.
					 </td> </tr>
					</table>
					
<table id="charac">
 <tr>
 <td>
 📌 마음이 순하고 따듯하며 정이 많음! <br>
 📌 결단력, 추진력이 약해서 선택하는 걸 어려워 함 <br> 
 📌 부탁에 거절을 잘 못하며 양보를 잘하는 편! <br>
 📌 남한테 민폐끼치는 거 용납 못 하는 편 <br> 
 </td>
 </tr> 
 </table>

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/hellokitty.jpg" width="200px" height="200px"><p> 헬로키티</td>
					<td><img src="img/kuromi.png" width="200px" height="200px"><p> 쿠로미 </td>
				</tr>
			</table>
				  </c:when>
			
						<c:when test="${r2.getMBTIResult().equals('INFP') }">
			<table id="MbtiTbl">
				<tr> <td class="RT3">
					디어다니엘 </td></tr> 
				<tr>	<td><img src="img/dani.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 낭만적인 로맨티스트
				<br> 헬로키티의 남자친구이며 어릴 때부터 함께한 소꿉친구예요. 
				<br> 작은 것에도 감동하는 천진난만하고 센티멘탈한 성격이에요.</td> </tr>
					</table>
					
<table id="charac">
 <tr>
 <td>
 📌 공감능력이 뛰어나고 배려심이 좋은 편! <br> 
 📌 내향적이지만 관심받고 싶어하는 경향이 있음 <br>
 📌 진입장벽이 높지만 넘은 사람에겐 모든 것을 오픈함! <br> 
 📌 잡생각이 많으며 의미부여를 많이 하는 편 <br>
 </td>
 </tr> 
 </table>

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/hellokitty.jpg" width="200px" height="200px"><p> 헬로키티</td>
					<td><img src="img/donn.jpg" width="200px" height="200px"><p> 한교동</td>
				</tr>
			</table>
				  </c:when>
				  
						<c:when test="${r2.getMBTIResult().equals('INTP') }">
			<table id="MbtiTbl">
				<tr> <td class="RT3">
					쿠로미 </td></tr> 
				<tr>	<td><img src="img/kuromi.png" width="300px"></td> </tr>
				<tr> <td class="RT5"> 자칭 마이멜로디의 라이벌인 쿠로미
				<br> 난폭하게 보일 때도 있지만 사실은 아주 여성스러운 타입이에요.
				<br> 검은색 두건과 핑크색 해골이 포인트랍니다. 
				<br> 취미는 일기 쓰기, 잘생긴 남자 애를 좋아하고 최근에는 연애 소설에 빠져있어요. 
				<br> 좋아하는 색은 검은색이고 좋아하는 음식은 락교예요. </td> </tr>
					</table>


<table id="charac">
 <tr>
 <td>
 📌 미룰 수 있을 때까지 미루며 게으른 천재일 확률 up! <br>
 📌 지식에 대한 욕망이 강하고 책 읽는 것을 좋아함  <br> 
 📌 타인에 관심이 없으며 상처도 잘 안 받는 편! <br> 
 📌 과묵하며 감정표현을 잘 하지 않는 편 <br>
 </td>
 </tr> 
 </table>
 
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/cinnamo.jpg" width="200px" height="200px"><p> 시나모롤</td>
					<td><img src="img/mimeru.png" width="200px" height="200px"><p> 위시미멜</td>
				</tr>
			</table>
				  </c:when>
						<c:when test="${r2.getMBTIResult().equals('ESTP') }">
			<table id="MbtiTbl">
		<tr> <td class="RT3">
					폼폼푸린 </td></tr> 
				<tr>	<td><img src="img/pom.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 진갈색의 베레모가 트레이드 마크인 골든 리트리버입니다.
				<br> 좋아하는 말은 외출, 싫어하는 말은 혼자 집 지키기이죠. 
				<br> 누구와도 잘 친해지며, 주인 누나의 집 현관에 있는 푸린용 바구니에 살고 있어요. 
				<br> 푸린의 꿈은 점점 더 커지는 것이라고 하네요.
 </td> </tr>
					</table>

<table id="charac">
 <tr>
 <td>
 📌 자신감이 항상 넘치고 활동적인 타입! <br>
 📌 무대의 중심에 서는 것과 관심을 즐기는 타입!  <br> 
 📌 성취욕이 강하고 다재다능한 타입! <br> 
 📌 자유분방하고 삶을 즐기면서 사는 타입! <br>
 </td>
 </tr> 
 </table>
 
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/ichigo.png" width="200px" height="200px"><p> 딸기왕국의 임금님</td>
					<td><img src="img/ag.jpg" width="200px" height="200px"><p> 어그레츠코</td>
				</tr>
			</table>
				  </c:when>
						<c:when test="${r2.getMBTIResult().equals('ESFP') }">
			<table id="MbtiTbl">
		<tr> <td class="RT3">
					아히루노페클 </td></tr> 
				<tr>	<td><img src="img/pekuru.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 사람을 좋아하고 상냥한 남자아이에요.
				<br> 헤엄치는 게 서투르고 노래하는 것과 춤추는 것이 너무 좋아서 
				<br> 피치가 박수를 치면 자신도 모르게 춤을 춰요. 꿈은 하늘을 나는 것!
 </td> </tr>
					</table>

<table id="charac">
 <tr>
 <td>
 📌 신나고 재미있는 성격!<br>
 📌 경험으로 직접 부딪히는 것을 추구하는 대담함!  <br> 
 📌 뛰어난 관찰력과 예술적 감각! <br> 
 📌 사람들과 시간을 보내고 즐기는 것에 가장 행복 <br>　　과 만족을 느끼는 타입! <br>
 </td>
 </tr> 
 </table>
 
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/kudetama.png" width="200px" height="200px"><p> 구데타마</td>
					<td><img src="img/melody.jpg" width="200px" height="200px"><p> 마이멜로디</td>
				</tr>
			</table>
				  </c:when>
						<c:when test="${r2.getMBTIResult().equals('ENFP') }">
			<table id="MbtiTbl">
		<tr> <td class="RT3">
					포차코 </td></tr> 
				<tr>	<td><img src="img/pochaco.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 호기심 많은 참견쟁이로 산책을 좋아하는 남자 강아지예요.
				<br> '둥실둥실 마을'의 변두리에 있는 꾀꼬리 마을에서 태어났어요. 
				<br>좋아하는 꽃은 연화초이며 주변에 친구들도 많은 아이예요.</td> </tr>
					</table>
					
					
					<table id="charac">
 <tr>
 <td>
 📌 사람을 기쁘게 해주는 타고난 능력의 소유자! <br>
 📌 에너지가 넘치고 열정적인 편<br>
 📌 정이 많고 감수성이 풍부한 편 <br> 
 📌 멋내고 꾸미는 것을 좋아함 <br>
 </td>
 </tr> 
 </table>

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/ag.jpg" width="200px" height="200px"><p> 어그레츠코</td>
					<td><img src="img/ichigo.png" width="200px" height="200px"><p> 딸기왕국의 임금님</td>
				</tr>
			</table>
				  </c:when>
				  
				<c:when test="${r2.getMBTIResult().equals('ENTP') }">
			<table id="MbtiTbl">
		<tr> <td class="RT3">
					케로케로케로피 </td> </tr>
				<tr>	<td><img src="img/keropi.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 모험을 좋아하며 활기찬 성격에 도너츠 연못 연꽃 마을의 인기인입니다!
				<br> 노래를 잘 부르며, 개구리 수영은 잘 못하지만, 크롤 수영은 특기랍니다. 
				<br> 케로피, 고로피, 피키 삼남매로 케로피의 사이좋은 가족은 모두 다섯 식구예요. 
				 </td> </tr>
					 </table>
			
			
<table id="charac">
 <tr>
 <td>
 📌 무엇을 해도 평균 이상은 하는 다재다능 팔방미인 <br>
 📌 자존감이 높고 자신에 대한 확신이 강함 <br> 
 📌 재치있고 카리스마 있으며 주변 사람들을 이끄는 타입 <br> 
 📌 머리 회전이 빠르고 직관력이 뛰어난 타입 <br>
 </td>
 </tr> 
 </table>

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/melody.jpg" width="200px" height="200px"> <p> 마이멜로디</td>
					<td><img src="img/kudetama.png" width="200px" height="200px"> <p> 구데타마</td>
				</tr>
			</table>
			
				  </c:when>
				<c:when test="${r2.getMBTIResult().equals('ESTJ') }">
			<table  id="MbtiTbl">
		<tr> <td class="RT3">
					헬로키티 </td></tr> 
				<tr>	<td><img src="img/hellokitty.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 사과 5개를 쌓은 높이의 키와, 사과 3개 정도의 몸무게가 나가는 
				<br> 헬로키티는 밝고 상냥한 여자아이예요. 쿠키를 만들고 피아노 치는 것을 
				<br> 가장 좋아하며, 피아니스트와 시인이 되는 것이 꿈이에요.
				<br> 특기는 음악과 영어. 좋아하는 음식은 엄마가 만들어준 애플 파이. 
				<br> 쌍둥이 동생 미미와 가장 친하답니다.
 </td> </tr>
					</table>
					
					
								
<table id="charac">
 <tr>
 <td>
 📌 자기관리에 철저하고 목표 지향적인 성격! <br>
 📌 지루하고 어려워도 끝까지 해내는 끈기가 대단함 <br> 
 📌 타고난 관리자로 조직을 잘 이끌어 나가는 리더 타입 <br> 
 📌 책임감이 강하기 때문에 일에 있어서는 신뢰가 높음 <br>
 </td>
 </tr> 
 </table>

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/dani.jpg" width="200px" height="200px"><p> 디어다니엘</td>
					<td><img src="img/donn.jpg" width="200px" height="200px"><p> 한교동</td>
				</tr>
			</table>
				  </c:when>
				  
				<c:when test="${r2.getMBTIResult().equals('ESFJ') }">
			<table  id="MbtiTbl">
		<tr> <td class="RT3">
					시나모롤 </td></tr> 
				<tr>	<td><img src="img/cinnamo.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 시나모롤은 먼 하늘 구름 위에서 태어난 강아지예요.
				<br> '카페 시나몬'을 대표하는 간판 강아지로 활약 중이지요! 
				<br> 특기는 큰 귀를 파닥파닥 해서 하늘을 나는 일! 
				<br> 얌전하지만 붙임성이 좋아 손님들의 무릎 위에서 자버리기도 한답니다.
 </td> </tr>
					</table>
					
					<table id="charac">
 <tr>
 <td>
 📌 공감능력이 좋고 눈치가 굉장히 빠름! <br>
 📌 예의가 바르고 친절하고 적응력이 좋은 편 <br> 
 📌 좋아하는 사람들에게 애정을 쏟으며 잘 챙기는 편 <br> 
 📌 기질이 너무 다르지 않다면 싫어하는 사람들과도 
 <br> 　　티내지 않고 잘 지낼 수 있음! <br>
 </td>
 </tr> 
 </table>
					

			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/kuromi.png" width="200px" height="200px"><p> 쿠로미</td>
					<td><img src="img/bad.jpeg" width="200px" height="200px"><p> 배드바츠마루</td>
				</tr>
			</table>
				  </c:when>
				  
				<c:when test="${r2.getMBTIResult().equals('ENFJ') }">
			<table  id="MbtiTbl">
		<tr> <td class="RT3">
					한교동 </td></tr> 
				<tr>	<td><img src="img/donn.jpg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 중국에서 태어난 반어인. 
				<br> 사람을 웃게 만드는 것이 특기. 하지만 사실은 외로움을 잘 느끼는 로맨티스트. 
				<br> 항상 히어로가 되고 싶어하지만 왜인지 잘 되지 않아요. 
				<br> 좋아하는 것은 새우전병과 찌개요리, 온천. 문어 사유리와는 단짝친구.
 </td> </tr>
					</table>


<table id="charac">
 <tr>
 <td>
 📌 사교성이 풍부하고 동정심이 많은 인간 리트리버! <br>
 📌 자신이 좋아하는 사람들에게 한없이 베푸는 스타일 <br>
 📌 비판적인 시각보다는 긍정적인 시각을 갖고 있음 <br> 
 📌 타인의 생각에 진지한 관심을 가지고 비판에 약함  <br> 
 </td>
 </tr> 
 </table>
			
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/penn.jpg" width="200px" height="200px"><p> 파닥파닥 페피</td>
					<td><img src="img/hellokitty.jpg" width="200px" height="200px"><p> 헬로키티</td>
				</tr>
			</table>
				  </c:when>
				  
				<c:when test="${r2.getMBTIResult().equals('ENTJ') }">
			<table id="MbtiTbl">
		<tr> <td class="RT3">
					배드바츠마루 </td></tr>
				<tr>	<td><img src="img/bad.jpeg" width="300px"></td> </tr>
				<tr> <td class="RT5"> 장난을 좋아하는 심술꾸러기 펭귄 남자아이에요.
				<br> 좋아하는 음식은 긴자의 고급 스시와 라멘이며
				<br> 바츠마루의 꿈은 사장이 되는 거예요. 
				<br> 심술이 가득해 보이지만, 사실은 주위를 잘 챙기는 좋은 친구랍니다.

 </td> </tr>
					 </table>

<table id="charac">
 <tr>
 <td>
 📌 자존감이 높은 타입!  <br> 
 📌 솔직하고 결단력, 통솔력이 있으며 추진력이 좋음! <br>
 📌 실패를 두려워하지 않고 노력하여 목표을 이루어 냄 <br> 
 📌 반복되는 일을 싫어하고 변화가 있는 생활을 선호함 <br>
 </td>
 </tr> 
 </table>
 
			<table id="resultTbl2">
				<tr>
					<td id="RT4"><h3>💗 찰떡궁합</h3></td>
					<td id="RT4"><h3>💔 파국 </h3></td>
				</tr>
				<tr>
					<td><img src="img/mimeru.png" width="200px" height="200px"><p> 위시미멜</td>
					<td><img src="img/cinnamo.jpg" width="200px" height="200px"><p> 시나모롤</td>
				</tr>
			</table>
				  </c:when>
				  
				</c:choose>
		</table>
		<table id="resultB">
						<tr>
							<td>
								<form action="TestController" method="post">
									<input name="n" value=0 type="hidden"> <input name="a"
										value=0 type="hidden"> <input name="b" value=0
										type="hidden"> <input name="c" value=0 type="hidden">
									<input name="d" value=0 type="hidden"> <input name="e"
										value=0 type="hidden"> <input name="f" value=0
										type="hidden"> <input name="g" value=0 type="hidden">
									<input name="h" value=0 type="hidden">
								<button class="btn" onclick="location.href='HC'">처음부터 다시하기</button>
								</form>
							</td>
							<td>
								<button class="btn" type="button" onclick="urlClipCopy();" id="share" >결과 공유하기</button>
							</td>
							<td>
					<form action="CompareController">
					<button class="btn" name="mbtiResult" value="${r2.getMBTIResult()}">친구와 비교하기</button>
								</form>
							</td>
							
					</table>

</body>
</html>