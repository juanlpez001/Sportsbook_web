
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DeportistaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
  public Deportista buscar(int id){
      Deportista d=new Deportista();
      String sql="select * from deportista where idDeportista="+id;
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          rs=ps.executeQuery();
          while (rs.next()) {
              d.setId(rs.getInt(1));
              d.setNom(rs.getString(2));
              d.setCategoria(rs.getString(3));
              d.setPosicion(rs.getString(4));
              d.setTel(rs.getString(5));
              d.setDireccion(rs.getString(6));
          }
      } catch (Exception e) {
      }
     return d;
  }
    
  
  /*
  public int actualizarstock(int id, int stock){
      String sql="update deportista set Stock=? where iddeportista=?";
      try {
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          ps.setInt(1, stock);
          ps.setInt(2, id);
          ps.executeUpdate();
      } catch (Exception e) {
      }
      return r;
  }
  */
    
  //*******Operaciones CRUD***************//    
    public List listar(){
        String sql="select * from deportista";
        List<Deportista>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Deportista d=new Deportista();
                d.setId(rs.getInt(1));
                d.setNom(rs.getString(2));
                d.setCategoria(rs.getString(3));
                d.setPosicion(rs.getString(4));
                d.setTel(rs.getString(5));
                d.setDireccion(rs.getString(6));               
                lista.add(d);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Deportista d){ 
        String sql="insert into deportista(idDeportista, nomDepor, categoria,posicion,telefono, direccion)values(?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, d.getId());
            ps.setString(2, d.getNom());
            ps.setString(3, d.getCategoria());
            ps.setString(4, d.getPosicion());
            ps.setString(5, d.getTel());
            ps.setString(6, d.getDireccion());       
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Deportista listarId(int id){
        Deportista d = new Deportista();
        String sql="select * from deportista where idDeportista="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                d.setId(rs.getInt(1));
                d.setNom(rs.getString(2));               
                d.setCategoria(rs.getString(3));
                d.setPosicion(rs.getString(4));
                d.setTel(rs.getString(5)); 
                d.setDireccion(rs.getString(6));
            }
        } catch (Exception e) {
        }
        return d;
    }
    public int actualizar(Deportista d){
        String sql="update deportista set idDeportista=?, nomDepor=?, categoria=?,posicion=?,telefono=?, direccion=? where idDeportista=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, d.getId());
            ps.setString(2, d.getNom());
            ps.setString(3, d.getCategoria());
            ps.setString(4, d.getPosicion());
            ps.setString(5, d.getTel());
            ps.setString(6, d.getDireccion());          
            ps.setInt(7, d.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from deportista where idDeportista="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public List buscar(String texto){
        List<Deportista> lista1 = new ArrayList<>(); 
        String sql; 
        sql = "select * from deportista where nomDepor like '%" + texto +"%' or Nombres like '%" + texto +"%' or idDeportista like '%" + texto +"%'";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Deportista dp = new Deportista();
                dp.setId(rs.getInt("Id"));
                dp.setNom(rs.getString("getNom"));
                lista1.add(dp);
            }
            
        }catch(Exception e){
            
        }
        return lista1;
    }
}
