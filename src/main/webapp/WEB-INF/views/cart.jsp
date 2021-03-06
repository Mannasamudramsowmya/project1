<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<title>cart</title>
</head>

<body>


 <c:set var="total_cost" value="0" scope="page" />
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				
							<table class="table ">
								<thead>
									<tr>
										<th>Product</th>
										<th>Quantity</th>
										<th class="text-center">Price</th>
										<th class="text-center">Total</th>
										<th> </th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${cartList}" var="cart">
										<tr>
											<td class="col-sm-8 col-md-6">
												<div class="media">
													<a class="thumbnail pull-left"> <img
														class="media-object"
														src="<c:url value="resources/images/${cart.product.imagename}.jpg"/>"
														style="width: 72px; height: 72px;">
													</a>
													<div class="media-body">
														<h4 class="media-heading" style="color: black">${cart.product.productname}</h4>

													</div>
												</div>
											</td>

											<td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber
														value="${cart.quantity}" /></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber
														value="${cart.product.price}" type="currency"
														pattern="#,##,##,##,###.00" /></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><fmt:formatNumber
														value="${cart.totalprice}" type="currency"
														pattern="#,##,##,##,###.00" /></strong></td>
											 <td class="col-sm-1 col-md-1"><a
												href="">
													<button type="button" class="btn btn-danger">
											 		<span class="glyphicon glyphicon-remove"></span> Remove
													</button>
											</a></td>
                                          </tr>
                                          </c:forEach>
											
										<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td><h3>Total</h3></td>

									
					 			<tr>
										<td> </td>
										<td> </td>
										<td> </td>
										<td><a href="<c:url value="/prolist"/>"><button
													type="button" class="btn btn-default">
													<span class="glyphicon glyphicon-shopping-cart"></span>
													Continue Shopping
												</button></a></td>
                                                 <!--  <td><button type="button" class="btn btn-success">
													Check Out</button></td> -->
										 <td><sec:authorize access="hasRole('ROLE_USER')">
												<a href="<c:url value="/checkout.obj"/>">
													<button type="button" class="btn btn-success">
														Checkout <!-- <span class="glyphicon glyphicon-play"></span> -->
													</button>
												</a>
											</sec:authorize></td>
									</tr>
									</tbody>
								</table>
							
					</div>
			</div>
		</div>
</body>
</html>
