<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
<!-- <style>
body
{
background-image: url(resources/images/maxresdefault.jpg);
background-size:cover;
background-repeat:no-repeat;
}
</style> -->
</head>
<body>
	<div class="container">
		<div class="row">
		        <div class="horizontal">
		
			<div class="panel panel-primary">
				<div class="panel-body">
					<div class="form-group">

						<h1>Product Data</h1>
 
						<form:form action="product.do" method="POST" commandName="product"
							enctype="multipart/form-data">
							
<%-- 							<div class="form-group">
							<form:label class="col-md-7 control-label" path="productid"> ID:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="productid" placeholder="Enter ID"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
							<div class="form-group">
							<form:label class="col-md-7 control-label" path="productname"> Name:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="productname" placeholder="Enter Name"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
							<div class="form-group">
							<form:label class="col-md-7 control-label" path="productquantity"> Quantity:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="productquantity" placeholder="Enter Quantity"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
							<div class="form-group">
							<form:label class="col-md-7 control-label" path="productdescription"> Description:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="productdescription" placeholder="Enter Description"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
							<div class="form-group">
							<form:label class="col-md-7 control-label" path="imagename"> Image:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="imagename" placeholder="Enter Image Name"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="price"> Price:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="price" placeholder="Enter Price"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="categoryname"> CategoryName:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="categoryname" placeholder="Enter CategoryName"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
								<form:select path="categoryname" class="form-control">

										<c:forEach items="${categoryList}" var="user">
											<form:option value="${user.categoryname}">${user.categoryname}</form:option>
										</c:forEach>
									</form:select>
								
							</div>
						</div>
						<div class="form-group last">
							<label class="col-md-4 control-label" for="singlebutton">
							</label>
							<div class="col-md-4">
							<input type="submit" name="action" class="btn btn-primary"
									value="ADD">
							
								<input type="submit" name="action" class="btn btn-primary"
									value="Edit">
								<input type="submit" name="action" class="btn btn-primary"
									value="Delete">
									<input type="submit" name="action" class="btn btn-primary"
									value="Search">
							
						</div>
							</div>
				File to upload: <input type="file" name="file">
					 Name: <input type="text" name="name">
							<!-- <input type="submit" value="Upload"> --> Press here to upload the file! --%>
				
						
							
							<table>

								<tr>

									<td><form:label path="productid">id</form:label></td>
									<td><form:input path="productid" /></td>
								</tr>
								<tr>
									<td><form:label path="productname">Name</form:label></td>
									<td><form:input path="productname" /></td>
								</tr>
								<tr>
									<td><form:label path="productquantity">quantity</form:label></td>
									<td><form:input path="productquantity" /></td>
								</tr>
								<tr>
									<td><form:label path="productdescription">Description</form:label></td>
									<td><form:input path="productdescription" /></td>
								</tr>
								<tr>
									<td><form:label path="imagename">Image</form:label></td>
									<td><form:input path="imagename" /></td>
								</tr>
								<tr>
									<td><form:label path="price">Price</form:label></td>
									<td><form:input path="price" /></td>
								</tr>
								<tr>
									<td><form:label path="categoryname">CategoryName</form:label></td>
									<td><form:input path="categoryname" /></td>
									<form:select path="categoryname" class="form-control">

										<c:forEach items="${categoryList}" var="user">
											<form:option value="${user.categoryname}">${user.categoryname}</form:option>
										</c:forEach>
									</form:select>
									
									
								

 								</tr>

								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Add" />
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Edit" />
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Delete" />
								</tr>
								<tr>
									<td colspan="2"><input type="submit" name="action"
										value="Search" />
								</tr>
							</table>
			File to upload: <input type="file" name="file">
					 Name: <input type="text" name="name">
							<input type="submit" value="Upload"> Press here to upload the file! 
						
	</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>