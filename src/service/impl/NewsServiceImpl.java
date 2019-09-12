package service.impl;

import dao.newsDao;
import dao.impl.newsDaoImpl;
import entity.News;
import service.newsService;

import java.util.List;

public class NewsServiceImpl implements newsService {
    newsDao newesDao=new newsDaoImpl();

    @Override
    public int updatenews( News n ) {
        return newesDao.updatenews(n);
    }

    @Override
    public int deletenews(int id,String author) {
        return newesDao.deletenews(id,author);
    }

    @Override
    public int insternews( News n ) {
        return newesDao.insternews(n);
    }

    @Override
    public int checkid( int id ) {
        return newesDao.checkid(id);
    }

    @Override
    public List<News> getAllnews() {
        return newesDao.getAllnews();
    }

    @Override
    public List<News> singlenews(News n ) {
        return newesDao.singlenews(n);
    }

    @Override
    public Long countnews() {
        return newesDao.countnews();
    }

    @Override
    public List<News> findnews(int currentPage, int page ) {
        return newesDao.findnews(currentPage,page);
    }
}
