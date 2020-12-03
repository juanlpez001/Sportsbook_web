/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.InputStream;

/**
 *
 * @author ORLANDO
 */
public class Detalles_Deportista {
    int numero;
    InputStream foto;
    int idDeportista; 
    String nombreDeport; 
    String fechaNacimi;
    String lugarNacimi; 
    int edad; 
    String sexo; 
    String estatura; 
    String peso;
    String posicionJuego; 
    String formaconDepor;
    String equiposJugados;

    public Detalles_Deportista() {
    }

    public Detalles_Deportista(int numero, InputStream foto, int idDeportista, String nombreDeport, String fechaNacimi, String lugarNacimi, int edad, String sexo, String estatura, String peso, String posicionJuego, String formaconDepor, String equiposJugados) {
        this.numero = numero;
        this.foto = foto;
        this.idDeportista = idDeportista;
        this.nombreDeport = nombreDeport;
        this.fechaNacimi = fechaNacimi;
        this.lugarNacimi = lugarNacimi;
        this.edad = edad;
        this.sexo = sexo;
        this.estatura = estatura;
        this.peso = peso;
        this.posicionJuego = posicionJuego;
        this.formaconDepor = formaconDepor;
        this.equiposJugados = equiposJugados;
    }
    
    public int getNumero() {
        return numero;
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }
    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public int getIdDeportista() {
        return idDeportista;
    }

    public void setIdDeportista(int idDeportista) {
        this.idDeportista = idDeportista;
    }

    public String getNombreDeport() {
        return nombreDeport;
    }

    public void setNombreDeport(String nombreDeport) {
        this.nombreDeport = nombreDeport;
    }

    public String getFechaNacimi() {
        return fechaNacimi;
    }

    public void setFechaNacimi(String fechaNacimi) {
        this.fechaNacimi = fechaNacimi;
    }

    public String getLugarNacimi() {
        return lugarNacimi;
    }

    public void setLugarNacimi(String lugarNacimi) {
        this.lugarNacimi = lugarNacimi;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEstatura() {
        return estatura;
    }

    public void setEstatura(String estatura) {
        this.estatura = estatura;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getPosicionJuego() {
        return posicionJuego;
    }

    public void setPosicionJuego(String posicionJuego) {
        this.posicionJuego = posicionJuego;
    }

    public String getFormaconDepor() {
        return formaconDepor;
    }

    public void setFormaconDepor(String formaconDepor) {
        this.formaconDepor = formaconDepor;
    }

    public String getEquiposJugados() {
        return equiposJugados;
    }

    public void setEquiposJugados(String equiposJugados) {
        this.equiposJugados = equiposJugados;
    }
    

}