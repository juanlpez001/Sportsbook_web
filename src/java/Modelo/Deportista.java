
package Modelo;

import java.util.List;

public class Deportista {
    int id;
    String nom;
    String categoria;
    String posicion; 
    String tel;
    String direccion;
    
    
    int stock;
    String estado;

    public Deportista() {
    }

    public Deportista(int id, String nom, String categoria, String posicion, String tel, String direccion, int stock, String estado) {
        this.id = id;
        this.nom = nom;
        this.categoria = categoria;
        this.posicion = posicion;
        this.tel = tel;
        this.direccion = direccion;
        this.stock = stock;
        this.estado = estado;
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

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getPosicion() {
        return posicion;
    }

    public void setPosicion(String posicion) {
        this.posicion = posicion;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
        
  
}