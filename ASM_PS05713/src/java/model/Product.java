/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author GiaHieu
 */
public class Product implements Serializable{

    private String code;
    private String name;
    private float price;
    private String image;
    private Connection con;
    private ResultSet rs;
    private PreparedStatement pstm;

    public Product() {
    }

    public Product(String code, String name, float price, String image) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.image = image;
    }

    public Product(String code, String name, float price) {
        this.code = code;
        this.name = name;
        this.price = price;

    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

   

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public boolean insertProduct(String code, String name, float price, String image) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = " insert into Product values(?,?,?,?)";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, code);
            stm.setString(2, name);
            stm.setFloat(3, price);
            stm.setString(4, image);
            int result = stm.executeUpdate();
            stm.close();
            con.close();
            if (result > 0) {
                return true;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteRecord(String code) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = " delete  from Product where Code = ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, code);
            int result = pstm.executeUpdate();
            rs.close();
            pstm.close();
            con.close();
            if (result > 0) {
                return true;

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
