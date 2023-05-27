<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        *{
            margin: 0;
            padding: 0;
        }
        html,body{
            width: 800px;
            height: 900px;            
        }
        
        body{
            position: relative;
            border: 1px solid #2333;
        }
        .header{
           display: flex;
           justify-content: center;
           padding: 30px;
           border-bottom: 1px solid #2333;
        }
      .header-layout button{
            margin-left: 320px;
            background-color: rgba(0, 0, 0, 0);
            border: none;
            font-size: 20px;
            padding: 20px 0px 20px 0px;
        }

        .header-layout button:hover{
            cursor: pointer;
        }
        table{
            border-collapse: collapse;
            margin-left: 80px;
            background-color: rgb(26, 188, 156);          
        }
        td,th,tr {
            border: 1.5px solid rgba(255, 255, 255, 0.786);          
        }
        th{
            padding:  5px 40px;
            background-color: lightgray;
        }
        table thead tr th{
            padding:  10px 30px 10px 30px;
            text-align: center;
        }
        .btn-layout{
            display: inline-block;
           margin-left: 340px;
           margin-top: 50px;
        }
        .btn-layout button{
            padding:  10px 30px;
            font-size: 18px;
            color: white;
            background-color: rgb(52, 152, 219);
            border: none;
            border-radius: 8px;
        }
        .btn-layout button:hover{
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header-layout">
        <header>
            <form method = "post" action = "/jwbook/studentControl?action=rename">
            	<button type = "submit">
            		<h2>방명록 입력</h2>
            	</button>
       		 </form>
        </header>
    </div>
        <table border="1">
            <tr><th>번호</th><th>작성자</th><th>이메일</th><th>작성일</th><th>제목</th></tr>
            <c:forEach items ="${students}" var = "s">
            <tr>
            <td>${s.id}</td> <td>${s.username}</td> <td>${s.email}</td>
            <td>${s.birth}</td> <td>${s.univ}</td>
            </tr>
            </c:forEach>
        </table>
        
	<div class="btn-layout">
        <form method = "post" action = "/jwbook/studentControl?action=add">
            <button type = "submit">등록</button>
        </form>
    </div>	
</body>
</html>