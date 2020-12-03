package Modelo;

import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class Detalles_DeportistaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    Detalles_Deportista dtp = new Detalles_Deportista();
   /* 
  public Detalles_Deportista buscar(int id){
      
      String sql="select * from detalles_deportista where idDeportista="+id;
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
    */
  
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
        String sql="select * from detalles_deportista";
        List<Detalles_Deportista>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Deportista d=new Deportista();
                dtp.setNumero(rs.getInt(1));
                dtp.setFoto(rs.getBinaryStream(2));
                dtp.setIdDeportista(rs.getInt(3));
                dtp.setNombreDeport(rs.getString(4));
                dtp.setFechaNacimi(rs.getString(5));
                dtp.setLugarNacimi(rs.getString(6));
                dtp.setEdad(rs.getInt(7));
                dtp.setSexo(rs.getString(8));
                dtp.setEstatura(rs.getString(9));
                dtp.setPeso(rs.getString(10));
                dtp.setPosicionJuego(rs.getString(11));
                dtp.setFormaconDepor(rs.getString(12));
                dtp.setEquiposJugados(rs.getString(13));
               
                lista.add(dtp);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    public void listarImg(int id1, HttpServletResponse response) {
        String sql = "select * from detalles_deportista where idDeportista=" + id1;
        //VARIABLES PARA CONVERSION DE IMAGENES
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            outputStream = response.getOutputStream();
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                inputStream = rs.getBinaryStream("foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i = 0;
            while ((i = bufferedInputStream.read()) != -1) {
                bufferedOutputStream.write(i);
            }

        } catch (Exception e) {

        }

    }
    public int agregar(Detalles_Deportista dtp){ 
        String sql="insert into detalles_deportista(foto, idDeportista, nomDeport, fechaNacimi, lugarNacimi,edad, sexo, estatura, peso, posicionJuego, formacionDeport, equiposJugados)values(?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setBlob(1, dtp.getFoto());
            ps.setInt(2, dtp.getIdDeportista());
            ps.setString(3, dtp.getNombreDeport());
            ps.setString(4, dtp.getFechaNacimi());
            ps.setString(5, dtp.getLugarNacimi());
            ps.setInt(6, dtp.getEdad());
            ps.setString(7, dtp.getSexo());
            ps.setString(8, dtp.getEstatura());
            ps.setString(9, dtp.getPeso());
            ps.setString(10, dtp.getPosicionJuego());
            ps.setString(11, dtp.getFormaconDepor());
            ps.setString(12, dtp.getEquiposJugados());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
        
    }
    public Detalles_Deportista listarId(int id){
        
        String sql="select * from detalles_deportista where idDeportista="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                dtp.setFoto(rs.getBinaryStream(1));
                dtp.setIdDeportista(rs.getInt(2));
                dtp.setNombreDeport(rs.getString(3));
                dtp.setFechaNacimi(rs.getString(4));
                dtp.setLugarNacimi(rs.getString(5));
                dtp.setEdad(rs.getInt(6));
                dtp.setSexo(rs.getString(7));
                dtp.setEstatura(rs.getString(8));
                dtp.setPeso(rs.getString(9));
                dtp.setPosicionJuego(rs.getString(10));
                dtp.setFormaconDepor(rs.getString(11));
                dtp.setEquiposJugados(rs.getString(12));
            }
        } catch (Exception e) {
        }
        return dtp;
    }
    public int actualizar(Detalles_Deportista dtp){
        String sql="update detalles_deportista set foto=?, idDeportista=?, nomDeport=?, fechaNacimi=?, lugarNacimi=?,edad=?, sexo=?, estatura=?, peso=?, posicionJuego=?, formacionDeport=?, equiposJugados=? where idDeportista=?";
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setBlob(1, dtp.getFoto());
            ps.setInt(2, dtp.getIdDeportista());
            ps.setString(3, dtp.getNombreDeport());
            ps.setString(4, dtp.getFechaNacimi());
            ps.setString(5, dtp.getLugarNacimi());
            ps.setInt(6, dtp.getEdad());
            ps.setString(7, dtp.getSexo());
            ps.setString(8, dtp.getEstatura());
            ps.setString(9, dtp.getPeso());
            ps.setString(10, dtp.getPosicionJuego());
            ps.setString(11, dtp.getFormaconDepor());
            ps.setString(12, dtp.getEquiposJugados());
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return r;
    }
    public void delete(int id){
        String sql="delete from detalle_deportista where idDeportista="+id;
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    /*public List buscar(String texto){
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
*/
}
