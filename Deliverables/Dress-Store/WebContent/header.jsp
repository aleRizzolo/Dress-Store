<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>HEADER-DRESS-STORE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="css/stile.css">
   <script src="script/jquery.js" ></script>
</head>
<body>
 
    <%! String aut = "Login";
    	String autCtrl = "login.jsp";
    	String areaUt = "login.jsp";
    	int tipo = 0;
    %>
    <%	if(request.getSession().getAttribute("tipo") != null){
    		tipo = (int) request.getSession().getAttribute("tipo");
    		System.out.println(tipo);
     		switch(tipo){
    		case 0:
    			aut = "Login";
    			autCtrl = "login.jsp";
    			break;
	    	
    		case 1:
    			aut="Logout";
    			areaUt = "area_utente.jsp";
    			autCtrl="LogoutControl";
    			break;
    		case 2: 
    			aut="Logout";
				areaUt="magazzinierePage.jsp";
				autCtrl="LogoutControl";
				break;
	    	
	    		
    		case 3: 
    			aut="Logout";
	    		areaUt="managerPage.jsp";
	    		autCtrl="LogoutControl";
	    		break;
	    	
               case 4:
	    		aut="Logout";
	    		areaUt="proprietarioPage.jsp";
	    		autCtrl="LogoutControl";
	    		break;
	    		
	    	default:
	    		areaUt="login.jsp";
		}
    		
    		}
    else{
    	aut = "Login";
		autCtrl = "login.jsp";
		areaUt = "login.jsp";
		}
    %>
    

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
	<%
	System.out.println("tipo : " + tipo);
	if(tipo <= 0 || tipo == 1){
	%>
    <ul class="nav navbar-nav sinistra">
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color= midnightblue>UOMO</font> <span class="caret"></span></a>
        <ul class="dropdown-menu"> 
          <li><a href="CategoriaControl?categoria=giacca.uomo">Giacche</a></li>
          <li><a href="CategoriaControl?categoria=jeans.uomo">Jeans</a></li>
          <li><a href="CategoriaControl?categoria=camicie.uomo">Camicie</a></li>
          <li><a href="CategoriaControl?categoria=intimo.uomo">Intimo</a></li>
          <li><a href="CategoriaControl?categoria=shirt.uomo">Shirt e felpe</a></li>
          <li><a href="CategoriaControl?categoria=cappotti.uomo">Cappotti</a></li>
          <li><a href="CategoriaControl?categoria=pantaloni.uomo">Pantaloni</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color= #FF0000>DONNA</font><span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="CategoriaControl?categoria=giacca.donna">Giacche</a></li>
          <li><a href="CategoriaControl?categoria=jeans.donna">Jeans</a></li>
          <li><a href="CategoriaControl?categoria=camicie.donna">Camicie</a></li>
          <li><a href="CategoriaControl?categoria=intimo.donna">Intimo</a></li>
          <li><a href="CategoriaControl?categoria=shirt.donna">Shirt e felpe</a></li>
          <li><a href="CategoriaControl?categoria=cappotti.donna">Cappotti</a></li>
          <li><a href="CategoriaControl?categoria=pantaloni.donna">Pantaloni</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color= "brown">ACCESSORI</font><span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="CategoriaControl?categoria=borse.accessori">Borse</a></li>
          <li><a href="CategoriaControl?categoria=occhiali.accessori">Occhiali</a></li>
          <li><a href="CategoriaControl?categoria=cappelli.accessori">Cappelli</a></li>
          <li><a href="CategoriaControl?categoria=cinture.accessori">Cinture</a></li>
          <li><a href="CategoriaControl?categoria=sciarpe.accessori">Sciarpe</a></li>
        </ul>
      </li>
      
    </ul>
    <%
	}
    %>
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
    	<a href= "index.jsp">
    	<img  src="img/cover.png" alt="Logo" height="100px" width="400px"> 
    	</a>

    <ul class="nav navbar-nav navbar-right">
    <%
	if(tipo <= 0 || tipo == 1){
	%>
      <li><a href=carrello.jsp><font color= GRAY><span class="glyphicon glyphicon-shopping-cart"></span> Carrello</font></a></li>
    <%
	}
    %>
      <li><a href=<%= areaUt %>><font color= GRAY><span class="glyphicon glyphicon-user" name="areaUtente"></span> Area Utente</font></a></li>
      <li><a href= <%= autCtrl %> ><font color= GRAY><span class="glyphicon glyphicon-log-in"></span> <%= aut %></font></a></li>
      
      <%
      if(session.getAttribute("nome") == null){
      %>
      <li><a><font color= BLACK>Accedi al sito</font></a></li>
      <%
      }
      %>
      
      <% 
      if (session.getAttribute("nome") != null){
      %>
      <li><a><font color= BLACK> Benvenuto <%= session.getAttribute("nome") %> </font></a></li>
    <%
    } 
    %>
    
  </ul>
  </div>
  <script src="script/jquery.js" ></script>
</nav>
   <script src="scripts/animation.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>