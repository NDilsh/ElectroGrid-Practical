<%@ page import="com.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
	<html>
		<head>
		<meta charset="ISO-8859-1">
		<title>Payments Management</title>
		<link rel="stylesheet" href="Views/bootstrap.min.css">
		<script src="Components/jquery.min.js"></script>
		<script src="Components/payments.js"></script>
		</head>
	<body>
	<br></br>
	<div>
		<h1>&nbsp;&nbsp;&nbsp;Payments Management</h1><br></br>
	</div>
	<div class="container"><div class="row">
	<div class="col-3"> 
		
			<form id="formPayment" name="formPayment">
				 Customer Name: 
				 <input id="customerName" name="customerName" type="text" 
				 class="form-control form-control-sm">
				 <br> Bill ID: 
				 <input id="billId" name="billId" type="text" 
				 class="form-control form-control-sm">
				 <br> Card No: 
				 <input id="cardNo" name="cardNo" type="text" 
				 class="form-control form-control-sm">
				 <br> CVV: 
				 <input id="cvv" name="cvv" type="text" 
				 class="form-control form-control-sm">
				 <br>Expired Date: 
				 <input id="expiredDate" name="expiredDate" type="text" 
				 class="form-control form-control-sm">
				 <br>Paid Amount: 
				 <input id="payAmount" name="payAmount" type="text" 
				 class="form-control form-control-sm">
				 <br>
				 <input id="btnSave" name="btnSave" type="button" value="Save" 
				 class="btn btn-primary">
				 <input type="hidden" id="hidPaymentIDSave" 
				 name="hidPaymentIDSave" value="">
			</form>
			<br>
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>
		
		<br>
		</div>
		<div id="divPaymentGrid" class="col-9">
			 <%
			 Payment paymentObj = new Payment(); 
			 out.print(paymentObj.readPayments()); 
			 %>
		</div>
	</div> </div> 
		
	</body>
	</html>