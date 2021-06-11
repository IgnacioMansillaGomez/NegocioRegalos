
package Model;

public class Compra {
    private int codigoCompra;
    private int codigoPareja;
    private int codigo;

    public int getCodigoCompra() {
        return codigoCompra;
    }

    public void setCodigoCompra(int codigoCompra) {
        this.codigoCompra = codigoCompra;
    }

    public int getCodigoPareja() {
        return codigoPareja;
    }

    public void setCodigoPareja(int codigoPareja) {
        this.codigoPareja = codigoPareja;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }


    public Compra(int codigoCompra, int codigoPareja, int codigo) {
        this.codigoCompra = codigoCompra;
        this.codigoPareja = codigoPareja;
        this.codigo = codigo;
    }
    public Compra(int codigoPareja, int codigo) {
        this.codigoPareja = codigoPareja;
        this.codigo = codigo;
    }
    
}
