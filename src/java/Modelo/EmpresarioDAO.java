/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpresarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Empresario em = new Empresario();
    int r;
    
    public Empresario buscar(String id){
        Empresario em = new Empresario();
        String sql="select * from empresario where idEmpre="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                em.setId(rs.getInt(1));
                em.setNom(rs.getString(2));
                em.setEntidad(rs.getString(3)); 
                em.setDireccion(rs.getString(4));    
                em.setTel(rs.getString(5));
                em.setEmail(rs.getString(6));
                
            }
        } catch (Exception e){
        }
        return em;
    }

//*******Operaciones CRUD***************//
    public List listar(){
        String sql="select * from empresario";
        List<Empresario>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Empresario em=new Empresario();
                em.setId(rs.getInt(1));
                em.setNom(rs.getString(2));
                em.setEntidad(rs.getString(3)); 
                em.setDireccion(rs.getString(4));    
                em.setTel(rs.getString(5));
                em.setEmail(rs.getString(6));               
                lista.add(em);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Empresario em){ 
        String sql="insert into empresario(idEmpre, nomEmpre, entidad, direccion, tel, email)values(?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, em.getId());
            ps.setString(2, em.getNom());
            ps.setString(3, em.getEntidad());  
            ps.setString(4, em.getDireccion());           
            ps.setString(5, em.getTel());
            ps.setString(6, em.getEmail());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Empresario listarId(int id){
        Empresario em =new Empresario();
        String sql="select * from empresario where idEmpre="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                em.setId(rs.getInt(1));
                em.setNom(rs.getString(2));
                em.setEntidad(rs.getString(3));
                em.setDireccion(rs.getString(4));  
                em.setTel(rs.getString(5));  
                em.setEmail(rs.getString(6));  
            }
        } catch (Exception e) {
        }
        return em;
    }
    public int actualizar(Empresario em){
        String sql="update empresario set nombreEmpre=?, entidad=?, direccion=?, telefono=?, email=? where nitEmpresario=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, em.getNom());
            ps.setString(2, em.getEntidad());
            ps.setString(3, em.getDireccion());  
            ps.setString(4, em.getTel());
            ps.setString(5, em.getEmail());
            ps.setInt(6, em.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from empresario where idEmpre="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
