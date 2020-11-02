package modelo;

public class Trabajador {
    private String rut;
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String sexo;  
    private String direccion;
    private int telefono;
    private String carga;
    private String fechaIngreso;
    private String departamento;
    private String area;
    private String contactoEmergencia;
    private String relacion;
    private int telefonoEmergencia;
    private String rutCarga;
    private String nombreCarga;
    private String apellidoPaternoCarga;
    private String apellidoMaternoCarga;
    private String parentezco;
    private String sexoCarga; 

    public Trabajador ()
    {
        rut = null;
        nombre = null;
        apellidoPaterno = null;
        apellidoMaterno = null;
        sexo = null;
	direccion = null;
	telefono = 0;
	fechaIngreso = null;
	departamento = null;
	area = null;
	contactoEmergencia = null;
	relacion = null;
	telefonoEmergencia = 0;
	rutCarga = null;
	nombreCarga = null;
	apellidoPaternoCarga = null;
	apellidoMaternoCarga = null;
	parentezco = null;
	sexoCarga =null;
      
    }
    
    public Trabajador(String rut, String nombre, String apellidoPaterno, String apellidoMaterno, String sexo, String direccion, int telefono, String fechaIngreso, String departamento, String area, String contactoEmergencia, String relacion, int telefonoEmergencia, String rutCarga, String nombreCarga, String apellidoPaternoCarga, String apellidoMaternoCarga, String parentezco, String sexoCarga) {
        this.rut = rut;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.sexo = sexo;
	this.direccion = direccion;
	this.telefono = telefono;
	this.fechaIngreso = fechaIngreso;
	this.departamento = departamento;
	this.area = area;
	this.contactoEmergencia = contactoEmergencia;
	this.relacion = relacion;
	this.telefonoEmergencia = telefonoEmergencia;
	this.rutCarga = rutCarga;
	this.nombreCarga = nombreCarga;
	this.apellidoPaternoCarga = apellidoPaternoCarga;
	this.apellidoMaternoCarga = apellidoMaternoCarga;
	this.parentezco = parentezco;
	this.sexoCarga = sexoCarga;
       
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo (String sexo) {
        this.sexo = sexo;
    }
    
    public String getDireccion () {
	return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono () {
	return telefono;
    }
    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
    public String getFechaIngreso (){
	return fechaIngreso;
   }
    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getDepartamento () {
	return departamento;
   }
    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getArea () {
	return area;
   }
    public void setArea (String area) {
        this.area = area;
    }
    public String getContactoEmergencia () {
	return contactoEmergencia;
   }
    public void setContactoEmergencia (String contactoEmergencia) {
        this.contactoEmergencia = contactoEmergencia;
    }
    public String getRelacion () {
	return relacion;
   }
    public void setRelacion (String relacion) {
        this.relacion = relacion;
    }
    public int getTelefonoEmergencia () {
	return telefonoEmergencia;
   }
    public void setTelefonoEmergencia (int telefonoEmergencia) {
        this.telefonoEmergencia = telefonoEmergencia;
    }
    public String rutCarga (){
 	return carga;
   }
    public void setRutCarga(String rutCarga) {
        this.rutCarga = rutCarga;
    }
    public String getNombreCarga (){
	return nombreCarga;
   }
    public void setNombreCarga(String nombreCarga) {
        this.nombreCarga = nombreCarga;
    }
    public String getApellidoPaternoCarga () {
	return apellidoPaternoCarga;
  }
    public void setApellidoPaternoCarga (String apellidoPaternoCarga) {
        this.apellidoPaternoCarga= apellidoPaternoCarga;
    }
    public String getApellidoMaternoCarga (){
	return apellidoMaternoCarga;
  }
    public void setApellidoMaternoCarga (String apellidoMaternoCarga) {
        this.apellidoMaternoCarga = apellidoMaternoCarga;
    }
    public String getParentezco (){
	return parentezco;
  }
    public void setParentezco(String parentezco) {
        this.parentezco = parentezco;
    }
    public String getSexoCarga (){
	return sexoCarga;
  }
    public void setSexoCarga (String sexoCarga) {
        this.sexoCarga = sexoCarga;
    }
    
}
