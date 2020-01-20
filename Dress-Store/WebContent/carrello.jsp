<%
Carrello cart = (Carrello) session.getAttribute("cart"); //a%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, model.*, java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CARRELLO</title>
<link href="css/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>
<%@ page import = "java.util.*, model.indirizzo.*, model.ordine.*, model.prodotto.*, model.carta.*,model.carrello.*, model.utente.*,java.text.DecimalFormat" %>
<%
if(request.getSession().getAttribute("tipo") != null){
	int tipo = (int) session.getAttribute("tipo");
	if( tipo ==2 || tipo ==3 || tipo == 4)
		response.sendRedirect("index.jsp");
}
%>
<hr>
<h3 class="scrittacarrello , bordo1" >&emsp; &emsp; &emsp;CARRELLO</h3>
<hr>
<div class="bottoni">
<a href="index.jsp" class="shiny-button2" id="dx">
 <strong>CONTINUA A COMPRARE</strong>
  </a>

</div>
<%
		if((cart != null) && (!cart.isEmpty())){
			List<ProdottoInCarrello> prodcart = cart.ottieniElem();
			DecimalFormat formatter = new DecimalFormat("#0.00");
%>
</body>
</html>