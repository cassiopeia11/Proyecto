
package com.pasitos.servlets;

import com.pasitos.logic.RegistroLogicPasitos;
import com.pasitos.objects.RegistroObjPasitos;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet(name = "RegistroServletPasitos", urlPatterns = {"/RegistroServletPasitos"})
public class RegistroServletPasitos extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String strFormId = request.getParameter("formid");
        if(strFormId.equals("1"))
        {
            String strUser = request.getParameter("user");
            String strnombre = request.getParameter("nombre");
            String strapellido = request.getParameter("apellido");
            String strPassword = request.getParameter("password");
            String strConpassword = request.getParameter("conpassword");
            String strEmail = request.getParameter("email");
            String strAnno = request.getParameter("anno");
            String strCarnet = request.getParameter("carnet");
            String strTelefono = request.getParameter("telefono");
            String strTipo = request.getParameter("tipo");
            
            if(strPassword.equals(strConpassword)){
                RegistroLogicPasitos CLogic = new RegistroLogicPasitos();
                RegistroObjPasitos CRegistroUser = CLogic.getUserInDB(strUser, strPassword, strTipo, strConpassword, strEmail, strAnno, strCarnet, strTelefono, strnombre, strapellido);
            }
            else
            {
                JOptionPane.showMessageDialog(null," Message Box Demo.");
            }
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
