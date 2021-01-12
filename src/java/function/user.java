/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package function;

/**
 *
 * @author HP
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import function.fuser;
public class user {
    public static List<fuser> getAllRecords(){
        List<fuser> list=new ArrayList<fuser>();
        try{
            Connection con=koneksi.getKoneksi();
            PreparedStatement ps=con.prepareStatement("select * from user");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                fuser u=new fuser();
                u.setIduser(rs.getInt("id_user"));
                u.setNamauser(rs.getString("nama_user"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
         return list;
    }
    public static int update(fuser u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("update user set "
                    + "nama_user=?,username=?,password=? where id_user=?");
            ps.setString(1, u.getNamauser());
            ps.setString(2, u.getUsername());
            ps.setString(3, u.getPassword());
            ps.setInt(4, u.getIduser());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
    public static fuser getRecordById(int id) {
        fuser u = null;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("select * from user "
                    + "where id_user=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                u = new fuser();
                u.setIduser(rs.getInt("id_user"));
                u.setNamauser(rs.getString("nama_user"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return u;
    }
    public static int delete(fuser u) {
        int status = 0;
        try {
            Connection con = koneksi.getKoneksi();
            PreparedStatement ps = con.prepareStatement("delete from user "
                    + "where id_user=?");
            ps.setInt(1, u.getIduser());
            status = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }
}