package Modelo;

public class Club {
    int nit;
    String nom;
    String provincia;
    String direccion;
    String email;
    String tel;

    public Club() {
    }

    public Club(int nit, String nom, String provincia, String direccion, String email, String tel) {
        this.nit = nit;
        this.nom = nom;
        this.provincia = provincia;
        this.direccion = direccion;
        this.email = email;
        this.tel = tel;
    }
    

    public int getNit() {
        return nit;
    }

    public void setNit(int nit) {
        this.nit = nit;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

}