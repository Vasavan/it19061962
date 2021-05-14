<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="orderService.Order"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/items.js"></script>
<title>Order Management</title>
</head>
<body>
<h1>Order Management</h1>

<form id="formItem" name="formItem" method="post" action="items.jsp">
address:
<input id="address" name="address" type="text"
 class="form-control form-control-sm">
<br> name:
<input id="name" name="name" type="text"
 class="form-control form-control-sm">
<br> mobileno:
<input id="mobileno" name="mobileno" type="text"
 class="form-control form-control-sm">
<br> transactionmethod:
<input id="transactionmethod" name="transactionmethod" type="text"
 class="form-control form-control-sm">
<br>email:
<input id="email" name="email" type="text"
 class="form-control form-control-sm">
<br>
<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>


<br>
<div id="divItemsGrid">
<%

Order Obj = new Order();
 out.print(Obj.readOrder());
%>
</div>
</body>
</html>