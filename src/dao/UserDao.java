package dao;

import entity.Goods;
import entity.User;

import java.util.List;

/**
 * Demo class
 * @author liurongsong
 * @date 2019/07/26
 */
public interface UserDao {
    /**
     * insert user into user
     * @param user user
     * @return boolean
     */
    boolean insertUser(User user);
    /**
     * select user from user
     * @param userId userId
     * @param userPassword userPassword
     * @return User
     */
    User findUserByIdAndPwd(String userId ,String userPassword);
    boolean updateUser(User user);
    int modifyStockStatus(int goodsId,int status);//修改状态；上架下架
    //    List<Goods> getAllStock(String userId);//所有库存
    //    List<Goods> getStockByType(String userId,String goodsType);//某一类型库存
    int getStockStatus(int goodsId);//查询状态
    int modifyGoodsPrice(int goodsId,int price);//修改商品价格
    int getStockCount(String userId);
    Goods getGoodsById(int goodsId);
}
