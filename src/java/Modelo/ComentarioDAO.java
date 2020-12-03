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

/**
 *
 * @author ORLANDO
 */
public class ComentarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    

    
    
  //*******Operaciones CRUD***************//    
    public List listar(){
        String sql="select * from comentarios order by id desc";
        List<Comentario>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Comentario cm =new Comentario();
                cm.setId(rs.getInt(1));
                cm.setUsuario(rs.getString(2));
                cm.setContenido(rs.getString(3));
                           
                lista.add(cm);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    public int agregar(Comentario cm){ 
        String sql="insert into comentarios(id, usuario, contenido)values(?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, cm.getId());
            ps.setString(2, cm.getUsuario());
            ps.setString(3, cm.getContenido());
                
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    
    public Comentario listarId(int id){
        Comentario cm  =new Comentario();
        String sql="select * from comentarios where id="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                cm.setId(rs.getInt(1));
                cm.setUsuario(rs.getString(2));
                cm.setContenido(rs.getString(3));
                 
            }
        } catch (Exception e) {
        }
        return cm;
    }
    }