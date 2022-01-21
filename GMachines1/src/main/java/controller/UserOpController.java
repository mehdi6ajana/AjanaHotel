package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import beans.Chambre;
import beans.Machine;
import beans.User;
import service.ChambreService;
import service.UserService;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

/**
 * Servlet implementation class ClientController
 */
@WebServlet("/admin/OperationUser")
public class UserOpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService cs = new UserService();
	//private final String UPLOAD_DIRECTORY = "C:/uploads";
    /**
     * Default constructor. 
     */
    public UserOpController() {
        // TODO Auto-generated constructor stub
    }

    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getParameter("op") != null) {
            if (request.getParameter("op").equals("enable")) {
                int id = Integer.parseInt(request.getParameter("id"));
                cs.updateEtatEnable(cs.findById(id));
                response.sendRedirect("listeusers.jsp");
            } else if (request.getParameter("op").equals("disable")) {
                int id = Integer.parseInt(request.getParameter("id"));
                cs.updateEtatDisable(cs.findById(id));
                response.sendRedirect("listeusers.jsp" );
            }
        } 
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        processRequest(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 processRequest(request, response);
	}

}
