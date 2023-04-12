<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>문자열 치환기</title>

<!-- css -->
<link href="css/index.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div class="wrapper">
		<h3>문자열 치환기</h3>
		<form name="mainForm" method="post" action="/ChangeString/result.jsp"
			onsubmit="return false;">
			<textarea name="beforeText" id="beforeText" rows="" cols=""
				placeholder="문자열을 입력하세요."></textarea>
			<br>
			<button onclick="changeText()" id="btnChangeText">치환하기</button>
			<button onclick="cleanText()" id="btnCleanText">다시쓰기</button>
		</form>
	</div>
	<script type="text/javascript">
		/* 변환버튼 클릭시 공백 체크 후 form submit */
		function changeText() {
			var f = document.mainForm;
			var beforeText = f.beforeText;

			/* inputBox 내용이 비어있는 경우 focus */
			if (beforeText.value == "") {
				alert("치환할 문자열을 입력하세요.");
				beforeText.focus();
				return false;
			}

			/* inputBox 내용에 개행문자 -> , 로 치환 */
			beforeText.value = beforeText.value.replace(/(?:\r\n|\r|\n)/g, ",");
			f.submit();
		}

		/* 삭제버튼 클릭시 textarea clean */
		function cleanText() {
			var beforeText = document.mainForm.beforeText;

			beforeText.value = "";
		}
	</script>
</body>
</html>