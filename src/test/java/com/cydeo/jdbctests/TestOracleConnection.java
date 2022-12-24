package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    public static void main(String[] args) throws SQLException {
        String dbUrl = "jdbc:oracle:thin:@54.175.72.144:1521:XE";
        String dbUserName = "hr";
        String dbPassword = "hr";

        Connection conn = DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null");
        ResultSetMetaData metaData = rs.getMetaData();



        System.out.println("\n" + metaData.getColumnName(1) + "\t| " + metaData.getColumnName(2) + "\t| " + metaData.getColumnName(3) + "\t| " + metaData.getColumnName(4));
        System.out.println("---------------------------");
        while (rs.next()) System.out.println("\t\t" + rs.getString(1) + "\t\t| " + rs.getString(2) + "\t\t\t+ " + rs.getString(3) + "\t+ " + rs.getString(4));


        rs=statement.executeQuery("select * from REGIONS");
        metaData = rs.getMetaData();
        System.out.println("\n\n" + metaData.getColumnName(1) + "  " + metaData.getColumnName(2));
        while (rs.next()){
            System.out.println(rs.getInt(1) + "\t\t\t  " + rs.getString(2));
        }

        rs.close();
        statement.close();
        conn.close();

    }

}
