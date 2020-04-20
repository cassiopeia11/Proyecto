package com.pasitos.servlets;

import com.pasitos.logic.ActividadesLogic;
import com.pasitos.logic.UserLogicPasitos;
import com.pasitos.objects.ActividadesObj;
import com.pasitos.objects.UserObjPasitos;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UserServletPasitos", urlPatterns = {"/UserServletPasitos"})
public class UserServletPasitos extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String strFormId = request.getParameter("formid");
        
        if(strFormId.equals("1"))
        {
            String strUser = request.getParameter("user");
            String strPassword = request.getParameter("password");
            UserLogicPasitos CLogic = new UserLogicPasitos();
            UserObjPasitos CLoginUser = CLogic.getUserInDB(strUser, strPassword);
            ActividadesLogic logic = new ActividadesLogic();
            List<ActividadesObj> actividadesArray=logic.getAllActividades();
            //verificacion como yo la necesito
            if(CLoginUser!=null)
            {
                //log in al usuario eeexitooooo
                request.getSession().setAttribute("logged_user", CLoginUser);
                request.getSession().setAttribute("actividadesarray", actividadesArray);                

                
                request.getRequestDispatcher("actividades.jsp")
                       .forward(request, response);
            }
            else
            {
                String strMessage = "User or Password are incorrect please try again";
                request.getSession().setAttribute("message", strMessage);
                
                //usuario o password estan equivocados
                request.getRequestDispatcher("errorMessage.jsp")
                       .forward(request, response);
            }
        }
        if(strFormId.equals("2"))
        {
            //insert a new actividades : 
            String strNombre = request.getParameter("nombre");
            String strApellidos = request.getParameter("apellido");
            String strCorreo = request.getParameter("email");
            
        
            
            
            ActividadesLogic logic = new ActividadesLogic();
            boolean hasFailed = logic.insertActividades(strNombre, strApellidos, strCorreo);
            request.getSession().setAttribute("hasFailed", hasFailed);
            request.getRequestDispatcher("index.jsp").forward(request, response);
            
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
