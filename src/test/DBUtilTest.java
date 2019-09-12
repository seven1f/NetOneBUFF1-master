package test;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import util.JDBCUtil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtilTest {

    @Test
    public void printCurrentMethodName()
    {
        System.out.println(Thread.currentThread().getStackTrace()[2]
                .getMethodName());

        System.out.println("==================================================");
    }
    @Test
    public void update() throws SQLException
    {
        printCurrentMethodName();

    }

    public static void main(String[] args) {

    }

}
