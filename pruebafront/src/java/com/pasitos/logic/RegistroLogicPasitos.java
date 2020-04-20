
package com.pasitos.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.pasitos.objects.RegistroObjPasitos;

public class RegistroLogicPasitos extends Logic 
{
    public RegistroObjPasitos getUserInDB(String p_strUser, String p_strPassword, String p_strType, String p_strConpassword, String p_strEmail, String p_strAnno, String p_strCarnet, String p_strTelefono, String p_strNombre, String p_strApellido)
    {
        RegistroObjPasitos CRegistroDB = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "INSERT INTO sistemax.user (nombre, apellido, user, password, type, anno, correo, carnet, telefono)"
                        +" VALUES ('"+p_strNombre+"', '"+p_strApellido+"', '"+p_strUser+"', '"+p_strPassword+"', '"+p_strType+"', '"+p_strAnno+"', '"+p_strEmail+"', '"+p_strCarnet+"', '"+p_strTelefono+"')";
        CDatabase.executeNonQueryBool(strSQL);
        
        return CRegistroDB;
    }
}

