package Model;

import java.util.ArrayList;

public class Deposito {
    private int codigoDeposito;
    private float importe;
    private int codigoPareja;
    private String nombreDepositante;
    private String apellidoDepositante;

    public int getCodigoDeposito() {
        return codigoDeposito;
    }

    public void setCodigoDeposito(int codigoDeposito) {
        this.codigoDeposito = codigoDeposito;
    }

    public float getImporte() {
        return importe;
    }

    public void setImporte(float importe) {
        this.importe = importe;
    }

    public int getCodigoPareja() {
        return codigoPareja;
    }

    public void setCodigoPareja(int codigoPareja) {
        this.codigoPareja = codigoPareja;
    }

    public String getNombreDepositante() {
        return nombreDepositante;
    }

    public void setNombreDepositante(String nombreDepositante) {
        this.nombreDepositante = nombreDepositante;
    }

    public String getApellidoDepositante() {
        return apellidoDepositante;
    }

    public void setApellidoDepositante(String apellidoDepositante) {
        this.apellidoDepositante = apellidoDepositante;
    }

    public Deposito(int codigoDeposito, float importe, int codigoPareja, String nombreDepositante, String apellidoDepositante) {
        this.codigoDeposito = codigoDeposito;
        this.importe = importe;
        this.codigoPareja = codigoPareja;
        this.nombreDepositante = nombreDepositante;
        this.apellidoDepositante = apellidoDepositante;
    }

    public Deposito(float importe, int codigoPareja, String nombreDepositante, String apellidoDepositante) {
        this.importe = importe;
        this.codigoPareja = codigoPareja;
        this.nombreDepositante = nombreDepositante;
        this.apellidoDepositante = apellidoDepositante;
    }

    
    
}
