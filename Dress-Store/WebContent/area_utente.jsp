<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AREA UTENTE</title>
<link href="css/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
<%@ include file="header.jsp" %>

<hr>
<h4 class="scrittacarrello , bordo1" >&emsp; &emsp; &emsp;AREA UTENTE</h4>
<hr>
<a href="index.jsp"><img src="img/left.png"></a>
<section class="pricing py-5">
  <div class="container">
    <div class="row">
      <!-- Free Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
          <center> <img alt="ordini effettuati" src="img/delivery-cart.png"></center> 
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Visualizza gli ordini effettuati fin'ora</strong></li>
              
            </ul>
            <a href="StoricoControl" class="btn btn-block btn-primary text-uppercase">Storico Acquisti</a>
          </div>
        </div>
      </div>
      
      
      <!-- Plus Tier -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            	<center> <img alt="ordini effettuati" src="img/man-user.png"></center> 
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Visualizza i tuoi dati personali</strong></li>
              <a href="modifica_password.jsp"><li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Modifica password</strong></li></a>
            </ul>
            <a href="profilo.jsp" class="btn btn-block btn-primary text-uppercase">Il Mio profilo</a>
          </div>
        </div>
      </div>
      
      <!-- Pro Tier -->
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
             	<center> <img alt="ordini effettuati" src="img/address.png"></center> 
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Visualizza i tuoi indirizzi</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Aggiungi o elimina uno o più indirizzi</strong></li>
              
            </ul>
            <a href="mostra_indirizzi.jsp" class="btn btn-block btn-primary text-uppercase">I Miei Indirizzi</a>
          </div>
        </div>
      </div>



 <%@ include file="footer.jsp" %>
</body>
</html>