/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author ORLANDO
 */
public class Detalle_Patrocinio {
    int numeroPatro;
    int idDeportista;
    String deportista; 
    int nitClub; 
    String club; 
    String empresario; 
    String fechaIni;
    String fechaFin;

    public Detalle_Patrocinio() {
    }

    public Detalle_Patrocinio(int numeroPatro, int idDeportista, String deportista, int nitClub, String club, String empresario, String fechaIni, String fechaFin) {
        this.numeroPatro = numeroPatro;
        this.idDeportista = idDeportista;
        this.deportista = deportista;
        this.nitClub = nitClub;
        this.club = club;
        this.empresario = empresario;
        this.fechaIni = fechaIni;
        this.fechaFin = fechaFin;
    }
    
    

    public int getNumeroPatro() {
        return numeroPatro;
    }

    public void setNumeroPatro(int numeroPatro) {
        this.numeroPatro = numeroPatro;
    }

    public int getIdDeportista() {
        return idDeportista;
    }

    public void setIdDeportista(int idDeportista) {
        this.idDeportista = idDeportista;
    }

    public String getDeportista() {
        return deportista;
    }

    public void setDeportista(String deportista) {
        this.deportista = deportista;
    }

    public int getNitClub() {
        return nitClub;
    }

    public void setNitClub(int nitClub) {
        this.nitClub = nitClub;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public String getEmpresario() {
        return empresario;
    }

    public void setEmpresario(String empresario) {
        this.empresario = empresario;
    }

    public String getFechaIni() {
        return fechaIni;
    }

    public void setFechaIni(String fechaIni) {
        this.fechaIni = fechaIni;
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }
    
    
}
