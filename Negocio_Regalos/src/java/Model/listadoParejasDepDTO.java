
package Model;

public class listadoParejasDepDTO {
    private String nombre;
    private int cantDepositos;
    private float totalDepositado;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCantDepositos() {
        return cantDepositos;
    }

    public void setCantDepositos(int cantDepositos) {
        this.cantDepositos = cantDepositos;
    }

    public float getTotalDepositado() {
        return totalDepositado;
    }

    public void setTotalDepositado(float totalDepositado) {
        this.totalDepositado = totalDepositado;
    }

    public listadoParejasDepDTO(String nombre, int cantDepositos, float totalDepositado) {
        this.nombre = nombre;
        this.cantDepositos = cantDepositos;
        this.totalDepositado = totalDepositado;
    }
    
}
