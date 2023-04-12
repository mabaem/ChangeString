<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>문자열 치환기</title>

<!-- css -->
<link href="css/result.css" rel="stylesheet" type="text/css">

</head>

<%
request.setCharacterEncoding("utf-8");
String resultText = request.getParameter("beforeText");
%>

<body>
	<div class="wrapper">
		<h3>문자열 결과</h3>
		<form name="mainForm" onsubmit="return false;">
			<textarea name="resultText" id="resultText" rows="" cols=""><%=resultText%></textarea>
			<br>
			<button id="btnCopyText">텍스트복사</button>
			<button onclick="location.href='index.jsp'" id="btnReturnToIndex">돌아가기</button>
		</form>
	</div>
	<script type="text/javascript">
		/* 텍스트복사버튼 클릭시 클립보드에 저장 */
		window.onload = function () {
			document.getElementById('btnCopyText').onclick = function () {
				var f = document.mainForm;
				var content = f.resultText.innerHTML;
	
			    navigator.clipboard.writeText(content).then(() => {
			    	console.log("클립보드에 복사되었습니다.");
			    }).catch((err) => {
			    	console.log('문제가 발생하였습니다.',err);
			    });		    
			}
		}
	</script>
</body>
</html>