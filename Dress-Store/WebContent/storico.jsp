<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>STORICO ACQUISTI</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ page import = "java.util.*, model.indirizzo.*, model.ordine.*, model.prodotto.*, java.text.DecimalFormat" %>
<%
if(request.getSession().getAttribute("tipo") != null){
	int tipo = (int) session.getAttribute("tipo");
	if( tipo ==2 || tipo ==3 || tipo == 4)
		response.sendRedirect("index.jsp");
}
%>
<%	
	Collection<OrdineBean> listaOrdini = new ArrayList<OrdineBean>();
	if(request.getSession().getAttribute("listaOrdini") != null){
		listaOrdini = (Collection<OrdineBean>) request.getSession().getAttribute("listaOrdini");
	}	
%>



 <%@ include file="footer.jsp" %>
</body>
</html>