package service;

import entity.News;

import java.util.List;

public interface newsService {
    int updatenews(News n);
    int deletenews(int id, String author);
    int insternews(News n);
    int checkid(int id);
    List<News> getAllnews();
    List<News> singlenews(News n);
    Long countnews();
    List<News> findnews(int currentPage, int page);
}
