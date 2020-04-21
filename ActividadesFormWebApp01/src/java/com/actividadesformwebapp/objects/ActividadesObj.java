package com.actividadesformwebapp.objects;

//pojo
public class ActividadesObj 
{
    //variables de instancia
    private int m_iId;
    private String m_strNombre;
    private String m_strApellidos;
    private String m_strCorreo;
    
    //crear el metodo constructor
    public ActividadesObj(int p_iId, String p_strNombre, String p_strApellidos, String p_strCorreo) 
    {
        setId(p_iId);
        setNombre(p_strNombre);
        setApellidos(p_strApellidos);
        setCorreo(p_strCorreo);
    }
    
    //crear metodos get y set para cada uno
    public int getId() {
        return m_iId;
    }

    private void setId(int p_iId) {
        m_iId = p_iId;
    }

    public String getNombre() {
        return m_strNombre;
    }

    private void setNombre(String p_strNombre) {
        m_strNombre = p_strNombre;
    }
    public String getApellidos() {
        return m_strApellidos;
    }
    
    private void setApellidos(String p_strApellidos) {
        m_strApellidos = p_strApellidos;
    }
    public String getCorreo() {
        return m_strCorreo;
    }
    private void setCorreo(String p_strCorreo) {
        m_strCorreo = p_strCorreo;
    }
    
    
}
