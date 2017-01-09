<%@page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="header.jsp"%>

<html>
<head>
<title>Spring Security</title>
<style>
  body {
    background-image: url(resources/images/1.jpg);
    background-size:cover;
    background-repeat:no-repeat;
    } 
</style>
</head>
<body>

	<div class="container">
		<div class="row">	
		<div class="col-md-6 col-md-offset-4">
		
				<div class="panel panel-default">
				<div class="panel-heading"><strong class="" color=""><center>Login</center></strong>
			</div>
			
			<form method="post" action="<c:url value='/login' />">

             <div class="panel-body">
					
		        <form class="form-horizontal" role="form">
                    <div class="alert alert-error">
						<a data-dismiss="alert" href="#" style="color: red"></a>${message}
					</div>

                        <div class="form-group">
                            <label for="username" class="col-sm-3 control-label">Username:</label>
                            <div class="col-sm-9">
                            <input type="text" name="username" class="form-control"  placeholder="username" />
                            </div>
                        </div>
                        <br>
                        <br>

				<%-- 	<!-- Form Name -->
					<div class="alert alert-error">
						<a data-dismiss="alert" href="#" style="color: red"></a>${message}
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-7 control-label" for="username">User
							Name:</label>
						<div class="col-md-7">
							<input type="text" name="username" placeholder="Enter your Name"
								class="form-control input-md" type="text"> <span
								class="help-block"> </span>
						</div>
					</div>
 --%>
 
                       <div class="form-group">
                            <label for="password" class="col-sm-3 control-label">Password:</label>
                            <div class="col-sm-9">
                            <input type="text" name="password" class="form-control"  placeholder="password" />
                            </div>
                        </div>
                        <br>
                        <br>
 
 
					<!-- 
					<div class="form-group">
						<label class="col-md-7 control-label" for="password">Password:</label>
						<div class="col-md-7">
							<input type="password" name="password"
								placeholder="Enter your Password" class="form-control input-md"
								type="password"> <span class="help-block"> </span>
						</div>
					</div>
					 -->
 
   <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div id="browse_app">
                                <button type="submit" class="btn btn-success btn-default btn-block" value="login">login</button>                              
                                </div>
                                <br>      
                            </div>
                        </div>
                    </form>
                </div>
         
                
 </form>
 </div>
 </div>
 </div>
 </div>
 
 <%-- <div class="form-group last">
						<label class="col-md-4 control-label" for="singlebutton">
						</label>
						<div class="col-md-4">
						<div id="browse_app">
							<input type="submit" name="singlebutton" class="btn btn-primary"
								value="login">
								</div>
						</div>
					</div>
					</form>
				</fieldset>
				</form>
				</div>
		</div>
	</div>
 --%></body>
</html>