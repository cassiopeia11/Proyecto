package com.actividadesformwebapp.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.actividadesformwebapp.objects.ActividadesObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ActividadesLogic extends Logic
{
    public ActividadesLogic(String pConnectionString) {
        super(pConnectionString);
    }
    
    //poner sus metodos
    public List<ActividadesObj> getAllActividades()
    {
        //primero crear el database x
        DatabaseX database = getDatabase();
        //resultset y ejecutar el query con database
        String strSql = "select * from pasitosdb.actividades;";
        ResultSet result = database.executeQuery(strSql);
        ArrayList<ActividadesObj> actividadesArray = null;
        
        //verificar que no venga null
        if(result!=null)
        {
            try 
            {
                //creando una variable de tipo entero
                //llamado iId
                int iId;
                String strNombre;
                String strApellidos;
                String strCorreo;
                ActividadesObj currentActividades;
                actividadesArray = new ArrayList<>();
                
                //trabajar con el
                while(result.next())
                {
                   //nunca crear varibles dentro de un while
                    iId = result.getInt("id");
                    strNombre = result.getString("nombre");
                    strApellidos = result.getString("apellidos");
                    strCorreo = result.getString("correo");
                    
                    currentActividades = new ActividadesObj(iId, strNombre, strApellidos, strCorreo);
                    
                    actividadesArray.add(currentActividades);
                }
            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(ActividadesLogic.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return actividadesArray;
    }

    public boolean insertActividades(String p_strNombre, String p_strApellidos, String p_strCorreo) 
    {
        boolean hasFailed = false;
        DatabaseX database = getDatabase();
        hasFailed = database.executeNonQueryBool("insert into pasitosdb.actividades(id, nombre, apellidos, correo) values(0,'"+p_strNombre+"','"+p_strApellidos+"','"+p_strCorreo+"');");
        return hasFailed;
    }

    

}
