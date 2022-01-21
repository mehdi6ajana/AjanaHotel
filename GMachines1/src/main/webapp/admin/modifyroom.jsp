<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                    <!-- ============================================================== -->
                    <!-- pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="page-header">
                                <h2 class="pageheader-title">Modifier une chambre </h2>
                                <p class="pageheader-text"> </p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link"></a></li>
                                            <li class="breadcrumb-item active" aria-current="page"></li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end pageheader  -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="mb-0">Chambre Information</h4>
                                        </div>
                                        <div class="card-body">
                                            <form action="OperationChambre" method="post">
                                                <input type="hidden" name="id" value="<%= request.getParameter("id") == null ? "" : request.getParameter("id")%>" size="id" />
                                                <div class="mb-3">
                                                    <label for="email">Numeros <span class="text-muted"></span></label>
                                                    <input type="text" class="form-control" value="<%= request.getParameter("num") == null ? "" : request.getParameter("num")%>" name="num" placeholder="Numero de chambre">
                                                    <div class="invalid-feedback">
                                                        Please enter a valid numero.
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address">Type</label>
                                                    <input type="text" class="form-control" value="<%= request.getParameter("type") == null ? "" : request.getParameter("type")%>" name="type" placeholder="type de chambre" required="">
                                                    <div class="invalid-feedback">
                                                        Please enter type.
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address2">Prix <span class="text-muted"></span></label>
                                                    <input type="text" class="form-control" value="<%= request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" name="prix" placeholder="Prix de chambre">
                                                </div>
                                                
                                                <div class="mb-3">
                                                    <label for="address2">photo <span class="text-muted"></span></label>
                                                    <input type="file" class="form-control" name="photo" placeholder="Photo chambre">
                                                </div>
                                               
                                               <input type="submit" class="form-control" value="add">
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%@ include file="footer.jsp" %>
