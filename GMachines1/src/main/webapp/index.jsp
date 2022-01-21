<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
 <%@page import="beans.Chambre"%>
    <%@page import="service.ChambreService"%>
<!-- banner -->
<div class="banner">    	   
    <img src="images/photos/banner.jpg"  class="img-responsive" alt="slide">
    <div class="welcome-message">
        <div class="wrap-info">
            <div class="information">
                <h1  class="animated fadeInDown">Best hotel in Dubai</h1>
                <p class="animated fadeInUp">Most luxurious hotel of asia with the royal treatments and excellent customer service.</p>                
            </div>
            <a href="#information" class="arrow-nav scroll wowload fadeInDownBig"><i class="fa fa-angle-down"></i></a>
        </div>
    </div>
</div>
<!-- banner-->


<!-- reservation-information -->
<div id="information" class="spacer reserve-info ">
<div class="container">
<div class="row">
<div class="col-sm-7 col-md-8">
    <div class="embed-responsive embed-responsive-16by9 wowload fadeInLeft"><iframe  class="embed-responsive-item" src="//player.vimeo.com/video/55057393?title=0" width="100%" height="400" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
</div>
<div class="col-sm-5 col-md-4">
<h3>Reservation</h3>
    <form role="form" class="wowload fadeInRight">
        <div class="form-group">
            <input type="text" name="nom" class="form-control"  placeholder="Name" >
        </div>
        <div class="form-group">
            <input type="Phone" name="phone" class="form-control"  placeholder="Phone">
        </div>        
        <div class="form-group">
            <div class="row">
            <div class="col-xs-6">
            <select class="form-control" name="type">
              <option>Type de chambre</option>
              <%
                        ChambreService cs = new ChambreService();
                        for (Chambre c : cs.findAll()) {
                    %>                
                    <option value="<%= c.getType()%>"><%= c.getType()%></option>       
      <%}%>
        
            </select>
            </div>        
            </div>
        </div>
        <div class="form-group">
            <input type="date" class="form-control"  placeholder="Date Debut">
        </div> 
        <div class="form-group">
            <input type="date" class="form-control"  placeholder="Date Fin">
        </div> 
            
                
        
        
        <button class="btn btn-default">Submit</button>
    </form>    
</div>
</div>  
</div>
</div>
<!-- reservation-information -->



<!-- services -->
<div class="spacer services wowload fadeInUp">
<div class="container">
    <div class="row">
    
    
        
		
		 <%
                        ChambreService css = new ChambreService();
                        for (Chambre c : css.findAll()) {
                    %>
                    
                    <div class="col-sm-4">
            <!-- RoomCarousel -->
            <div id="RoomCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <div class="item active"><img src="<%= c.getPhoto()%>" style="width:400px; height:220px" class="img-responsive" alt="slide"></div>                
                </div>
            </div>
            <!-- RoomCarousel-->
            <div class="caption"><%= c.getType()%><a href="" class="pull-right"><i class="fa fa-edit"></i></a></div>
        </div>
        
                    
                    <%}%>

        
    </div>
</div>
</div>
<!-- services -->
<%@ include file="footer.jsp" %>