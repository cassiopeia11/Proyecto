
package com.pasitos.objects;

public class RegistroObjPasitos 
{
    private int m_iId;
    private String m_strNombre;
    private String m_strApellido;
    private String m_strUser;
    private String m_strPassword;
    private String m_strType;
    private String m_strConpassword;
    private String m_strEmail;
    private String m_strAnno;
    private String m_strCarnet;
    private String m_strTelefono;

    public RegistroObjPasitos(int p_iId, String p_strUser, String p_strPassword, String p_strType, String p_strConpassword, String p_strEmail, String p_strAnno, String p_strCarnet, String p_strTelefono, String p_strNombre, String p_strApellido) {
        setId(p_iId);
        setUser(p_strUser);
        setPassword(p_strPassword);
        setType(p_strType);
        setConpassword(p_strConpassword);
        setEmail(p_strEmail);
        setAnno(p_strAnno);
        setCarnet(p_strCarnet);
        setTelefono(p_strTelefono);
        setNombre(p_strNombre);
        setApellido(p_strApellido);
        
    }

    
    
    public int getId() {
        return m_iId;
    }

    private void setId(int p_iId) {
        m_iId = p_iId;
    }

    public String getUser() {
        return m_strUser;
    }

    private void setUser(String p_strUser) {
        m_strUser = p_strUser;
    }

    public String getPassword() {
        return m_strPassword;
    }

    private void setPassword(String p_strPassword) {
        m_strPassword = p_strPassword;
    }

    public String getType() {
        return m_strType;
    }

    private void setType(String p_strType) {
        m_strType = p_strType;
    }

    public String getConpassword() {
        return m_strConpassword;
    }

    private void setConpassword(String p_strConpassword) {
        m_strConpassword = p_strConpassword;
    }

    public String getEmail() {
        return m_strEmail;
    }

    private void setEmail(String p_strEmail) {
        m_strEmail = p_strEmail;
    }

    public String getAnno() {
        return m_strAnno;
    }

    private void setAnno(String p_strAnno) {
        m_strAnno = p_strAnno;
    }

    public String getCarnet() {
        return m_strCarnet;
    }

    private void setCarnet(String p_strCarnet) {
        m_strCarnet = p_strCarnet;
    }

    public String getTelefono() {
        return m_strTelefono;
    }

    private void setTelefono(String p_strTelefono) {
        m_strTelefono = p_strTelefono;
    }

    public String getNombre() {
        return m_strNombre;
    }

    private void setNombre(String p_strNombre) {
        m_strNombre = p_strNombre;
    }

    public String getApellido() {
        return m_strApellido;
    }

    private void setApellido(String p_strApellido) {
        m_strApellido = p_strApellido;
    }
    
    
    
            
}
