
package com.volunteerwebapp.obj;


public class VolunteerObj 
{
    private int m_iId;
    private String m_strCarnet;
    private String m_strYear;
    private String m_strName;
    private String m_strPhone;

    public VolunteerObj(String strCarnet, String strName, String strYear) 
    {
        setName(strName);
        setName(strCarnet);
        setName(strYear);
    }
    
    public int getId() {
        return m_iId;
    }

    private void setId(int p_iId) {
        m_iId = p_iId;
    }

    public String getCarnet() {
        return m_strCarnet;
    }

    private void setCarnet(String p_strCarnet) {
        m_strCarnet = p_strCarnet;
    }

    public String getYear() {
        return m_strYear;
    }

    private void setYear(String p_strYear) {
        m_strYear = p_strYear;
    }

    public String getName() {
        return m_strName;
    }

    private void setName(String p_strName) {
        m_strName = p_strName;
    }

    public String getPhone() {
        return m_strPhone;
    }

    private void setPhone(String p_strPhone) {
        m_strPhone = p_strPhone;
    }
    
    

    
    
    
    
}
