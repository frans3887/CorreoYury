/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.Usuario;

public class UsuarioDAO 
{    
    private static Connection connect;
    private static Statement state;
    private static int sw=0;
    
    public static void conectar()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/correo_yury","root",null);
            state = connect.createStatement();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
    
    public static int getSW()
    {
         return sw;
    }
    
    public static Usuario login(String usuario,String pass) throws SQLException
    {
        Usuario user = new Usuario();
        conectar();    
        ResultSet result = state.executeQuery("SELECT * FROM usuario WHERE username='"
                           +usuario+"' AND password='"+pass+"';");
        while(result.next())
        {
            user.setRut((String)result.getObject(1));
            user.setNombre((String)result.getObject(2));
            user.setApellidoPaterno((String)result.getObject(3));
            user.setApellidoMaterno((String)result.getObject(4));
            user.setTipoUsuario((int)result.getObject(5));
            user.setCargo((String)result.getObject(6));
            user.setUsername((String)result.getObject(7));
            user.setPassword((String)result.getObject(8));
            user.setEstado((int)result.getObject(9));
        }
        connect.close();
        return user;
     }
    
    public static ArrayList<Usuario> getArreglo(ResultSet result) throws SQLException
    {
        ArrayList<Usuario> arreglo = new ArrayList();
        while(result.next())
        {
            Usuario doc = new Usuario();
            doc.setRut((String)result.getObject(1));
            doc.setNombre((String)result.getObject(2));
            doc.setApellidoPaterno((String)result.getObject(3));
            doc.setApellidoMaterno((String)result.getObject(4));
            doc.setTipoUsuario((int)result.getObject(5));
            doc.setCargo((String)result.getObject(6));
            doc.setUsername((String)result.getObject(7));
            doc.setPassword((String)result.getObject(8));
            doc.setEstado((int)result.getObject(9));
            arreglo.add(doc);
        }
        return arreglo;
    }
    
    public static String revisionUsuario(String nombre, String apellido) throws SQLException
    {
        ArrayList<Usuario> alUsuarios = new ArrayList();
        String username="";
        String usernamecito;
        int i=0;
        conectar();    
        ResultSet result = state.executeQuery("SELECT * FROM usuario");
        alUsuarios = getArreglo(result);
        username = nombre.charAt(0)+apellido;
        username = username.toLowerCase();
        for(Usuario usuarito : alUsuarios)
        {
            usernamecito = username+i;
            if(usuarito.getUsername().equals(usernamecito))
                {
                    i++;
                }
        }
        username = username+i;
        return username;
    }
    
     public static boolean revisarRut(String rut) throws SQLException
    {
        Usuario doc = new Usuario();
        conectar();    
        ResultSet result = state.executeQuery("SELECT * FROM usuario WHERE rut='"
                           +rut+"';");
        while(result.next())
        {
            doc.setRut((String)result.getObject(1));
            doc.setNombre((String)result.getObject(2));
            doc.setApellidoPaterno((String)result.getObject(3));
            doc.setApellidoMaterno((String)result.getObject(4));
            doc.setTipoUsuario((int)result.getObject(5));
            doc.setCargo((String)result.getObject(6));
            doc.setUsername((String)result.getObject(7));
            doc.setPassword((String)result.getObject(8));
            doc.setEstado((int)result.getObject(9));
            if(doc.getRut().equals(rut))
            {
                connect.close();
                return false;
            }
        }
        connect.close();
        return true;
     }
    
    public static boolean  agregar(Usuario usuario) throws SQLException
    {
        boolean estado=false;
        if(!revisarRut(usuario.getRut()))
        {
            return estado;
        }
        conectar();
        state.executeUpdate("INSERT INTO usuario VALUES('"+usuario.getRut()+
                "','"+usuario.getNombre()+"','"+usuario.getApellidoPaterno()+"','"
                +usuario.getApellidoMaterno()+"',"+usuario.getTipoUsuario()+
                ",'"+usuario.getCargo()+"','"+usuario.getUsername()+"','"
                +usuario.getPassword()+"',"+usuario.getEstado()+");");
        connect.close();
        estado = true;
        return estado;
    }
}