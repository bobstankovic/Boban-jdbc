package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class FlexibleNavigation {
    String dbUrl = "jdbc:oracle:thin:@54.175.72.144:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select * from REGIONS");
        ResultSetMetaData metaData = rs.getMetaData();
        DatabaseMetaData dadaMeta = conn.getMetaData();
//        System.out.println("dadaMeta.getDatabaseProductVersion() = " + dadaMeta.getDatabaseProductVersion());
//        System.out.println("dadaMeta.getDatabaseProductName() = " + dadaMeta.getDatabaseProductName());
//        System.out.println("dadaMeta.getDriverName() = " + dadaMeta.getDriverName());
//        System.out.println("dadaMeta.getDriverVersion() = " + dadaMeta.getDriverVersion());
//        System.out.println("\t"+metaData.getColumnName(1) + "\t|\t" + metaData.getColumnName(2));
//        System.out.println("--------------------------");
//        while (rs.next())
//            System.out.println(rs.getRow() + ". " +rs.getString(1) + "\t\t|\t" + rs.getString(2));

//        rs.absolute(4);
//        System.out.println(rs.getRow() + ". " + rs.getString(1) + "\t\t|\t" + rs.getString(2));
//
//        rs.previous();
//
//        System.out.println("dadaMeta.getUserName() = " + dadaMeta.getUserName());
//        System.out.println("dadaMeta.getDatabaseProductName() = " + dadaMeta.getDatabaseProductName());

//        for(int i = 1; i<= metaData.getColumnCount(); i++)
//            System.out.print(metaData.getColumnName(i)+ "\t\t\t| ");
//        System.out.println();
//        System.out.println("--------------------------------------------");


        List<HashMap<String, Object>> listMap = new ArrayList<>();
        HashMap<String, Object> rowMap = new HashMap();


        rs.beforeFirst();
        while (rs.next()) {

            for (int i = 1; i <= metaData.getColumnCount(); i++)
                rowMap.put(metaData.getColumnName(i), rs.getObject(i));
            System.out.println("rowMap = " + rowMap);
            listMap.add(rowMap);

        }

        System.out.println("listMap = " + listMap);


        rs.close();
        statement.close();
        conn.close();
    }

}
