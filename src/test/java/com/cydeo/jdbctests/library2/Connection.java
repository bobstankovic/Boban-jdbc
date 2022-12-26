package com.cydeo.jdbctests.library2;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class Connection {
    String url="jdbc:mysql://34.230.35.214:3306/library2";
    String username="library2_client";
    String password="6s2LQQTjBcGFfDhY";


    @Test
    public void test1(){
        DB_Util.createConnection(url, username, password);
        DB_Util.runQuery("select count(*) from users");


        String countUsers = DB_Util.getFirstRowFirstColumn();

        Assertions.assertEquals(countUsers, "1491");

        DB_Util.destroy();
    }
}
