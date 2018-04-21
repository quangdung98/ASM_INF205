/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.net.ConnectException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author GiaHieu
 */
public class LoginBeans {

    public LoginBeans() {
    }
     public List<LoginBean> showMember (String user) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = "select * from Register";
            if (user.length() > 0) {
                sql += " where Name like '%" + user + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<LoginBean> list = new ArrayList<LoginBean>();
            while (rs.next()) {
                String username = rs.getString("username");
                String lastname = rs.getString("lastname");;
                LoginBean lg = new LoginBean(username, lastname);
                list.add(lg);

            }
            return list;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
}
