package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.Trabajador;

public class TrabajadorDAO 
{
    private static Connection connect;
    private static Statement state;
    
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

    public static boolean agregar(Trabajador trabajador) throws SQLException
    {
        boolean estado=false;
             conectar();
             /*state.executeUpdate("INSERT INTO trabajador VALUES('"+trabajador.getId()+
                     "','"+trabajador.getRut()+"','"+trabajador.getNombre()+"','"+trabajador.getApellidoPaterno()+"','"
                     +trabajador.getApellidoMaterno()+"','"+trabajador.getSexo()+
                     "','"+trabajador.getDireccion()+"','"+trabajador.getTelefono()+"','"
                     +trabajador.getCargo()+"' , '"+trabajador.getFechaIngreso()+"','"+trabajador.getDepartamento()+"', '"+trabajador.getArea()+"', '"+trabajador.getContactoEmergencia()+"' , '"+trabajador.getRelacion()+"' ,
			'"+trabajador.getTelefonoEmergencia()+"', '"+trabajador.getRutCarga()+"', '"+trabajador.getNombreCarga()+"', '"+trabajador.getApellidoPaternoCarga()+"', '"+trabajador.getApellidoPaternoCarga()+"'  
, '"+trabajador.getApellidoMaternoCarga()+"', '"+trabajador.getParentezco()+"' , "+trabajador.getSexoCarga()+");");*/
             connect.close();
             estado = true;
        return estado;
    }
    /*
    public static ArrayList<Trabajador> getArreglo(ResultSet result) throws SQLException
    {
        ArrayList<Trabajador> arreglo = new ArrayList();
        while(result.next())
        {
            Trabajador trab = new Trabajador();
            trab.setId((int)result.getObject(1));
            trab.setRut((String)result.getObject(2));
            trab.setNombre((String)result.getObject(3));
            trab.setApellidoPaterno((String)result.getObject(4));
            trab.setApellidoMaterno((String)result.getObject(5));
	    trab.setSexo((String)result.getObject(6));
	    trab.setDireccion((String)result.getObject(7));
	    trab.setTelefono((int)result.getObject(8));
	    trab.setCargo((String)result.getObject(9));
	    trab.setFechaIngreso((String)result.getObject(10));
	    trab.setDepartamento((String)result.getObject(11));
	    trab.setArea((String)result.getObject(12));
	    trab.setContactoEmergencia((String)result.getObject(13));
	    trab.setRelacion((String)result.getObject(14));
	    trab.setTelefonoEmergencia((int)result.getObject(15));
	    trab.setRutCarga((String)result.getObject(16));
	    trab.setNombreCarga((String)result.getObject(17));
	    trab.setApellidoPaternoCarga((String)result.getObject(18));
            trab.setApellidoMaternoCarga((String)result.getObject(19));
	    trab.setParentezco((String)result.getObject(20));
	    trab.setSexoCarga((String)result.getObject(21));
            arreglo.add(trab);
        }
        return arreglo;
    }
    */
    public static ArrayList<Trabajador> obtenerDatos() throws SQLException
    {
        ArrayList<Trabajador> alTrabajadores = new ArrayList();
        conectar();
        ResultSet result = state.executeQuery("SELECT * FROM trabajador;");
        //alTrabajadores = getArreglo(result);
        connect.close();
        return alTrabajadores;
    }
}
