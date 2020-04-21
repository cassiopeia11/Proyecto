package com.actividadesformwebapp.servlets;

import com.actividadesformwebapp.logic.ActividadesLogic;
import com.actividadesformwebapp.objects.ActividadesObj;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ActividadesServlet", urlPatterns = {"/ActividadesServlet"})
public class ActividadesServlet extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String strFormId = request.getParameter("formid");
        
        if(strFormId.equals("1"))
        {
            //view all actividades : actividadesMain
            String connString="jdbc:mysql://localhost/pasitosdb?user=root&password=12345"
                    + "&autoReconnect=true&useSSL=false"
                    + "&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            
            
            ActividadesLogic logic = new ActividadesLogic(connString);
            List<ActividadesObj> actividadesArray=logic.getAllActividades();
            
            request.getSession().setAttribute("actividadesarray", actividadesArray);
            request.getRequestDispatcher("actividadesMain.jsp")
                    .forward(request, response);
        }
            
        if(strFormId.equals("2"))
        {
            //insert a new actividades : 
            String strNombre = request.getParameter("nombre");
            String strApellidos = request.getParameter("apellidos");
            String strCorreo = request.getParameter("correo");
            
            String connString="jdbc:mysql://localhost/pasitosdb?user=root&password=12345"
                    + "&autoReconnect=true&useSSL=false"
                    + "&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
            
            
            ActividadesLogic logic = new ActividadesLogic(connString);
            boolean hasFailed = logic.insertActividades(strNombre, strApellidos, strCorreo);
            request.getSession().setAttribute("hasFailed", hasFailed);
            request.getRequestDispatcher("actividadesMessage.jsp").forward(request, response);
            
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
