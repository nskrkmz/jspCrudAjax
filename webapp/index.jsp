<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/addOprt.js"></script>
</head>
<body>
	<nav class="navbar navbar-dark bg-primary">
		<h2 style="color: white">Student Managment System Using Jsp&Ajax</h2>
	</nav>
	<br>
	
	<div class="row">
		<div class="col-sm-4">
			<div class="container">
				<form id="frmStudent" action="Add">
					<div class="form-group">
						<label>Student Name</label>
						<input type="text" class="form-control" name="stname" id="stname" placeholder="StudentName" size="30px" required="required">
					</div>
					
					<div class="form-group">
						<label>Student Course</label>
						<input type="text" class="form-control" name="course" id="course" placeholder="Course" size="30px" required="required">
					</div>
					
					<div class="form-group">
						<label>Fee</label>
						<input type="text" class="form-control" name="fee" placeholder="Fee" size="30px" required="required">
					</div>
					<br>
					<div class="form-group" align="right">
						<button type="button" class="btn btn-info" id="save" onclick="addStudent()">Add</button>
						<button type="button" class="btn btn-warning" id="reset" onclick="reSet()">Reset</button>
					</div>
				</form>
			</div>
		</div>
		<div class="col-sm-8">
			<div class="panel-body">
				<table id="tbl-student" class="table table-bordered" cellpadding="0" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
	
	<script src="component/jquery/jquery.js" type="text/javascript"></script>
	<script src="component/jquery/jquery.min.js" type="text/javascript"></script>
	<script src="component/jquery.validate.min.js" type="text/javascript"></script>
	
	
	

</body>
</html>

















