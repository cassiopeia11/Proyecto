package com.volunteerwebapp.logic;
import balcorpfw.database.DatabaseX;
import balcorpfw.logic.Logic;
import com.volunteerwebapp.obj.VolunteerObj;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class VolunteerLogic extends Logic 
{

    public VolunteerLogic(String connString) 
    {
        super(connString);
    }
    

    public boolean insertVolunteer( String strName, String strCarnet, String strYear, String strPhone) 
    {
        boolean bHasFailed;
        DatabaseX database =  getDatabase();
        bHasFailed = database.executeNonQueryBool("INSERT INTO pasitosdb.users"
                +"(id, name, carnet, year, phone)"
                +" values(0, '"+strName+"', '"+strCarnet+"', '"+strYear+"', '"+strPhone+"');");
        return bHasFailed;
    } 
    
    public VolunteerObj getVolunteerInfo(String strCarnet) 
    {
        VolunteerObj volunteerInfo = null;
        DatabaseX database = getDatabase();
        
            
        ResultSet CResult = database.executeQuery("SELECT name, carnet, year, phone from pasitosdb.users where carnet = '"+strCarnet+"'");
        if(CResult!=null)
        {
            try 
            {
                String Name;
                String Carnet;
                String Year;
                                                             
                Name = CResult.getString("name");
                Carnet = CResult.getString("carnet");
                Year = CResult.getString("year");
                volunteerInfo = new VolunteerObj(Name, Carnet, Year);
                

            } 
            catch (SQLException ex) 
            {
                Logger.getLogger(VolunteerObj.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return  volunteerInfo;
    }
    
}
