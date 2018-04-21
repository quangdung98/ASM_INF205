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


public class LoginBean implements Serializable {

    private String username;
    private String password;
    private String lastname;
    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String DURL = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
    private static final String DUSER = "quangdung_SQLLogin_1";
    private static final String DPASS = "k34a45a6co";
    private Connection con;
    private ResultSet rs;
    private PreparedStatement pstm;

    public LoginBean() {
    }

    public void openConnection() {
        try {
            if (con != null) {
                if (con.isClosed()) {
                    con = DriverManager.getConnection(DURL, DUSER, DPASS);

                } else {
                    con = DriverManager.getConnection(DURL, DUSER, DPASS);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void closeConnection() {
        try {
            if (rs != null) {
                if (rs.isClosed()) {
                    rs.close();
                }
                if (pstm != null) {
                    if (pstm.isClosed()) {
                        pstm.close();
                    }
                }
                if (con != null) {
                    if (con.isClosed()) {
                        con.close();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean checkLogin(String username, String password) {
        try {

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = "select * from Register where username = ? and password = ?";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, username);
            pstm.setString(2, password);
            rs = pstm.executeQuery();
            boolean result = rs.next();
            rs.close();
            pstm.close();
            con.close();

            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

   

    public LoginBean(String username, String lastname) {
        this.username = username;
        this.lastname = lastname;

    }

    public boolean deleteMember(String username) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = "delete  from Register where username = ? ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, username);
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

    public boolean insert(String username, String password, String lastname) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://dientoanASM.mssql.somee.com;databaseName=dientoanASM";
            Connection con = DriverManager.getConnection(url, "quangdung_SQLLogin_1", "k34a45a6co");
            String sql = "Insert into Register values(?,?,?) ";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, username);
            pstm.setString(2, password);
            pstm.setString(3, lastname);

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

}
