package service.impl;

import dao.PageDao;
import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.Goods;
import entity.Page;
import entity.User;
import factory.Factory;
import service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserDao userDao;
    PageDao pageDao;

    public UserServiceImpl() {
        userDao = Factory.getInstance("userdao",UserDao.class);
        pageDao = Factory.getInstance("pagedao",PageDao.class);
    }

    @Override
    public User login(String userId, String userPassword) {
        User user = userDao.findUserByIdAndPwd(userId,userPassword);
        return user;
    }

    @Override
    public boolean register(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public boolean updateInfo(User user) {
        return userDao.updateUser(user);
    }

    @Override
    public boolean updatePassword(User user) {
        return userDao.updateUser(user);

    }

    @Override
    public boolean charge(User user) {
        return userDao.updateUser(user);
    }



    @Override
    public List<Goods> getStockByType(String userId, String goodsType, Page page) {
        return pageDao.getStockByType(userId,goodsType,page);
    }

    @Override
    public List<Goods> getAllStock(String userId,Page page) {
        return pageDao.getAllStock(userId,page);
    }

    @Override
    public List<Goods> getOnShelves(String userId, Page page){
        return pageDao.getOnShelves(userId,page);
    }

    @Override
    public List<Goods> getOnShelvesByType(String userId, String goodsType, Page page) {
        return  pageDao.getOnShelvesByType(userId,goodsType,page);
    }


    @Override
    public int onShelves(int goodsId,int price) {//上架
        userDao.modifyGoodsPrice(goodsId,price);
        return userDao.modifyStockStatus(goodsId,1);
    }

    @Override
    public int outOfStock(int goodsId) {//下架
        return userDao.modifyStockStatus(goodsId,0);
    }

    @Override
    public int getStockStatus( int goodsId) {//获取库存属性
        return userDao.getStockStatus(goodsId);
    }

    @Override
    public Goods getGoodsById(int goodsId) {
        return userDao.getGoodsById(goodsId);
    }

    @Override
    public int buy(int goodsId, User user) {
        userDao.updateUser(user);
        userDao.modifyStockStatus(goodsId,0);
        return 0;
    }
}
