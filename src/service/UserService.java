package service;

import entity.Goods;
import entity.Page;
import entity.User;

import java.util.List;

/**
 * @author liurongsong
 */
public interface UserService {
    /**
     * login
     * @param userId userId
     * @param userPassword userPassword
     * @return  user
     */
    User login(String userId,String userPassword);
    /**
     * register
     * @param user user
     * @return boolean
     */
    boolean register(User user);
    boolean updateInfo(User user);
    boolean updatePassword(User user);
    boolean charge(User user);
    List<Goods> getStockByType(String userId, String goodsType, Page page);
    //分页查询所有库存
    List<Goods> getAllStock(String userId,Page page);
    //
    //分页查询上架库存
    List<Goods> getOnShelves(String userId,Page page);
    //分页查询某一类型上架库存
    List<Goods> getOnShelvesByType(String userId,String goodsType,Page page);
    //上架库存
    int onShelves(int goodsId,int price);
    //下架库存
    int outOfStock(int goodsId);
    //查询库存的状态
    int getStockStatus(int goodsId);
    //查询物品通过物品id
    Goods getGoodsById(int goodsId);

    int buy(int goodsId,User user);
}
