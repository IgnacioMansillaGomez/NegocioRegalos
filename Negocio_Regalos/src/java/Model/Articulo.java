package Model;
public class Articulo {
    private int codigo;
    private float precio;
    private String descripcion;


    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
    
    public String getDescripcion() {
        return descripcion;
    }



    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Articulo(float precio, String descripcion) {
        this.precio = precio;
        this.descripcion = descripcion;
    }
    public Articulo(int codigo,float precio,String descripcion) {
        this.codigo = codigo;
        this.precio=precio;
        this.descripcion=descripcion;
    }

    @Override
    public String toString() {
        return "Descripcion : " +descripcion+ "Precio : $ " + precio;
    }
    
    
}
