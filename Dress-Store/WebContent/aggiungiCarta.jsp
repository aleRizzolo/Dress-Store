<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AGGIUNGI CARTA</title>
<link href="css/css/indirizzo.css" rel="stylesheet" >
<link href="css/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>
<%
if(request.getSession().getAttribute("tipo") != null){
	int tipo = (int) session.getAttribute("tipo");
	if( tipo ==2 || tipo ==3 || tipo == 4)
		response.sendRedirect("index.jsp");
}
%>

<hr>
<h4 class="scrittacarrello , bordo1" >&emsp; &emsp; &emsp;AGGIUNGI CARTA DI CREDITO</h4>
<hr>

<a href="mostra_carte.jsp"><img src="img/left.png"></a>

<div id="wrapper" class="container">
  
  

    <form id="form-work" class="" name="aggiungiCarta" action="AggiungiCarta" method="post">
      
      <fieldset>
      
      
        
      </fieldset> 
    </form>
</div>



<script src="scripts/ValidazioneAddCarta.js"></script>

</body>
</html>