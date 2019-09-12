package servlet;

import entity.News;
import service.impl.NewsServiceImpl;
import service.newsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet( "*.do1")
public class newsServlet extends HttpServlet {
    newsService nservice=new NewsServiceImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        if (request.getServletPath().contains("showAll")){
            doshowAll(request, response);
        }
        if (request.getServletPath().contains("Insert")){
            doInsert(request, response);
        }
        if (request.getServletPath().contains("update")){
            doupDate(request, response);
        }
        if (request.getServletPath().contains("Delete")){
            doDel(request, response);
        }
        if (request.getServletPath().contains("check")){
            doCheck(request, response);
        }
    }
    protected void doshowAll(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        int currentPage=1;
        int page=5;
        String p=request.getParameter("currentPage");
        if (p!=null){
            currentPage=Integer.parseInt(p);
        }
        List<News> list=nservice.findnews(currentPage,page);
        request.setAttribute("News",list);
        System.out.println(list);
        Long sum=nservice.countnews();
        Integer total=sum.intValue();
        int pages;
        if (sum%page==0){
            pages=total/page;
        }else {
            pages=total/page+1;
        }
        request.setAttribute("currentPage",currentPage);
        request.setAttribute("pages",pages);
        request.getRequestDispatcher("messages.jsp").forward(request,response);
    }
    protected void doInsert(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id= Integer.parseInt(request.getParameter("id"));
        String desc=request.getParameter("des");
        String url=request.getParameter("news_url");
        String time=request.getParameter("time");
        String from=request.getParameter("from");
        String author=request.getParameter("author");
        String pic=request.getParameter("pic");
        News n=new News(id,desc,url,time,from,author,pic);
        nservice.insternews(n);
        HttpSession session=request.getSession();
        session.setAttribute("news",n);
    }
    protected void doDel(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int id=Integer.parseInt(request.getParameter("id"));
        String author=request.getParameter("author");
        int result=nservice.deletenews(id,author);
        response.getWriter().println(result);
    }
    protected void doupDate(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    }
    protected void doCheck(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        int id= Integer.parseInt(request.getParameter("id"));
        int result=nservice.checkid(id);
        System.out.println(result);
        if (result==1){
            response.getWriter().println(result);
        }else {
            doInsert(request, response);
            response.getWriter().println(result);
        }
    }
}
