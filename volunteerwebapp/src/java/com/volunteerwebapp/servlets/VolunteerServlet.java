package com.volunteerwebapp.servlets;

import com.volunteerwebapp.logic.VolunteerLogic;
import com.volunteerwebapp.obj.VolunteerObj;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "VolunteerServlet", urlPatterns = {"/VolunteerServlet"})
public class VolunteerServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String strFormId = request.getParameter("formid");
        String connString = "jdbc:mysql://localhost/pasitosdb"
                    +"?user=root&password=12345"
                    +"&autoReconnect=true&useSSL=false";
        VolunteerLogic CLogic = new  VolunteerLogic(connString);       
        if(strFormId.equals("1"))
        {
            String strName =  request.getParameter("name");
            String strCarnet =  request.getParameter("carnet");
            String strYear =  request.getParameter("year");
            String strPhone =  request.getParameter("phone");
        
            
            boolean bHasFailed = CLogic.insertVolunteer(strName, strCarnet, strYear, strPhone);
            
            request.getSession().setAttribute("hasfailed", bHasFailed);
            request.getRequestDispatcher("volunteer.jsp")    
                    .forward(request, response);
            
        }
        if(strFormId.equals("2"))
        {
            String strCarnet = request.getParameter("carnet");
            
            VolunteerLogic vLogic = new VolunteerLogic(connString);
            VolunteerObj volunteerInfo = vLogic.getVolunteerInfo(strCarnet);
            request.getSession().setAttribute("volunteerinfo", volunteerInfo);
            request.getRequestDispatcher("volunteerMessage.jsp").forward(request, response);
                    
            
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
