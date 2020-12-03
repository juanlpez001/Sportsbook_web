
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClubDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public Club buscar(String nit){
        Club c= new Club();
        String sql="Select * from club where nitClub="+nit;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                c.setNit(rs.getInt(1));
                c.setNom(rs.getString(2));
                c.setProvincia(rs.getString(3)); 
                c.setDireccion(rs.getString(4));    
                c.setEmail(rs.getString(5));
                c.setTel(rs.getString(6));
                
            }
        } catch (Exception e) {
        }
        return c;
    }

//*******Operaciones CRUD***************//
    public List listar(){
        String sql="select * from club";
        List<Club>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Club c=new Club();
                c.setNit(rs.getInt(1));
                c.setNom(rs.getString(2));
                c.setProvincia(rs.getString(3)); 
                c.setDireccion(rs.getString(4));    
                c.setEmail(rs.getString(5));
                c.setTel(rs.getString(6));               
                lista.add(c);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Club c){ 
        String sql="insert into club(nitClub, nombre, provincia, direccion, email, telefono)values(?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, c.getNit());
            ps.setString(2, c.getNom());
            ps.setString(3, c.getProvincia());  
            ps.setString(4, c.getDireccion());           
            ps.setString(5, c.getEmail());
            ps.setString(6, c.getTel());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Club listarId(int id){
        Club c =new Club();
        String sql="select * from club where nitClub="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                c.setNit(rs.getInt(1));
                c.setNom(rs.getString(2));
                c.setProvincia(rs.getString(3));
                c.setDireccion(rs.getString(4));  
                c.setEmail(rs.getString(5));  
                c.setTel(rs.getString(6));  
            }
        } catch (Exception e) {
        }
        return c;
    }
    public int actualizar(Club c){
        String sql="update club set nombre=?, provincia=?, direccion=?, email=?, telefono=? where nitClub=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, c.getNom());
            ps.setString(2, c.getProvincia());
            ps.setString(3, c.getDireccion());  
            ps.setString(4, c.getEmail());
            ps.setString(5, c.getTel());
            ps.setInt(6, c.getNit());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from club where nitClub="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
