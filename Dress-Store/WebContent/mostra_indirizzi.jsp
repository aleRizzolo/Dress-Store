<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MOSTRA INDIRIZZI</title>
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
<%		IndirizzoModel<IndirizzoBean> indirizzi = new IndirizzoModelDM();                // mi richiamo tutti gli indirizzi  dell'utente 
		
    	Collection<IndirizzoBean> ind = indirizzi.doRetrieveByUtente((int)session.getAttribute("id"));  //le salvo 
%>    



</body>
</html>