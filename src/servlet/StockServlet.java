package servlet;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.Goods;
import entity.Page;
import entity.User;
import factory.Factory;
import service.UserService;
import service.impl.UserServiceImpl;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@WebServlet(urlPatterns = {"*.do3","/page"})
public class StockServlet extends HttpServlet {
    UserService userService=Factory.getInstance("userservice",UserService.class);
    UserDao userDao=Factory.getInstance("userdao",UserDao.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String selevtpath=request.getServletPath();
        System.out.println(selevtpath);
        if(selevtpath.contains("page")){
            domystock(request,response);
        }if(selevtpath.contains("search")||selevtpath.contains("filter")){
            dosearch(request,response);
        }if(selevtpath.contains("Single")){
            doSingle(request,response);
        }if(selevtpath.contains("Singl1")){
            doSingle1(request,response);
        }if(selevtpath.contains("drawup")){
            doDrawup(request,response);
        }
    }

    private void doDrawup(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        int id = Integer.parseInt(request.getParameter("goodsId"));
        System.out.println(id);
        int price = Integer.parseInt(request.getParameter("price"));
        System.out.println(price);
        if (userService.onShelves(id,price)==1){
            System.out.println("上架成功");
        }else {
            System.out.println("上架失败");
        }
        response.sendRedirect("showAll.do2");
    }

    protected void domystock(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println("domystock");
        Page page=new Page();
        int currPage=1;
        int pageSize=3;
        String userId=((User)request.getSession().getAttribute("user")).getUserId();
        if (request.getParameter("page") != null) { // 判断传递页码是否有效
             currPage = Integer.parseInt(request.getParameter("page"));// 对当前页码赋值
        }
        System.out.println(currPage);

        page.setPageSize(pageSize);
        page.setCurrentPage(currPage);
        List<Goods> mystock=userService.getAllStock(userId,page);
        System.out.println(mystock);
        request.getSession().setAttribute("mystock",mystock);
        int pages; // 总页数
        int count =userDao.getStockCount(userId); // 查询总记录数
        if (count % pageSize == 0) { // 计算总页数,总记录数和每页显示的数
            pages = count / pageSize; // 对总页数赋值
        } else {
            pages = count / pageSize + 1; // 对总页数赋值
        }
        request.setAttribute("currPage",currPage);
        request.setAttribute("totalpages",pages);
        System.out.println("转发");
        response.sendRedirect("MyStock.jsp");
        //doPage(request, response);
    }

    protected void dosearch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println("dosearch");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String goodType=request.getParameter("goodsType");
        System.out.println("goodType："+goodType);
        String userId=((User)request.getSession().getAttribute("user")).getUserId();

        Page page=new Page();
        int currPage=1;
        int pageSize=3;
//        String userId=((User)request.getAttribute("user")).userId;
        if (request.getParameter("page") != null) { // 判断传递页码是否有效
            currPage = Integer.parseInt(request.getParameter("page"));// 对当前页码赋值
        }
        System.out.println("currPage："+currPage);

        page.setPageSize(pageSize);
        page.setCurrentPage(currPage);
        List<Goods> mystock=userService.getStockByType(userId,goodType,page);
        System.out.println(mystock);
        request.getSession().setAttribute("mystock",mystock);
        int pages; // 总页数
        int count =userDao.getStockCount(userId); // 查询总记录数
        if (count % pageSize == 0) { // 计算总页数,总记录数和每页显示的数
            pages = count / pageSize; // 对总页数赋值
        } else {
            pages = count / pageSize + 1; // 对总页数赋值
        }
        request.setAttribute("currPage",currPage);
        request.setAttribute("totalpages",pages);
        System.out.println("转发");
        request.getRequestDispatcher("MyStock.jsp").forward(request,response);
        //doPage(request, response);
    }

    protected void doSingle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int goodsId = Integer.parseInt(request.getParameter("single"));
        System.out.println(goodsId);
        Goods goods=userService.getGoodsById(goodsId);
        System.out.println(goods);
        request.getSession().setAttribute("goods",goods);
        request.getRequestDispatcher("Single.jsp").forward(request,response);
    }
    protected void doSingle1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int goodsId = Integer.parseInt(request.getParameter("single"));
        System.out.println(goodsId);
        Goods goods=userService.getGoodsById(goodsId);
        System.out.println(goods);
        request.getSession().setAttribute("goods",goods);
        request.getRequestDispatcher("Single1.jsp").forward(request,response);
    }
}
