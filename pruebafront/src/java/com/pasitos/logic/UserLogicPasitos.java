package com.pasitos.logic;

import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.pasitos.objects.UserObjPasitos;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserLogicPasitos extends Logic
{
    public UserObjPasitos getUserInDB(String p_strUser, String p_strPassword)
    {
        UserObjPasitos CUserDB = null;
        DatabaseX CDatabase = getDatabase();
        String strSQL = "select * "
                + "from sistemax.user "
                + "where user like '"+p_strUser+"' "
                + "and password like '"+p_strPassword+"';";
        ResultSet CResult = CDatabase.executeQuery(strSQL);
        if(CResult!=null)
        {
            try 
            {
                //varibles locales que capturen esos datos
                int iId;
                String strUser;
                String strPassword;
                String strType;
                
                while(CResult.next())
                {
                    iId = CResult.getInt("id");
                    strUser = CResult.getString("user");
                    strPassword = CResult.getString("password");
                    strType = CResult.getString("type");
                    
                    CUserDB = new UserObjPasitos(iId, strUser, strPassword, strType);
                    
                }
            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(UserLogicPasitos.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return CUserDB;
    }
}
