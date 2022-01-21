<%@page import="beans.User"%>
<%@page import="service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>



<!-- reservation-information -->
<div id="information" class="spacer reserve-info ">
<div class="container">
<div class="row">

<div class="col-sm-12 col-md-6" style="padding: auto;'">

<h2>Authentification Client</h2>
    <form action="LoginController" method="post">
    
   
    <span name="msg" style="color:red;"><%= request.getAttribute("erreur")== null ? "" : request.getAttribute("erreur") %></span>
   
    
    <br/> <br/> <br/> <br/>
    <input type="hidden" name="id" value="<%= request.getParameter("id") == null ? "" : request.getParameter("id")%>" />
        <div class="form-group">
            <input type="email" name="email" class="form-control"  placeholder="Email" value="<%= request.getParameter("email") == null ? "" : request.getParameter("email")%>" required="">
        </div>
              
        <div class="form-group">
            <input type="password" name="password" class="form-control"  placeholder="Password" value="<%= request.getParameter("password") == null ? "" : request.getParameter("password")%>" required="">
        </div>         
       <br/>
        <input type="submit" class="btn btn-default" value="Login" />
    </form>    
</div>
</div>  
</div>
</div>

<!-- reservation-information -->




<!-- services -->
<%@ include file="footer.jsp" %>