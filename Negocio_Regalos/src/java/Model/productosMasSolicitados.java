
package Model;

public class productosMasSolicitados {
    private String descripcion;
    private int cantidad;

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public productosMasSolicitados(String descripcion, int cantidad) {
        this.descripcion = descripcion;
        this.cantidad = cantidad;
    }
    
}
