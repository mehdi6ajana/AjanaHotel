<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@ include file="header.jsp" %>
	 <%@page import="beans.Chambre"%>
    <%@page import="service.ChambreService"%>
    <div class="container">

<h2>Chambers Valables</h2>


<!-- form -->

<div class="row">
<%
                        ChambreService cs = new ChambreService();
                        for (Chambre c : cs.findAll()) {
                    %>
                    
                     <div class="col-sm-6 wowload fadeInUp"><div class="rooms"><img src="<%= c.getPhoto()%>" class="img-responsive"><div class="info"><h3><%= c.getType()%></h3><a href="" class="btn btn-default">Check Details</a></div></div></div>
  
            
                    
                    <%}%>
 </div>

                     <div class="text-center">
                     <ul class="pagination">
                     <li class="disabled"><a href="#">«</a></li>
                     <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                     <li><a href="#">2</a></li>
                     <li><a href="#">3</a></li>
                     <li><a href="#">4</a></li>
                     <li><a href="#">5</a></li>
                     <li><a href="#">»</a></li>
                     </ul>
                     </div>


</div>
<%@ include file="footer.jsp" %>