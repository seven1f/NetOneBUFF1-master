package test;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.User;
import factory.Factory;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.junit.Test;
import util.JDBCUtil;

import java.sql.SQLException;

public class dbTest {


    public static void main(String[] args) {

//
    }
@Test
    public void login(){
        UserDao userDao = Factory.getInstance("userdao", UserDao.class);
        System.out.println(userDao);
        User user = userDao.findUserByIdAndPwd("user1","123");
        System.out.println(user);
    }

}
