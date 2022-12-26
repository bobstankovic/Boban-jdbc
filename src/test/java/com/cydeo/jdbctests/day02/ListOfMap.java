package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ListOfMap {

    String dbUrl = "jdbc:oracle:thin:@54.175.72.144:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void listRows() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where rownum<6");
        ResultSetMetaData metaData = rs.getMetaData();
        DatabaseMetaData dadaMeta = conn.getMetaData();

        List<HashMap<String, Object>> listMap = new ArrayList<>();



        rs.beforeFirst();
        while (rs.next()) {

            HashMap<String, Object> rowMap = new HashMap();
            for (int i = 1; i <= metaData.getColumnCount(); i++)
                rowMap.put(metaData.getColumnName(i), rs.getObject(i));
            //System.out.println("rowMap = " + rowMap);
            listMap.add(rowMap);
        }



        for(Map<String,Object> map : listMap)
            System.out.println(map);


        rs.close();
        statement.close();
        conn.close();
    }


}
