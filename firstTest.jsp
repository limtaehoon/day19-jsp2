<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script> 
	function check() {			<!--오류창-->
		//aleter(document.getElementsByName("hobby").length);
		if(document.getElementById("name").value==""){
			alert("이름을 입력하세요 ");<!--오류내용-->
			return;
		}	
		if(document.getElementById("num").value==""){
			alert("학번을 입력하세요 ");	<!--오류내용-->
			return;
		}
		var obj = document.getElementsByName("hobby");
		var checkCnt=false;
		for(i=0;i<obj.length;i++){
			if(obj[i].checked){
				checkCnt=true;
			}
		}
		if(checkCnt==false){
			alert("취미를 선택해주세요");
			return;
		}
		
		frm.submit();
	}
	
</script>


</head>
<body>
<form action="output.jsp"method= "post" name= "frm">
이름	:	<input type="text" name	= "name"id = "name"><br>
학번	:	<input type="text" name	= "num"id = "num"><br>
성별	:	

	<input type="radio" name = gender value = "man">남자
	<input type="radio" name = gender value = "woman">여자<br>
	
	<!--<input type="radio" name = :gender" value = "man"checked>남자  checked:무조건 하나는 선택 
	<labelfor="man">남자</label>:글자선택해도 됨
	<input type="radio" name = :gender" value = "woman">여자<br>
	<labelfor="man">여자</label>  -->
	<br><br>

<!--  전공	:<select name = "major">
		<option value="국문학과 " selected>국문학과</option>
		<option value="영문학과 " selected>영문학과</option>
		<option value="수학과 " selected>수학과</option>
		<option value="정치학과 " selected>정치학과</option>
		<option value="체육학과 " selected>체육학과</option>
	</select><br>-->

전공	:<select name = "major"multiple><!-- multiple:다중선택가능  size : 크기-->
		<option value="국문학과 " selected>국문학과</option>
		<option value="영문학과 " >영문학과</option>
		<option value="수학과 " >수학과</option>
		<option value="정치학과 " >정치학과</option>
		<option value="체육학과 " >체육학과</option>
	</select><br>
	
	
취미<br>
	<input type="checkbox" name ="hobby" value="운동1">운동1
	<input type="checkbox" name ="hobby" value="운동2">운동2
	<input type="checkbox" name ="hobby" value="운동3">운동3
	<input type="checkbox" name ="hobby" value="운동4">운동4
	<input type="checkbox" name ="hobby" value="운동5">운동5
	<br><br>
<!--  <input type="submit" value="보내기" summit: Action 으로 이동 -->
<input type = "button" value = "보내기" 
						onclick="check()">
			
<input type="reset" value="취소">

 </form>
</body>
</html>