<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@page import="beans.User"%>
    <%@page import="service.UserService"%>
    <br/>
    <div class="section-title" style="float:right; width:70%; height:80px" >
         <br/> <h2>les Utilisateurs</h2>
        </div>
                        <table class="table" style="float:right; width:80%">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
      <th scope="col">Email</th>
      <th scope="col">Etat</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
    <%
                        UserService cs = new UserService();
                        for (User c : cs.findAll()) {
                    %>
                    <tr>
                        <th style="width:10%;" scope="row"><%= c.getId()%></th>
                        <td style="width:15%;"><%= c.getNom()%></td>
                        <td style="width:15%;"><%= c.getPrenom()%></td>
                        <td style="width:15%;"><%= c.getEmail()%></td>
                        <td style="width:15%;"><%= c.getEtat()%></td>
                        <td style="width:10%;"><a href="OperationUser?id=<%= c.getId()%>&op=disable" class="btn btn-sm btn-danger">
           			    X</a>
                        <a href="OperationUser?id=<%= c.getId()%>&op=enable"class="btn btn-sm btn-success">
         			    V</a> </td>         			    
          	            </tr>
                    <%}%>
  </tbody>
</table>

    <%@ include file="footer.jsp" %>