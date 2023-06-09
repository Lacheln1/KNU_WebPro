<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core"	prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>set, out</h3>
	<c:set var="product1" value="<b>애플 아이폰</b>"/>
	<c:set var="product2" value="삼성 갤럭시 노트"/>
	<c:set var="intArray" value="${[1,2,3,4,5]}"/> 
	<p>
	product1(jstl):
	<c:out value ="${product1 }" default="not registered" escapeXml="true"/>
	</p>
	<p>product1(el):${product1}</p>
	<p>intArray[2]:${intArray[2]}</p>
	<hr>
	<h3>forEach: 배열 출력</h3>
	<ul>
	<c:forEach var="num" varStatus="i" items="${intArray}">
		<li>${i.index} : ${num} </li>
	</c:forEach>
	</ul>
	<hr>
	
	<!-- if -->
	<h3>if</h3>
	<c:set var="checkout" value = "true"/>
	<c:if test ="${checkout}">
		<p>주문 제품: ${product2 }</p>
	</c:if>
	<c:if test="${!checkout }">
	<p>주문 제품 아님</p>	
	</c:if>
	
	<c:if test = "${!empty product2 }">
	<p>
	<b>${product2 } 이미 추가됨</b>
	</p>
	</c:if>
	
	<!-- choose -->
	<h3>choose,when,otherwise</h3>
	<c:choose>
		<c:when test = "${checkout }">
		<p>주문 제품: ${product2 }</p>
		</c:when>
		<c:otherwise>
		<p>주문 제품이 아님</p>
		</c:otherwise>
		</c:choose>
		<hr>
		
	<!-- forTokens -->
	<h3>forTokens</h3>
	<c:forTokens var="city" items="seoul|tokyo|new york|toronto" delims="|" varStatus ="i">
	<c:if test="${i.first }">도시 목록:</c:if>
	${city }
	<c:if test ="${!i.last }">,</c:if>
	</c:forTokens>
</body>
</html>