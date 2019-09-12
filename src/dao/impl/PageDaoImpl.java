package dao.impl;

import dao.PageDao;
import entity.Goods;
import entity.Page;
import org.apache.commons.dbutils.BasicRowProcessor;
import org.apache.commons.dbutils.GenerousBeanProcessor;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import util.JDBCUtil;

import javax.security.sasl.SaslException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PageDaoImpl implements PageDao {
    QueryRunner qr ;

    public PageDaoImpl(){
        qr=new QueryRunner(JDBCUtil.getDs());
    }

    @Override
    public List<Goods> getAllGoods(Page page) {
        List<Goods> goods=new ArrayList<>();
        String sql="select * from goods where goods_id in(select goods_id from stock where goods_status=1) limit ?,?";
        try {
            goods=qr.query(sql,new BeanListHandler<Goods>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{page.startItem,page.endItem});
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return goods;
    }



    @Override
    public Long countgoods() {
        String sql="select count(*) from goods where goods_id in(select goods_id from stock where goods_status=1)";
        Long n=0l;
        try {
            n=(Long) qr.query(sql,new ScalarHandler());
        }catch (SQLException e){
            e.printStackTrace();
        }
        return n;
    }

    @Override
    public List<Goods> findGoodsByPage(int currentPage, int page) {
        String sql="select * from goods where goods_id in(select goods_id from stock where goods_status=1) limit ?,?";
        List<Goods> list=new ArrayList<>();
        try {
            list=qr.query(sql,new BeanListHandler<>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{(currentPage-1)*page,page});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
    @Override
    public List<Goods> getAllStock(String userId, Page page) {
        List<Goods> goods=new ArrayList<>();
        String sql="SELECT * from goods where user_id=? limit ?,?";
        try{
            goods=qr.query(sql,new BeanListHandler<Goods>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{userId,page.getStartItem(),page.getEndItem()});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return goods;
    }

    @Override
    public List<Goods> getStockByType(String userId, String goodsType, Page page) {
        List<Goods> goods=new ArrayList<>();
        String sql="SELECT * from goods where user_id=? and goods_type=? limit ?,?";
        try{
            goods=qr.query(sql,new BeanListHandler<Goods>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{userId,goodsType,page.getStartItem(),page.getEndItem()});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return goods;
    }

    @Override
    public List<Goods> getOnShelves(String userId, Page page) {
        List<Goods> goods=new ArrayList<>();
        String sql="select * from goods where goods_id=(select goods_id from stock where stock.user_id=? and stock.good_status=? )limit ?,?";
        try{
            goods=qr.query(sql,new BeanListHandler<Goods>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{userId,1,page.getStartItem(),page.getEndItem()});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return goods;
    }

    @Override
    public List<Goods> getOnShelvesByType(String userId, String goodsType, Page page) {
        List<Goods> goods=new ArrayList<>();
        String sql="select * from goods where goods_type=? and goods_id=(select goods_id from stock where stock.user_id=? and stock.good_status=? )limit ?,?";
        try{
            goods=qr.query(sql,new BeanListHandler<Goods>(Goods.class,new BasicRowProcessor(new GenerousBeanProcessor())),new Object[]{goodsType,userId,1,page.getStartItem(),page.getEndItem()});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return goods;
    }

}
