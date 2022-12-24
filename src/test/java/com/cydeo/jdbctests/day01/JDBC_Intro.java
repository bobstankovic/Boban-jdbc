package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class JDBC_Intro {
    String dbUrl = "jdbc:oracle:thin:@54.175.72.144:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void test1() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
        Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery("select first_name, last_name from employees");
        ResultSetMetaData metaData = rs.getMetaData();

        




        rs.close();
        statement.close();
        conn.close();
    }
}
