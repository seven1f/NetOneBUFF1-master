package entity;

import java.util.Date;

public class News {
    public int news_id;
    public String news_describe;
    public String news_url;
    public String news_time;
    public String news_from;
    public String news_author;
    public String news_pic;

    public News() {
    }

    public News(int news_id, String news_author ) {
        this.news_id = news_id;
        this.news_author = news_author;
    }

    public News(int news_id, String news_describe, String news_url, String news_time, String news_from, String news_author, String news_pic ) {
        this.news_id = news_id;
        this.news_describe = news_describe;
        this.news_url = news_url;
        this.news_time = news_time;
        this.news_from = news_from;
        this.news_author = news_author;
        this.news_pic=news_pic;
    }

    public String getNews_pic() {
        return news_pic;
    }

    public void setNews_pic( String news_pic ) {
        this.news_pic = news_pic;
    }

    public int getNews_id() {
        return news_id;
    }

    public void setNews_id( int news_id ) {
        this.news_id = news_id;
    }

    public String getNews_describe() {
        return news_describe;
    }

    public void setNews_describe( String news_describe ) {
        this.news_describe = news_describe;
    }

    public String getNews_url() {
        return news_url;
    }

    public void setNews_url( String news_url ) {
        this.news_url = news_url;
    }

    public String getNews_time() {
        return news_time;
    }

    public void setNews_time( String news_time ) {
        this.news_time = news_time;
    }

    public String getNews_from() {
        return news_from;
    }

    public void setNews_from( String news_from ) {
        this.news_from = news_from;
    }

    public String getNews_author() {
        return news_author;
    }

    public void setNews_author( String news_author ) {
        this.news_author = news_author;
    }

    @Override
    public String toString() {
        return "News{" +
                "news_id=" + news_id +
                ", news_describe='" + news_describe + '\'' +
                ", news_url='" + news_url + '\'' +
                ", news_time='" + news_time + '\'' +
                ", news_from='" + news_from + '\'' +
                ", news_author='" + news_author + '\'' +
                ", news_pic='" + news_pic + '\'' +
                '}';
    }
}
