package dao.impl;

import dao.newsDao;
import entity.News;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import util.C3P0Util;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class newsDaoImpl implements newsDao {
    QueryRunner qr=new QueryRunner(C3P0Util.getDs());

    @Override
    public int updatenews( News n ) {
        String update_sql="update news set news_describe=?,news_url=?,news_time=?,news_from=?,news_author=?,news_pic=? where news_id=?";
        int result=1;
        try {
            result=qr.update(update_sql,new Object[]{n.getNews_describe(),n.getNews_url(),n.getNews_time(),n.getNews_from(),n.getNews_author(),n.getNews_pic(),n.getNews_id()});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int deletenews(int id,String author) {
        String delete_sql="Delete from news where news_id=? and news_author=?";
        int result=1;
        try {
            result=qr.update(delete_sql,id,author);
            System.out.println(result);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int insternews( News n ) {
        String inster_sql="insert into news(news_id,news_describe,news_url,news_time,news_from,news_author,news_pic) value(?,?,?,?,?,?,?)";
        int result=1;
        try {
            result=qr.update(inster_sql,new Object[]{n.getNews_id(),n.getNews_describe(),n.getNews_url(),n.getNews_time(),n.getNews_from(),n.getNews_author(),n.getNews_pic()});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int checkid( int id ) {
        String check_sql="select * from News where news_id=?";
        int result=0;
        News n=new News();
        try {
            n= qr.query(check_sql,new BeanHandler<News>(News.class),id);
            if (n!=null){
                result = 1;
            }
            else
                result = 0;
            System.out.println("查询："+result);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<News> getAllnews() {
        String sql="select * from News";
        List<News> list=new ArrayList<>();
        try {
            list=qr.query(sql,new BeanListHandler<News>(News.class));
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<News> singlenews(News n ) {
        return null;
    }

    @Override
    public Long countnews() {
        String sql="select count(*) from News";
        Long n=0l;
        try {
            n=(Long) qr.query(sql,new ScalarHandler());
        }catch (SQLException e){
            e.printStackTrace();
        }
        return n;
    }

    @Override
    public List<News> findnews(int currentPage, int page ) {
        String sql="select * from News limit ?,?";
        List<News> list=new ArrayList<>();
        try {
            list=qr.query(sql,new BeanListHandler<>(News.class),new Object[]{(currentPage-1)*page,page});
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
}
