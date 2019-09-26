import org.junit.Test;

import java.sql.Connection;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;


public class DBTest {
    @Test
    public static void main(String[] args) {

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con =  DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mydb?serverTimezone=UTC","root","1234");

        String qu = "SELECT * FROM mydb.member;";
        Statement st = con.createStatement();

            ResultSet rs = st.executeQuery(qu);
            while (rs.next()){
                 String username = rs.getString("username");
                 String userid = rs.getString("userid");
                 int userpw= rs.getInt("userpw");
                 String tel = rs.getString("tel");

                 String postno = rs.getString("postno");
                 String addr = rs.getString("addr");
                 String addr_detail = rs.getString("addr_detail");


                 System.out.format("%s,%s,%s,%s,%s,%s,%s,\n",userid,userpw,username,tel,postno,addr,addr_detail);
            }
            st.close();

//            Statement st = con.
        }catch (Exception e){
            System.err.println("Got an exception!");
            System.err.println(e.getMessage());
        }
    }
}
