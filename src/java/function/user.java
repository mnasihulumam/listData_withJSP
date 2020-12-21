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
}