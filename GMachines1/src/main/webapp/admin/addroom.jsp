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
                                <h2 class="pageheader-title">Ajouter une chambre </h2>
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
                                            <form action="AddChambres" method="post">
                                                
                                                <div class="mb-3">
                                                    <label for="email">Numero <span class="text-muted"></span></label>
                                                    <input type="text" class="form-control" name="numero" placeholder="Numero de chambre">
                                                    <div class="invalid-feedback">
                                                        Please enter a valid numero.
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address">Type</label>
                                                    <input type="text" class="form-control"  name="type" placeholder="type de chambre" required="">
                                                    <div class="invalid-feedback">
                                                        Please enter type.
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address2">Prix <span class="text-muted"></span></label>
                                                    <input type="text" class="form-control" name="prix" placeholder="Prix de chambre">
                                                </div>
                                                
                                                <div class="mb-3">
                                                    <label for="address2">photo <span class="text-muted"></span></label>
                                                    <input type="file" class="form-control" name="file" placeholder="Photo chambre">
                                                </div>
                                               
                                               <input type="submit" class="form-control" value="Ajouter">
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
