<%@include file="header.jsp"%>
<br>
<br>

<div class="container">
	<br>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resources/images/image.jpg" alt="Game"
					class="img-responsive" style="" />
			</div>

			<div class="item">
				<img src="resources/images/render01.jpg" alt="Game"
					class="img-responsive" style="" />
			</div>

			<div class="item">
				<img src="resources/images/video-games.jpeg" alt="Game"
					class="img-responsive" style="" />
			</div>
		</div>
	</div>
</div>
<!-- Left and right controls -->
<a class="left carousel-control" href="#myCarousel" role="button"
	data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
	aria-hidden="true"></span> <span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" role="button"
	data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
	aria-hidden="true"></span> <span class="sr-only">Next</span>
</a>
<br>
<br>
<br>
<br>
<center>
	<iframe width="640" height="360"
		src="https://www.youtube.com/embed/xtPyB6b-Pjc" frameborder="0"
		allowfullscreen></iframe>
</center>
<br>
<br>
<br>
<div class="container text-center">
	<h3>Play Stations</h3>
	<br>
	<div class="row">
		<div class="col-sm-4">
			<img src="resources/images/XBox360.jpg" class="img-responsive"
				style="width: 100%" alt="Image">
			<p>XBox360</p>
		</div>
		<div class="col-sm-4">
			<img src="resources/images/PS2.jpg" class="img-responsive"
				style="width: 100%" alt="Image">
			<p>PS2</p>
		</div>
		<div class="col-sm-4">
			<img src="resources/images/xboxone.png" class="img-responsive"
				style="width: 100%" alt="Image">
			<p>XBoxOne</p>
		</div>
	</div>
</div>
<br>


<%@include file="Footer.jsp"%>
<br>

<a href="category">Category</a>
<a href="product">Product </a>
<a href="user">login</a>
<a href="memberShip.obj" ><!-- style="margin:50;" -->Become Member</a>
<a href="productdetails">ProductDetails</a>
<br>
<br>
</body>
</html>
