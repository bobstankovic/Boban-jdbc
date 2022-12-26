package com.cydeo.jdbctests.day01;

import com.sun.jdi.connect.spi.*;
import org.junit.jupiter.api.Test;

import java.sql.*;
import java.sql.Connection;

public class JDBC_Intro<Statement> {
    String dbUrl = "jdbc:oracle:thin:@54.175.72.144:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void test1() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
        java.sql.Statement statement = conn.createStatement();
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is not null");
        ResultSetMetaData metaData = rs.getMetaData();

        




        rs.close();
        statement.close();
        conn.close();
    }
}
