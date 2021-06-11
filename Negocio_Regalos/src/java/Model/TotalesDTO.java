
package Model;

public class TotalesDTO {
    private float totalCompra;
    private float totalDeposito;
    private float devolucion;

    public float getTotalCompra() {
        return totalCompra;
    }

    public void setTotalCompra(float totalCompra) {
        this.totalCompra = totalCompra;
    }

    public float getTotalDeposito() {
        return totalDeposito;
    }

    public void setTotalDeposito(float totalDeposito) {
        this.totalDeposito = totalDeposito;
    }

    public float getDevolucion() {
        return devolucion;
    }

    public void setDevolucion(float devolucion) {
        this.devolucion = devolucion;
    }

    public TotalesDTO(float totalCompra, float totalDeposito, float devolucion) {
        this.totalCompra = totalCompra;
        this.totalDeposito = totalDeposito;
        this.devolucion = devolucion;
    }
    
}
