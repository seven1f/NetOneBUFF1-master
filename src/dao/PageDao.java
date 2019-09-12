package dao;

import entity.Goods;
import entity.Page;

import java.util.List;

public interface PageDao {
    List<Goods> getAllGoods(Page page);//所有库存
    Long countgoods();
    List<Goods> findGoodsByPage(int type, int page);
    List<Goods> getAllStock(String userId, Page page);//所有库存
    List<Goods> getStockByType(String userId,String goodsType,Page page);//某一类型库存
    List<Goods> getOnShelves(String userId,Page page);//上架库存
    List<Goods> getOnShelvesByType(String userId,String goodsType,Page page);//某一类型上架库存
}
