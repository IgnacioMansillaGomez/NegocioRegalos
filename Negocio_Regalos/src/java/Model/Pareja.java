package Model;
public class Pareja {
    private int codigoPareja;
    private String nombrePareja;

    public Pareja(int codigoPareja, String nombrePareja) {
        this.codigoPareja = codigoPareja;
        this.nombrePareja = nombrePareja;
    }



    public int getCodigoPareja() {
        return codigoPareja;
    }

    public void setCodigoPareja(int codigoPareja) {
        this.codigoPareja = codigoPareja;
    }

    public String getNombrePareja() {
        return nombrePareja;
    }

    public void setNombrePareja(String nombrePareja) {
        this.nombrePareja = nombrePareja;
    }

    public Pareja(String nombrePareja) {
        this.nombrePareja = nombrePareja;
    }

    @Override
    public String toString() {
        return "Código Pareja " + codigoPareja + " NombrePareja " + nombrePareja;
    }
    
    
}
