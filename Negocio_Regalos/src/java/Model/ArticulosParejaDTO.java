
package Model;

import java.util.ArrayList;

public class ArticulosParejaDTO {
    private int codigoCompra;
    private String descripcion;
    private float precio;

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }

    
    
    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public ArticulosParejaDTO(int codigoCompra, String descripcion, float precio) {
        this.codigoCompra = codigoCompra;
        this.descripcion = descripcion;
        this.precio = precio;
    }
    
 
    
   
    
    
}
