<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@page import="beans.Chambre"%>
    <%@page import="service.ChambreService"%>
    <br/>
    <div class="section-title" style="float:right; width:70%; height:80px" >
         <br/> <h2>les Chambres</h2>
        </div>
                        <table class="table" style="float:right; width:80%">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Numero</th>
      <th scope="col">Type</th>
      <th scope="col">Prix</th>
      <th scope="col">Photo</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
    				<%     ChambreService cs = new ChambreService();
                        for (Chambre c : cs.findAll()) {     %>
                    <tr>
                        <th style="width:10%;" scope="row"><%= c.getId() %></th>
                        <td style="width:15%;"><%= c.getNum() %></td>
                        <td style="width:15%;"><%= c.getType() %></td>
                        <td style="width:15%;"><%= c.getPrix() %></td>
                        <td style="width:15%;"><img style="width:150px; height:60px" src="<%= c.getPhoto()%>" /></td>
                        <td style="width:10%;"><a href="OperationChambre?id=<%= c.getId()%>&op=delete" class="btn btn-sm btn-danger">
           			    <i class="fa fa-trash"></i></a>
                        <a href="OperationChambre?id=<%= c.getId()%>&op=update"class="btn btn-sm btn-warning">
         			    <i class="fa fa-edit"></i></a> </td>         			    
          	            </tr>
                    <%}%>
  </tbody>
</table>

    <%@ include file="footer.jsp" %>