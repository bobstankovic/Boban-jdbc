package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class DBPractice {

    @Test
    public void task1(){
        DB_Util.createConnection();

        DB_Util.runQuery("select first_name, last_name, salary from employees where rownum < 6");

        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();

        System.out.println("DB_Util.getFirstRowFirstColumn() = " + DB_Util.getFirstRowFirstColumn());

        for (Map<String, String> stringStringMap : allRowAsListOfMap) {
            System.out.println("stringStringMap = " + stringStringMap);

        }
        DB_Util.destroy();
    }


    @Test
    public void task2(){
        DB_Util.createConnection();

        DB_Util.runQuery("select count(*) from employees");

        System.out.println("DB_Util.getFirstRowFirstColumn() = " + DB_Util.getFirstRowFirstColumn());


        DB_Util.destroy();
    }
}
