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
public class Empresario {
    int id;
    String nom; 
    String entidad; 
    String direccion; 
    String tel;
    String email;

    public Empresario() {
    }

    public Empresario(int id, String nom, String entidad, String direccion, String tel, String email) {
        this.id = id;
        this.nom = nom;
        this.entidad = entidad;
        this.direccion = direccion;
        this.tel = tel;
        this.email = email;
    }
    
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEntidad() {
        return entidad;
    }

    public void setEntidad(String entidad) {
        this.entidad = entidad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}
