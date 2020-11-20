<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdCheck.html</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
 <script type="text/javascript">
		function idUse(){
			opener.document.regiform.userid.value = 
				document.overlapping.userid.value;
			self.close();
		}
	</script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    
    <style>
        
        @import url('https://fonts.googleapis.com/css2?family=Gaegu&family=Noto+Sans+KR&display=swap');
    
        *{
            font-family: 'Gaegu', cursive;/*문서의 기본폰트 설정*/
            font-size: 30px;
            margin: 0 auto;/*문서의 전체의 가운데 정렬*/
        }
        
        form{
            padding-left: 80px;
        }

        form button{
            background-color: #333333; font-size: 1em; width: 120px;
            padding: 5px; color: #ffffff; border: 2px solid #333333;
        }
    </style>
</head>
<body>
	<%
		String id = request.getParameter("id"); 
		
	%>
    <form name="overlapping">
        <input type="text" id="userid" value= <%=id %>>     
        <button type="button" onclick="idcheck();">중복확인</button> 
    </form>

    <script>
        function idcheck(){
            
            console.log(document.getElementById("userid").value);
        }
    </script>
</body>
</html>