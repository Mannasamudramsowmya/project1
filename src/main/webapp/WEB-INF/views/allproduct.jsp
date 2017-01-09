<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products List</title>
<style>
	  hr {
width: 100%;
height: 8px;
margin-left: auto;
margin-right: auto;
background-color:#FF0066;
color:#FF0066;
border: 0 none;
}
	  </style>
</head>
<body>

		<div class="container">
			<c:forEach items="${productList}" var="user">
		<div class="row">
      <div class="col-md-4 column productbox">
      <div class="thumbnail">
		
        				<img 
							src="<c:url value='/resources/images/${user.imagename}.jpg'/>"
							class="img-resonsive">
						<div class="producttitle">
							<a href="#">${user.productname}</a>
						</div>
						<div class="productprice"></div>
						<a href="#">${user.price}</a>
					</div>
					<div class="caption">
						<p>Lorem ipsum donec id elit non mi porta gravida at eget
							metus.</p>
					</div>
					<a href="#">
						<button type="button" class="btn btn-default">Add to cart
						</button>
					</a>
						<div class="pull-right">
						<button type="button" class="btn btn-success">Buy
						</button>

				      </div>
			
			</div>
		</div>
		</c:forEach>
</div>


</body>
</html>