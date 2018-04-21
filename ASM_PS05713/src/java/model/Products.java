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
public class Products {

    public Products() {
    }


    public List<Product> showProduct(String tensp) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = "select * from Product";
            if (tensp.length() > 0) {
                sql += " where Name like '%" + tensp + "%'";
            }
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery(sql);
            List<Product> list = new ArrayList<Product>();
            while (rs.next()) {
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                String image = rs.getString("Image");
                Product sp = new Product(code, name, price,image);
                list.add(sp);

            }
            return list;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }

   

}
