package servlet;

import dao.impl.PageDaoImpl;
import entity.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("*.do2")


public class goodsServlet extends HttpServlet {
    PageDaoImpl pageDao=new PageDaoImpl();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getServletPath().contains("showAll")){
            doshowAll(request, response);
        }
    }

    protected void doshowAll(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        int currentPage=1;
        int page=4;
        String p=request.getParameter("currentPage");
        if (p!=null){
            currentPage=Integer.parseInt(p);
        }
        List<Goods> list=pageDao.findGoodsByPage(currentPage,page);
        request.setAttribute("goods",list);
        System.out.println(list);
        Long sum=pageDao.countgoods();
        int total=sum.intValue();
        int pages;
        if (sum%page==0){
            pages=total/page;
        }else {
            pages=total/page+1;
        }
        request.setAttribute("currentPage",currentPage);
        request.setAttribute("pages",pages);
        request.getRequestDispatcher("market.jsp").forward(request,response);
    }

}
