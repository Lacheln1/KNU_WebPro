<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            /* margin: 80px; */
            /* left: 500px; */
        }
        .header-layout{
            text-align: center;
            padding-top: 40px;
            padding-bottom: 70px;
        }
        .table-layout{
            margin-left: 230px;
        }

        .table-layout form{
            display: inline-block;
        }

        table{
            border: 2px solid #2333;
            border-collapse: collapse;
        }
        td{
            border: 2px solid #2333;
        }
      .title{
        width: 150px;
        text-align: center;
        color: rgb(22, 152, 22);
        background-color: lightgray;

      }
       tbody input{
            padding: 4px;
            border: none;
            
        }

     .box-layout{
        width: 335px;
        height: 220px;
        margin-top: 15px;
        background-color: lightgray;
     }

     .box-layout textarea{
        width: 300px;
        height: 200px;
        margin-top: 9px;
        margin-left: 17px;
        border-radius: 10px;
        resize: none;
     }
     .form-layout{
        display: inline-block;
     }
     .btn-layout{
        position: relative;
        margin-top: 30px;
        padding: 10px 25px 10px 25px;
        margin-left: 15px;
    
        border: none;
        border-radius: 5px;
        background-color: rgb(52, 152, 219);
        color: white;
        font-size: 17px;
     }

     .btn-layout:hover{
        cursor: pointer;
     }

     .btn-layoutSec{
        right: 235px;
     }
    </style>

</head>
<body>
    <div class="header-layout">
        <header>
            <h2>방명록 수정</h2>
        </header>
    </div>

    <div class="table-layout">
        <form method= "post" action="/jwbook/studentControl?action=delete" name="join_form" >
            <table>
                <tbody>
                    <tr><td class="title">작성자</td><td><input type="text" name="username" id="username"></td></tr>
                    <tr><td class="title">이메일</td><td><input type="text" name="email" id="email"></td></tr>
                    <tr><td class="title">제목</td><td><input type="text" name="univ" id="univ"></td></tr>
                    <tr><td class="title">비밀번호</td><td><input type="text" name="password" id="password"></td></tr>
                </tbody>
            </table>

            <div class="box-layout">
                <textarea cols="30" rows="10" name="des" id="des"></textarea>
            </div>     
   
                <button type="submit" class="btn-layout" onclick="return checkForm()">수정</button>
           
        </form>
        <button class="btn-layout btn-layoutSec" onclick="deleteForm()">삭제</button>

        <a href="/jwbook/studentControl?action=list">
            <button class="btn-layout btn-layoutSec">목록</button>
        </a>
    </div>  
   
    <script>
    function checkForm(){
        var userName = document.getElementById("username").value;
        var email = document.getElementById('email').value;
        var univ = document.getElementById('univ').value;
        var passWord = document.getElementById('password').value;
        var des = document.getElementById('des').value;

        if(userName==""){
            alert("모든 입력란을 채워주세요");
            return false;
        }

        if(email==""){
            alert("모든 입력란을 채워주세요");
            return false;
        }

        if(univ==""){
            alert("모든 입력란을 채워주세요");
            return false;
        }

        if(passWord==""){
            alert("모든 입력란을 채워주세요");
            return false;        
        }

        if(des==""){
            alert("모든 입력란을 채워주세요");
            return false;
        }
    }
    
    function deleteForm(){
        document.getElementById("username").value="";
        document.getElementById('email').value="";
        document.getElementById('univ').value="";
        document.getElementById('password').value="";
        document.getElementById('des').value="";
        }
    </script>
   
</body>
</html>