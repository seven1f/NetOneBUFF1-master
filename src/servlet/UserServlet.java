package servlet;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.Goods;
import entity.User;
import factory.Factory;
import service.UserService;
import service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@WebServlet("*.do")
public class UserServlet extends HttpServlet {
    UserService userService;

    public UserServlet() {
        userService = Factory.getInstance("userservice",UserService.class);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if (path.contains("login")){
            doLogin(request,response);
        }
        else if(path.contains("logout")){
            doLogout(request,response);
        }
        else if(path.contains("register")){
            doRegister(request,response);
        }
        else if(path.contains("updateInfo")){
            doUpdateInfo(request,response);
        }
        else if(path.contains("updatePassword")){
            doUpdatePassword(request,response);
        }
        else if(path.contains("charge")){
            doCharge(request,response);
        }
        else if(path.contains("cash")){
            doCash(request,response);
        }else if(path.contains("buy")){
            doBuy(request,response);
        }
    }

    private void doBuy(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("utf-8");
        Goods goods = (Goods) request.getSession().getAttribute("goods");
        User user = (User) request.getSession().getAttribute("user");
    }

    private void doCash(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        int cash = Integer.parseInt(request.getParameter("cash"));
        if (user.getUserBalance()>=cash){
            user.setUserBalance(user.getUserBalance()-cash);
            if (userService.charge(user)){
                System.out.println("提现成功");
                response.sendRedirect("index.jsp");
            }else {
                System.out.println("提现失败");
                response.sendRedirect("index.jsp");
            }
        }
        else {
            System.out.println("提现失败");
            response.sendRedirect("index.jsp");
        }

    }

    private void doCharge(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        User user = (User) request.getSession().getAttribute("user");
        if (userService.charge(user)){
            System.out.println("充值成功");
            response.sendRedirect("index.jsp");
        }
        else {
            System.out.println("充值失败");
            user.setUserBalance(user.getUserBalance()-Integer.parseInt((String) request.getSession().getAttribute("amount")));
            request.getSession().setAttribute("user",user);
            response.sendRedirect("index.jsp");
        }
    }

    private void doUpdatePassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        User user =(User) request.getSession().getAttribute("user");

        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String newPassword2 = request.getParameter("newPassword2");
        System.out.println(oldPassword+" "+newPassword+" "+newPassword2);

        if (!oldPassword.equals(user.getUserPassword())){
            System.out.println(oldPassword);
            System.out.println(user.getUserPassword());
            System.out.println("原密码错误!");
            response.sendRedirect("index.jsp");
        }else if (!newPassword.equals(newPassword2)){
            System.out.println("新密码两次不相同!");
            response.sendRedirect("index.jsp");
        }else {
            user.setUserPassword(newPassword);
            if (userService.updatePassword(user)){
                System.out.println("密码修改成功");
                request.getSession().setAttribute("user",user);
                response.sendRedirect("index.jsp");
            }else {
                System.out.println("密码修改失败");
                response.sendRedirect("index.jsp");
            }
        }
    }

    private void doUpdateInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        User user =(User) request.getSession().getAttribute("user");
        if (!request.getParameter("userName").equals("")){
            user.setUserName(request.getParameter("userName"));
        }
        if (!request.getParameter("userEmail").equals("")){
            user.setUserEmail(request.getParameter("userEmail"));
        }
        if (!request.getParameter("userTelephone").equals("")){
            user.setUserTelephone(request.getParameter("userTelephone"));
        }

        if (userService.updateInfo(user)){

            System.out.println("修改成功");
            request.getSession().setAttribute("user",user);
            response.sendRedirect("index.jsp");
        }
        else {
            System.out.println("修改失败");
            response.sendRedirect("index.jsp");
        }
    }

    private void doRegister(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user =new User();
        request.setCharacterEncoding("utf-8");
        user.setUserId(request.getParameter("userId"));
        user.setUserPassword(request.getParameter("userPassword"));
        user.setUserName(request.getParameter("userName"));
        user.setUserBalance(0);
        user.setUserEmail(request.getParameter("userEmail"));
        user.setUserTelephone(request.getParameter("userTelephone"));
        user.setUserType(1);
        System.out.println(user);
        if (userService.register(user)){

            System.out.println("注册成功");
            request.getSession().setAttribute("user",user);
            response.sendRedirect("index.jsp");
        }
        else {
            System.out.println("注册失败");
            response.sendRedirect("index.jsp");
        }
    }

    private void doLogout(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect("index.jsp");
    }

    private void doLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        String userId = request.getParameter("userId");
        String userPassword = request.getParameter("userPassword");
        User user = userService.login(userId,userPassword);
        System.out.println(user);
        if (user!=null){
            request.getSession().setAttribute("user",user);
            response.sendRedirect("index.jsp");
        }
        else {
            System.out.println("登陆失败");
        }
    }
}
