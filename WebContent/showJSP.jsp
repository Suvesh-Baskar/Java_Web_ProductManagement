<%@ page import="com.Product.Product" %>
<%@ page import="com.Product.ProductDao" %>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Product Details</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images_table/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_table/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts_table/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_table/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_table/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor_table/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css_table/util.css">
	<link rel="stylesheet" type="text/css" href="css_table/main.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
	<% 
		ProductDao dao = new ProductDao();
		ArrayList<Product> productList = dao.getAllProduct();
		if(productList != null && productList.size()>0){
	%>
						<thead>
							<tr class="table100-head">
								<th class="column1">Product ID</th>
								<th class="column2">Name</th>
								<th class="column3">Category</th>
								<th class="column6">Price</th>
							</tr>
						</thead>
						<tbody>
						<% for(Product p:productList){%>

								<tr>
									<td class="column1"><%= p.getProductId()%></td>
									<td class="column2"><%= p.getProductName()%></td>
									<td class="column3"><%= p.getProductCategory()%></td>
									<td class="column6">$<%= p.getProductPrice()%></td>
								</tr>
						<% } %>										
						</tbody>
	<% } %>
						
					</table>
					
					<div align="center">
							<form action="index.html">
								<button class="button" style="vertical-align:middle"><span>Home </span></button>
							</form>		
					</div>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="vendor_table/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor_table/bootstrap/js/popper.js"></script>
	<script src="vendor_table/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor_table/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js_table/main.js"></script>

</body>
</html>