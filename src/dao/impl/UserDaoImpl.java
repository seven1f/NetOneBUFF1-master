package dao.impl;

import dao.UserDao;
import entity.Goods;
import entity.Stock;
import entity.User;
import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import util.JDBCUtil;

import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
    private QueryRunner runner;
    public UserDaoImpl(){
        runner = new QueryRunner(JDBCUtil.getDs());
        System.out.println(runner.toString());
    }

    @Override
    public boolean insertUser(User user) {
        int result = 0;
        try {
            System.out.println(user);
            String sql = "insert into user(user_id, user_password,user_name,user_balance,user_email,user_telephone,user_type) values(?,?,?,?,?,?,?)";
            result = runner.update(sql, new Object[]{user.getUserId(),user.getUserPassword(),user.getUserName(),user.getUserBalance(),user.getUserEmail(),user.getUserTelephone(),user.getUserType()});
            System.out.println("受影响记录条数：" + result);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (result>0){
            return true;
        }
        else {
            return false;
        }
    }

    @Override
    public User findUserByIdAndPwd(String userId, String userPassword) {
        User user = null;
        try {
            System.out.println(userId+" "+userPassword);
            String sql = "select * from user where user_id =? and user_password =?";
            user = runner.query(sql,new BeanHandler<User>(User.class, new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{userId,userPassword});
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            return user;
        }

    }

    @Override
    public boolean updateUser(User user) {
        int result = 0;
        try {
            System.out.println(user);
            String sql = "update user set user_password=?,user_name=?,user_balance=?,user_email=?,user_telephone=? where user_id=?";
            result = runner.update(sql, new Object[]{user.getUserPassword(),user.getUserName(),user.getUserBalance(),user.getUserEmail(),user.getUserTelephone(),user.getUserId()});
            System.out.println("受影响记录条数：" + result);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (result>0){
            return true;
        }
        else {
            return false;
        }
    }
    @Override
    public int modifyStockStatus(int goodsId, int status) {
        int result=0;
        String sql="update stock set goods_status=? where goods_id=?";
        try{
            result=runner.update(sql,new Object[]{status,goodsId});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int getStockStatus(int goodsId ) {
        String sql="select * from stock where goods_id=?";
        Stock stock=new Stock();
        try {
            stock=runner.query(sql,new BeanHandler<Stock>(Stock.class, new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{goodsId});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return stock.goodsStatus;
    }

    @Override
    public int modifyGoodsPrice(int goodsId, int price) {
        String sql="update goods set goods_price=? where goods_id=?";
        try{
            return runner.update(sql,new Object[]{price,goodsId});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int getStockCount(String userId) {
        String sql="select count(*) from stock where user_id=?";
        try{
            return runner.execute(sql,userId);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Goods getGoodsById(int goodsId) {
        String sql="select * from goods where goods_id=?";
        Goods goods=new Goods();
        try{
            goods=runner.query(sql,new BeanHandler<Goods>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),goodsId);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return goods;
    }
}
