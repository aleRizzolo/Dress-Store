<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PROPRIETARIO</title>
<link rel="stylesheet" href="css/css/bootstrap.min.css">
<link href="css/stile.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>
<%@ page import = "java.util.*, model.indirizzo.*, model.ordine.*, model.prodotto.*, model.carta.*,model.carrello.*, model.utente.*,java.text.DecimalFormat" %>
<%	
UtenteModel<UtenteBean> model = new UtenteModelDM();
UtenteBean utente = new UtenteBean();
utente= model.doRetrieveByEmail((String)session.getAttribute("email"));
	String email = (String)session.getAttribute("email");
	System.out.println(email);
	int flag= (int)session.getAttribute("tipo");
	System.out.println(flag);
	
if(email !=null)
{
	
	if(tipo==4){
		System.out.println("loggato come proprietario");
	}
	else
		
		response.sendRedirect("index.jsp");
}

else {
	
	response.sendRedirect("index.jsp");
}
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="css/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
<div class="btn-group-vertical pull-left">
  <button type="button" class="btn btn-secondary btn-lg" onclick="visualizza(1)">Inserisci prodotto</button>
  <button type="button" class="btn btn-secondary btn-lg" onclick=location.href='eliminaUtenti.jsp'>Elimina utenti</button>
  <button type="button" class="btn btn-secondary btn-lg" onclick=location.href='login.jsp'</button>

</div>


<div class="row">
